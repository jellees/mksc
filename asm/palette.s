    .include "asm/macros.inc"

    .syntax unified
    .text

    thumb_func_start pltt_getBuffer
pltt_getBuffer: @ 0802E630
    lsls r0, r0, #0x09
    ldr r1, _0802E638 @ =0x030002D8
    adds r0, r0, r1
    bx lr
_0802E638: .4byte 0x030002D8
    thumb_func_start pltt_clearBuffer
pltt_clearBuffer: @ 0802E63C
    push {lr}
    add sp, #-0x004
    movs r0, #0x00
    str r0, [sp, #0x000]
    ldr r1, _0802E65C @ =0x030002D8
    ldr r2, _0802E660 @ =0x01000100
    mov r0, sp
    bl CpuFastSet
    ldr r1, _0802E664 @ =0x030006D8
    movs r0, #0x01
    str r0, [r1, #0x00]
    add sp, #0x004
    pop {r0}
    bx r0
    .byte 0x00, 0x00
_0802E65C: .4byte 0x030002D8
_0802E660: .4byte 0x01000100
_0802E664: .4byte 0x030006D8
    thumb_func_start pltt_setDirtyFlag
pltt_setDirtyFlag: @ 0802E668
    ldr r1, _0802E670 @ =0x030006D8
    str r0, [r1, #0x00]
    bx lr
    .byte 0x00, 0x00
_0802E670: .4byte 0x030006D8
    thumb_func_start pltt_copyBufferToHw
pltt_copyBufferToHw: @ 0802E674
    ldr r2, _0802E694 @ =0x030006D8
    ldr r0, [r2, #0x00]
    cmp r0, #0x00
    beq _0802E692
    ldr r1, _0802E698 @ =0x040000B0
    ldr r0, _0802E69C @ =0x030002D8
    str r0, [r1, #0x00]
    movs r0, #0xA0
    lsls r0, r0, #0x13
    str r0, [r1, #0x04]
    ldr r0, _0802E6A0 @ =0x80000200
    str r0, [r1, #0x08]
    ldr r0, [r1, #0x08]
    movs r0, #0x00
    str r0, [r2, #0x00]
_0802E692:
    bx lr
_0802E694: .4byte 0x030006D8
_0802E698: .4byte 0x040000B0
_0802E69C: .4byte 0x030002D8
_0802E6A0: .4byte 0x80000200
