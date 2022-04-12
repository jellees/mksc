#pragma once

void dma_copy16(const void* src, void* dst, int halfwordCount);
void dma_setupChannel(int channel, void* dst, const void* src, u32 count, u32 control);
void dma_80626F4(int a1, const void* src, int a3, int count);
void dma_8062730(int a1, const void* src, int a3, int count);
void dma_8062740(void* dst, const void* src, int a3, int count);
