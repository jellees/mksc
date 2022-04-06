#pragma once

#define PLTT_BUFFER_BG     0
#define PLTT_BUFFER_OBJ    1

u16* pltt_getBuffer(int buffer);
void pltt_clearBuffer(void);
void pltt_setDirtyFlag(bool32 dirty);
void pltt_copyBufferToHw(void);
