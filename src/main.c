#include "common.h"
#include "libunk/irq.h"
#include "vcount.h"
#include "scene.h"
#include "title.h"
#include "sio2.h"
#include "main.h"

static void vblankHandler(void);
static void initKeys(void);
static void updateKeys(void);

extern u8 dword_81E9B1C;
extern u8 dword_81E9BCC;
extern u8 unk_203EBE0;

extern u16 sio2_sKeyBuf[4];
extern u16 gKeyRepeatTriggerBuf[4];
extern u16 gKeyTriggerBuf[4];
extern u16 gKeyBuf[4];

static s16 sKeyRepeatCounters[4];

static u32 sRandom;
static int sFrameCounter;

void AgbMain(void)
{
    irq_handler_t vblankFunc;
    irq_handler_t vcountFunc;
    scene_state_t* sceneState = &gSceneState;

    irq_disableIme();
    REG_DISPCNT |= DISPCNT_FORCED_BLANK;
    REG_WAITCNT = WAITCNT_SRAM_4 | WAITCNT_WS0_N_3 | WAITCNT_WS0_S_1 | WAITCNT_WS1_N_4 | WAITCNT_WS1_S_1 |
                  WAITCNT_WS2_N_4 | WAITCNT_WS2_S_1 | WAITCNT_PHI_OUT_NONE | WAITCNT_PREFETCH_ENABLE | WAITCNT_AGB;
    DMA_FILL(3, 0, EWRAM_START, EWRAM_END - EWRAM_START, 32);
    DMA_FILL(3, 0, IWRAM_START, 0x7E00, 32);
    DMA_FILL(3, 0, VRAM, VRAM_SIZE, 16);
    DMA_FILL(3, 0, OAM, OAM_SIZE, 32);
    DMA_FILL(3, 0, PLTT, PLTT_SIZE, 16);
    DmaCopy16(3, &dword_81E9B1C, &unk_203EBE0, (int)((u32)&dword_81E9BCC - (u32)&dword_81E9B1C));
    main_configureIoRegs(0, 0);
    sceneState->field14 = 0;
    initKeys();
    REG_TM0CNT = 0;
    DmaStop(1);
    m4aSoundInit();
    irq_init();
    REG_IE = 0;
    REG_IF = -1;
    REG_DISPSTAT = 24;
    irq_updateMask(IRQ_UPDATE_MODE_SET, IRQ_MASK_VBLANK | IRQ_MASK_IME);
    irq_updateMask(IRQ_UPDATE_MODE_OR, IRQ_MASK_CARTRIDGE | IRQ_MASK_IME);
    vblankFunc = vblankHandler;
    if (!vblankHandler)
        vblankFunc = main_dummyIrqHandler;
    irq_setHandler(IRQ_ID_VBLANK, vblankFunc);
    vcountFunc = vcount_irqHandler;
    if (!vcount_irqHandler)
        vcountFunc = main_dummyIrqHandler;
    irq_setHandler(IRQ_ID_VCOUNT, vcountFunc);
    dmaq_init(dmaq_getVBlankDmaQueue());
    vcount_init();
    sio2_sMPlayerId.field_16 = 0;
    sio2_stop();
    irq_enableIme();
    sceneState->sceneMainFunc = title_main;
    sceneState->byte_3002E28 = 1;
    save_805EEF4();
    save_805C8A4();
    sub_80436F8();
    sub_8001B30();
    sub_8001ADC();
    do
    {
        if (!gSceneState.sceneMainFunc)
            break;
        if (!gSceneState.sceneMainFunc())
            break;
        vcount_reset();
        dmaq_reset(dmaq_getVBlankDmaQueue());
        main_frameProc();
    } while (1);
    SoftReset(255);
}

static void vblankHandler(void)
{
    scene_state_t* sceneState = &gSceneState;

    SoundVSync_rev01();
    main_increaseFrameCounter();
    DmaStop(0);
    oam_dmaCopyToHw();
    oam_reset();
    dmaq_process(dmaq_getVBlankDmaQueue());
    pltt_copyBufferToHw();
    map_copyBuffersToHw();
    if (sceneState->vBlankFunc)
        sceneState->vBlankFunc();
    sio2_vblank();
    sceneState->field14++;
    main_setVBlankCheckFlag();
}

static void vcountHandler(void)
{
    vcount_irqHandler();
}

static void initKeys(void)
{
    int i;
    scene_state_t* sceneState = &gSceneState;

    main_setKeyRepeat(24, 6);
    for (i = 0; i < 4; i++)
    {
        sio2_sKeyBuf[i] = 0;
        gKeyBuf[i] = gKeyTriggerBuf[i] = gKeyRepeatTriggerBuf[i] = 0;
        sKeyRepeatCounters[i] = sceneState->initialRepeatWait;
    }
}

static void updateKeys(void)
{
    int i;
    u16 keys;
    u16 trigKeys;
    u16* ptr;
    scene_state_t* sceneState = &gSceneState;

    for (i = 0; i < 4; i++)
    {
        keys = sio2_sKeyBuf[i] ^ 0x3FF;
        ptr = &gKeyTriggerBuf[i];
        trigKeys = keys & ~gKeyBuf[i];
        *ptr = trigKeys;
        gKeyRepeatTriggerBuf[i] = trigKeys;
        if (keys && keys == gKeyBuf[i])
        {
            if (--sKeyRepeatCounters[i] == 0)
            {
                gKeyRepeatTriggerBuf[i] = keys;
                sKeyRepeatCounters[i] = sceneState->nextRepeatWait;
            }
        }
        else
            sKeyRepeatCounters[i] = sceneState->initialRepeatWait;
        gKeyBuf[i] = keys;
    }
}

void main_setKeyRepeat(int initialRepeatWait, int nextRepeatWait)
{
    int i;
    scene_state_t* sceneState = &gSceneState;

    sceneState->initialRepeatWait = initialRepeatWait;
    sceneState->nextRepeatWait = nextRepeatWait;
    for (i = 0; i < 4; i++)
        sKeyRepeatCounters[i] = sceneState->initialRepeatWait;
}

u16 main_getKeys(void)
{
    int mPlayerId = sio2_sMPlayerId.mPlayerId;
    if (mPlayerId == -1)
        mPlayerId = 0;
    return gKeyBuf[mPlayerId];
}

u16 main_getTriggerKeys(void)
{
    int mPlayerId = sio2_sMPlayerId.mPlayerId;
    if (mPlayerId == -1)
        mPlayerId = 0;
    return gKeyTriggerBuf[mPlayerId];
}

u16 main_getRepeatTriggerKeys(void)
{
    int mPlayerId = sio2_sMPlayerId.mPlayerId;
    if (mPlayerId == -1)
        mPlayerId = 0;
    return gKeyRepeatTriggerBuf[mPlayerId];
}

u32 main_checkKeys(u16 mask)
{
    u16 keys;
    int mPlayerId = sio2_sMPlayerId.mPlayerId;
    if (mPlayerId == -1)
        mPlayerId = 0;
    keys = gKeyBuf[mPlayerId];
    return keys & mask;
}

u32 main_checkKeysTriggered(u16 mask)
{
    u16 keys;
    int mPlayerId = sio2_sMPlayerId.mPlayerId;
    if (mPlayerId == -1)
        mPlayerId = 0;
    keys = gKeyTriggerBuf[mPlayerId];
    return keys & mask;
}

u32 main_checkKeysRepeatTriggered(u16 mask)
{
    u16 keys;
    int mPlayerId = sio2_sMPlayerId.mPlayerId;
    if (mPlayerId == -1)
        mPlayerId = 0;
    keys = gKeyRepeatTriggerBuf[mPlayerId];
    return keys & mask;
}

static const ioreg_val_t sDefaultRegConfig[] = {
    { &REG_BG0HOFS, 0 },  { &REG_BG0VOFS, 0 },   { &REG_BG1HOFS, 0 }, { &REG_BG1VOFS, 0 },    { &REG_BG2HOFS, 0 },
    { &REG_BG2VOFS, 0 },  { &REG_BG3HOFS, 0 },   { &REG_BG3VOFS, 0 }, { &REG_BG2PA, 0x100 },  { &REG_BG2PB, 0 },
    { &REG_BG2PC, 0 },    { &REG_BG2PD, 0x100 }, { &REG_BG2X_L, 0 },  { &REG_BG2X_H, 0 },     { &REG_BG2Y_L, 0 },
    { &REG_BG2Y_H, 0 },   { &REG_BG3PA, 0x100 }, { &REG_BG3PB, 0 },   { &REG_BG3PC, 0 },      { &REG_BG3PD, 0x100 },
    { &REG_BG3X_L, 0 },   { &REG_BG3X_H, 0 },    { &REG_BG3Y_L, 0 },  { &REG_BG3Y_H, 0 },     { &REG_BLDCNT, 0 },
    { &REG_BLDALPHA, 0 }, { &REG_BLDY, 0 },      { &REG_SIOCNT, 0 },  { &REG_SIOMLT_SEND, 0 }
};

void main_configureIoRegs(const ioreg_val_t* regs, int count)
{
    int i;
    const ioreg_val_t* ptr = regs;

    if (!ptr)
    {
        ptr = sDefaultRegConfig;
        count = sizeof(sDefaultRegConfig) / sizeof(ioreg_val_t);
    }
    for (i = 0; i < count; i++)
    {
        *ptr->reg = ptr->val;
        ptr++;
    }
}

void main_waitVBlankFlag(void)
{
    vu8* ptr = (vu8*)&REG_DISPSTAT;
    register u8 stat asm("r1") = *ptr;
    do
    {
        if (stat & DISPSTAT_VBLANK)
            break;
        stat = *ptr;
    } while (1);
}

void main_waitNotVBlankFlag(void)
{
    vu8* ptr = (vu8*)&REG_DISPSTAT;
    register u8 stat asm("r1") = *ptr;
    do
    {
        if (!(stat & DISPSTAT_VBLANK))
            break;
        stat = *ptr;
    } while (1);
}

void* main_copyThumbFunc(const void* src, void* dst, u32 length)
{
    u32* srcPtr;
    void* dstFuncPtr;
    u32 i;

    srcPtr = (int*)((u32)src & ~1);
    dstFuncPtr = (void*)((u32)dst | 1);
    for (i = 0; i < length >> 2; i++)
        ((u32*)dst)[i] = srcPtr[i];
    return dstFuncPtr;
}

void main_seedRandom(s16 seed)
{
    sRandom = seed;
}

u32 main_getRandom(void)
{
    sRandom = 1103515245 * sRandom + 12345;
    return 2 * sRandom >> 17;
}

void main_dummyIrqHandler(void)
{
}

typedef struct
{
    u16 vblank : 1;
    u16 hblank : 1;
    u16 vcount : 1;
    u16 timer0 : 1;
    u16 timer1 : 1;
    u16 timer2 : 1;
    u16 timer3 : 1;
    u16 sio : 1;
    u16 dma0 : 1;
    u16 dma1 : 1;
    u16 dma2 : 1;
    u16 dma3 : 1;
    u16 keys : 1;
    u16 cartridge : 1;
} irq_flags_t;

bool32 main_getVBlankCheckFlag(void)
{
    return ((irq_flags_t*)0x3007FF8)->vblank;
}

void main_restoreVBlankCheckFlag(bool32 value)
{
    ((irq_flags_t*)0x3007FF8)->vblank = value;
}

void main_frameProc(void)
{
    do
    {
        sFrameCounter = 0;
        VBlankIntrWait();
        m4aSoundMain();
    } while (sio2_update());
    updateKeys();
    trns_update();
}

void main_increaseFrameCounter(void)
{
    sFrameCounter++;
}

void main_setVBlankCheckFlag(void)
{
    ((irq_flags_t*)0x3007FF8)->vblank |= 1;
}

int main_getFrameCounter(void)
{
    return sFrameCounter;
}

void main_setFrameCounter(int value)
{
    sFrameCounter = value;
}
