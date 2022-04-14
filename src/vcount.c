#include "common.h"
#include "list.h"
#include "frameHeap.h"
#include "vcount.h"

vcount_state_t gVCountState;

static u8 sHeapSpace[0x100];

void vcount_init(void)
{
    REG_DISPSTAT_STRUCT->vcountCmp = 0;
    REG_DISPSTAT_STRUCT->vcountIrq = FALSE;
    gVCountState.curEntry = NULL;
    frmheap_init(&gVCountState.heap, sHeapSpace, sizeof(sHeapSpace));
    list_init(&gVCountState.list);
}

void vcount_reset(void)
{
    REG_DISPSTAT_STRUCT->vcountCmp = 0;
    REG_DISPSTAT_STRUCT->vcountIrq = FALSE;
    gVCountState.curEntry = NULL;
    frmheap_reset(&gVCountState.heap);
    list_init(&gVCountState.list);
}

vcount_entry_t* vcount_register(int vcount, vcount_func_t func)
{
    vcount_entry_t* result;
    vcount_entry_t* i;
    vcount_entry_t* next;
    volatile dispstat_t* dispstat;

    result = (vcount_entry_t*)frmheap_calloc(&gVCountState.heap, 1, sizeof(vcount_entry_t));
    if (result)
    {
        result->vcount = vcount;
        result->func = func;

        i = (vcount_entry_t*)list_getHead(&gVCountState.list);
        while (1)
        {
            if (i)
            {
                if (i->vcount > vcount)
                {
                    list_insertBefore(&gVCountState.list, &i->link, &result->link);
                    break;
                }
            }
            else
            {
                list_insertTail(&gVCountState.list, &result->link);
                break;
            }
            i = (vcount_entry_t*)list_getNext(&gVCountState.list, &i->link);
        }

        next = (vcount_entry_t*)list_getHead(&gVCountState.list);
        dispstat = REG_DISPSTAT_STRUCT;
        gVCountState.curEntry = next;
        dispstat->vcountCmp = next->vcount;
        dispstat->vcountIrq = TRUE;
    }
    return result;
}

void vcount_unregister(vcount_entry_t* entry)
{
    list_remove(&gVCountState.list, &entry->link);
}

void vcount_irqHandler(void)
{
    vcount_entry_t* entry;
    volatile dispstat_t* dispstat;

    entry = gVCountState.curEntry;
    entry->func();

    entry = (vcount_entry_t*)list_getNext(&gVCountState.list, &entry->link);
    if (!entry)
        entry = (vcount_entry_t*)list_getHead(&gVCountState.list);

    dispstat = REG_DISPSTAT_STRUCT;
    gVCountState.curEntry = entry;
    dispstat->vcountCmp = entry->vcount;
    dispstat->vcountIrq = TRUE;
}