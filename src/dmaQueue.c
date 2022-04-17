#include "common.h"
#include "dmaQueue.h"

// static u8 sHeap[0x600];
extern u8 dmaq_sHeap[0x600];

static dmaq_t sVBlankDmaQueue;

void dmaq_process(dmaq_t* queue)
{
    dmaq_entry_t* entry;
    const u8* src;
    u32 srcMode;
    u8* dst;
    u32 shift;
    u32 left;
    int size;
    u32 dstMode;
    frmheap_t* heap;

    if (!queue->inUse)
    {
        queue->inUse = TRUE;
        entry = (dmaq_entry_t*)queue->list.head;
        heap = &queue->heap;
        while (entry)
        {
            vu32* dmaRegs = (vu32*)REG_ADDR_DMA3;
            src = entry->src;
            dst = entry->dst;
            shift = entry->config & (DMA_32BIT << 16) ? 2 : 1;
            left = (entry->config & 0xFFFF) << shift;
            srcMode = entry->config & 0x1800000;
            dstMode = entry->config & 0x600000;
            do
            {
                size = left > 2048 ? 2048 : left;
                dmaRegs[0] = (u32)src;
                dmaRegs[1] = (u32)dst;
                dmaRegs[2] = entry->config & 0xFFFF0000 | ((size >> shift) & 0xFFFF);

                switch (srcMode)
                {
                    case DMA_SRC_INC << 16:
                        src += size;
                        break;
                    case DMA_SRC_DEC << 16:
                        src -= size;
                        break;
                }
                switch (dstMode)
                {
                    case DMA_DEST_INC << 16:
                        dst += size;
                        break;
                    case DMA_DEST_DEC << 16:
                        dst -= size;
                        break;
                }

                left -= size;
            } while (left);
            entry = (dmaq_entry_t*)entry->link.next;
        }
        frmheap_reset(heap);
        queue->list.tail = NULL;
        queue->list.head = NULL;
    }
    queue->inUse = FALSE;
}

void dmaq_init(dmaq_t* queue)
{
    frmheap_init(&queue->heap, dmaq_sHeap, sizeof(dmaq_sHeap));
    queue->list.tail = NULL;
    queue->list.head = NULL;
    queue->inUse = FALSE;
}

void dmaq_reset(dmaq_t* queue)
{
    bool32 one;
    do
    {
        one = TRUE;
    } while (0);
    while (queue->inUse)
        ;
    queue->inUse = one;
    frmheap_reset(&queue->heap);
    queue->list.tail = NULL;
    queue->list.head = NULL;
    queue->inUse = FALSE;
}

dmaq_entry_t* dmaq_enqueue(dmaq_t* queue, const void* src, void* dst, u32 config)
{
    dmaq_entry_t* result;
    bool32 one;
    do
    {
        one = TRUE;
    } while (0);
    while (queue->inUse)
        ;
    queue->inUse = one;
    result = (dmaq_entry_t*)frmheap_calloc(&queue->heap, 1, sizeof(dmaq_entry_t));
    if (result)
    {
        result->src = src;
        result->dst = dst;
        result->config = config;
        list_insertTailSingle(&queue->list, &result->link);
    }
    queue->inUse = FALSE;
    return result;
}

dmaq_t* dmaq_getVBlankDmaQueue(void)
{
    return &sVBlankDmaQueue;
}

bool32 dmaq_beginUse(dmaq_t* queue)
{
    bool32 result;
    if (queue->inUse)
        result = FALSE;
    else
    {
        queue->inUse = TRUE;
        result = TRUE;
    }
    return result;
}

void dmaq_endUse(dmaq_t* queue)
{
    queue->inUse = FALSE;
}
