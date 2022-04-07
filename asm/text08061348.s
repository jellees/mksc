    .include "asm/macros.inc"

.syntax unified
.text
    thumb_func_start ArcTan2
ArcTan2: @ 08061348
    swi #10
    bx lr
    thumb_func_start CpuFastSet
CpuFastSet: @ 0806134C
    swi #12
    bx lr
    thumb_func_start CpuSet
CpuSet: @ 08061350
    swi #11
    bx lr
    thumb_func_start Div
Div: @ 08061354
    swi #6
    bx lr
    thumb_func_start DivRem
DivRem: @ 08061358
    swi #6
    adds r0, r1, #0x0
    bx lr
    .byte 0x00, 0x00
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
    .byte 0x00, 0x00
    thumb_func_start SoftReset
SoftReset: @ 08061370
    ldr r3, _08061380 @ =0x04000208
    movs r2, #0x00
    strb r2, [r3, #0x00]
    ldr r1, _08061384 @ =0x03007F00
    mov sp, r1
    swi #1
    swi #0
    lsls r0, r0, #0x00
_08061380:
    lsls r0, r1, #0x08
    lsls r0, r0, #0x10
_08061384:
    ldrb r0, [r0, #0x1C]
    lsls r0, r0, #0x0C
    thumb_func_start VBlankIntrWait
VBlankIntrWait: @ 08061388
    movs r2, #0x00
    swi #5
    bx lr
    .byte 0x00, 0x00
    thumb_func_start ReadFlashID
ReadFlashID: @ 08061390
    push {r4, r5, lr}
    add sp, #-0x044
    mov r0, sp
    bl SetReadFlash1
    mov r5, sp
    adds r5, #0x01
    ldr r2, _080613B8 @ =0x0E005555
    movs r0, #0xAA
    strb r0, [r2, #0x00]
    ldr r1, _080613BC @ =0x0E002AAA
    movs r0, #0x55
    strb r0, [r1, #0x00]
    movs r0, #0x90
    strb r0, [r2, #0x00]
    add r1, sp, #0x040
    ldr r2, _080613C0 @ =0x00004E20
    adds r0, r2, #0x0
    b _080613C8
    .byte 0x00, 0x00
_080613B8: .4byte 0x0E005555
_080613BC: .4byte 0x0E002AAA
_080613C0: .4byte 0x00004E20
_080613C4:
    ldrh r0, [r1, #0x00]
    subs r0, #0x01
_080613C8:
    strh r0, [r1, #0x00]
    ldrh r0, [r1, #0x00]
    cmp r0, #0x00
    bne _080613C4
    ldr r0, _08061400 @ =0x0E000001
    bl _call_via_r5
    lsls r0, r0, #0x18
    lsrs r4, r0, #0x10
    movs r0, #0xE0
    lsls r0, r0, #0x14
    bl _call_via_r5
    lsls r0, r0, #0x18
    lsrs r0, r0, #0x18
    orrs r4, r0
    ldr r2, _08061404 @ =0x0E005555
    movs r0, #0xAA
    strb r0, [r2, #0x00]
    ldr r1, _08061408 @ =0x0E002AAA
    movs r0, #0x55
    strb r0, [r1, #0x00]
    movs r0, #0xF0
    strb r0, [r2, #0x00]
    add r1, sp, #0x040
    ldr r2, _0806140C @ =0x00004E20
    adds r0, r2, #0x0
    b _08061414
_08061400: .4byte 0x0E000001
_08061404: .4byte 0x0E005555
_08061408: .4byte 0x0E002AAA
_0806140C: .4byte 0x00004E20
_08061410:
    ldrh r0, [r1, #0x00]
    subs r0, #0x01
_08061414:
    strh r0, [r1, #0x00]
    ldrh r0, [r1, #0x00]
    cmp r0, #0x00
    bne _08061410
    adds r0, r4, #0x0
    add sp, #0x044
    pop {r4, r5}
    pop {r1}
    bx r1
    .byte 0x00, 0x00
    thumb_func_start IdentifyFlash
IdentifyFlash: @ 08061428
    push {r4, lr}
    ldr r2, _08061448 @ =0x04000204
    ldrh r0, [r2, #0x00]
    ldr r1, _0806144C @ =0x0000FFFC
    ands r0, r1
    movs r1, #0x03
    orrs r0, r1
    strh r0, [r2, #0x00]
    bl ReadFlashID
    lsls r0, r0, #0x10
    lsrs r3, r0, #0x10
    ldr r2, _08061450 @ =0x081E9784
    movs r4, #0x01
    b _08061456
    .byte 0x00, 0x00
_08061448: .4byte 0x04000204
_0806144C: .4byte 0x0000FFFC
_08061450: .4byte 0x081E9784
_08061454:
    adds r2, #0x04
_08061456:
    ldr r1, [r2, #0x00]
    adds r0, r1, #0x0
    adds r0, #0x28
    ldrb r0, [r0, #0x00]
    cmp r0, #0x00
    beq _0806146A
    ldrh r0, [r1, #0x28]
    cmp r3, r0
    bne _08061454
    movs r4, #0x00
_0806146A:
    ldr r1, _080614A4 @ =0x03006A84
    ldr r0, [r2, #0x00]
    ldr r0, [r0, #0x00]
    str r0, [r1, #0x00]
    ldr r1, _080614A8 @ =0x03006A90
    ldr r0, [r2, #0x00]
    ldr r0, [r0, #0x04]
    str r0, [r1, #0x00]
    ldr r1, _080614AC @ =0x03006A94
    ldr r0, [r2, #0x00]
    ldr r0, [r0, #0x08]
    str r0, [r1, #0x00]
    ldr r1, _080614B0 @ =0x03006A80
    ldr r0, [r2, #0x00]
    ldr r0, [r0, #0x0C]
    str r0, [r1, #0x00]
    ldr r1, _080614B4 @ =0x030023E0
    ldr r0, [r2, #0x00]
    ldr r0, [r0, #0x10]
    str r0, [r1, #0x00]
    ldr r1, _080614B8 @ =0x03006A88
    ldr r0, [r2, #0x00]
    adds r0, #0x14
    str r0, [r1, #0x00]
    adds r0, r4, #0x0
    pop {r4}
    pop {r1}
    bx r1
    .byte 0x00, 0x00
_080614A4: .4byte 0x03006A84
_080614A8: .4byte 0x03006A90
_080614AC: .4byte 0x03006A94
_080614B0: .4byte 0x03006A80
_080614B4: .4byte 0x030023E0
_080614B8: .4byte 0x03006A88
    thumb_func_start FlashTimerIntr
FlashTimerIntr: @ 080614BC
    ldr r1, _080614D8 @ =0x030023EA
    ldrh r0, [r1, #0x00]
    cmp r0, #0x00
    beq _080614D6
    ldrh r0, [r1, #0x00]
    subs r0, #0x01
    strh r0, [r1, #0x00]
    lsls r0, r0, #0x10
    cmp r0, #0x00
    bne _080614D6
    ldr r1, _080614DC @ =0x030023EC
    movs r0, #0x01
    strb r0, [r1, #0x00]
_080614D6:
    bx lr
_080614D8: .4byte 0x030023EA
_080614DC: .4byte 0x030023EC
    thumb_func_start SetFlashTimerIntr
SetFlashTimerIntr: @ 080614E0
    adds r2, r1, #0x0
    lsls r0, r0, #0x18
    lsrs r1, r0, #0x18
    cmp r1, #0x03
    bhi _08061514
    ldr r0, _08061504 @ =0x030023E8
    strb r1, [r0, #0x00]
    ldr r1, _08061508 @ =0x030023F0
    ldrb r0, [r0, #0x00]
    lsls r0, r0, #0x02
    ldr r3, _0806150C @ =0x04000100
    adds r0, r0, r3
    str r0, [r1, #0x00]
    ldr r0, _08061510 @ =0x080614BD
    str r0, [r2, #0x00]
    movs r0, #0x00
    b _08061516
    .byte 0x00, 0x00
_08061504: .4byte 0x030023E8
_08061508: .4byte 0x030023F0
_0806150C: .4byte 0x04000100
_08061510: .4byte FlashTimerIntr
_08061514:
    movs r0, #0x01
_08061516:
    bx lr
    thumb_func_start StartFlashTimer
StartFlashTimer: @ 08061518
    push {r4, r5, lr}
    lsls r0, r0, #0x18
    lsrs r0, r0, #0x18
    ldr r1, _08061570 @ =0x030023E0
    lsls r2, r0, #0x01
    adds r2, r2, r0
    lsls r2, r2, #0x01
    ldr r0, [r1, #0x00]
    adds r2, r2, r0
    ldr r1, _08061574 @ =0x030023F4
    ldr r3, _08061578 @ =0x04000208
    ldrh r0, [r3, #0x00]
    strh r0, [r1, #0x00]
    movs r5, #0x00
    strh r5, [r3, #0x00]
    ldr r4, _0806157C @ =0x04000200
    ldr r0, _08061580 @ =0x030023E8
    ldrb r0, [r0, #0x00]
    movs r1, #0x08
    lsls r1, r0
    ldrh r0, [r4, #0x00]
    orrs r0, r1
    strh r0, [r4, #0x00]
    movs r0, #0x01
    strh r0, [r3, #0x00]
    ldr r0, _08061584 @ =0x030023EC
    strb r5, [r0, #0x00]
    ldr r1, _08061588 @ =0x030023EA
    ldrh r0, [r2, #0x00]
    strh r0, [r1, #0x00]
    adds r2, #0x02
    ldr r3, _0806158C @ =0x030023F0
    ldr r0, [r3, #0x00]
    ldrh r1, [r2, #0x00]
    strh r1, [r0, #0x00]
    adds r0, #0x02
    str r0, [r3, #0x00]
    ldrh r1, [r2, #0x02]
    strh r1, [r0, #0x00]
    subs r0, #0x02
    str r0, [r3, #0x00]
    pop {r4, r5}
    pop {r0}
    bx r0
_08061570: .4byte 0x030023E0
_08061574: .4byte 0x030023F4
_08061578: .4byte 0x04000208
_0806157C: .4byte 0x04000200
_08061580: .4byte 0x030023E8
_08061584: .4byte 0x030023EC
_08061588: .4byte 0x030023EA
_0806158C: .4byte 0x030023F0
    thumb_func_start StopFlashTimer
StopFlashTimer: @ 08061590
    ldr r1, _080615C0 @ =0x030023F0
    ldr r0, [r1, #0x00]
    movs r2, #0x00
    strh r2, [r0, #0x00]
    adds r0, #0x02
    str r0, [r1, #0x00]
    strh r2, [r0, #0x00]
    subs r0, #0x02
    str r0, [r1, #0x00]
    ldr r3, _080615C4 @ =0x04000208
    strh r2, [r3, #0x00]
    ldr r2, _080615C8 @ =0x04000200
    ldr r0, _080615CC @ =0x030023E8
    ldrb r0, [r0, #0x00]
    movs r1, #0x08
    lsls r1, r0
    ldrh r0, [r2, #0x00]
    bics r0, r1
    strh r0, [r2, #0x00]
    ldr r0, _080615D0 @ =0x030023F4
    ldrh r0, [r0, #0x00]
    strh r0, [r3, #0x00]
    bx lr
    .byte 0x00, 0x00
_080615C0: .4byte 0x030023F0
_080615C4: .4byte 0x04000208
_080615C8: .4byte 0x04000200
_080615CC: .4byte 0x030023E8
_080615D0: .4byte 0x030023F4
    thumb_func_start ReadFlash1
ReadFlash1: @ 080615D4
    ldrb r0, [r0, #0x00]
    bx lr
    thumb_func_start SetReadFlash1
SetReadFlash1: @ 080615D8
    adds r2, r0, #0x0
    ldr r1, _080615F0 @ =0x030023E4
    adds r0, r2, #0x1
    str r0, [r1, #0x00]
    ldr r3, _080615F4 @ =0x080615D5
    movs r0, #0x01
    eors r3, r0
    ldr r0, _080615F8 @ =0x080615D9
    ldr r1, _080615F4 @ =0x080615D5
    subs r0, r0, r1
    lsls r0, r0, #0x0F
    b _08061608
_080615F0: .4byte 0x030023E4
_080615F4: .4byte ReadFlash1
_080615F8: .4byte SetReadFlash1
_080615FC:
    ldrh r0, [r3, #0x00]
    strh r0, [r2, #0x00]
    adds r3, #0x02
    adds r2, #0x02
    subs r0, r1, #0x1
    lsls r0, r0, #0x10
_08061608:
    lsrs r1, r0, #0x10
    cmp r1, #0x00
    bne _080615FC
    bx lr
    thumb_func_start PollingSR_COMMON
PollingSR_COMMON: @ 08061610
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    adds r4, r0, #0x0
    adds r5, r1, #0x0
    lsls r4, r4, #0x18
    lsrs r4, r4, #0x18
    lsls r2, r2, #0x18
    lsrs r6, r2, #0x18
    movs r0, #0x00
    mov r8, r0
    adds r0, r4, #0x0
    bl StartFlashTimer
    ldr r7, _08061638 @ =0x030023E4
    movs r0, #0xC0
    lsls r0, r0, #0x08
    orrs r4, r0
    lsls r4, r4, #0x10
    b _08061660
_08061638: .4byte 0x030023E4
_0806163C:
    ldr r0, _08061654 @ =0x03006A88
    ldr r1, [r0, #0x00]
    ldr r0, _08061658 @ =0x00001CC2
    ldrh r1, [r1, #0x14]
    cmp r1, r0
    bne _0806164E
    ldr r1, _0806165C @ =0x0E005555
    movs r0, #0xF0
    strb r0, [r1, #0x00]
_0806164E:
    lsrs r4, r4, #0x10
    mov r8, r4
    b _08061688
_08061654: .4byte 0x03006A88
_08061658: .4byte 0x00001CC2
_0806165C: .4byte 0x0E005555
_08061660:
    ldr r1, [r7, #0x00]
    adds r0, r5, #0x0
    bl _call_via_r1
    lsls r0, r0, #0x18
    lsrs r0, r0, #0x18
    cmp r0, r6
    beq _08061688
    ldr r0, _08061698 @ =0x030023EC
    ldrb r0, [r0, #0x00]
    cmp r0, #0x00
    beq _08061660
    ldr r1, [r7, #0x00]
    adds r0, r5, #0x0
    bl _call_via_r1
    lsls r0, r0, #0x18
    lsrs r0, r0, #0x18
    cmp r0, r6
    bne _0806163C
_08061688:
    bl StopFlashTimer
    mov r0, r8
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
_08061698: .4byte 0x030023EC
    thumb_func_start ReadFlash_Core
ReadFlash_Core: @ 0806169C
    push {r4, lr}
    adds r4, r0, #0x0
    subs r3, r2, #0x1
    cmp r2, #0x00
    beq _080616B8
    movs r2, #0x01
    negs r2, r2
_080616AA:
    ldrb r0, [r4, #0x00]
    strb r0, [r1, #0x00]
    adds r4, #0x01
    adds r1, #0x01
    subs r3, #0x01
    cmp r3, r2
    bne _080616AA
_080616B8:
    pop {r4}
    pop {r0}
    bx r0
    .byte 0x00, 0x00
    thumb_func_start ReadFlash
ReadFlash: @ 080616C0
    push {r4, r5, r6, r7, lr}
    add sp, #-0x080
    adds r5, r1, #0x0
    adds r6, r2, #0x0
    adds r7, r3, #0x0
    lsls r0, r0, #0x10
    lsrs r4, r0, #0x10
    ldr r2, _080616F0 @ =0x04000204
    ldrh r0, [r2, #0x00]
    ldr r1, _080616F4 @ =0x0000FFFC
    ands r0, r1
    movs r1, #0x03
    orrs r0, r1
    strh r0, [r2, #0x00]
    ldr r3, _080616F8 @ =0x0806169D
    movs r0, #0x01
    eors r3, r0
    mov r2, sp
    ldr r0, _080616FC @ =0x080616C1
    ldr r1, _080616F8 @ =0x0806169D
    subs r0, r0, r1
    lsls r0, r0, #0x0F
    b _0806170C
    .byte 0x00, 0x00
_080616F0: .4byte 0x04000204
_080616F4: .4byte 0x0000FFFC
_080616F8: .4byte ReadFlash_Core
_080616FC: .4byte ReadFlash
_08061700:
    ldrh r0, [r3, #0x00]
    strh r0, [r2, #0x00]
    adds r3, #0x02
    adds r2, #0x02
    subs r0, r1, #0x1
    lsls r0, r0, #0x10
_0806170C:
    lsrs r1, r0, #0x10
    cmp r1, #0x00
    bne _08061700
    mov r3, sp
    adds r3, #0x01
    ldr r0, _08061738 @ =0x081E9838
    ldrb r0, [r0, #0x1C]
    lsls r4, r0
    adds r0, r4, #0x0
    movs r2, #0xE0
    lsls r2, r2, #0x14
    adds r1, r5, r2
    adds r0, r0, r1
    adds r1, r6, #0x0
    adds r2, r7, #0x0
    bl _call_via_r3
    add sp, #0x080
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .byte 0x00, 0x00
_08061738: .4byte 0x081E9838
    thumb_func_start VerifyFlashSector_Core
VerifyFlashSector_Core: @ 0806173C
    push {r4, r5, lr}
    adds r4, r0, #0x0
    adds r3, r1, #0x0
    lsls r2, r2, #0x10
    ldr r0, _08061764 @ =0xFFFF0000
    adds r2, r2, r0
    lsrs r2, r2, #0x10
    ldr r0, _08061768 @ =0x0000FFFF
    cmp r2, r0
    beq _08061776
    adds r5, r0, #0x0
_08061752:
    ldrb r1, [r3, #0x00]
    ldrb r0, [r4, #0x00]
    adds r4, #0x01
    adds r3, #0x01
    cmp r1, r0
    beq _0806176C
    subs r0, r3, #0x1
    b _08061778
    .byte 0x00, 0x00
_08061764: .4byte 0xFFFF0000
_08061768: .4byte 0x0000FFFF
_0806176C:
    subs r0, r2, #0x1
    lsls r0, r0, #0x10
    lsrs r2, r0, #0x10
    cmp r2, r5
    bne _08061752
_08061776:
    movs r0, #0x00
_08061778:
    pop {r4, r5}
    pop {r1}
    bx r1
    .byte 0x00, 0x00
    thumb_func_start VerifyFlashSector
VerifyFlashSector: @ 08061780
    push {r4, r5, lr}
    add sp, #-0x100
    adds r5, r1, #0x0
    lsls r0, r0, #0x10
    lsrs r4, r0, #0x10
    ldr r2, _080617AC @ =0x04000204
    ldrh r0, [r2, #0x00]
    ldr r1, _080617B0 @ =0x0000FFFC
    ands r0, r1
    movs r1, #0x03
    orrs r0, r1
    strh r0, [r2, #0x00]
    ldr r3, _080617B4 @ =0x0806173D
    movs r0, #0x01
    eors r3, r0
    mov r2, sp
    ldr r0, _080617B8 @ =0x08061781
    ldr r1, _080617B4 @ =0x0806173D
    subs r0, r0, r1
    lsls r0, r0, #0x0F
    b _080617C8
    .byte 0x00, 0x00
_080617AC: .4byte 0x04000204
_080617B0: .4byte 0x0000FFFC
_080617B4: .4byte VerifyFlashSector_Core
_080617B8: .4byte VerifyFlashSector
_080617BC:
    ldrh r0, [r3, #0x00]
    strh r0, [r2, #0x00]
    adds r3, #0x02
    adds r2, #0x02
    subs r0, r1, #0x1
    lsls r0, r0, #0x10
_080617C8:
    lsrs r1, r0, #0x10
    cmp r1, #0x00
    bne _080617BC
    mov r3, sp
    adds r3, #0x01
    ldr r0, _080617F0 @ =0x081E9838
    ldrb r1, [r0, #0x1C]
    lsls r4, r1
    adds r1, r4, #0x0
    movs r2, #0xE0
    lsls r2, r2, #0x14
    adds r1, r1, r2
    ldrh r2, [r0, #0x18]
    adds r0, r5, #0x0
    bl _call_via_r3
    add sp, #0x100
    pop {r4, r5}
    pop {r1}
    bx r1
_080617F0: .4byte 0x081E9838
    thumb_func_start sub_80617F4
sub_80617F4:
    push {r4, r5, r6, lr}
    adds r5, r1, #0x0
    lsls r0, r0, #0x10
    lsrs r4, r0, #0x10
    movs r6, #0x00
    b _08061806
_08061800:
    adds r0, r6, #0x1
    lsls r0, r0, #0x18
    lsrs r6, r0, #0x18
_08061806:
    cmp r6, #0x02
    bhi _0806182C
    ldr r0, _08061834 @ =0x03006A84
    ldr r2, [r0, #0x00]
    adds r0, r4, #0x0
    adds r1, r5, #0x0
    bl _call_via_r2
    lsls r0, r0, #0x10
    lsrs r2, r0, #0x10
    cmp r2, #0x00
    bne _08061800
    adds r0, r4, #0x0
    adds r1, r5, #0x0
    bl VerifyFlashSector
    adds r2, r0, #0x0
    cmp r2, #0x00
    bne _08061800
_0806182C:
    adds r0, r2, #0x0
    pop {r4, r5, r6}
    pop {r1}
    bx r1
_08061834: .4byte 0x03006A84
    thumb_func_start EraseFlashChip_LE
EraseFlashChip_LE: @ 08061838
    push {r4, r5, r6, lr}
    add sp, #-0x040
    ldr r5, _08061894 @ =0x04000204
    ldrh r1, [r5, #0x00]
    ldr r6, _08061898 @ =0x0000FFFC
    ands r1, r6
    ldr r0, _0806189C @ =0x03006A88
    ldr r0, [r0, #0x00]
    ldrh r0, [r0, #0x10]
    orrs r0, r1
    strh r0, [r5, #0x00]
    ldr r1, _080618A0 @ =0x0E005555
    movs r4, #0xAA
    strb r4, [r1, #0x00]
    ldr r3, _080618A4 @ =0x0E002AAA
    movs r2, #0x55
    strb r2, [r3, #0x00]
    movs r0, #0x80
    strb r0, [r1, #0x00]
    strb r4, [r1, #0x00]
    strb r2, [r3, #0x00]
    movs r0, #0x10
    strb r0, [r1, #0x00]
    mov r0, sp
    bl SetReadFlash1
    ldr r0, _080618A8 @ =0x03006A80
    movs r1, #0xE0
    lsls r1, r1, #0x14
    ldr r3, [r0, #0x00]
    movs r0, #0x03
    movs r2, #0xFF
    bl _call_via_r3
    lsls r0, r0, #0x10
    lsrs r0, r0, #0x10
    ldrh r1, [r5, #0x00]
    ands r1, r6
    movs r2, #0x03
    orrs r1, r2
    strh r1, [r5, #0x00]
    add sp, #0x040
    pop {r4, r5, r6}
    pop {r1}
    bx r1
    .byte 0x00, 0x00
_08061894: .4byte 0x04000204
_08061898: .4byte 0x0000FFFC
_0806189C: .4byte 0x03006A88
_080618A0: .4byte 0x0E005555
_080618A4: .4byte 0x0E002AAA
_080618A8: .4byte 0x03006A80
    thumb_func_start EraseFlashSector_LE
EraseFlashSector_LE: @ 080618AC
    push {r4, r5, r6, lr}
    mov r6, r8
    push {r6}
    add sp, #-0x040
    lsls r0, r0, #0x10
    lsrs r3, r0, #0x10
    cmp r3, #0x0F
    bhi _08061934
    ldr r6, _0806191C @ =0x04000204
    ldrh r1, [r6, #0x00]
    ldr r0, _08061920 @ =0x0000FFFC
    mov r8, r0
    ands r1, r0
    ldr r0, _08061924 @ =0x03006A88
    ldr r2, [r0, #0x00]
    ldrh r0, [r2, #0x10]
    orrs r0, r1
    strh r0, [r6, #0x00]
    ldrb r4, [r2, #0x08]
    lsls r3, r4
    adds r4, r3, #0x0
    movs r2, #0xE0
    lsls r2, r2, #0x14
    adds r4, r4, r2
    ldr r1, _08061928 @ =0x0E005555
    movs r5, #0xAA
    strb r5, [r1, #0x00]
    ldr r3, _0806192C @ =0x0E002AAA
    movs r2, #0x55
    strb r2, [r3, #0x00]
    movs r0, #0x80
    strb r0, [r1, #0x00]
    strb r5, [r1, #0x00]
    strb r2, [r3, #0x00]
    movs r0, #0x30
    strb r0, [r4, #0x00]
    mov r0, sp
    bl SetReadFlash1
    ldr r0, _08061930 @ =0x03006A80
    ldr r3, [r0, #0x00]
    movs r0, #0x02
    adds r1, r4, #0x0
    movs r2, #0xFF
    bl _call_via_r3
    lsls r0, r0, #0x10
    lsrs r0, r0, #0x10
    ldrh r1, [r6, #0x00]
    mov r2, r8
    ands r1, r2
    movs r2, #0x03
    orrs r1, r2
    strh r1, [r6, #0x00]
    b _08061936
    .byte 0x00, 0x00
_0806191C: .4byte 0x04000204
_08061920: .4byte 0x0000FFFC
_08061924: .4byte 0x03006A88
_08061928: .4byte 0x0E005555
_0806192C: .4byte 0x0E002AAA
_08061930: .4byte 0x03006A80
_08061934:
    ldr r0, _08061944 @ =0x000080FF
_08061936:
    add sp, #0x040
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6}
    pop {r1}
    bx r1
    .byte 0x00, 0x00
_08061944: .4byte 0x000080FF
    thumb_func_start ProgramFlashByte_LE
ProgramFlashByte_LE: @ 08061948
    push {r4, lr}
    ldr r4, _08061974 @ =0x0E005555
    movs r2, #0xAA
    strb r2, [r4, #0x00]
    ldr r3, _08061978 @ =0x0E002AAA
    movs r2, #0x55
    strb r2, [r3, #0x00]
    movs r2, #0xA0
    strb r2, [r4, #0x00]
    ldrb r2, [r0, #0x00]
    strb r2, [r1, #0x00]
    ldr r3, _0806197C @ =0x03006A80
    ldrb r2, [r0, #0x00]
    ldr r3, [r3, #0x00]
    movs r0, #0x01
    bl _call_via_r3
    lsls r0, r0, #0x10
    lsrs r0, r0, #0x10
    pop {r4}
    pop {r1}
    bx r1
_08061974: .4byte 0x0E005555
_08061978: .4byte 0x0E002AAA
_0806197C: .4byte 0x03006A80
    thumb_func_start ProgramFlashSector_LE
ProgramFlashSector_LE: @ 08061980
    push {r4, r5, r6, r7, lr}
    mov r7, r9
    mov r6, r8
    push {r6, r7}
    add sp, #-0x060
    mov r9, r1
    lsls r0, r0, #0x10
    lsrs r0, r0, #0x10
    mov r8, r0
    cmp r0, #0x0F
    bls _080619A0
    ldr r0, _0806199C @ =0x000080FF
    b _08061A8E
    .byte 0x00, 0x00
_0806199C: .4byte 0x000080FF
_080619A0:
    ldr r0, _080619C0 @ =0x03006A88
    ldr r0, [r0, #0x00]
    ldrb r0, [r0, #0x08]
    mov r7, r8
    lsls r7, r0
    movs r0, #0xE0
    lsls r0, r0, #0x14
    adds r7, r7, r0
    ldr r1, _080619C4 @ =0x08061AA5
    movs r0, #0x01
    adds r3, r1, #0x0
    eors r3, r0
    mov r2, sp
    ldr r0, _080619C8 @ =0x08061AC9
    subs r0, r0, r1
    b _080619D6
_080619C0: .4byte 0x03006A88
_080619C4: .4byte VerifyFlashCoreFF
_080619C8: .4byte VerifyFlashErase
_080619CC:
    ldrh r0, [r3, #0x00]
    strh r0, [r2, #0x00]
    adds r3, #0x02
    adds r2, #0x02
    subs r0, r1, #0x2
_080619D6:
    lsls r0, r0, #0x10
    lsrs r1, r0, #0x10
    cmp r1, #0x00
    bne _080619CC
    movs r4, #0x00
    b _080619EC
_080619E2:
    adds r0, r4, #0x1
    lsls r0, r0, #0x18
    lsrs r4, r0, #0x18
    cmp r4, #0x51
    beq _08061A8C
_080619EC:
    mov r0, r8
    bl EraseFlashSector_LE
    lsls r0, r0, #0x10
    lsrs r5, r0, #0x10
    cmp r5, #0x00
    bne _080619E2
    adds r0, r7, #0x0
    mov r1, sp
    adds r1, #0x01
    bl VerifyFlashErase
    lsls r0, r0, #0x10
    lsrs r5, r0, #0x10
    cmp r5, #0x00
    bne _080619E2
    movs r6, #0x01
    cmp r4, #0x00
    beq _08061A14
    movs r6, #0x06
_08061A14:
    movs r4, #0x01
    cmp r4, r6
    bhi _08061A2A
_08061A1A:
    mov r0, r8
    bl EraseFlashSector_LE
    adds r0, r4, #0x1
    lsls r0, r0, #0x18
    lsrs r4, r0, #0x18
    cmp r4, r6
    bls _08061A1A
_08061A2A:
    mov r0, sp
    bl SetReadFlash1
    ldr r3, _08061A4C @ =0x04000204
    ldrh r1, [r3, #0x00]
    ldr r0, _08061A50 @ =0x0000FFFC
    ands r1, r0
    ldr r0, _08061A54 @ =0x03006A88
    ldr r2, [r0, #0x00]
    ldrh r0, [r2, #0x10]
    orrs r0, r1
    strh r0, [r3, #0x00]
    ldr r1, _08061A58 @ =0x03006A8C
    ldr r0, [r2, #0x04]
    strh r0, [r1, #0x00]
    adds r4, r1, #0x0
    b _08061A68
_08061A4C: .4byte 0x04000204
_08061A50: .4byte 0x0000FFFC
_08061A54: .4byte 0x03006A88
_08061A58: .4byte 0x03006A8C
_08061A5C:
    ldrh r0, [r4, #0x00]
    subs r0, #0x01
    strh r0, [r4, #0x00]
    movs r0, #0x01
    add r9, r0
    adds r7, #0x01
_08061A68:
    ldrh r0, [r4, #0x00]
    cmp r0, #0x00
    beq _08061A7E
    mov r0, r9
    adds r1, r7, #0x0
    bl ProgramFlashByte_LE
    lsls r0, r0, #0x10
    lsrs r5, r0, #0x10
    cmp r5, #0x00
    beq _08061A5C
_08061A7E:
    ldr r2, _08061A9C @ =0x04000204
    ldrh r0, [r2, #0x00]
    ldr r1, _08061AA0 @ =0x0000FFFC
    ands r0, r1
    movs r1, #0x03
    orrs r0, r1
    strh r0, [r2, #0x00]
_08061A8C:
    adds r0, r5, #0x0
_08061A8E:
    add sp, #0x060
    pop {r3, r4}
    mov r8, r3
    mov r9, r4
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
_08061A9C: .4byte 0x04000204
_08061AA0: .4byte 0x0000FFFC
    thumb_func_start VerifyFlashCoreFF
VerifyFlashCoreFF: @ 08061AA4
    adds r2, r0, #0x0
    ldr r0, _08061AB0 @ =0x03006A88
    ldr r0, [r0, #0x00]
    ldr r1, [r0, #0x04]
    b _08061AB6
    .byte 0x00, 0x00
_08061AB0: .4byte 0x03006A88
_08061AB4:
    subs r1, #0x01
_08061AB6:
    cmp r1, #0x00
    beq _08061AC2
    ldrb r0, [r2, #0x00]
    adds r2, #0x01
    cmp r0, #0xFF
    beq _08061AB4
_08061AC2:
    adds r0, r1, #0x0
    bx lr
    .byte 0x00, 0x00
    thumb_func_start VerifyFlashErase
VerifyFlashErase: @ 08061AC8
    push {lr}
    bl _call_via_r1
    cmp r0, #0x00
    bne _08061AD6
    movs r0, #0x00
    b _08061AD8
_08061AD6:
    ldr r0, _08061ADC @ =0x00008004
_08061AD8:
    pop {r1}
    bx r1
_08061ADC: .4byte 0x00008004
    thumb_func_start ProgramFlashSector_MX
ProgramFlashSector_MX: @ 08061AE0
    push {r4, r5, r6, r7, lr}
    add sp, #-0x040
    adds r7, r1, #0x0
    lsls r0, r0, #0x10
    lsrs r4, r0, #0x10
    cmp r4, #0x0F
    bls _08061AF8
    ldr r0, _08061AF4 @ =0x000080FF
    b _08061B74
    .byte 0x00, 0x00
_08061AF4: .4byte 0x000080FF
_08061AF8:
    adds r0, r4, #0x0
    bl EraseFlashSector_LE
    lsls r0, r0, #0x10
    lsrs r5, r0, #0x10
    cmp r5, #0x00
    bne _08061B72
    mov r0, sp
    bl SetReadFlash1
    ldr r3, _08061B34 @ =0x04000204
    ldrh r1, [r3, #0x00]
    ldr r0, _08061B38 @ =0x0000FFFC
    ands r1, r0
    ldr r0, _08061B3C @ =0x03006A88
    ldr r2, [r0, #0x00]
    ldrh r0, [r2, #0x10]
    orrs r0, r1
    strh r0, [r3, #0x00]
    ldr r1, _08061B40 @ =0x03006A8C
    ldr r0, [r2, #0x04]
    strh r0, [r1, #0x00]
    ldrb r0, [r2, #0x08]
    lsls r4, r0
    movs r0, #0xE0
    lsls r0, r0, #0x14
    adds r4, r4, r0
    adds r6, r1, #0x0
    b _08061B4E
    .byte 0x00, 0x00
_08061B34: .4byte 0x04000204
_08061B38: .4byte 0x0000FFFC
_08061B3C: .4byte 0x03006A88
_08061B40: .4byte 0x03006A8C
_08061B44:
    ldrh r0, [r6, #0x00]
    subs r0, #0x01
    strh r0, [r6, #0x00]
    adds r7, #0x01
    adds r4, #0x01
_08061B4E:
    ldrh r0, [r6, #0x00]
    cmp r0, #0x00
    beq _08061B64
    adds r0, r7, #0x0
    adds r1, r4, #0x0
    bl ProgramFlashByte_LE
    lsls r0, r0, #0x10
    lsrs r5, r0, #0x10
    cmp r5, #0x00
    beq _08061B44
_08061B64:
    ldr r2, _08061B7C @ =0x04000204
    ldrh r0, [r2, #0x00]
    ldr r1, _08061B80 @ =0x0000FFFC
    ands r0, r1
    movs r1, #0x03
    orrs r0, r1
    strh r0, [r2, #0x00]
_08061B72:
    adds r0, r5, #0x0
_08061B74:
    add sp, #0x040
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
_08061B7C: .4byte 0x04000204
_08061B80: .4byte 0x0000FFFC
    thumb_func_start EraseFlashChip_AT
EraseFlashChip_AT: @ 08061B84
    push {r4, r5, r6, lr}
    add sp, #-0x040
    mov r0, sp
    bl SetReadFlash1
    ldr r5, _08061BDC @ =0x04000204
    ldrh r0, [r5, #0x00]
    ldr r6, _08061BE0 @ =0x0000FFFC
    ands r0, r6
    ldr r1, _08061BE4 @ =0x081E998C
    ldrh r1, [r1, #0x24]
    orrs r0, r1
    strh r0, [r5, #0x00]
    ldr r1, _08061BE8 @ =0x0E005555
    movs r4, #0xAA
    strb r4, [r1, #0x00]
    ldr r3, _08061BEC @ =0x0E002AAA
    movs r2, #0x55
    strb r2, [r3, #0x00]
    movs r0, #0x80
    strb r0, [r1, #0x00]
    strb r4, [r1, #0x00]
    strb r2, [r3, #0x00]
    movs r0, #0x10
    strb r0, [r1, #0x00]
    ldr r0, _08061BF0 @ =0x03006A80
    movs r1, #0xE0
    lsls r1, r1, #0x14
    ldr r3, [r0, #0x00]
    movs r0, #0x03
    movs r2, #0xFF
    bl _call_via_r3
    lsls r0, r0, #0x10
    lsrs r0, r0, #0x10
    ldrh r1, [r5, #0x00]
    ands r1, r6
    movs r2, #0x03
    orrs r1, r2
    strh r1, [r5, #0x00]
    add sp, #0x040
    pop {r4, r5, r6}
    pop {r1}
    bx r1
_08061BDC: .4byte 0x04000204
_08061BE0: .4byte 0x0000FFFC
_08061BE4: .4byte 0x081E998C
_08061BE8: .4byte 0x0E005555
_08061BEC: .4byte 0x0E002AAA
_08061BF0: .4byte 0x03006A80
    thumb_func_start EraseFlashSector_AT
EraseFlashSector_AT: @ 08061BF4
    push {r4, r5, lr}
    lsls r0, r0, #0x10
    ldr r3, _08061C64 @ =0x081E998C
    lsrs r0, r0, #0x10
    adds r4, r0, #0x0
    ldrb r1, [r3, #0x1C]
    lsls r4, r1
    movs r0, #0xE0
    lsls r0, r0, #0x14
    adds r4, r4, r0
    ldr r1, _08061C68 @ =0x04000208
    ldrh r0, [r1, #0x00]
    adds r5, r0, #0x0
    movs r0, #0x00
    strh r0, [r1, #0x00]
    ldr r2, _08061C6C @ =0x0E005555
    movs r0, #0xAA
    strb r0, [r2, #0x00]
    ldr r1, _08061C70 @ =0x0E002AAA
    movs r0, #0x55
    strb r0, [r1, #0x00]
    movs r0, #0xA0
    strb r0, [r2, #0x00]
    ldr r0, [r3, #0x18]
    cmp r0, #0x00
    beq _08061C34
    movs r1, #0xFF
_08061C2A:
    strb r1, [r4, #0x00]
    adds r4, #0x01
    subs r0, #0x01
    cmp r0, #0x00
    bne _08061C2A
_08061C34:
    subs r4, #0x01
    ldr r0, _08061C68 @ =0x04000208
    strh r5, [r0, #0x00]
    ldr r0, _08061C74 @ =0x03006A80
    ldr r3, [r0, #0x00]
    movs r0, #0x01
    adds r1, r4, #0x0
    movs r2, #0xFF
    bl _call_via_r3
    lsls r0, r0, #0x10
    lsrs r1, r0, #0x10
    cmp r1, #0x00
    beq _08061C5A
    movs r0, #0xFF
    lsls r0, r0, #0x08
    ands r1, r0
    movs r0, #0x02
    orrs r1, r0
_08061C5A:
    adds r0, r1, #0x0
    pop {r4, r5}
    pop {r1}
    bx r1
    .byte 0x00, 0x00
_08061C64: .4byte 0x081E998C
_08061C68: .4byte 0x04000208
_08061C6C: .4byte 0x0E005555
_08061C70: .4byte 0x0E002AAA
_08061C74: .4byte 0x03006A80
    thumb_func_start EraseFlash4KB_AT
EraseFlash4KB_AT: @ 08061C78
    push {r4, r5, r6, lr}
    add sp, #-0x040
    lsls r0, r0, #0x10
    lsrs r4, r0, #0x10
    cmp r4, #0x0F
    bls _08061C8C
    ldr r0, _08061C88 @ =0x000080FF
    b _08061CF4
_08061C88: .4byte 0x000080FF
_08061C8C:
    mov r0, sp
    bl SetReadFlash1
    ldr r2, _08061CAC @ =0x04000204
    ldrh r0, [r2, #0x00]
    ldr r1, _08061CB0 @ =0x0000FFFC
    ands r0, r1
    ldr r1, _08061CB4 @ =0x081E998C
    ldrh r1, [r1, #0x24]
    orrs r0, r1
    strh r0, [r2, #0x00]
    lsls r0, r4, #0x15
    lsrs r5, r0, #0x10
    movs r6, #0x00
_08061CA8:
    movs r4, #0x02
    b _08061CC2
_08061CAC: .4byte 0x04000204
_08061CB0: .4byte 0x0000FFFC
_08061CB4: .4byte 0x081E998C
_08061CB8:
    subs r0, r4, #0x1
    lsls r0, r0, #0x10
    lsrs r4, r0, #0x10
    cmp r4, #0x00
    beq _08061CD0
_08061CC2:
    adds r0, r5, #0x0
    bl EraseFlashSector_AT
    lsls r0, r0, #0x10
    lsrs r3, r0, #0x10
    cmp r3, #0x00
    bne _08061CB8
_08061CD0:
    adds r0, r5, #0x1
    lsls r0, r0, #0x10
    lsrs r5, r0, #0x10
    cmp r3, #0x00
    bne _08061CE4
    adds r0, r6, #0x1
    lsls r0, r0, #0x10
    lsrs r6, r0, #0x10
    cmp r6, #0x1F
    bls _08061CA8
_08061CE4:
    ldr r2, _08061CFC @ =0x04000204
    ldrh r0, [r2, #0x00]
    ldr r1, _08061D00 @ =0x0000FFFC
    ands r0, r1
    movs r1, #0x03
    orrs r0, r1
    strh r0, [r2, #0x00]
    adds r0, r3, #0x0
_08061CF4:
    add sp, #0x040
    pop {r4, r5, r6}
    pop {r1}
    bx r1
_08061CFC: .4byte 0x04000204
_08061D00: .4byte 0x0000FFFC
    thumb_func_start ProgramFlashSector_AT
ProgramFlashSector_AT: @ 08061D04
    push {r4, r5, r6, lr}
    adds r5, r1, #0x0
    lsls r0, r0, #0x10
    ldr r3, _08061D68 @ =0x081E998C
    lsrs r0, r0, #0x10
    adds r4, r0, #0x0
    ldrb r1, [r3, #0x1C]
    lsls r4, r1
    movs r0, #0xE0
    lsls r0, r0, #0x14
    adds r4, r4, r0
    ldr r1, _08061D6C @ =0x04000208
    ldrh r0, [r1, #0x00]
    adds r6, r0, #0x0
    movs r0, #0x00
    strh r0, [r1, #0x00]
    ldr r2, _08061D70 @ =0x0E005555
    movs r0, #0xAA
    strb r0, [r2, #0x00]
    ldr r1, _08061D74 @ =0x0E002AAA
    movs r0, #0x55
    strb r0, [r1, #0x00]
    movs r0, #0xA0
    strb r0, [r2, #0x00]
    ldr r1, [r3, #0x18]
    cmp r1, #0x00
    beq _08061D48
_08061D3A:
    ldrb r0, [r5, #0x00]
    strb r0, [r4, #0x00]
    adds r5, #0x01
    adds r4, #0x01
    subs r1, #0x01
    cmp r1, #0x00
    bne _08061D3A
_08061D48:
    subs r4, #0x01
    subs r5, #0x01
    ldr r0, _08061D6C @ =0x04000208
    strh r6, [r0, #0x00]
    ldr r0, _08061D78 @ =0x03006A80
    ldrb r2, [r5, #0x00]
    ldr r3, [r0, #0x00]
    movs r0, #0x01
    adds r1, r4, #0x0
    bl _call_via_r3
    lsls r0, r0, #0x10
    lsrs r0, r0, #0x10
    pop {r4, r5, r6}
    pop {r1}
    bx r1
_08061D68: .4byte 0x081E998C
_08061D6C: .4byte 0x04000208
_08061D70: .4byte 0x0E005555
_08061D74: .4byte 0x0E002AAA
_08061D78: .4byte 0x03006A80
    thumb_func_start ProgramFlash4KB_AT
ProgramFlash4KB_AT: @ 08061D7C
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    add sp, #-0x040
    adds r7, r1, #0x0
    lsls r0, r0, #0x10
    lsrs r4, r0, #0x10
    cmp r4, #0x0F
    bls _08061D98
    ldr r0, _08061D94 @ =0x000080FF
    b _08061E2A
    .byte 0x00, 0x00
_08061D94: .4byte 0x000080FF
_08061D98:
    mov r0, sp
    bl SetReadFlash1
    ldr r2, _08061DC0 @ =0x04000204
    ldrh r0, [r2, #0x00]
    ldr r1, _08061DC4 @ =0x0000FFFC
    ands r0, r1
    ldr r1, _08061DC8 @ =0x081E998C
    ldrh r1, [r1, #0x24]
    orrs r0, r1
    strh r0, [r2, #0x00]
    lsls r0, r4, #0x15
    lsrs r5, r0, #0x10
    ldr r1, _08061DCC @ =0x03006A8C
    ldr r0, _08061DD0 @ =0x081E9960
    ldr r0, [r0, #0x18]
    strh r0, [r1, #0x00]
    adds r0, r1, #0x0
    mov r8, r0
    b _08061DEA
_08061DC0: .4byte 0x04000204
_08061DC4: .4byte 0x0000FFFC
_08061DC8: .4byte 0x081E998C
_08061DCC: .4byte 0x03006A8C
_08061DD0: .4byte 0x081E9960
_08061DD4:
    ldr r0, _08061DF8 @ =0x081E998C
    ldr r1, [r0, #0x18]
    mov r2, r8
    ldrh r2, [r2, #0x00]
    subs r0, r2, r1
    mov r3, r8
    strh r0, [r3, #0x00]
    adds r7, r7, r1
    adds r0, r5, #0x1
    lsls r0, r0, #0x10
    lsrs r5, r0, #0x10
_08061DEA:
    mov r1, r8
    ldrh r0, [r1, #0x00]
    cmp r0, #0x00
    beq _08061E1A
    movs r4, #0x02
    b _08061E06
    .byte 0x00, 0x00
_08061DF8: .4byte 0x081E998C
_08061DFC:
    subs r0, r4, #0x1
    lsls r0, r0, #0x10
    lsrs r4, r0, #0x10
    cmp r4, #0x00
    beq _08061E16
_08061E06:
    adds r0, r5, #0x0
    adds r1, r7, #0x0
    bl ProgramFlashSector_AT
    lsls r0, r0, #0x10
    lsrs r6, r0, #0x10
    cmp r6, #0x00
    bne _08061DFC
_08061E16:
    cmp r6, #0x00
    beq _08061DD4
_08061E1A:
    ldr r2, _08061E38 @ =0x04000204
    ldrh r0, [r2, #0x00]
    ldr r1, _08061E3C @ =0x0000FFFC
    ands r0, r1
    movs r1, #0x03
    orrs r0, r1
    strh r0, [r2, #0x00]
    adds r0, r6, #0x0
_08061E2A:
    add sp, #0x040
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    .byte 0x00, 0x00
_08061E38: .4byte 0x04000204
_08061E3C: .4byte 0x0000FFFC
    thumb_func_start sub_8061E40
sub_8061E40:
    push {r4, r5, r6, lr}
    adds r6, r1, #0x0
    adds r5, r0, #0x0
    cmp r2, #0x00
    beq _08061E70
    movs r0, #0x20
    subs r0, r0, r2
    cmp r0, #0x00
    bgt _08061E5C
    movs r3, #0x00
    negs r0, r0
    adds r4, r5, #0x0
    lsls r4, r0
    b _08061E6C
_08061E5C:
    adds r1, r5, #0x0
    lsrs r1, r0
    adds r3, r5, #0x0
    lsls r3, r2
    adds r0, r6, #0x0
    lsls r0, r2
    adds r4, r0, #0x0
    orrs r4, r1
_08061E6C:
    adds r1, r4, #0x0
    adds r0, r3, #0x0
_08061E70:
    pop {r4, r5, r6, pc}
    .byte 0x00, 0x00
