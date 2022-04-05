    .include "asm/macros.inc"

    .syntax unified
    .text

    thumb_func_start map_getBufferPtr
map_getBufferPtr:
    lsls r0, r0, #0x0B
    ldr r1, _0802E6AC @ =0x030006E0
    adds r0, r0, r1
    bx lr
_0802E6AC: .4byte 0x030006E0

    thumb_func_start map_getBufferPtr2d
map_getBufferPtr2d:
    lsls r0, r0, #0x0B
    lsls r2, r2, #0x05
    adds r2, r2, r1
    lsls r2, r2, #0x01
    ldr r1, _0802E6C0 @ =0x030006E0
    adds r2, r2, r1
    adds r0, r0, r2
    bx lr
_0802E6C0: .4byte 0x030006E0

    thumb_func_start map_setBufferDestination
map_setBufferDestination:
    ldr r2, _0802E6D0 @ =0x030016E8
    lsls r0, r0, #0x02
    adds r0, r0, r2
    str r1, [r0, #0x00]
    bx lr
    .byte 0x00, 0x00
_0802E6D0: .4byte 0x030016E8

    thumb_func_start map_clearBuffer
map_clearBuffer:
    push {lr}
    add sp, #-0x004
    adds r1, r0, #0x0
    movs r0, #0x00
    str r0, [sp, #0x000]
    lsls r1, r1, #0x0B
    ldr r0, _0802E6F4 @ =0x030006E0
    adds r1, r1, r0
    ldr r2, _0802E6F8 @ =0x01000200
    mov r0, sp
    bl CpuFastSet
    add sp, #0x004
    pop {r0}
    bx r0
    .byte 0x00, 0x00
_0802E6F4: .4byte 0x030006E0
_0802E6F8: .4byte 0x01000200

    thumb_func_start map_setBufferEnableMask
map_setBufferEnableMask:
    lsls r0, r0, #0x10
    lsrs r0, r0, #0x10
    ldr r2, _0802E70C @ =0x030016E0
    ldrh r1, [r2, #0x00]
    orrs r0, r1
    strh r0, [r2, #0x00]
    bx lr
    .byte 0x00, 0x00
_0802E70C: .4byte 0x030016E0

    thumb_func_start map_copyBuffersToHw
map_copyBuffersToHw:
    ldr r3, _0802E758 @ =0x030016E0
    ldrh r2, [r3, #0x00]
    movs r0, #0x01
    ands r0, r2
    cmp r0, #0x00
    beq _0802E734
    ldr r1, _0802E75C @ =0x040000B0
    ldr r0, _0802E760 @ =0x030006E0
    str r0, [r1, #0x00]
    ldr r0, _0802E764 @ =0x030016E8
    ldr r0, [r0, #0x00]
    str r0, [r1, #0x04]
    ldr r0, _0802E768 @ =0x84000200
    str r0, [r1, #0x08]
    ldr r0, [r1, #0x08]
    ldr r0, _0802E76C @ =0x0000FFFE
    ands r0, r2
    strh r0, [r3, #0x00]
_0802E734:
    ldrh r2, [r3, #0x00]
    movs r0, #0x02
    ands r0, r2
    cmp r0, #0x00
    beq _0802E756
    ldr r1, _0802E75C @ =0x040000B0
    ldr r0, _0802E770 @ =0x03000EE0
    str r0, [r1, #0x00]
    ldr r0, _0802E764 @ =0x030016E8
    ldr r0, [r0, #0x04]
    str r0, [r1, #0x04]
    ldr r0, _0802E768 @ =0x84000200
    str r0, [r1, #0x08]
    ldr r0, [r1, #0x08]
    ldr r0, _0802E774 @ =0x0000FFFD
    ands r0, r2
    strh r0, [r3, #0x00]
_0802E756:
    bx lr
_0802E758: .4byte 0x030016E0
_0802E75C: .4byte 0x040000B0
_0802E760: .4byte 0x030006E0
_0802E764: .4byte 0x030016E8
_0802E768: .4byte 0x84000200
_0802E76C: .4byte 0x0000FFFE
_0802E770: .4byte 0x03000EE0
_0802E774: .4byte 0x0000FFFD
