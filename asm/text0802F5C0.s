    .include "asm/macros.inc"

    .syntax unified
    .text
    
    thumb_func_start sub_802F5C0
sub_802F5C0:
    movs r2, #0x00
    movs r1, #0x00
    strh r1, [r0, #0x10]
    str r1, [r0, #0x00]
    str r1, [r0, #0x04]
    str r1, [r0, #0x08]
    strh r1, [r0, #0x26]
    str r1, [r0, #0x28]
    str r1, [r0, #0x2C]
    str r1, [r0, #0x30]
    strh r1, [r0, #0x20]
    strh r1, [r0, #0x22]
    strh r1, [r0, #0x24]
    strb r2, [r0, #0x0C]
    strb r2, [r0, #0x0D]
    strb r2, [r0, #0x0E]
    strh r1, [r0, #0x34]
    adds r3, r0, #0x0
    adds r3, #0x36
    movs r2, #0x7F
    strb r2, [r3, #0x00]
    strh r1, [r0, #0x38]
    str r1, [r0, #0x14]
    str r1, [r0, #0x18]
    bx lr
    .byte 0x00, 0x00
    thumb_func_start sub_802F5F4
sub_802F5F4:
    movs r3, #0x1E
    ldsh r2, [r0, r3]
    movs r3, #0x1E
    ldsh r0, [r1, r3]
    movs r1, #0x00
    cmp r2, r0
    bge _0802F604
    movs r1, #0x01
_0802F604:
    adds r0, r1, #0x0
    bx lr
    thumb_func_start sub_802F608
sub_802F608:
    movs r3, #0x20
    ldsh r2, [r0, r3]
    movs r3, #0x20
    ldsh r0, [r1, r3]
    movs r1, #0x00
    cmp r2, r0
    ble _0802F618
    movs r1, #0x01
_0802F618:
    adds r0, r1, #0x0
    bx lr
    thumb_func_start sub_802F61C
sub_802F61C:
    ldrb r0, [r0, #0x1E]
    ldrb r1, [r1, #0x1E]
    subs r0, r0, r1
    lsls r0, r0, #0x18
    lsrs r1, r0, #0x18
    asrs r0, r0, #0x18
    cmp r0, #0x00
    bge _0802F632
    negs r0, r0
    lsls r0, r0, #0x18
    lsrs r1, r0, #0x18
_0802F632:
    adds r0, r1, #0x0
    bx lr
    .byte 0x00, 0x00
    thumb_func_start sub_802F638
sub_802F638:
    push {r4, r5, r6, lr}
    add sp, #-0x004
    adds r6, r0, #0x0
    ldr r4, _0802F670 @ =0x03002E20
    adds r4, #0x24
    adds r5, r6, #0x0
    adds r5, #0x1C
    adds r3, r6, #0x0
    adds r3, #0x24
    adds r0, r4, #0x0
    adds r1, r6, #0x0
    adds r2, r5, #0x0
    bl sub_804AF10
    adds r2, r6, #0x0
    adds r2, #0x20
    ldr r3, [r6, #0x08]
    movs r1, #0x24
    ldsh r0, [r6, r1]
    str r0, [sp, #0x000]
    adds r0, r4, #0x0
    adds r1, r5, #0x0
    bl sub_804AF24
    add sp, #0x004
    pop {r4, r5, r6}
    pop {r0}
    bx r0
_0802F670: .4byte 0x03002E20
    thumb_func_start sub_802F674
sub_802F674:
    push {r4, lr}
    movs r1, #0x20
    ldsh r3, [r0, r1]
    movs r1, #0x22
    ldsh r2, [r0, r1]
    ldrh r4, [r0, #0x24]
    ldrh r0, [r0, #0x34]
    movs r1, #0x01
    ands r0, r1
    cmp r0, #0x00
    beq _0802F6AE
    adds r1, r3, #0x0
    adds r1, #0x40
    movs r0, #0xB8
    lsls r0, r0, #0x01
    cmp r1, r0
    bhi _0802F6AE
    cmp r2, #0x00
    blt _0802F6AE
    cmp r2, #0xE0
    bgt _0802F6AE
    lsls r0, r4, #0x10
    asrs r1, r0, #0x10
    cmp r1, #0x7F
    ble _0802F6AE
    movs r0, #0x80
    lsls r0, r0, #0x05
    cmp r1, r0
    ble _0802F6B2
_0802F6AE:
    movs r0, #0x00
    b _0802F6B4
_0802F6B2:
    movs r0, #0x01
_0802F6B4:
    pop {r4}
    pop {r1}
    bx r1
    .byte 0x00, 0x00
