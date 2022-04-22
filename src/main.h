#pragma once

typedef struct
{
    vu16* reg;
    u16 val;
} ioreg_val_t;

void main_setKeyRepeat(int initialRepeatWait, int nextRepeatWait);
u16 main_getKeys(void);
u16 main_getTriggerKeys(void);
u16 main_getRepeatTriggerKeys(void);
u16 main_checkKeys(u16 mask);
u16 main_checkKeysTriggered(u16 mask);
u16 main_checkKeysRepeatTriggered(u16 mask);
void main_configureIoRegs(const ioreg_val_t* regs, int count);
void main_waitVBlankFlag(void);
void main_waitNotVBlankFlag(void);
void* main_copyThumbFunc(const void* src, void* dst, u32 length);
void main_seedRandom(s16 seed);
u32 main_getRandom(void);
void main_dummyIrqHandler(void);
bool32 main_getVBlankCheckFlag(void);
void main_restoreVBlankCheckFlag(bool32 value);
void main_frameProc(void);
void main_increaseFrameCounter(void);
void main_setVBlankCheckFlag(void);
int main_getFrameCounter(void);
void main_setFrameCounter(int value);
