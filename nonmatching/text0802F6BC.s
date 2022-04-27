.include "asm/macros.inc"

.syntax unified
.text
    
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