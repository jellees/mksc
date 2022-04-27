    .include "asm/macros.inc"

    .syntax unified
    .text
    
    thumb_func_start sub_802EE80
sub_802EE80:
    movs r1, #0
    str r1, [r0, #4]
    str r1, [r0]
    bx lr
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
