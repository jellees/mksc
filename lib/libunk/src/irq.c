#include "common.h"
#include "dma.h"
#include "irq.h"

static u32 sMask;
static u8 sIntrMain[512];

static void dummyHandler(void)
{

}

static const irq_handler_t sIrqTableInitData[15] =
{
    dummyHandler,
    dummyHandler,
    dummyHandler,
    dummyHandler,
    dummyHandler,
    dummyHandler,
    dummyHandler,
    dummyHandler,
    dummyHandler,
    dummyHandler,
    dummyHandler,
    dummyHandler,
    dummyHandler,
    dummyHandler,
    dummyHandler
};

extern void intr_main(void);
extern irq_handler_t gIrqTable[];

void irq_init()
{
    irq_updateMask(IRQ_UPDATE_MODE_SET, 0);
    dma_copy16(sIrqTableInitData, gIrqTable, sizeof(sIrqTableInitData) >> 1);
    dma_copy16(intr_main, sIntrMain, sizeof(sIntrMain) >> 1);
    INTR_VECTOR_BUF = sIntrMain;
}

void irq_setHandler(int irqId, irq_handler_t handler)
{
    gIrqTable[irqId] = handler;
}

void irq_updateMask(int mode, int mask)
{
    switch (mode)
    {
        case IRQ_UPDATE_MODE_SET:
            sMask = mask;
            break;
        case IRQ_UPDATE_MODE_AND:
            sMask &= mask;
            break;
        case IRQ_UPDATE_MODE_OR:
            sMask |= mask;
            break;
    }

    REG_IE = sMask;
    if (sMask & IRQ_MASK_IME)
        REG_IME = 1;
    else
        REG_IME = 0;
}
