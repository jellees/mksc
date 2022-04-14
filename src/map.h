#pragma once

#define MAP_BUFFER_0 0
#define MAP_BUFFER_1 1

#define MAP_MASK_BUFFER_0 (1 << 0)
#define MAP_MASK_BUFFER_1 (1 << 1)

u16* map_getBufferPtr(int buffer);
u16* map_getBufferPtr2d(int buffer, int x, int y);
void map_setBufferDestination(int buffer, void* dst);
void map_clearBuffer(int buffer);
void map_setBufferDirty(u16 mask);
void map_copyBuffersToHw(void);
