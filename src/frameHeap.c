#include "common.h"
#include "frameHeap.h"

void frmheap_init(frmheap_t* heap, void* address, u32 size)
{
    u32 i;
    heap->head = address;
    heap->ptr = address;
    heap->size = size;
    for (i = 0; i < heap->size >> 2; i++)
        *(u32*)&heap->head[i << 2] = 0;
}

void frmheap_reset(frmheap_t* heap)
{
    heap->ptr = heap->head;
}

void* frmheap_calloc(frmheap_t* heap, int elements, int elemSize)
{
    void* result;
    u32 size, i;
    u8* ptr;

    result = NULL;
    size = elements * elemSize;
    if (heap->ptr + size <= heap->head + heap->size)
    {
        result = heap->ptr;
        heap->ptr += size;
        ptr = result;
        for (i = 0; i < size >> 2; i++)
            *(u32*)ptr++ = 0; // bug, increment is 1 instead of 4
        for (i = 0; i < (size & 3); i++)
            *ptr++ = 0;
    }
    return result;
}
