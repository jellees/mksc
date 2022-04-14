#pragma once

typedef void (*vcount_func_t)(void);

typedef struct
{
    list_link_double_t link;
    int vcount;
    vcount_func_t func;
} vcount_entry_t;

typedef struct
{
    list_t list;
    frmheap_t heap;
    vcount_entry_t* curEntry;
} vcount_state_t;

typedef struct
{
    u16 vblank : 1;
    u16 hblank : 1;
    u16 vCountMatch : 1;
    u16 vblankIrq : 1;
    u16 hblankIrq : 1;
    u16 vcountIrq : 1;
    u16 padding : 2;
    u8 vcountCmp;
} dispstat_t;

#define REG_DISPSTAT_STRUCT ((volatile dispstat_t*)REG_ADDR_DISPSTAT)

extern vcount_state_t gVCountState;

void vcount_init(void);
void vcount_reset(void);
vcount_entry_t* vcount_register(int vcount, vcount_func_t func);
void vcount_unregister(vcount_entry_t* entry);
void vcount_irqHandler(void);
