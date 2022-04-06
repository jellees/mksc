#include "gba/gba.h"
#include "palette.h"

static u16 sBuffer[2][256];
static bool32 sDirtyFlag;

u16* pltt_getBuffer(int buffer)
{
    return sBuffer[buffer];
}

void pltt_clearBuffer(void)
{
    CpuFastFill(0, sBuffer, sizeof(sBuffer));
    sDirtyFlag = TRUE;
}

void pltt_setDirtyFlag(bool32 dirty)
{
    sDirtyFlag = dirty;
}

void pltt_copyBufferToHw(void)
{
    if (!sDirtyFlag)
        return;

    DmaCopy16(0, sBuffer, PLTT, sizeof(sBuffer));
    sDirtyFlag = FALSE;
}
