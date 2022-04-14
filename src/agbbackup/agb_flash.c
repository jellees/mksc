#include "gba/gba.h"
#include "gba/flash_internal.h"

extern u16 sTimerCount;
extern u8 sTimerNum;
extern vu16* sTimerReg;
extern u16 sSavedIme;

extern u8 gFlashTimeoutFlag;
extern u8 (*PollFlashStatus)(u8*);
extern u16 (*WaitForFlashWrite)(u8 phase, u8* addr, u8 lastData);
extern u16 (*ProgramFlashSector)(u16 sectorNum, u8* src);
extern const struct FlashType* gFlash;
extern u16 (*EraseFlashChip)();
extern u16 (*EraseFlashSector)(u16 sectorNum);
extern const u16* gFlashMaxTime;

void SetReadFlash1(u16* dest);

extern const struct FlashSetupInfo* const sFlashList[]; // =
// {
// 	// &LE39FW512,
//     // &AT29LV512_lib,
// 	// &MN63F805MNP,
//     // &MX29L512,
// 	&DefaultFlash,
// };

#define DELAY()                      \
    do                               \
    {                                \
        vu16 i;                      \
        for (i = 20000; i != 0; i--) \
            ;                        \
    } while (0)

u16 ReadFlashId(void)
{
    u16 flashId;
    u16 readFlash1Buffer[0x20];
    u8 (*readFlash1)(u8*);

    SetReadFlash1(readFlash1Buffer);
    readFlash1 = (u8(*)(u8*))((s32)readFlash1Buffer + 1);

    // Enter ID mode.
    FLASH_WRITE(0x5555, 0xAA);
    FLASH_WRITE(0x2AAA, 0x55);
    FLASH_WRITE(0x5555, 0x90);
    DELAY();

    flashId = readFlash1(FLASH_BASE + 1) << 8;
    flashId |= readFlash1(FLASH_BASE);

    // Leave ID mode.
    FLASH_WRITE(0x5555, 0xAA);
    FLASH_WRITE(0x2AAA, 0x55);
    FLASH_WRITE(0x5555, 0xF0);
    DELAY();

    return flashId;
}

u16 IdentifyFlash(void)
{
    u16 result, flashId;
    const struct FlashSetupInfo* const* list;

    REG_WAITCNT = (REG_WAITCNT & ~WAITCNT_SRAM_MASK) | WAITCNT_SRAM_8;

    flashId = ReadFlashId();
    list = sFlashList;

    result = 1;
    while ((*list)->type.ids.separate.makerId != 0)
    {
        if (flashId == (*list)->type.ids.joined)
        {
            result = 0;
            break;
        }
        list++;
    }

    ProgramFlashSector = (*list)->programFlashSector;
    EraseFlashChip = (*list)->eraseFlashChip;
    EraseFlashSector = (*list)->eraseFlashSector;
    WaitForFlashWrite = (*list)->pollingSR;
    gFlashMaxTime = (*list)->maxTime;
    gFlash = &(*list)->type;

    return result;
}

void FlashTimerIntr(void)
{
    if (sTimerCount != 0 && --sTimerCount == 0)
        gFlashTimeoutFlag = 1;
}

u16 SetFlashTimerIntr(u8 timerNum, void (**intrFunc)(void))
{
    if (timerNum >= 4)
        return 1;

    sTimerNum = timerNum;
    sTimerReg = &REG_TMCNT(sTimerNum);
    *intrFunc = FlashTimerIntr;
    return 0;
}

void StartFlashTimer(u8 phase)
{
    const u16* maxTime = &gFlashMaxTime[phase * 3];
    sSavedIme = REG_IME;
    REG_IME = 0;
    REG_IE |= (INTR_FLAG_TIMER0 << sTimerNum);
    REG_IME = 1;
    gFlashTimeoutFlag = 0;
    sTimerCount = *maxTime++;
    *sTimerReg++ = *maxTime++;
    *sTimerReg-- = *maxTime++;
}

void StopFlashTimer(void)
{
    *sTimerReg++ = 0;
    *sTimerReg-- = 0;
    REG_IME = 0;
    REG_IE &= ~(INTR_FLAG_TIMER0 << sTimerNum);
    REG_IME = sSavedIme;
}

u8 ReadFlash1(u8* addr)
{
    return *addr;
}

void SetReadFlash1(u16* dest)
{
    u16* src;
    u16 i;

    PollFlashStatus = (u8(*)(u8*))((s32)dest + 1);

    src = (u16*)ReadFlash1;
    src = (u16*)((s32)src ^ 1);

    i = ((s32)SetReadFlash1 - (s32)ReadFlash1) >> 1;

    while (i != 0)
    {
        *dest++ = *src++;
        i--;
    }
}

u16 PollingSR_COMMON(u8 phase, u8* adr, u8 lastData)
{
    u16 result = 0;
    StartFlashTimer(phase);
    while (1)
    {
        if (PollFlashStatus(adr) == lastData)
            break;
        if (gFlashTimeoutFlag)
        {
            if (PollFlashStatus(adr) == lastData)
                break;
            if (gFlash->ids.joined == 0x1CC2)
                FLASH_WRITE(0x5555, 0xF0);
            result = 0xC000 | phase;
            break;
        }
    }
    StopFlashTimer();
    return result;
}

void ReadFlash_Core(u8* src, u8* dest, u32 size)
{
    while (size-- != 0)
    {
        *dest++ = *src++;
    }
}

void ReadFlash(u16 sectorNum, u32 offset, void* dest, u32 size)
{
    u8* src;
    u16 i;
    vu16 readFlash_Core_Buffer[0x40];
    vu16* funcSrc;
    vu16* funcDest;
    void (*readFlash_Core)(u8*, u8*, u32);

    REG_WAITCNT = (REG_WAITCNT & ~WAITCNT_SRAM_MASK) | WAITCNT_SRAM_8;

    funcSrc = (vu16*)ReadFlash_Core;
    funcSrc = (vu16*)((s32)funcSrc ^ 1);
    funcDest = readFlash_Core_Buffer;

    i = ((s32)ReadFlash - (s32)ReadFlash_Core) >> 1;

    while (i != 0)
    {
        *funcDest++ = *funcSrc++;
        i--;
    }

    readFlash_Core = (void (*)(u8*, u8*, u32))((s32)readFlash_Core_Buffer + 1);

    src = FLASH_BASE + (sectorNum << DefaultFlash.type.sector.shift) + offset;

    readFlash_Core(src, dest, size);
}

u32 VerifyFlashSector_Core(u8* src, u8* tgt, u16 size)
{
    while (size-- != 0)
    {
        if (*tgt++ != *src++)
            return (u32)(tgt - 1);
    }

    return 0;
}

u32 VerifyFlashSector(u16 sectorNum, u8* src)
{
    u16 i;
    vu16 verifyFlashSector_Core_Buffer[0x80];
    vu16* funcSrc;
    vu16* funcDest;
    u8* tgt;
    u16 size;
    u32 (*verifyFlashSector_Core)(u8*, u8*, u16);

    REG_WAITCNT = (REG_WAITCNT & ~WAITCNT_SRAM_MASK) | WAITCNT_SRAM_8;

    funcSrc = (vu16*)VerifyFlashSector_Core;
    funcSrc = (vu16*)((s32)funcSrc ^ 1);
    funcDest = verifyFlashSector_Core_Buffer;

    i = ((s32)VerifyFlashSector - (s32)VerifyFlashSector_Core) >> 1;

    while (i != 0)
    {
        *funcDest++ = *funcSrc++;
        i--;
    }

    verifyFlashSector_Core = (u32(*)(u8*, u8*, u16))((s32)verifyFlashSector_Core_Buffer + 1);

    tgt = FLASH_BASE + (sectorNum << DefaultFlash.type.sector.shift);
    size = DefaultFlash.type.sector.size;

    return verifyFlashSector_Core(src, tgt, size); // return 0 if verified.
}

u32 ProgramFlashSectorAndVerify(u16 sectorNum, u8* src)
{
    u8 i;
    u32 result;

    for (i = 0; i < 3; i++) // 3 attempts
    {
        result = ProgramFlashSector(sectorNum, src);
        if (result != 0)
            continue;

        result = VerifyFlashSector(sectorNum, src);
        if (result == 0)
            break;
    }

    return result; // return 0 if verified and programmed.
}
