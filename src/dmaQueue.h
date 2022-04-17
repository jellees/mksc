#pragma once
#include "list.h"
#include "frameHeap.h"

typedef struct
{
    list_link_single_t link;
    const void* src;
    void* dst;
    u32 config;
} dmaq_entry_t;

typedef struct
{
    list_t list;
    frmheap_t heap;
    volatile bool32 inUse;
} dmaq_t;

void dmaq_process(dmaq_t* queue);
void dmaq_init(dmaq_t* queue);
void dmaq_reset(dmaq_t* queue);
dmaq_entry_t* dmaq_enqueue(dmaq_t* queue, const void* src, void* dst, u32 config);
dmaq_t* dmaq_getVBlankDmaQueue(void);
bool32 dmaq_beginUse(dmaq_t* queue);
void dmaq_endUse(dmaq_t* queue);
