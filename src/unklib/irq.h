#pragma once

typedef void (*irq_handler_t)(void);

#define IRQ_ID_VBLANK           0
#define IRQ_ID_HBLANK           1
#define IRQ_ID_VCOUNT           2
#define IRQ_ID_TIMER0           3
#define IRQ_ID_TIMER1           4
#define IRQ_ID_TIMER2           5
#define IRQ_ID_TIMER3           6
#define IRQ_ID_SIO              7
#define IRQ_ID_DMA0             8
#define IRQ_ID_DMA1             9
#define IRQ_ID_DMA2             10
#define IRQ_ID_DMA3             11
#define IRQ_ID_KEY              12
#define IRQ_ID_CARTRIDGE        13

#define IRQ_MASK_VBLANK         (1 << 0)
#define IRQ_MASK_HBLANK         (1 << 1)
#define IRQ_MASK_VCOUNT         (1 << 2)
#define IRQ_MASK_TIMER0         (1 << 3)
#define IRQ_MASK_TIMER1         (1 << 4)
#define IRQ_MASK_TIMER2         (1 << 5)
#define IRQ_MASK_TIMER3         (1 << 6)
#define IRQ_MASK_SIO            (1 << 7)
#define IRQ_MASK_DMA0           (1 << 8)
#define IRQ_MASK_DMA1           (1 << 9)
#define IRQ_MASK_DMA2           (1 << 10)
#define IRQ_MASK_DMA3           (1 << 11)
#define IRQ_MASK_KEY            (1 << 12)
#define IRQ_MASK_CARTRIDGE      (1 << 13)

#define IRQ_MASK_IME            (1 << 16)

#define IRQ_UPDATE_MODE_SET     0
#define IRQ_UPDATE_MODE_AND     1
#define IRQ_UPDATE_MODE_OR      2

void irq_init(void);
void irq_updateMask(int mode, int mask);
