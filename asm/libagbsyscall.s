.include "asm/macros.inc"
.syntax unified

.text

thumb_func_start ArcTan2
ArcTan2:
    swi #10
    bx lr

thumb_func_start CpuFastSet
CpuFastSet:
    swi #12
    bx lr

thumb_func_start CpuSet
CpuSet:
    swi #11
    bx lr

thumb_func_start Div
Div:
    swi #6
    bx lr

thumb_func_start DivRem
DivRem:
    swi #6
    adds r0, r1, #0x0
    bx lr

.align 2, 0

thumb_func_start LZ77UnCompVram
LZ77UnCompVram: @ 08061360
    swi #18
    bx lr

thumb_func_start LZ77UnCompWram
LZ77UnCompWram: @ 08061364
    swi #17
    bx lr

thumb_func_start MultiBoot
MultiBoot: @ 08061368
    movs r1, #0x01
    swi #37
    bx lr

.align 2, 0

thumb_func_start SoftReset
SoftReset:
    ldr r3,= 0x04000208
    movs r2, #0x00
    strb r2, [r3, #0x00]
    ldr r1,= 0x03007F00
    mov sp, r1
    swi #1
    swi #0
    
.pool

thumb_func_start VBlankIntrWait
VBlankIntrWait:
    movs r2, #0x00
    swi #5
    bx lr

.align 2, 0
