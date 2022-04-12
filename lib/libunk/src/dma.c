#include "common.h"
#include "dma.h"

void dma_copy16(const void* src, void* dst, int halfwordCount)
{
    halfwordCount = (u16)halfwordCount;
    *(vu16*)&REG_DMA3SAD = (u16)(u32)src;
    *((vu16*)&REG_DMA3SAD + 1) = (int)src >> 16;
    *(vu16*)&REG_DMA3DAD = (u16)(u32)dst;
    *((vu16*)&REG_DMA3DAD + 1) = (int)dst >> 16;
    REG_DMA3CNT_L = halfwordCount;
    REG_DMA3CNT_H = DMA_ENABLE;
}

void dma_setupChannel(int channel, void* dst, const void* src, u32 count, u32 control)
{
    register vu16* ptr asm("r0");
    u32 offset = 12 * channel;
    *(vu32*)(REG_ADDR_DMA0SAD + offset) = (u32)src;
    *(vu32*)(REG_ADDR_DMA0DAD + offset) = (u32)dst;
    *(vu16*)(REG_ADDR_DMA0CNT_L + offset) = count;
    ptr = (vu16*)(REG_ADDR_DMA0CNT_H + offset);
    *ptr = control;
}

void dma_80626F4(int a1, const void* src, int a3, int count)
{
    u8* dst;
    int cnt;
    int srcStep;
    int v6;
    const u8* srcPtr;

    if (count <= 0)
        return;

    dst = 32 * a1 + (u8*)BG_VRAM;
    srcPtr = src;
    v6 = a3 << 20;
    srcStep = a3 * 32;
    cnt = count;
    do
    {
        dma_copy16(srcPtr, dst, v6 >> 16);
        dst += 1024;
        srcPtr += srcStep;
    } while (--cnt);
}

void dma_8062730(int a1, const void* src, int a3, int count)
{
    dma_80626F4(a1 + 2048, src, a3, count);
}

void dma_8062740(void* dst, const void* src, int a3, int count)
{
    const u8* srcPtr;
    u8* dstPtr;
    int v6;
    int srcStep;
    int cnt;
    int i;

    if (count <= 0)
        return;

    dstPtr = dst;
    srcPtr = src;
    v6 = a3 << 16;
    srcStep = a3 << 1;
    
    cnt = count;
    
    do
    {
        dma_copy16(srcPtr, dstPtr, v6 >> 16);
        dstPtr += 64;
        srcPtr += srcStep;
    } while(--cnt);
}
