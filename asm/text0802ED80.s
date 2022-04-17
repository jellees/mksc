    .include "asm/macros.inc"

    .syntax unified
    .text
    
    thumb_func_start sub_802ED80
sub_802ED80:
    movs r1, #0x00
    ldr r0, [r0, #0x00]
    cmp r0, #0x00
    bne _0802ED8A
    movs r1, #0x01
_0802ED8A:
    adds r0, r1, #0x0
    bx lr
    .byte 0x00, 0x00
    thumb_func_start sub_802ED90
sub_802ED90:
    movs r1, #0x00
    str r1, [r0, #0x04]
    str r1, [r0, #0x00]
    bx lr
    thumb_func_start sub_802ED98
sub_802ED98:
    adds r3, r0, #0x0
    movs r0, #0x00
    ldr r2, [r3, #0x00]
    str r0, [r1, #0x40]
    str r2, [r1, #0x3C]
    cmp r2, #0x00
    beq _0802EDAA
    str r1, [r2, #0x40]
    b _0802EDAC
_0802EDAA:
    str r1, [r3, #0x04]
_0802EDAC:
    str r1, [r3, #0x00]
    bx lr
    .byte 0x03, 0x1C, 0x5A, 0x68, 0x00, 0x20, 0x0A, 0x64, 0xC8, 0x63, 0x00, 0x2A, 0x01, 0xD0, 0xD1, 0x63
    .byte 0x00, 0xE0, 0x19, 0x60, 0x59, 0x60, 0x70, 0x47, 0x03, 0x1C, 0x08, 0x6C, 0x10, 0x64, 0xD1, 0x63
    .byte 0x08, 0x6C, 0x00, 0x28, 0x01, 0xD0, 0xC2, 0x63, 0x00, 0xE0, 0x1A, 0x60, 0x0A, 0x64, 0x70, 0x47
    .byte 0x03, 0x1C, 0xC8, 0x6B, 0x11, 0x64, 0xD0, 0x63, 0xC8, 0x6B, 0x00, 0x28, 0x01, 0xD0, 0x02, 0x64
    .byte 0x00, 0xE0, 0x5A, 0x60, 0xCA, 0x63, 0x70, 0x47
    thumb_func_start sub_802EDF8
sub_802EDF8:
    ldr r2, [r0, #0x00]
    ldr r1, [r2, #0x3C]
    str r1, [r0, #0x00]
    cmp r1, #0x00
    beq _0802EE08
    movs r0, #0x00
    str r0, [r1, #0x40]
    b _0802EE0A
_0802EE08:
    str r1, [r0, #0x04]
_0802EE0A:
    movs r0, #0x00
    str r0, [r2, #0x40]
    str r0, [r2, #0x3C]
    adds r0, r2, #0x0
    bx lr
    thumb_func_start sub_802EE14
sub_802EE14:
    ldr r2, [r0, #0x04]
    ldr r1, [r2, #0x40]
    str r1, [r0, #0x04]
    cmp r1, #0x00
    beq _0802EE24
    movs r0, #0x00
    str r0, [r1, #0x3C]
    b _0802EE26
_0802EE24:
    str r1, [r0, #0x00]
_0802EE26:
    movs r0, #0x00
    str r0, [r2, #0x40]
    str r0, [r2, #0x3C]
    adds r0, r2, #0x0
    bx lr
    thumb_func_start sub_802EE30
sub_802EE30:
    adds r3, r0, #0x0
    adds r2, r1, #0x0
    ldr r0, [r3, #0x00]
    cmp r1, r0
    bne _0802EE4C
    ldr r2, [r1, #0x3C]
    str r2, [r3, #0x00]
    cmp r2, #0x00
    beq _0802EE48
    movs r0, #0x00
    str r0, [r2, #0x40]
    b _0802EE62
_0802EE48:
    str r2, [r3, #0x04]
    b _0802EE62
_0802EE4C:
    ldr r0, [r3, #0x04]
    cmp r1, r0
    bne _0802EE6A
    ldr r2, [r1, #0x40]
    str r2, [r3, #0x04]
    cmp r2, #0x00
    beq _0802EE60
    movs r0, #0x00
    str r0, [r2, #0x3C]
    b _0802EE62
_0802EE60:
    str r2, [r3, #0x00]
_0802EE62:
    movs r0, #0x00
    str r0, [r1, #0x40]
    str r0, [r1, #0x3C]
    b _0802EE7C
_0802EE6A:
    ldr r1, [r2, #0x40]
    ldr r0, [r2, #0x3C]
    str r0, [r1, #0x3C]
    ldr r1, [r2, #0x3C]
    ldr r0, [r2, #0x40]
    str r0, [r1, #0x40]
    movs r0, #0x00
    str r0, [r2, #0x40]
    str r0, [r2, #0x3C]
_0802EE7C:
    bx lr
    .byte 0x00, 0x00, 0x00, 0x21, 0x41, 0x60, 0x01, 0x60, 0x70, 0x47
    thumb_func_start sub_802EE88
sub_802EE88:
    push {r4, r5, r6, r7, lr}
    mov r7, r10
    mov r6, r9
    mov r5, r8
    push {r5, r6, r7}
    adds r6, r0, #0x0
    adds r7, r1, #0x0
    mov r8, r2
    mov r9, r3
    movs r2, #0x00
    subs r0, r7, #0x1
    cmp r2, r0
    bge _0802EEE8
    mov r10, r0
_0802EEA4:
    lsls r1, r2, #0x02
    adds r0, r1, r6
    ldr r0, [r0, #0x00]
    adds r0, #0x36
    ldrb r5, [r0, #0x00]
    adds r4, r2, #0x0
    adds r3, r4, #0x1
    adds r2, r1, #0x0
    mov r12, r3
    cmp r3, r7
    bge _0802EED4
    lsls r0, r3, #0x02
    adds r1, r0, r6
_0802EEBE:
    ldr r0, [r1, #0x00]
    adds r0, #0x36
    ldrb r0, [r0, #0x00]
    cmp r0, r5
    bge _0802EECC
    adds r5, r0, #0x0
    adds r4, r3, #0x0
_0802EECC:
    adds r1, #0x04
    adds r3, #0x01
    cmp r3, r7
    blt _0802EEBE
_0802EED4:
    lsls r1, r4, #0x02
    adds r1, r1, r6
    ldr r3, [r1, #0x00]
    adds r2, r2, r6
    ldr r0, [r2, #0x00]
    str r0, [r1, #0x00]
    str r3, [r2, #0x00]
    mov r2, r12
    cmp r2, r10
    blt _0802EEA4
_0802EEE8:
    movs r3, #0x00
    movs r2, #0x00
    movs r4, #0x00
    cmp r2, r7
    bge _0802EF28
_0802EEF2:
    lsls r0, r3, #0x02
    adds r0, r0, r6
    ldr r0, [r0, #0x00]
    adds r0, #0x36
    adds r3, #0x01
    mov r10, r3
    adds r3, r4, #0x1
    ldrb r1, [r0, #0x00]
    cmp r2, r1
    bgt _0802EF16
    adds r1, r0, #0x0
_0802EF08:
    mov r5, r8
    adds r0, r5, r2
    strb r4, [r0, #0x00]
    adds r2, #0x01
    ldrb r0, [r1, #0x00]
    cmp r2, r0
    ble _0802EF08
_0802EF16:
    adds r4, r3, #0x0
    mov r3, r10
    cmp r3, r7
    blt _0802EEF2
    b _0802EF28
_0802EF20:
    mov r1, r8
    adds r0, r1, r2
    strb r4, [r0, #0x00]
    adds r2, #0x01
_0802EF28:
    cmp r2, r9
    blt _0802EF20
    pop {r3, r4, r5}
    mov r8, r3
    mov r9, r4
    mov r10, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .byte 0x00, 0x00
    thumb_func_start sub_802EF3C
sub_802EF3C:
    push {r4, r5, r6, r7, lr}
    mov r7, r10
    mov r6, r9
    mov r5, r8
    push {r5, r6, r7}
    add sp, #-0x00C
    str r0, [sp, #0x000]
    str r1, [sp, #0x004]
    str r2, [sp, #0x008]
    movs r3, #0x00
    ldrb r0, [r0, #0x00]
    cmp r3, r0
    blt _0802EF58
    b _0802F154
_0802EF58:
    ldr r1, [sp, #0x000]
    adds r1, #0x04
    mov r9, r1
_0802EF5E:
    lsls r0, r3, #0x02
    add r0, r9
    ldr r5, [r0, #0x00]
    adds r0, r5, #0x0
    adds r0, #0x36
    ldrb r0, [r0, #0x00]
    adds r4, r3, #0x1
    mov r10, r4
    cmp r0, #0x7F
    bne _0802EF74
    b _0802F148
_0802EF74:
    subs r1, r0, #0x2
    adds r2, r0, #0x3
    cmp r1, #0x00
    bge _0802EF80
    ldr r0, [sp, #0x008]
    adds r1, r1, r0
_0802EF80:
    ldr r4, [sp, #0x008]
    cmp r2, r4
    blt _0802EF88
    subs r2, r2, r4
_0802EF88:
    ldr r4, [sp, #0x004]
    adds r0, r4, r1
    ldrb r7, [r0, #0x00]
    adds r0, r4, r2
    ldrb r0, [r0, #0x00]
    mov r8, r0
    cmp r7, r3
    bgt _0802EF9A
    mov r7, r10
_0802EF9A:
    cmp r7, r8
    bge _0802F028
    adds r6, r7, #0x0
_0802EFA0:
    lsls r0, r6, #0x02
    add r0, r9
    ldr r4, [r0, #0x00]
    cmp r5, r4
    beq _0802F020
    ldrb r0, [r5, #0x0C]
    ldrb r1, [r4, #0x0C]
    adds r0, r0, r1
    lsls r2, r0, #0x0E
    ldr r1, [r5, #0x00]
    ldr r0, [r4, #0x00]
    subs r1, r1, r0
    cmp r1, #0x00
    bge _0802EFBE
    negs r1, r1
_0802EFBE:
    cmp r1, r2
    bgt _0802F020
    ldrb r0, [r5, #0x0D]
    ldrb r1, [r4, #0x0D]
    adds r0, r0, r1
    lsls r2, r0, #0x0E
    ldr r1, [r5, #0x04]
    ldr r0, [r4, #0x04]
    subs r1, r1, r0
    cmp r1, #0x00
    bge _0802EFD6
    negs r1, r1
_0802EFD6:
    cmp r1, r2
    bgt _0802F020
    ldrb r0, [r5, #0x0E]
    ldrb r1, [r4, #0x0E]
    adds r0, r0, r1
    lsls r2, r0, #0x0E
    ldr r1, [r5, #0x08]
    ldr r0, [r4, #0x08]
    subs r1, r1, r0
    cmp r1, #0x00
    bge _0802EFEE
    negs r1, r1
_0802EFEE:
    cmp r1, r2
    bgt _0802F020
    ldrh r1, [r5, #0x38]
    ldrh r0, [r4, #0x38]
    orrs r1, r0
    movs r0, #0x01
    cmp r1, #0x01
    ble _0802F000
    movs r0, #0x00
_0802F000:
    cmp r0, #0x00
    beq _0802F020
    ldr r2, [r5, #0x18]
    cmp r2, #0x00
    beq _0802F012
    adds r0, r5, #0x0
    adds r1, r4, #0x0
    bl _call_via_r2
_0802F012:
    ldr r2, [r4, #0x18]
    cmp r2, #0x00
    beq _0802F020
    adds r0, r4, #0x0
    adds r1, r5, #0x0
    bl _call_via_r2
_0802F020:
    adds r6, #0x01
    cmp r6, r8
    blt _0802EFA0
    b _0802F148
_0802F028:
    mov r6, r10
    cmp r10, r8
    bge _0802F0B4
_0802F02E:
    lsls r0, r6, #0x02
    add r0, r9
    ldr r4, [r0, #0x00]
    cmp r5, r4
    beq _0802F0AE
    ldrb r0, [r5, #0x0C]
    ldrb r1, [r4, #0x0C]
    adds r0, r0, r1
    lsls r2, r0, #0x0E
    ldr r1, [r5, #0x00]
    ldr r0, [r4, #0x00]
    subs r1, r1, r0
    cmp r1, #0x00
    bge _0802F04C
    negs r1, r1
_0802F04C:
    cmp r1, r2
    bgt _0802F0AE
    ldrb r0, [r5, #0x0D]
    ldrb r1, [r4, #0x0D]
    adds r0, r0, r1
    lsls r2, r0, #0x0E
    ldr r1, [r5, #0x04]
    ldr r0, [r4, #0x04]
    subs r1, r1, r0
    cmp r1, #0x00
    bge _0802F064
    negs r1, r1
_0802F064:
    cmp r1, r2
    bgt _0802F0AE
    ldrb r0, [r5, #0x0E]
    ldrb r1, [r4, #0x0E]
    adds r0, r0, r1
    lsls r2, r0, #0x0E
    ldr r1, [r5, #0x08]
    ldr r0, [r4, #0x08]
    subs r1, r1, r0
    cmp r1, #0x00
    bge _0802F07C
    negs r1, r1
_0802F07C:
    cmp r1, r2
    bgt _0802F0AE
    ldrh r1, [r5, #0x38]
    ldrh r0, [r4, #0x38]
    orrs r1, r0
    movs r0, #0x01
    cmp r1, #0x01
    ble _0802F08E
    movs r0, #0x00
_0802F08E:
    cmp r0, #0x00
    beq _0802F0AE
    ldr r2, [r5, #0x18]
    cmp r2, #0x00
    beq _0802F0A0
    adds r0, r5, #0x0
    adds r1, r4, #0x0
    bl _call_via_r2
_0802F0A0:
    ldr r2, [r4, #0x18]
    cmp r2, #0x00
    beq _0802F0AE
    adds r0, r4, #0x0
    adds r1, r5, #0x0
    bl _call_via_r2
_0802F0AE:
    adds r6, #0x01
    cmp r6, r8
    blt _0802F02E
_0802F0B4:
    adds r6, r7, #0x0
    ldr r0, [sp, #0x000]
    ldrb r0, [r0, #0x00]
    cmp r6, r0
    bge _0802F148
_0802F0BE:
    lsls r0, r6, #0x02
    add r0, r9
    ldr r4, [r0, #0x00]
    cmp r5, r4
    beq _0802F13E
    ldrb r0, [r5, #0x0C]
    ldrb r1, [r4, #0x0C]
    adds r0, r0, r1
    lsls r2, r0, #0x0E
    ldr r1, [r5, #0x00]
    ldr r0, [r4, #0x00]
    subs r1, r1, r0
    cmp r1, #0x00
    bge _0802F0DC
    negs r1, r1
_0802F0DC:
    cmp r1, r2
    bgt _0802F13E
    ldrb r0, [r5, #0x0D]
    ldrb r1, [r4, #0x0D]
    adds r0, r0, r1
    lsls r2, r0, #0x0E
    ldr r1, [r5, #0x04]
    ldr r0, [r4, #0x04]
    subs r1, r1, r0
    cmp r1, #0x00
    bge _0802F0F4
    negs r1, r1
_0802F0F4:
    cmp r1, r2
    bgt _0802F13E
    ldrb r0, [r5, #0x0E]
    ldrb r1, [r4, #0x0E]
    adds r0, r0, r1
    lsls r2, r0, #0x0E
    ldr r1, [r5, #0x08]
    ldr r0, [r4, #0x08]
    subs r1, r1, r0
    cmp r1, #0x00
    bge _0802F10C
    negs r1, r1
_0802F10C:
    cmp r1, r2
    bgt _0802F13E
    ldrh r1, [r5, #0x38]
    ldrh r0, [r4, #0x38]
    orrs r1, r0
    movs r0, #0x01
    cmp r1, #0x01
    ble _0802F11E
    movs r0, #0x00
_0802F11E:
    cmp r0, #0x00
    beq _0802F13E
    ldr r2, [r5, #0x18]
    cmp r2, #0x00
    beq _0802F130
    adds r0, r5, #0x0
    adds r1, r4, #0x0
    bl _call_via_r2
_0802F130:
    ldr r2, [r4, #0x18]
    cmp r2, #0x00
    beq _0802F13E
    adds r0, r4, #0x0
    adds r1, r5, #0x0
    bl _call_via_r2
_0802F13E:
    adds r6, #0x01
    ldr r1, [sp, #0x000]
    ldrb r1, [r1, #0x00]
    cmp r6, r1
    blt _0802F0BE
_0802F148:
    mov r3, r10
    ldr r4, [sp, #0x000]
    ldrb r4, [r4, #0x00]
    cmp r3, r4
    bge _0802F154
    b _0802EF5E
_0802F154:
    add sp, #0x00C
    pop {r3, r4, r5}
    mov r8, r3
    mov r9, r4
    mov r10, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    thumb_func_start sub_802F164
sub_802F164:
    push {r4, r5, r6, r7, lr}
    mov r7, r9
    mov r6, r8
    push {r6, r7}
    adds r7, r0, #0x0
    movs r2, #0x00
    ldrb r1, [r7, #0x00]
    cmp r2, r1
    bge _0802F218
    adds r0, r7, #0x4
    mov r9, r0
_0802F17A:
    lsls r0, r2, #0x02
    add r0, r9
    ldr r5, [r0, #0x00]
    adds r6, r2, #0x1
    mov r8, r6
    cmp r8, r1
    bge _0802F210
_0802F188:
    lsls r0, r6, #0x02
    add r0, r9
    ldr r4, [r0, #0x00]
    cmp r5, r4
    beq _0802F208
    ldrb r0, [r5, #0x0C]
    ldrb r1, [r4, #0x0C]
    adds r0, r0, r1
    lsls r2, r0, #0x0E
    ldr r1, [r5, #0x00]
    ldr r0, [r4, #0x00]
    subs r1, r1, r0
    cmp r1, #0x00
    bge _0802F1A6
    negs r1, r1
_0802F1A6:
    cmp r1, r2
    bgt _0802F208
    ldrb r0, [r5, #0x0D]
    ldrb r1, [r4, #0x0D]
    adds r0, r0, r1
    lsls r2, r0, #0x0E
    ldr r1, [r5, #0x04]
    ldr r0, [r4, #0x04]
    subs r1, r1, r0
    cmp r1, #0x00
    bge _0802F1BE
    negs r1, r1
_0802F1BE:
    cmp r1, r2
    bgt _0802F208
    ldrb r0, [r5, #0x0E]
    ldrb r1, [r4, #0x0E]
    adds r0, r0, r1
    lsls r2, r0, #0x0E
    ldr r1, [r5, #0x08]
    ldr r0, [r4, #0x08]
    subs r1, r1, r0
    cmp r1, #0x00
    bge _0802F1D6
    negs r1, r1
_0802F1D6:
    cmp r1, r2
    bgt _0802F208
    ldrh r1, [r5, #0x38]
    ldrh r0, [r4, #0x38]
    orrs r1, r0
    movs r0, #0x01
    cmp r1, #0x01
    ble _0802F1E8
    movs r0, #0x00
_0802F1E8:
    cmp r0, #0x00
    beq _0802F208
    ldr r2, [r5, #0x18]
    cmp r2, #0x00
    beq _0802F1FA
    adds r0, r5, #0x0
    adds r1, r4, #0x0
    bl _call_via_r2
_0802F1FA:
    ldr r2, [r4, #0x18]
    cmp r2, #0x00
    beq _0802F208
    adds r0, r4, #0x0
    adds r1, r5, #0x0
    bl _call_via_r2
_0802F208:
    adds r6, #0x01
    ldrb r0, [r7, #0x00]
    cmp r6, r0
    blt _0802F188
_0802F210:
    mov r2, r8
    ldrb r1, [r7, #0x00]
    cmp r2, r1
    blt _0802F17A
_0802F218:
    pop {r3, r4}
    mov r8, r3
    mov r9, r4
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    thumb_func_start sub_802F224
sub_802F224:
    push {r4, r5, r6, r7, lr}
    mov r7, r10
    mov r6, r9
    mov r5, r8
    push {r5, r6, r7}
    add sp, #-0x008
    adds r7, r0, #0x0
    str r1, [sp, #0x000]
    mov r10, r2
    movs r2, #0x00
    b _0802F42C
_0802F23A:
    lsls r1, r2, #0x02
    adds r0, r7, #0x4
    adds r0, r0, r1
    ldr r5, [r0, #0x00]
    adds r0, r5, #0x0
    adds r0, #0x36
    ldrb r0, [r0, #0x00]
    adds r2, #0x01
    str r2, [sp, #0x004]
    cmp r0, #0x7F
    bne _0802F252
    b _0802F42A
_0802F252:
    subs r1, r0, #0x2
    adds r2, r0, #0x3
    cmp r1, #0x00
    bge _0802F25C
    add r1, r10
_0802F25C:
    cmp r2, r10
    blt _0802F264
    mov r3, r10
    subs r2, r2, r3
_0802F264:
    ldr r3, [sp, #0x000]
    adds r0, r3, r1
    ldrb r0, [r0, #0x00]
    mov r8, r0
    adds r0, r3, r2
    ldrb r0, [r0, #0x00]
    mov r9, r0
    cmp r8, r9
    bge _0802F306
    mov r6, r8
    movs r0, #0x64
    adds r0, r0, r7
    mov r8, r0
_0802F27E:
    lsls r0, r6, #0x02
    add r0, r8
    ldr r4, [r0, #0x00]
    cmp r5, r4
    beq _0802F2FE
    ldrb r0, [r5, #0x0C]
    ldrb r1, [r4, #0x0C]
    adds r0, r0, r1
    lsls r2, r0, #0x0E
    ldr r1, [r5, #0x00]
    ldr r0, [r4, #0x00]
    subs r1, r1, r0
    cmp r1, #0x00
    bge _0802F29C
    negs r1, r1
_0802F29C:
    cmp r1, r2
    bgt _0802F2FE
    ldrb r0, [r5, #0x0D]
    ldrb r1, [r4, #0x0D]
    adds r0, r0, r1
    lsls r2, r0, #0x0E
    ldr r1, [r5, #0x04]
    ldr r0, [r4, #0x04]
    subs r1, r1, r0
    cmp r1, #0x00
    bge _0802F2B4
    negs r1, r1
_0802F2B4:
    cmp r1, r2
    bgt _0802F2FE
    ldrb r0, [r5, #0x0E]
    ldrb r1, [r4, #0x0E]
    adds r0, r0, r1
    lsls r2, r0, #0x0E
    ldr r1, [r5, #0x08]
    ldr r0, [r4, #0x08]
    subs r1, r1, r0
    cmp r1, #0x00
    bge _0802F2CC
    negs r1, r1
_0802F2CC:
    cmp r1, r2
    bgt _0802F2FE
    ldrh r1, [r5, #0x38]
    ldrh r0, [r4, #0x38]
    orrs r1, r0
    movs r0, #0x01
    cmp r1, #0x01
    ble _0802F2DE
    movs r0, #0x00
_0802F2DE:
    cmp r0, #0x00
    beq _0802F2FE
    ldr r2, [r5, #0x18]
    cmp r2, #0x00
    beq _0802F2F0
    adds r0, r5, #0x0
    adds r1, r4, #0x0
    bl _call_via_r2
_0802F2F0:
    ldr r2, [r4, #0x18]
    cmp r2, #0x00
    beq _0802F2FE
    adds r0, r4, #0x0
    adds r1, r5, #0x0
    bl _call_via_r2
_0802F2FE:
    adds r6, #0x01
    cmp r6, r9
    blt _0802F27E
    b _0802F42A
_0802F306:
    movs r6, #0x00
    cmp r6, r9
    bge _0802F396
_0802F30C:
    lsls r1, r6, #0x02
    adds r0, r7, #0x0
    adds r0, #0x64
    adds r0, r0, r1
    ldr r4, [r0, #0x00]
    cmp r5, r4
    beq _0802F390
    ldrb r0, [r5, #0x0C]
    ldrb r1, [r4, #0x0C]
    adds r0, r0, r1
    lsls r2, r0, #0x0E
    ldr r1, [r5, #0x00]
    ldr r0, [r4, #0x00]
    subs r1, r1, r0
    cmp r1, #0x00
    bge _0802F32E
    negs r1, r1
_0802F32E:
    cmp r1, r2
    bgt _0802F390
    ldrb r0, [r5, #0x0D]
    ldrb r1, [r4, #0x0D]
    adds r0, r0, r1
    lsls r2, r0, #0x0E
    ldr r1, [r5, #0x04]
    ldr r0, [r4, #0x04]
    subs r1, r1, r0
    cmp r1, #0x00
    bge _0802F346
    negs r1, r1
_0802F346:
    cmp r1, r2
    bgt _0802F390
    ldrb r0, [r5, #0x0E]
    ldrb r1, [r4, #0x0E]
    adds r0, r0, r1
    lsls r2, r0, #0x0E
    ldr r1, [r5, #0x08]
    ldr r0, [r4, #0x08]
    subs r1, r1, r0
    cmp r1, #0x00
    bge _0802F35E
    negs r1, r1
_0802F35E:
    cmp r1, r2
    bgt _0802F390
    ldrh r1, [r5, #0x38]
    ldrh r0, [r4, #0x38]
    orrs r1, r0
    movs r0, #0x01
    cmp r1, #0x01
    ble _0802F370
    movs r0, #0x00
_0802F370:
    cmp r0, #0x00
    beq _0802F390
    ldr r2, [r5, #0x18]
    cmp r2, #0x00
    beq _0802F382
    adds r0, r5, #0x0
    adds r1, r4, #0x0
    bl _call_via_r2
_0802F382:
    ldr r2, [r4, #0x18]
    cmp r2, #0x00
    beq _0802F390
    adds r0, r4, #0x0
    adds r1, r5, #0x0
    bl _call_via_r2
_0802F390:
    adds r6, #0x01
    cmp r6, r9
    blt _0802F30C
_0802F396:
    mov r6, r8
    ldrb r1, [r7, #0x01]
    cmp r6, r1
    bge _0802F42A
_0802F39E:
    lsls r1, r6, #0x02
    adds r0, r7, #0x0
    adds r0, #0x64
    adds r0, r0, r1
    ldr r4, [r0, #0x00]
    cmp r5, r4
    beq _0802F422
    ldrb r0, [r5, #0x0C]
    ldrb r1, [r4, #0x0C]
    adds r0, r0, r1
    lsls r2, r0, #0x0E
    ldr r1, [r5, #0x00]
    ldr r0, [r4, #0x00]
    subs r1, r1, r0
    cmp r1, #0x00
    bge _0802F3C0
    negs r1, r1
_0802F3C0:
    cmp r1, r2
    bgt _0802F422
    ldrb r0, [r5, #0x0D]
    ldrb r1, [r4, #0x0D]
    adds r0, r0, r1
    lsls r2, r0, #0x0E
    ldr r1, [r5, #0x04]
    ldr r0, [r4, #0x04]
    subs r1, r1, r0
    cmp r1, #0x00
    bge _0802F3D8
    negs r1, r1
_0802F3D8:
    cmp r1, r2
    bgt _0802F422
    ldrb r0, [r5, #0x0E]
    ldrb r1, [r4, #0x0E]
    adds r0, r0, r1
    lsls r2, r0, #0x0E
    ldr r1, [r5, #0x08]
    ldr r0, [r4, #0x08]
    subs r1, r1, r0
    cmp r1, #0x00
    bge _0802F3F0
    negs r1, r1
_0802F3F0:
    cmp r1, r2
    bgt _0802F422
    ldrh r1, [r5, #0x38]
    ldrh r0, [r4, #0x38]
    orrs r1, r0
    movs r0, #0x01
    cmp r1, #0x01
    ble _0802F402
    movs r0, #0x00
_0802F402:
    cmp r0, #0x00
    beq _0802F422
    ldr r2, [r5, #0x18]
    cmp r2, #0x00
    beq _0802F414
    adds r0, r5, #0x0
    adds r1, r4, #0x0
    bl _call_via_r2
_0802F414:
    ldr r2, [r4, #0x18]
    cmp r2, #0x00
    beq _0802F422
    adds r0, r4, #0x0
    adds r1, r5, #0x0
    bl _call_via_r2
_0802F422:
    adds r6, #0x01
    ldrb r3, [r7, #0x01]
    cmp r6, r3
    blt _0802F39E
_0802F42A:
    ldr r2, [sp, #0x004]
_0802F42C:
    ldrb r0, [r7, #0x00]
    cmp r2, r0
    bge _0802F434
    b _0802F23A
_0802F434:
    add sp, #0x008
    pop {r3, r4, r5}
    mov r8, r3
    mov r9, r4
    mov r10, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    thumb_func_start sub_802F444
sub_802F444:
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    adds r6, r0, #0x0
    movs r2, #0x00
    b _0802F4EE
_0802F450:
    lsls r1, r2, #0x02
    adds r0, r6, #0x4
    adds r0, r0, r1
    ldr r5, [r0, #0x00]
    movs r7, #0x00
    adds r2, #0x01
    mov r8, r2
    b _0802F4E6
_0802F460:
    lsls r1, r7, #0x02
    adds r0, r6, #0x0
    adds r0, #0x64
    adds r0, r0, r1
    ldr r4, [r0, #0x00]
    cmp r5, r4
    beq _0802F4E4
    ldrb r0, [r5, #0x0C]
    ldrb r1, [r4, #0x0C]
    adds r0, r0, r1
    lsls r2, r0, #0x0E
    ldr r1, [r5, #0x00]
    ldr r0, [r4, #0x00]
    subs r1, r1, r0
    cmp r1, #0x00
    bge _0802F482
    negs r1, r1
_0802F482:
    cmp r1, r2
    bgt _0802F4E4
    ldrb r0, [r5, #0x0D]
    ldrb r1, [r4, #0x0D]
    adds r0, r0, r1
    lsls r2, r0, #0x0E
    ldr r1, [r5, #0x04]
    ldr r0, [r4, #0x04]
    subs r1, r1, r0
    cmp r1, #0x00
    bge _0802F49A
    negs r1, r1
_0802F49A:
    cmp r1, r2
    bgt _0802F4E4
    ldrb r0, [r5, #0x0E]
    ldrb r1, [r4, #0x0E]
    adds r0, r0, r1
    lsls r2, r0, #0x0E
    ldr r1, [r5, #0x08]
    ldr r0, [r4, #0x08]
    subs r1, r1, r0
    cmp r1, #0x00
    bge _0802F4B2
    negs r1, r1
_0802F4B2:
    cmp r1, r2
    bgt _0802F4E4
    ldrh r1, [r5, #0x38]
    ldrh r0, [r4, #0x38]
    orrs r1, r0
    movs r0, #0x01
    cmp r1, #0x01
    ble _0802F4C4
    movs r0, #0x00
_0802F4C4:
    cmp r0, #0x00
    beq _0802F4E4
    ldr r2, [r5, #0x18]
    cmp r2, #0x00
    beq _0802F4D6
    adds r0, r5, #0x0
    adds r1, r4, #0x0
    bl _call_via_r2
_0802F4D6:
    ldr r2, [r4, #0x18]
    cmp r2, #0x00
    beq _0802F4E4
    adds r0, r4, #0x0
    adds r1, r5, #0x0
    bl _call_via_r2
_0802F4E4:
    adds r7, #0x01
_0802F4E6:
    ldrb r0, [r6, #0x01]
    cmp r7, r0
    blt _0802F460
    mov r2, r8
_0802F4EE:
    ldrb r0, [r6, #0x00]
    cmp r2, r0
    blt _0802F450
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .byte 0x00, 0x00
    thumb_func_start sub_802F500
sub_802F500:
    push {r4, lr}
    adds r3, r0, #0x0
    adds r4, r1, #0x0
    ldrb r2, [r3, #0x00]
    cmp r2, #0x18
    beq _0802F51C
    lsls r1, r2, #0x02
    adds r0, r3, #0x4
    adds r0, r0, r1
    str r4, [r0, #0x00]
    adds r2, #0x01
    strb r2, [r3, #0x00]
    movs r0, #0x01
    b _0802F51E
_0802F51C:
    movs r0, #0x00
_0802F51E:
    pop {r4}
    pop {r1}
    bx r1
    thumb_func_start sub_802F524
sub_802F524:
    push {r4, lr}
    adds r3, r0, #0x0
    adds r4, r1, #0x0
    ldrb r2, [r3, #0x01]
    cmp r2, #0x40
    beq _0802F540
    lsls r1, r2, #0x02
    adds r0, #0x64
    adds r0, r0, r1
    str r4, [r0, #0x00]
    adds r2, #0x01
    strb r2, [r3, #0x01]
    movs r0, #0x01
    b _0802F542
_0802F540:
    movs r0, #0x00
_0802F542:
    pop {r4}
    pop {r1}
    bx r1
    thumb_func_start sub_802F548
sub_802F548:
    movs r1, #0x00
    strb r1, [r0, #0x00]
    strb r1, [r0, #0x01]
    bx lr
    thumb_func_start sub_802F550
sub_802F550:
    push {r4, r5, r6, r7, lr}
    adds r6, r0, #0x0
    ldr r0, _0802F59C @ =0x03002E20
    ldrh r7, [r0, #0x38]
    ldr r1, _0802F5A0 @ =0x000007FE
    adds r0, r0, r1
    ldrh r1, [r0, #0x00]
    movs r0, #0x80
    lsls r0, r0, #0x04
    ands r0, r1
    cmp r0, #0x00
    bne _0802F5AC
    adds r0, r6, #0x4
    ldrb r1, [r6, #0x00]
    ldr r5, _0802F5A4 @ =0x03004EB0
    adds r2, r5, #0x0
    adds r3, r7, #0x0
    bl sub_802EE88
    adds r0, r6, #0x0
    adds r0, #0x64
    ldrb r1, [r6, #0x01]
    ldr r4, _0802F5A8 @ =0x03002CA0
    adds r2, r4, #0x0
    adds r3, r7, #0x0
    bl sub_802EE88
    adds r0, r6, #0x0
    adds r1, r5, #0x0
    adds r2, r7, #0x0
    bl sub_802EF3C
    adds r0, r6, #0x0
    adds r1, r4, #0x0
    adds r2, r7, #0x0
    bl sub_802F224
    b _0802F5B8
_0802F59C: .4byte 0x03002E20
_0802F5A0: .4byte 0x000007FE
_0802F5A4: .4byte 0x03004EB0
_0802F5A8: .4byte 0x03002CA0
_0802F5AC:
    adds r0, r6, #0x0
    bl sub_802F164
    adds r0, r6, #0x0
    bl sub_802F444
_0802F5B8:
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .byte 0x00, 0x00
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
    thumb_func_start oam_renderCell
oam_renderCell: @ 0802F6BC
    push {r4, r5, r6, r7, lr}
    mov r7, r10
    mov r6, r9
    mov r5, r8
    push {r5, r6, r7}
    add sp, #-0x028
    mov r10, r0
    ldr r0, [r0, #0x00]
    mov r9, r0
    mov r1, r10
    ldrh r1, [r1, #0x04]
    str r1, [sp, #0x000]
    mov r2, r10
    ldrh r2, [r2, #0x06]
    str r2, [sp, #0x004]
    ldrh r3, [r0, #0x00]
    str r3, [sp, #0x008]
    movs r4, #0x02
    add r9, r4
    mov r5, r10
    ldrh r5, [r5, #0x20]
    str r5, [sp, #0x00C]
    mov r6, r10
    ldrh r6, [r6, #0x22]
    str r6, [sp, #0x010]
    ldr r0, _0802F7C4 @ =0x030016F0
    ldr r1, [r0, #0x00]
    ldr r2, _0802F7C8 @ =0x000001FF
    cmp r1, r2
    ble _0802F6FA
    b _0802F850
_0802F6FA:
    movs r0, #0x80
    lsls r0, r0, #0x01
    ldr r1, [sp, #0x00C]
    cmp r1, r0
    bne _0802F7D4
    ldr r3, [sp, #0x010]
    cmp r3, r1
    bne _0802F7D4
    mov r4, r10
    ldr r0, [r4, #0x18]
    cmp r0, r1
    bne _0802F7D4
    ldr r5, [sp, #0x008]
    cmp r5, #0x00
    bgt _0802F71A
    b _0802F9F2
_0802F71A:
    mov r12, r2
    ldr r7, _0802F7CC @ =0x030016F8
    adds r6, r7, #0x4
    mov r8, r6
_0802F722:
    ldr r0, _0802F7C4 @ =0x030016F0
    ldr r6, [r0, #0x00]
    cmp r6, r12
    ble _0802F72C
    b _0802F9F2
_0802F72C:
    mov r1, r9
    ldrh r5, [r1, #0x00]
    movs r2, #0x02
    add r9, r2
    lsls r4, r6, #0x01
    adds r2, r4, r7
    ldr r3, [sp, #0x004]
    adds r1, r5, r3
    movs r0, #0xFF
    ands r1, r0
    movs r3, #0xFF
    lsls r3, r3, #0x08
    adds r0, r3, #0x0
    ands r5, r0
    orrs r1, r5
    strh r1, [r2, #0x00]
    mov r0, r9
    ldrh r5, [r0, #0x00]
    movs r1, #0x02
    add r9, r1
    adds r2, r7, #0x2
    adds r2, r4, r2
    ldr r3, [sp, #0x000]
    adds r1, r5, r3
    mov r0, r12
    ands r1, r0
    movs r3, #0xFE
    lsls r3, r3, #0x08
    adds r0, r3, #0x0
    ands r5, r0
    orrs r1, r5
    strh r1, [r2, #0x00]
    lsrs r2, r6, #0x1F
    adds r2, r6, r2
    asrs r2, r2, #0x01
    lsls r2, r2, #0x02
    adds r3, r2, r7
    ldr r0, [r3, #0x00]
    mov r5, r10
    ldr r1, [r5, #0x0C]
    ands r0, r1
    str r0, [r3, #0x00]
    ldr r0, [r3, #0x00]
    ldr r1, [r5, #0x08]
    orrs r0, r1
    str r0, [r3, #0x00]
    ldr r0, [r3, #0x00]
    ldr r1, _0802F7D0 @ =0xFFFFFCFF
    ands r0, r1
    str r0, [r3, #0x00]
    mov r0, r9
    ldrh r5, [r0, #0x00]
    movs r1, #0x02
    add r9, r1
    add r4, r8
    strh r5, [r4, #0x00]
    add r2, r8
    ldr r0, [r2, #0x00]
    mov r3, r10
    ldr r1, [r3, #0x14]
    ands r0, r1
    str r0, [r2, #0x00]
    ldr r0, [r2, #0x00]
    ldr r1, [r3, #0x10]
    orrs r0, r1
    str r0, [r2, #0x00]
    adds r0, r6, #0x4
    ldr r4, _0802F7C4 @ =0x030016F0
    str r0, [r4, #0x00]
    ldr r5, [sp, #0x008]
    subs r5, #0x01
    str r5, [sp, #0x008]
    cmp r5, #0x00
    bgt _0802F722
    b _0802F9F2
    .byte 0x00, 0x00
_0802F7C4: .4byte 0x030016F0
_0802F7C8: .4byte 0x000001FF
_0802F7CC: .4byte 0x030016F8
_0802F7D0: .4byte 0xFFFFFCFF
_0802F7D4:
    mov r6, r9
    ldrh r5, [r6, #0x02]
    movs r0, #0x80
    lsls r0, r0, #0x05
    ands r0, r5
    movs r1, #0x01
    cmp r0, #0x00
    beq _0802F7E6
    subs r1, #0x02
_0802F7E6:
    movs r0, #0x80
    lsls r0, r0, #0x06
    ands r5, r0
    movs r2, #0x01
    cmp r5, #0x00
    beq _0802F7F4
    subs r2, #0x02
_0802F7F4:
    mov r3, r10
    movs r4, #0x18
    ldsh r0, [r3, r4]
    adds r5, r0, #0x0
    muls r5, r1
    strh r5, [r3, #0x18]
    movs r6, #0x1A
    ldsh r0, [r3, r6]
    muls r0, r1
    strh r0, [r3, #0x1A]
    movs r1, #0x1C
    ldsh r0, [r3, r1]
    muls r0, r2
    strh r0, [r3, #0x1C]
    movs r4, #0x1E
    ldsh r0, [r3, r4]
    muls r0, r2
    strh r0, [r3, #0x1E]
    ldr r6, _0802F858 @ =0x030016F4
    ldr r4, [r6, #0x00]
    cmp r4, #0x1F
    bgt _0802F850
    lsls r3, r4, #0x05
    ldr r2, _0802F85C @ =0x030016FE
    adds r0, r3, r2
    strh r5, [r0, #0x00]
    adds r0, r2, #0x0
    adds r0, #0x08
    adds r0, r3, r0
    mov r5, r10
    ldrh r1, [r5, #0x1A]
    strh r1, [r0, #0x00]
    adds r0, r2, #0x0
    adds r0, #0x10
    adds r0, r3, r0
    ldrh r1, [r5, #0x1C]
    strh r1, [r0, #0x00]
    adds r2, #0x18
    adds r3, r3, r2
    ldrh r0, [r5, #0x1E]
    strh r0, [r3, #0x00]
    adds r0, r4, #0x1
    str r0, [r6, #0x00]
    str r4, [sp, #0x018]
    cmp r4, #0x00
    bge _0802F860
_0802F850:
    movs r0, #0x01
    negs r0, r0
    b _0802F9F4
    .byte 0x00, 0x00
_0802F858: .4byte 0x030016F4
_0802F85C: .4byte 0x030016FE
_0802F860:
    ldr r0, [sp, #0x00C]
    cmp r0, #0xFF
    ble _0802F86C
    ldr r0, [sp, #0x010]
    cmp r0, #0xFF
    bgt _0802F874
_0802F86C:
    movs r6, #0xC0
    lsls r6, r6, #0x02
    str r6, [sp, #0x014]
    b _0802F87A
_0802F874:
    movs r0, #0x80
    lsls r0, r0, #0x01
    str r0, [sp, #0x014]
_0802F87A:
    ldr r1, [sp, #0x008]
    cmp r1, #0x00
    bgt _0802F882
    b _0802F9F2
_0802F882:
    mov r2, r9
    ldrh r0, [r2, #0x00]
    lsrs r3, r0, #0x0E
    ldrh r0, [r2, #0x02]
    lsrs r4, r0, #0x0E
    ldr r5, _0802F91C @ =0x030016F0
    ldr r0, [r5, #0x00]
    ldr r6, _0802F920 @ =0x000001FF
    cmp r0, r6
    ble _0802F898
    b _0802F9F2
_0802F898:
    ldrh r5, [r2, #0x00]
    movs r0, #0x02
    add r9, r0
    movs r2, #0xFF
    ands r2, r5
    lsls r0, r2, #0x18
    asrs r6, r0, #0x18
    ldr r1, _0802F924 @ =0x080E642C
    lsls r4, r4, #0x02
    lsls r3, r3, #0x04
    adds r0, r4, r3
    adds r0, r0, r1
    ldr r0, [r0, #0x00]
    mov r8, r0
    adds r7, r6, r0
    lsls r6, r7, #0x08
    adds r0, r6, #0x0
    ldr r1, [sp, #0x010]
    str r2, [sp, #0x020]
    str r3, [sp, #0x024]
    bl Div
    adds r6, r0, #0x0
    subs r0, r6, r7
    ldr r2, [sp, #0x020]
    adds r6, r2, r0
    movs r0, #0x80
    lsls r0, r0, #0x01
    adds r7, r4, #0x0
    ldr r3, [sp, #0x024]
    adds r4, r3, #0x0
    ldr r1, [sp, #0x014]
    cmp r1, r0
    beq _0802F8E0
    mov r2, r8
    subs r6, r6, r2
_0802F8E0:
    ldr r3, _0802F91C @ =0x030016F0
    ldr r2, [r3, #0x00]
    lsls r2, r2, #0x01
    ldr r0, _0802F928 @ =0x030016F8
    adds r2, r2, r0
    ldr r1, [sp, #0x004]
    lsls r0, r1, #0x10
    asrs r0, r0, #0x10
    adds r0, r0, r6
    movs r1, #0xFF
    ands r0, r1
    movs r3, #0xFF
    lsls r3, r3, #0x08
    adds r1, r3, #0x0
    ands r5, r1
    orrs r0, r5
    strh r0, [r2, #0x00]
    mov r6, r9
    ldrh r5, [r6, #0x00]
    movs r0, #0x02
    add r9, r0
    adds r2, r5, #0x0
    ldr r1, _0802F920 @ =0x000001FF
    ands r2, r1
    cmp r2, #0xFF
    ble _0802F92C
    adds r0, r2, #0x0
    eors r0, r1
    negs r6, r0
    b _0802F92E
_0802F91C: .4byte 0x030016F0
_0802F920: .4byte 0x000001FF
_0802F924: .4byte 0x080E642C
_0802F928: .4byte 0x030016F8
_0802F92C:
    adds r6, r2, #0x0
_0802F92E:
    ldr r1, _0802FA04 @ =0x080E63FC
    adds r0, r7, r4
    adds r0, r0, r1
    ldr r4, [r0, #0x00]
    adds r7, r6, r4
    lsls r6, r7, #0x08
    adds r0, r6, #0x0
    ldr r1, [sp, #0x00C]
    str r2, [sp, #0x020]
    bl Div
    adds r6, r0, #0x0
    subs r0, r6, r7
    ldr r2, [sp, #0x020]
    adds r6, r2, r0
    movs r0, #0x80
    lsls r0, r0, #0x01
    ldr r2, [sp, #0x014]
    cmp r2, r0
    beq _0802F958
    subs r6, r6, r4
_0802F958:
    ldr r3, _0802FA08 @ =0x030016F0
    ldr r4, [r3, #0x00]
    lsls r7, r4, #0x01
    ldr r0, _0802FA0C @ =0x030016FA
    adds r3, r7, r0
    ldr r1, [sp, #0x000]
    lsls r0, r1, #0x10
    asrs r0, r0, #0x10
    adds r0, r0, r6
    ldr r2, _0802FA10 @ =0x000001FF
    ands r0, r2
    ldr r6, [sp, #0x018]
    lsls r1, r6, #0x09
    movs r6, #0xF8
    lsls r6, r6, #0x06
    adds r2, r6, #0x0
    ands r1, r2
    orrs r0, r1
    movs r2, #0xC0
    lsls r2, r2, #0x08
    adds r1, r2, #0x0
    ands r5, r1
    orrs r0, r5
    strh r0, [r3, #0x00]
    lsrs r3, r4, #0x1F
    adds r3, r4, r3
    asrs r3, r3, #0x01
    lsls r3, r3, #0x02
    ldr r2, _0802FA0C @ =0x030016FA
    subs r2, #0x02
    adds r2, r3, r2
    ldr r0, [r2, #0x00]
    mov r5, r10
    ldr r1, [r5, #0x0C]
    ands r0, r1
    str r0, [r2, #0x00]
    ldr r0, [r2, #0x00]
    ldr r1, [r5, #0x08]
    orrs r0, r1
    str r0, [r2, #0x00]
    ldr r0, [r2, #0x00]
    ldr r1, _0802FA14 @ =0xFFFFFCFF
    ands r0, r1
    str r0, [r2, #0x00]
    ldr r0, [r2, #0x00]
    ldr r6, [sp, #0x014]
    orrs r0, r6
    str r0, [r2, #0x00]
    ldr r0, _0802FA18 @ =0x030016FC
    adds r0, r7, r0
    str r0, [sp, #0x01C]
    mov r1, r9
    ldrh r0, [r1, #0x00]
    ldr r2, [sp, #0x01C]
    strh r0, [r2, #0x00]
    movs r5, #0x02
    add r9, r5
    ldr r6, _0802FA18 @ =0x030016FC
    adds r3, r3, r6
    ldr r0, [r3, #0x00]
    mov r2, r10
    ldr r1, [r2, #0x14]
    ands r0, r1
    str r0, [r3, #0x00]
    ldr r0, [r3, #0x00]
    ldr r1, [r2, #0x10]
    orrs r0, r1
    str r0, [r3, #0x00]
    adds r4, #0x04
    ldr r3, _0802FA08 @ =0x030016F0
    str r4, [r3, #0x00]
    ldr r4, [sp, #0x008]
    subs r4, #0x01
    str r4, [sp, #0x008]
    cmp r4, #0x00
    ble _0802F9F2
    b _0802F882
_0802F9F2:
    movs r0, #0x00
_0802F9F4:
    add sp, #0x028
    pop {r3, r4, r5}
    mov r8, r3
    mov r9, r4
    mov r10, r5
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
_0802FA04: .4byte 0x080E63FC
_0802FA08: .4byte 0x030016F0
_0802FA0C: .4byte 0x030016FA
_0802FA10: .4byte 0x000001FF
_0802FA14: .4byte 0xFFFFFCFF
_0802FA18: .4byte 0x030016FC
    thumb_func_start oam_renderCellData
oam_renderCellData: @ 0802FA1C
    push {r4, r5, r6, r7, lr}
    mov r7, r10
    mov r6, r9
    mov r5, r8
    push {r5, r6, r7}
    add sp, #-0x024
    mov r8, r0
    adds r7, r1, #0x0
    mov r12, r2
    adds r6, r3, #0x0
    ldr r0, [sp, #0x048]
    mov r9, r0
    cmp r0, #0x00
    bne _0802FB04
    mov r5, sp
    mov r1, r8
    str r1, [sp, #0x000]
    ldrh r0, [r7, #0x00]
    strh r0, [r5, #0x04]
    ldrh r0, [r7, #0x02]
    strh r0, [r5, #0x06]
    mov r2, r9
    str r2, [sp, #0x008]
    movs r0, #0x01
    negs r0, r0
    str r0, [sp, #0x00C]
    str r2, [sp, #0x010]
    str r0, [sp, #0x014]
    mov r3, r12
    cmp r3, #0x00
    beq _0802FA5E
    cmp r6, #0x00
    bne _0802FA64
_0802FA5E:
    movs r6, #0x80
    lsls r6, r6, #0x01
    mov r12, r6
_0802FA64:
    ldr r1, _0802FAF4 @ =0x080E645C
    ldr r7, [sp, #0x044]
    lsls r0, r7, #0x10
    asrs r2, r0, #0x10
    adds r0, r2, #0x0
    cmp r2, #0x00
    bge _0802FA74
    adds r0, #0x3F
_0802FA74:
    asrs r3, r0, #0x06
    movs r0, #0x80
    lsls r0, r0, #0x01
    subs r0, r0, r3
    ldr r4, _0802FAF8 @ =0x000003FF
    ands r0, r4
    lsls r0, r0, #0x02
    adds r0, r0, r1
    mov r8, r0
    ldr r0, [r0, #0x00]
    mov r7, r12
    muls r7, r0
    adds r0, r7, #0x0
    cmp r0, #0x00
    bge _0802FA96
    ldr r7, _0802FAFC @ =0x00007FFF
    adds r0, r0, r7
_0802FA96:
    asrs r0, r0, #0x0F
    strh r0, [r5, #0x18]
    adds r0, r3, #0x0
    ands r0, r4
    lsls r0, r0, #0x02
    adds r1, r0, r1
    ldr r0, [r1, #0x00]
    mov r3, r12
    muls r3, r0
    adds r0, r3, #0x0
    cmp r0, #0x00
    bge _0802FAB2
    ldr r7, _0802FAFC @ =0x00007FFF
    adds r0, r0, r7
_0802FAB2:
    asrs r0, r0, #0x0F
    strh r0, [r5, #0x1A]
    ldr r1, [r1, #0x00]
    negs r0, r6
    muls r0, r1
    cmp r0, #0x00
    bge _0802FAC4
    ldr r1, _0802FAFC @ =0x00007FFF
    adds r0, r0, r1
_0802FAC4:
    asrs r0, r0, #0x0F
    strh r0, [r5, #0x1C]
    mov r2, r8
    ldr r0, [r2, #0x00]
    muls r0, r6
    cmp r0, #0x00
    bge _0802FAD6
    ldr r3, _0802FAFC @ =0x00007FFF
    adds r0, r0, r3
_0802FAD6:
    asrs r0, r0, #0x0F
    strh r0, [r5, #0x1E]
    mov r7, r12
    strh r7, [r5, #0x20]
    strh r6, [r5, #0x22]
    ldr r4, _0802FB00 @ =0x0300218C
    movs r0, #0x01
    str r0, [r4, #0x00]
    adds r0, r5, #0x0
    bl oam_renderCell
    movs r0, #0x00
    str r0, [r4, #0x00]
    b _0802FC22
    .byte 0x00, 0x00
_0802FAF4: .4byte 0x080E645C
_0802FAF8: .4byte 0x000003FF
_0802FAFC: .4byte 0x00007FFF
_0802FB00: .4byte 0x0300218C
_0802FB04:
    ldr r0, _0802FB2C @ =0x03002180
    ldr r1, [r0, #0x00]
    mov r10, r0
    cmp r1, #0x1F
    ble _0802FB10
    b _0802FC22
_0802FB10:
    movs r0, #0x34
    muls r1, r0
    ldr r0, _0802FB30 @ =0x03001AF8
    adds r2, r1, r0
    ldr r3, _0802FB34 @ =0x03002178
    ldr r1, [r3, #0x00]
    cmp r1, #0x00
    bne _0802FB3C
    ldr r0, _0802FB38 @ =0x0300217C
    str r2, [r0, #0x00]
    str r2, [r3, #0x00]
    str r1, [r2, #0x04]
    str r1, [r2, #0x00]
    b _0802FB4A
_0802FB2C: .4byte 0x03002180
_0802FB30: .4byte 0x03001AF8
_0802FB34: .4byte 0x03002178
_0802FB38: .4byte 0x0300217C
_0802FB3C:
    ldr r1, _0802FC34 @ =0x0300217C
    ldr r0, [r1, #0x00]
    str r2, [r0, #0x00]
    str r0, [r2, #0x04]
    movs r0, #0x00
    str r0, [r2, #0x00]
    str r2, [r1, #0x00]
_0802FB4A:
    mov r0, r10
    ldr r1, [r0, #0x00]
    movs r0, #0x34
    adds r5, r1, #0x0
    muls r5, r0
    ldr r3, _0802FC38 @ =0x03001B00
    adds r4, r5, r3
    mov r1, r9
    ldr r0, [r1, #0x00]
    str r0, [r4, #0x00]
    ldr r1, [r1, #0x04]
    mov r0, r8
    ldrh r2, [r0, #0x06]
    movs r0, #0xC0
    lsls r0, r0, #0x04
    ands r0, r2
    lsls r0, r0, #0x10
    adds r1, r1, r0
    str r1, [r4, #0x04]
    adds r3, #0x08
    adds r5, r5, r3
    mov r1, r8
    str r1, [r5, #0x00]
    ldrh r0, [r7, #0x00]
    movs r1, #0x00
    strh r0, [r5, #0x04]
    ldrh r0, [r7, #0x02]
    strh r0, [r5, #0x06]
    str r1, [r5, #0x08]
    movs r0, #0x01
    negs r0, r0
    str r0, [r5, #0x0C]
    str r1, [r5, #0x10]
    str r0, [r5, #0x14]
    mov r2, r12
    cmp r2, #0x00
    beq _0802FB98
    cmp r6, #0x00
    bne _0802FB9E
_0802FB98:
    movs r6, #0x80
    lsls r6, r6, #0x01
    mov r12, r6
_0802FB9E:
    ldr r1, _0802FC3C @ =0x080E645C
    ldr r3, [sp, #0x044]
    lsls r0, r3, #0x10
    asrs r2, r0, #0x10
    adds r0, r2, #0x0
    cmp r2, #0x00
    bge _0802FBAE
    adds r0, #0x3F
_0802FBAE:
    asrs r3, r0, #0x06
    movs r0, #0x80
    lsls r0, r0, #0x01
    subs r0, r0, r3
    ldr r4, _0802FC40 @ =0x000003FF
    ands r0, r4
    lsls r0, r0, #0x02
    adds r0, r0, r1
    mov r8, r0
    ldr r0, [r0, #0x00]
    mov r7, r12
    muls r7, r0
    adds r0, r7, #0x0
    cmp r0, #0x00
    bge _0802FBD0
    ldr r7, _0802FC44 @ =0x00007FFF
    adds r0, r0, r7
_0802FBD0:
    asrs r0, r0, #0x0F
    strh r0, [r5, #0x18]
    adds r0, r3, #0x0
    ands r0, r4
    lsls r0, r0, #0x02
    adds r1, r0, r1
    ldr r0, [r1, #0x00]
    mov r3, r12
    muls r3, r0
    adds r0, r3, #0x0
    cmp r0, #0x00
    bge _0802FBEC
    ldr r7, _0802FC44 @ =0x00007FFF
    adds r0, r0, r7
_0802FBEC:
    asrs r0, r0, #0x0F
    strh r0, [r5, #0x1A]
    ldr r1, [r1, #0x00]
    negs r0, r6
    muls r0, r1
    cmp r0, #0x00
    bge _0802FBFE
    ldr r1, _0802FC44 @ =0x00007FFF
    adds r0, r0, r1
_0802FBFE:
    asrs r0, r0, #0x0F
    strh r0, [r5, #0x1C]
    mov r2, r8
    ldr r0, [r2, #0x00]
    muls r0, r6
    cmp r0, #0x00
    bge _0802FC10
    ldr r3, _0802FC44 @ =0x00007FFF
    adds r0, r0, r3
_0802FC10:
    asrs r0, r0, #0x0F
    strh r0, [r5, #0x1E]
    mov r7, r12
    strh r7, [r5, #0x20]
    strh r6, [r5, #0x22]
    mov r1, r10
    ldr r0, [r1, #0x00]
    adds r0, #0x01
    str r0, [r1, #0x00]
_0802FC22:
    add sp, #0x024
    pop {r3, r4, r5}
    mov r8, r3
    mov r9, r4
    mov r10, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .byte 0x00, 0x00
_0802FC34: .4byte 0x0300217C
_0802FC38: .4byte 0x03001B00
_0802FC3C: .4byte 0x080E645C
_0802FC40: .4byte 0x000003FF
_0802FC44: .4byte 0x00007FFF
    thumb_func_start oam_802FC48
oam_802FC48: @ 0802FC48
    push {r4, r5, lr}
    add sp, #-0x034
    adds r2, r0, #0x0
    cmp r2, #0x00
    beq _0802FC58
    ldr r0, [r2, #0x00]
    cmp r0, #0x00
    bne _0802FC5C
_0802FC58:
    adds r0, r2, #0x0
    b _0802FCBE
_0802FC5C:
    adds r1, r2, #0x0
    b _0802FC68
_0802FC60:
    ldr r1, [r1, #0x00]
    ldr r0, [r0, #0x00]
    cmp r0, #0x00
    beq _0802FC6E
_0802FC68:
    ldr r0, [r0, #0x00]
    cmp r0, #0x00
    bne _0802FC60
_0802FC6E:
    ldr r5, [r1, #0x00]
    movs r0, #0x00
    str r0, [r1, #0x00]
    adds r0, r2, #0x0
    bl oam_802FC48
    adds r4, r0, #0x0
    adds r0, r5, #0x0
    bl oam_802FC48
    adds r2, r0, #0x0
    mov r3, sp
    b _0802FCAA
_0802FC88:
    ldr r1, [r4, #0x0C]
    ldr r0, [r2, #0x0C]
    cmp r1, r0
    bgt _0802FC9C
    cmp r1, r0
    bne _0802FCA4
    ldr r1, [r4, #0x08]
    ldr r0, [r2, #0x08]
    cmp r1, r0
    ble _0802FCA4
_0802FC9C:
    str r2, [r3, #0x00]
    adds r3, r2, #0x0
    ldr r2, [r3, #0x00]
    b _0802FCAA
_0802FCA4:
    str r4, [r3, #0x00]
    adds r3, r4, #0x0
    ldr r4, [r4, #0x00]
_0802FCAA:
    cmp r4, #0x00
    beq _0802FCB6
    cmp r2, #0x00
    bne _0802FC88
    cmp r4, #0x00
    bne _0802FCBA
_0802FCB6:
    str r2, [r3, #0x00]
    b _0802FCBC
_0802FCBA:
    str r4, [r3, #0x00]
_0802FCBC:
    ldr r0, [sp, #0x000]
_0802FCBE:
    add sp, #0x034
    pop {r4, r5}
    pop {r1}
    bx r1
    .byte 0x00, 0x00
    thumb_func_start oam_init
oam_init: @ 0802FCC8
    push {r4, lr}
    add sp, #-0x004
    movs r4, #0x00
    str r4, [sp, #0x000]
    movs r1, #0xE0
    lsls r1, r1, #0x13
    ldr r2, _0802FD18 @ =0x01000100
    mov r0, sp
    bl CpuFastSet
    ldr r0, _0802FD1C @ =0x030016F0
    str r4, [r0, #0x00]
    ldr r0, _0802FD20 @ =0x030016F4
    str r4, [r0, #0x00]
    movs r0, #0x00
    movs r3, #0x80
    lsls r3, r3, #0x02
    movs r2, #0x00
    ldr r1, _0802FD24 @ =0x030016F8
_0802FCEE:
    stm r1!, {r3}
    stm r1!, {r2}
    adds r0, #0x02
    cmp r0, #0xFF
    bls _0802FCEE
    ldr r2, _0802FD28 @ =0x03002178
    ldr r0, _0802FD2C @ =0x0300217C
    movs r1, #0x00
    str r1, [r0, #0x00]
    str r1, [r2, #0x00]
    ldr r0, _0802FD30 @ =0x03002180
    str r1, [r0, #0x00]
    movs r2, #0x01
    ldr r0, _0802FD34 @ =0x03002188
    str r2, [r0, #0x00]
    ldr r0, _0802FD38 @ =0x0300218C
    str r1, [r0, #0x00]
    add sp, #0x004
    pop {r4}
    pop {r0}
    bx r0
_0802FD18: .4byte 0x01000100
_0802FD1C: .4byte 0x030016F0
_0802FD20: .4byte 0x030016F4
_0802FD24: .4byte 0x030016F8
_0802FD28: .4byte 0x03002178
_0802FD2C: .4byte 0x0300217C
_0802FD30: .4byte 0x03002180
_0802FD34: .4byte 0x03002188
_0802FD38: .4byte 0x0300218C
    thumb_func_start oam_802FD3C
oam_802FD3C: @ 0802FD3C
    push {r4, lr}
    ldr r0, _0802FD84 @ =0x03002188
    ldr r0, [r0, #0x00]
    cmp r0, #0x00
    beq _0802FD7C
    ldr r0, _0802FD88 @ =0x03002184
    ldr r0, [r0, #0x00]
    cmp r0, #0x00
    beq _0802FD7C
    ldr r1, _0802FD8C @ =0x0300218C
    movs r0, #0x01
    str r0, [r1, #0x00]
    ldr r4, _0802FD90 @ =0x03002178
    ldr r0, [r4, #0x00]
    bl oam_802FC48
    str r0, [r4, #0x00]
    cmp r0, #0x00
    beq _0802FD72
_0802FD62:
    adds r4, r0, #0x0
    adds r0, r4, #0x0
    adds r0, #0x10
    bl oam_renderCell
    ldr r0, [r4, #0x00]
    cmp r0, #0x00
    bne _0802FD62
_0802FD72:
    ldr r0, _0802FD88 @ =0x03002184
    movs r1, #0x00
    str r1, [r0, #0x00]
    ldr r0, _0802FD8C @ =0x0300218C
    str r1, [r0, #0x00]
_0802FD7C:
    pop {r4}
    pop {r0}
    bx r0
    .byte 0x00, 0x00
_0802FD84: .4byte 0x03002188
_0802FD88: .4byte 0x03002184
_0802FD8C: .4byte 0x0300218C
_0802FD90: .4byte 0x03002178
    thumb_func_start oam_reset
oam_reset: @ 0802FD94
    ldr r0, _0802FDD4 @ =0x03002188
    ldr r0, [r0, #0x00]
    cmp r0, #0x00
    beq _0802FDD0
    ldr r0, _0802FDD8 @ =0x0300218C
    ldr r1, [r0, #0x00]
    cmp r1, #0x00
    bne _0802FDD0
    ldr r0, _0802FDDC @ =0x030016F0
    str r1, [r0, #0x00]
    ldr r0, _0802FDE0 @ =0x030016F4
    str r1, [r0, #0x00]
    ldr r0, _0802FDE4 @ =0x03002178
    str r1, [r0, #0x00]
    ldr r0, _0802FDE8 @ =0x0300217C
    str r1, [r0, #0x00]
    ldr r0, _0802FDEC @ =0x03002180
    str r1, [r0, #0x00]
    movs r1, #0x00
    ldr r3, _0802FDF0 @ =0x03002184
    movs r2, #0x80
    lsls r2, r2, #0x02
    ldr r0, _0802FDF4 @ =0x030016F8
_0802FDC2:
    str r2, [r0, #0x00]
    adds r0, #0x08
    adds r1, #0x02
    cmp r1, #0xFF
    bls _0802FDC2
    movs r0, #0x01
    str r0, [r3, #0x00]
_0802FDD0:
    bx lr
    .byte 0x00, 0x00
_0802FDD4: .4byte 0x03002188
_0802FDD8: .4byte 0x0300218C
_0802FDDC: .4byte 0x030016F0
_0802FDE0: .4byte 0x030016F4
_0802FDE4: .4byte 0x03002178
_0802FDE8: .4byte 0x0300217C
_0802FDEC: .4byte 0x03002180
_0802FDF0: .4byte 0x03002184
_0802FDF4: .4byte 0x030016F8
    thumb_func_start oam_dmaCopyToHw
oam_dmaCopyToHw: @ 0802FDF8
    ldr r0, _0802FE14 @ =0x03002184
    ldr r0, [r0, #0x00]
    cmp r0, #0x00
    bne _0802FE12
    ldr r1, _0802FE18 @ =0x040000B0
    ldr r0, _0802FE1C @ =0x030016F8
    str r0, [r1, #0x00]
    movs r0, #0xE0
    lsls r0, r0, #0x13
    str r0, [r1, #0x04]
    ldr r0, _0802FE20 @ =0x84000100
    str r0, [r1, #0x08]
    ldr r0, [r1, #0x08]
_0802FE12:
    bx lr
_0802FE14: .4byte 0x03002184
_0802FE18: .4byte 0x040000B0
_0802FE1C: .4byte 0x030016F8
_0802FE20: .4byte 0x84000100
    thumb_func_start oam_cpuCopyToHw
oam_cpuCopyToHw: @ 0802FE24
    push {lr}
    ldr r0, _0802FE40 @ =0x03002184
    ldr r0, [r0, #0x00]
    cmp r0, #0x00
    bne _0802FE3A
    ldr r0, _0802FE44 @ =0x030016F8
    movs r1, #0xE0
    lsls r1, r1, #0x13
    ldr r2, _0802FE48 @ =0x04000100
    bl CpuSet
_0802FE3A:
    pop {r0}
    bx r0
    .byte 0x00, 0x00
_0802FE40: .4byte 0x03002184
_0802FE44: .4byte 0x030016F8
_0802FE48: .4byte 0x04000100
    thumb_func_start oam_802FE4C
oam_802FE4C: @ 0802FE4C
    ldr r1, _0802FE54 @ =0x03002188
    str r0, [r1, #0x00]
    bx lr
    .byte 0x00, 0x00
_0802FE54: .4byte 0x03002188
    thumb_func_start oam_renderMipmapCellDataUniform
oam_renderMipmapCellDataUniform: @ 0802FE58
    push {r4, r5, r6, lr}
    add sp, #-0x008
    adds r4, r0, #0x0
    adds r6, r1, #0x0
    adds r5, r3, #0x0
    ldr r0, _0802FE70 @ =0x000001FF
    cmp r2, r0
    bgt _0802FE74
    ldr r0, [r4, #0x00]
    ldr r3, [r4, #0x04]
    b _0802FE8E
    .byte 0x00, 0x00
_0802FE70: .4byte 0x000001FF
_0802FE74:
    ldr r0, _0802FE80 @ =0x000003FF
    cmp r2, r0
    bgt _0802FE84
    ldr r0, [r4, #0x08]
    ldr r3, [r4, #0x0C]
    b _0802FE8E
_0802FE80: .4byte 0x000003FF
_0802FE84:
    ldr r0, _0802FEA0 @ =0x000007FF
    cmp r2, r0
    bgt _0802FEA4
    ldr r0, [r4, #0x10]
    ldr r3, [r4, #0x14]
_0802FE8E:
    asrs r2, r3
    adds r3, r2, #0x0
    movs r1, #0x00
    str r1, [sp, #0x000]
    str r5, [sp, #0x004]
    adds r1, r6, #0x0
    bl oam_renderCellData
    b _0802FEB8
_0802FEA0: .4byte 0x000007FF
_0802FEA4:
    ldr r0, [r4, #0x18]
    ldr r3, [r4, #0x1C]
    asrs r2, r3
    adds r3, r2, #0x0
    movs r1, #0x00
    str r1, [sp, #0x000]
    str r5, [sp, #0x004]
    adds r1, r6, #0x0
    bl oam_renderCellData
_0802FEB8:
    add sp, #0x008
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    thumb_func_start oam_renderMipmapCellData
oam_renderMipmapCellData: @ 0802FEC0
    push {r4, r5, r6, r7, lr}
    add sp, #-0x008
    adds r4, r0, #0x0
    adds r5, r1, #0x0
    adds r1, r2, #0x0
    adds r2, r3, #0x0
    ldr r3, [sp, #0x01C]
    ldr r6, [sp, #0x020]
    ldr r7, [sp, #0x024]
    ldr r0, _0802FEE0 @ =0x000001FF
    cmp r1, r0
    bgt _0802FEE4
    ldr r0, [r4, #0x00]
    ldr r1, [r4, #0x04]
    b _0802FEFE
    .byte 0x00, 0x00
_0802FEE0: .4byte 0x000001FF
_0802FEE4:
    ldr r0, _0802FEF0 @ =0x000003FF
    cmp r1, r0
    bgt _0802FEF4
    ldr r0, [r4, #0x08]
    ldr r1, [r4, #0x0C]
    b _0802FEFE
_0802FEF0: .4byte 0x000003FF
_0802FEF4:
    ldr r0, _0802FF10 @ =0x000007FF
    cmp r1, r0
    bgt _0802FF14
    ldr r0, [r4, #0x10]
    ldr r1, [r4, #0x14]
_0802FEFE:
    asrs r2, r1
    asrs r3, r1
    str r6, [sp, #0x000]
    str r7, [sp, #0x004]
    adds r1, r5, #0x0
    bl oam_renderCellData
    b _0802FF26
    .byte 0x00, 0x00
_0802FF10: .4byte 0x000007FF
_0802FF14:
    ldr r0, [r4, #0x18]
    ldr r1, [r4, #0x1C]
    asrs r2, r1
    asrs r3, r1
    str r6, [sp, #0x000]
    str r7, [sp, #0x004]
    adds r1, r5, #0x0
    bl oam_renderCellData
_0802FF26:
    add sp, #0x008
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .byte 0x00, 0x00
    thumb_func_start oam_renderCellDataSimple
oam_renderCellDataSimple: @ 0802FF30
    push {r4, lr}
    add sp, #-0x00C
    ldr r4, [sp, #0x014]
    lsls r1, r1, #0x10
    lsls r2, r2, #0x10
    lsrs r1, r1, #0x10
    orrs r1, r2
    str r1, [sp, #0x008]
    movs r1, #0x00
    str r1, [sp, #0x000]
    str r4, [sp, #0x004]
    add r1, sp, #0x008
    adds r2, r3, #0x0
    bl oam_renderCellData
    add sp, #0x00C
    pop {r4}
    pop {r0}
    bx r0
    .byte 0x00, 0x00
    thumb_func_start sub_802FF58
sub_802FF58:
    adds r2, r0, #0x0
    lsls r1, r1, #0x10
    lsrs r3, r1, #0x10
    ldrh r0, [r2, #0x00]
    adds r0, #0x40
    lsls r0, r0, #0x10
    movs r1, #0xB8
    lsls r1, r1, #0x11
    cmp r0, r1
    bhi _0802FF88
    movs r1, #0x02
    ldsh r0, [r2, r1]
    cmp r0, #0x00
    blt _0802FF88
    cmp r0, #0xE0
    bgt _0802FF88
    lsls r0, r3, #0x10
    asrs r1, r0, #0x10
    cmp r1, #0x7F
    ble _0802FF88
    movs r0, #0x80
    lsls r0, r0, #0x05
    cmp r1, r0
    ble _0802FF8C
_0802FF88:
    movs r0, #0x00
    b _0802FF8E
_0802FF8C:
    movs r0, #0x01
_0802FF8E:
    bx lr
    thumb_func_start oam_bufferCellAffineMtx
oam_bufferCellAffineMtx: @ 0802FF90
    push {r4, r5, r6, lr}
    adds r4, r0, #0x0
    ldr r6, _0802FFCC @ =0x030016F4
    ldr r5, [r6, #0x00]
    cmp r5, #0x1F
    bgt _0802FFD4
    lsls r3, r5, #0x05
    ldr r2, _0802FFD0 @ =0x030016FE
    adds r1, r3, r2
    ldrh r0, [r4, #0x18]
    strh r0, [r1, #0x00]
    adds r0, r2, #0x0
    adds r0, #0x08
    adds r0, r3, r0
    ldrh r1, [r4, #0x1A]
    strh r1, [r0, #0x00]
    adds r0, r2, #0x0
    adds r0, #0x10
    adds r0, r3, r0
    ldrh r1, [r4, #0x1C]
    strh r1, [r0, #0x00]
    adds r2, #0x18
    adds r3, r3, r2
    ldrh r0, [r4, #0x1E]
    strh r0, [r3, #0x00]
    adds r0, r5, #0x1
    str r0, [r6, #0x00]
    adds r0, r5, #0x0
    b _0802FFD8
    .byte 0x00, 0x00
_0802FFCC: .4byte 0x030016F4
_0802FFD0: .4byte 0x030016FE
_0802FFD4:
    movs r0, #0x01
    negs r0, r0
_0802FFD8:
    pop {r4, r5, r6}
    pop {r1}
    bx r1
    .byte 0x00, 0x00
    thumb_func_start oam_renderAllCells
oam_renderAllCells: @ 0802FFE0
    push {r4, lr}
    ldr r0, _08030000 @ =0x03002178
    ldr r0, [r0, #0x00]
    cmp r0, #0x00
    beq _0802FFFA
_0802FFEA:
    adds r4, r0, #0x0
    adds r0, r4, #0x0
    adds r0, #0x10
    bl oam_renderCell
    ldr r0, [r4, #0x00]
    cmp r0, #0x00
    bne _0802FFEA
_0802FFFA:
    pop {r4}
    pop {r0}
    bx r0
_08030000: .4byte 0x03002178
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
