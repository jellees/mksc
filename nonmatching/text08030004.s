.include "asm/macros.inc"

.syntax unified
.text
    
.global sub_8030004
    thumb_func_start sub_8030004
sub_8030004:
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    adds r4, r0, #0x0
    ldr r5, [r4, #0x5C]
    ldr r0, [r5, #0x00]
    cmp r0, #0x83
    bne _08030016
    b _08030128
_08030016:
    cmp r0, #0x83
    bgt _08030046
    cmp r0, #0x41
    beq _0803007C
    cmp r0, #0x41
    bgt _08030034
    cmp r0, #0x11
    beq _08030076
    cmp r0, #0x11
    ble _0803002C
    b _08030198
_0803002C:
    cmp r0, #0x00
    bne _08030032
    b _0803019C
_08030032:
    b _08030198
_08030034:
    cmp r0, #0x43
    beq _08030086
    cmp r0, #0x43
    blt _08030082
    cmp r0, #0x81
    beq _080300F8
    cmp r0, #0x82
    beq _08030100
    b _08030198
_08030046:
    cmp r0, #0xF2
    beq _080300CE
    cmp r0, #0xF2
    bgt _08030062
    cmp r0, #0x85
    beq _080300F8
    cmp r0, #0x85
    blt _08030150
    cmp r0, #0x86
    bne _0803005C
    b _08030190
_0803005C:
    cmp r0, #0xF1
    beq _080300B0
    b _08030198
_08030062:
    cmp r0, #0xF5
    beq _080300A2
    cmp r0, #0xF5
    bgt _08030070
    cmp r0, #0xF4
    beq _08030098
    b _08030198
_08030070:
    cmp r0, #0xF6
    beq _080300D6
    b _08030198
_08030076:
    ldr r0, [r5, #0x04]
    str r0, [r4, #0x48]
    b _080300C0
_0803007C:
    ldr r0, [r5, #0x04]
    str r0, [r4, #0x68]
    b _080300C0
_08030082:
    ldr r0, [r5, #0x04]
    b _0803019C
_08030086:
    ldr r0, [r5, #0x04]
    str r0, [r4, #0x60]
    adds r2, r4, #0x0
    adds r2, #0x64
    ldrb r1, [r2, #0x00]
    movs r0, #0x01
    orrs r0, r1
    movs r1, #0x02
    b _080300C8
_08030098:
    ldr r1, [r5, #0x04]
    adds r0, r4, #0x0
    bl _call_via_r1
    b _080300C0
_080300A2:
    ldr r1, [r5, #0x04]
    adds r0, r4, #0x0
    bl _call_via_r1
    cmp r0, #0x00
    beq _0803019E
    b _080300C0
_080300B0:
    ldr r1, [r5, #0x04]
    cmp r1, #0x00
    beq _080300C0
    subs r1, #0x01
    adds r0, r4, #0x0
    adds r0, #0x4C
    strh r1, [r0, #0x00]
    b _08030198
_080300C0:
    adds r2, r4, #0x0
    adds r2, #0x64
    ldrb r1, [r2, #0x00]
    movs r0, #0x01
_080300C8:
    orrs r0, r1
    strb r0, [r2, #0x00]
    b _08030198
_080300CE:
    ldr r0, [r5, #0x04]
    lsls r0, r0, #0x03
    adds r0, r5, r0
    b _080300E8
_080300D6:
    ldr r1, [r5, #0x04]
    ldr r0, [r4, #0x68]
    cmp r0, #0x00
    beq _080300E4
    lsls r0, r1, #0x03
    adds r0, r5, r0
    b _080300E8
_080300E4:
    adds r0, r5, #0x0
    adds r0, #0x08
_080300E8:
    str r0, [r4, #0x5C]
    adds r2, r4, #0x0
    adds r2, #0x64
    ldrb r1, [r2, #0x00]
    movs r0, #0x01
    orrs r0, r1
    strb r0, [r2, #0x00]
    b _0803019E
_080300F8:
    ldrh r0, [r5, #0x04]
    bl m4aSongNumStart
    b _080300C0
_08030100:
    ldr r2, [r5, #0x04]
    ldr r0, _08030120 @ =0x03002E20
    ldr r1, _08030124 @ =0x00000838
    adds r0, r0, r1
    ldr r0, [r0, #0x00]
    ldr r0, [r0, #0x48]
    movs r1, #0x20
    ands r0, r1
    cmp r0, #0x00
    bne _080300C0
    lsls r0, r2, #0x10
    lsrs r0, r0, #0x10
    bl m4aSongNumStart
    b _080300C0
    .byte 0x00, 0x00
_08030120: .4byte 0x03002E20
_08030124: .4byte 0x00000838
_08030128:
    ldrh r0, [r5, #0x04]
    ldr r3, _08030148 @ =0x08102414
    ldr r2, _0803014C @ =0x08102498
    lsls r0, r0, #0x03
    adds r0, r0, r2
    ldrh r1, [r0, #0x04]
    lsls r0, r1, #0x01
    adds r0, r0, r1
    lsls r0, r0, #0x02
    adds r0, r0, r3
    ldr r0, [r0, #0x00]
    ldr r1, [r2, #0x08]
    bl MPlayStart
    b _080300C0
    .byte 0x00, 0x00
_08030148: .4byte 0x08102414
_0803014C: .4byte 0x08102498
_08030150:
    ldr r0, _08030184 @ =0x0000000B
    lsls r0, r0, #0x18
    lsrs r0, r0, #0x18
    adds r7, r4, #0x0
    adds r7, #0x64
    adds r5, #0x08
    mov r8, r5
    cmp r0, #0x00
    beq _08030178
    ldr r6, _08030188 @ =0x08102414
    adds r5, r0, #0x0
_08030166:
    ldr r0, [r6, #0x00]
    ldr r1, _0803018C @ =0x08102498
    ldr r1, [r1, #0x08]
    bl MPlayStart
    adds r6, #0x0C
    subs r5, #0x01
    cmp r5, #0x00
    bne _08030166
_08030178:
    ldrb r1, [r7, #0x00]
    movs r0, #0x01
    orrs r0, r1
    strb r0, [r7, #0x00]
    mov r0, r8
    b _0803019C
_08030184: .4byte 0x0000000B
_08030188: .4byte 0x08102414
_0803018C: .4byte 0x08102498
_08030190:
    ldrh r0, [r5, #0x04]
    bl m4aSongNumStop
    b _080300C0
_08030198:
    adds r0, r5, #0x0
    adds r0, #0x08
_0803019C:
    str r0, [r4, #0x5C]
_0803019E:
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0