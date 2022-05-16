.include "asm/macros.inc"

.syntax unified
.text

    thumb_func_start sub_80301A8
sub_80301A8:
    push {r4, r5, r6, lr}
    adds r5, r0, #0x0
    adds r1, r5, #0x0
    adds r1, #0x4C
    ldrh r2, [r1, #0x00]
    movs r3, #0x00
    ldsh r0, [r1, r3]
    cmp r0, #0x00
    beq _080301C0
    subs r0, r2, #0x1
    strh r0, [r1, #0x00]
    b _080301EE
_080301C0:
    ldr r0, [r5, #0x5C]
    cmp r0, #0x00
    beq _080301EE
    adds r4, r5, #0x0
    adds r4, #0x64
    movs r6, #0xFE
_080301CC:
    ldrb r1, [r4, #0x00]
    adds r0, r6, #0x0
    ands r0, r1
    strb r0, [r4, #0x00]
    adds r0, r5, #0x0
    bl sub_8030004
    ldrb r1, [r4, #0x00]
    movs r0, #0x01
    ands r0, r1
    cmp r0, #0x00
    bne _080301CC
    ldr r0, [r5, #0x5C]
    cmp r0, #0x00
    bne _080301EE
    ldr r0, _08030214 @ =0x08030291
    str r0, [r5, #0x14]
_080301EE:
    ldr r2, [r5, #0x60]
    cmp r2, #0x00
    beq _0803021E
    adds r4, r5, #0x0
    adds r4, #0x64
    ldrb r1, [r4, #0x00]
    movs r0, #0x02
    ands r0, r1
    cmp r0, #0x00
    beq _08030218
    adds r0, r5, #0x0
    bl _call_via_r2
    ldrb r1, [r4, #0x00]
    movs r0, #0xFD
    ands r0, r1
    strb r0, [r4, #0x00]
    b _0803021E
    .byte 0x00, 0x00
_08030214: .4byte sub_8030290
_08030218:
    adds r0, r5, #0x0
    bl _call_via_r2
_0803021E:
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    thumb_func_start sub_8030224
sub_8030224:
    push {r4, r5, r6, r7, lr}
    adds r7, r0, #0x0
    adds r5, r1, #0x0
    adds r6, r2, #0x0
    ldr r0, _08030270 @ =0x03002E20
    movs r1, #0xE8
    lsls r1, r1, #0x03
    adds r0, r0, r1
    bl sub_804F7AC
    adds r4, r0, #0x0
    cmp r4, #0x00
    beq _08030268
    adds r1, r4, #0x0
    adds r1, #0x4C
    movs r0, #0x00
    strh r0, [r1, #0x00]
    str r5, [r4, #0x5C]
    str r6, [r4, #0x60]
    adds r1, #0x18
    movs r0, #0x02
    strb r0, [r1, #0x00]
    ldr r0, _08030274 @ =0x080301A9
    str r0, [r4, #0x14]
    movs r1, #0x80
    lsls r1, r1, #0x01
    adds r0, r4, #0x0
    adds r0, #0x58
    strh r1, [r0, #0x00]
    cmp r7, #0x00
    beq _08030268
    adds r0, r4, #0x0
    bl _call_via_r7
_08030268:
    adds r0, r4, #0x0
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
_08030270: .4byte 0x03002E20
_08030274: .4byte sub_80301A8
    thumb_func_start sub_8030278
sub_8030278:
    ldr r1, [r0, #0x68]
    strh r1, [r0, #0x24]
    bx lr
    .byte 0x00, 0x00
    thumb_func_start sub_8030280
sub_8030280:
    ldr r1, [r0, #0x68]
    adds r0, #0x80
    ldr r0, [r0, #0x00]
    str r1, [r0, #0x08]
    bx lr
    .byte 0x00, 0x00
    thumb_func_start nullsub_10
nullsub_10: @ 0803028C
    bx lr
    .byte 0x00, 0x00
    thumb_func_start sub_8030290
sub_8030290:
    push {lr}
    adds r1, r0, #0x0
    ldr r0, _080302A4 @ =0x03002E20
    movs r2, #0xE8
    lsls r2, r2, #0x03
    adds r0, r0, r2
    bl sub_804F808
    pop {r0}
    bx r0
_080302A4: .4byte 0x03002E20
