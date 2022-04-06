#pragma once

typedef struct
{
    u8* head;
    u8* ptr;
    u32 size;
} frmheap_t;

void frmheap_init(frmheap_t* heap, void* address, u32 size);
void frmheap_reset(frmheap_t* heap);
void* frmheap_calloc(frmheap_t* heap, int elements, int elemSize);
