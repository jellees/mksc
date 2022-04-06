#include "gba/gba.h"
#include "map.h"

static u16 sBuffer[2][1024];
static u16 sBufferDirtyMask;
static void* sBufferDestinations[2];

u16* map_getBufferPtr(int buffer)
{
    return sBuffer[buffer];
}

u16* map_getBufferPtr2d(int buffer, int x, int y)
{
    return &sBuffer[buffer][y * 32 + x];
}

void map_setBufferDestination(int buffer, void* dst)
{
    sBufferDestinations[buffer] = dst;
}

void map_clearBuffer(int buffer)
{
    CpuFastFill(0, sBuffer[buffer], sizeof(sBuffer[0]));
}

void map_setBufferDirty(u16 mask)
{
    *(vu16*)&sBufferDirtyMask |= mask;
}

void map_copyBuffersToHw(void)
{
    if (sBufferDirtyMask & MAP_MASK_BUFFER_0)
    {
        DmaCopy32(0, sBuffer[0], sBufferDestinations[0], 2048);
        sBufferDirtyMask &= ~MAP_MASK_BUFFER_0;
    }

    if (sBufferDirtyMask & MAP_MASK_BUFFER_1)
    {
        DmaCopy32(0, sBuffer[1], sBufferDestinations[1], 2048);
        sBufferDirtyMask &= ~MAP_MASK_BUFFER_1;
    }
}
