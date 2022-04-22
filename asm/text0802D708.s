    .include "asm/macros.inc"

    .syntax unified
    .text        
        
    thumb_func_start sub_802D708
    sub_802D708:
        push {r4, r5, r6, lr}
        bl sub_802E1C4
        ldr r1, _0802D758 @ =0x03002C80
        ldrh r2, [r1, #0x16]
        movs r0, #0xFF
        lsls r0, r0, #0x08
        ands r0, r2
        movs r2, #0x00
        strh r0, [r1, #0x16]
        movs r0, #0x01
        negs r0, r0
        strb r0, [r1, #0x00]
        strb r2, [r1, #0x01]
        movs r2, #0x00
        adds r6, r1, #0x0
        adds r6, #0x0D
        movs r3, #0x00
        adds r5, r1, #0x0
        adds r5, #0x11
        adds r4, r1, #0x0
    _0802D732:
        lsls r0, r2, #0x18
        lsrs r0, r0, #0x18
        adds r1, r0, r6
        strb r3, [r1, #0x00]
        adds r0, r0, r5
        strb r3, [r0, #0x00]
        adds r2, #0x01
        cmp r2, #0x03
        ble _0802D732
        movs r0, #0x00
        strb r0, [r4, #0x0A]
        strb r0, [r4, #0x0B]
        strb r0, [r4, #0x0C]
        ldr r1, _0802D75C @ =0x00003FFF
        ldr r0, _0802D760 @ =0x03000208
        strh r1, [r0, #0x00]
        pop {r4, r5, r6}
        pop {r0}
        bx r0
    _0802D758: .4byte 0x03002C80
    _0802D75C: .4byte 0x00003FFF
    _0802D760: .4byte 0x03000208
        thumb_func_start sio2_vblank
    sio2_vblank:
        push {r4, r5, r6, lr}
        ldr r6, _0802D7D8 @ =0x03000208
        ldrh r5, [r6, #0x00]
        bl sub_802E4DC
        movs r1, #0x00
        cmp r0, #0x00
        bne _0802D776
        movs r1, #0x01
    _0802D776:
        cmp r1, #0x00
        beq _0802D7F4
        ldr r2, _0802D7DC @ =0x03002C80
        movs r1, #0x00
        movs r0, #0x00
        ldsb r0, [r2, r0]
        cmp r0, #0x00
        bne _0802D788
        movs r1, #0x01
    _0802D788:
        cmp r1, #0x00
        beq _0802D814
        ldr r0, _0802D7E0 @ =0x04000128
        ldrh r1, [r0, #0x00]
        movs r0, #0x80
        ands r0, r1
        cmp r0, #0x00
        beq _0802D7CC
        movs r0, #0x00
        strh r0, [r2, #0x16]
        ldr r2, _0802D7E4 @ =0x04000134
        ldrb r0, [r2, #0x01]
        movs r1, #0xC0
        orrs r0, r1
        strb r0, [r2, #0x01]
        movs r0, #0x01
        movs r1, #0xC1
        negs r1, r1
        bl irq_updateMask
        ldr r1, _0802D7E8 @ =0x04000202
        movs r0, #0xC0
        strh r0, [r1, #0x00]
        ldr r4, _0802D7EC @ =0x0802D5F1
        movs r0, #0x07
        adds r1, r4, #0x0
        bl irq_setHandler
        movs r0, #0x06
        adds r1, r4, #0x0
        bl irq_setHandler
        bl sub_802D708
    _0802D7CC:
        adds r0, r5, #0x0
        bl sub_802E010
        ldr r0, _0802D7F0 @ =0x00003FFF
        strh r0, [r6, #0x00]
        b _0802D814
    _0802D7D8: .4byte 0x03000208
    _0802D7DC: .4byte 0x03002C80
    _0802D7E0: .4byte 0x04000128
    _0802D7E4: .4byte 0x04000134
    _0802D7E8: .4byte 0x04000202
    _0802D7EC: .4byte main_dummyIrqHandler
    _0802D7F0: .4byte 0x00003FFF
    _0802D7F4:
        ldr r0, _0802D81C @ =0x03002C80
        movs r1, #0x00
        ldsb r1, [r0, r1]
        movs r0, #0x01
        negs r0, r0
        cmp r1, r0
        bne _0802D804
        movs r1, #0x00
    _0802D804:
        ldr r0, _0802D820 @ =0x04000130
        ldrh r2, [r0, #0x00]
        ldr r0, _0802D824 @ =0x03004F58
        lsls r1, r1, #0x01
        adds r1, r1, r0
        ldr r0, _0802D828 @ =0x000003FF
        ands r0, r2
        strh r0, [r1, #0x00]
    _0802D814:
        pop {r4, r5, r6}
        pop {r0}
        bx r0
        .byte 0x00, 0x00
    _0802D81C: .4byte 0x03002C80
    _0802D820: .4byte 0x04000130
    _0802D824: .4byte 0x03004F58
    _0802D828: .4byte 0x000003FF
        thumb_func_start sio2_update
    sio2_update:
        push {r4, r5, r6, r7, lr}
        mov r7, r10
        mov r6, r9
        mov r5, r8
        push {r5, r6, r7}
        add sp, #-0x010
        movs r0, #0x01
        str r0, [sp, #0x00C]
        ldr r4, _0802D8D8 @ =0x03002C80
        ldrh r1, [r4, #0x16]
        movs r0, #0x80
        lsls r0, r0, #0x08
        ands r0, r1
        cmp r0, #0x00
        beq _0802D8D4
        bl sub_802E5C4
        adds r2, r0, #0x0
        movs r0, #0x01
        negs r0, r0
        cmp r2, r0
        bne _0802D882
        movs r0, #0x00
        ldsb r0, [r4, r0]
        cmp r0, r2
        beq _0802D882
        ldrh r0, [r4, #0x16]
        movs r1, #0xFF
        lsls r1, r1, #0x08
        ands r1, r0
        movs r0, #0x00
        strh r1, [r4, #0x16]
        strb r0, [r4, #0x01]
        movs r1, #0x00
        adds r4, #0x0D
        movs r3, #0x00
    _0802D874:
        lsls r0, r1, #0x18
        lsrs r0, r0, #0x18
        adds r0, r0, r4
        strb r3, [r0, #0x00]
        adds r1, #0x01
        cmp r1, #0x03
        ble _0802D874
    _0802D882:
        ldr r5, _0802D8D8 @ =0x03002C80
        movs r7, #0x00
        strb r2, [r5, #0x00]
        ldr r6, _0802D8DC @ =0x03004F38
        ldr r0, [r6, #0x00]
        cmp r0, #0x0A
        ble _0802D8C4
        strh r7, [r5, #0x16]
        ldr r2, _0802D8E0 @ =0x04000134
        ldrb r0, [r2, #0x01]
        movs r1, #0xC0
        orrs r0, r1
        strb r0, [r2, #0x01]
        movs r0, #0x01
        movs r1, #0xC1
        negs r1, r1
        bl irq_updateMask
        ldr r1, _0802D8E4 @ =0x04000202
        movs r0, #0xC0
        strh r0, [r1, #0x00]
        ldr r4, _0802D8E8 @ =0x0802D5F1
        movs r0, #0x07
        adds r1, r4, #0x0
        bl irq_setHandler
        movs r0, #0x06
        adds r1, r4, #0x0
        bl irq_setHandler
        bl sub_802D708
        str r7, [r6, #0x00]
    _0802D8C4:
        bl sub_802E4DC
        movs r1, #0x00
        cmp r0, #0x00
        bne _0802D8D0
        movs r1, #0x01
    _0802D8D0:
        cmp r1, #0x00
        bne _0802D8EC
    _0802D8D4:
        movs r0, #0x00
        b _0802DB44
    _0802D8D8: .4byte 0x03002C80
    _0802D8DC: .4byte 0x03004F38
    _0802D8E0: .4byte 0x04000134
    _0802D8E4: .4byte 0x04000202
    _0802D8E8: .4byte main_dummyIrqHandler
    _0802D8EC:
        mov r10, r5
        b _0802DAD8
    _0802D8F0:
        ldr r0, _0802D970 @ =0x03004F38
        movs r4, #0x00
        str r4, [r0, #0x00]
        mov r0, sp
        bl sub_802DF08
        movs r1, #0x01
        negs r1, r1
        cmp r0, r1
        bne _0802D906
        b _0802DAD2
    _0802D906:
        mov r1, r10
        strb r4, [r1, #0x0A]
        ldr r2, _0802D974 @ =0x03002C80
        mov r12, r2
        ldr r5, _0802D978 @ =0x0000FFFF
        mov r3, r12
        mov r2, sp
    _0802D914:
        ldrh r0, [r2, #0x00]
        cmp r0, r5
        beq _0802D924
        movs r0, #0x01
        lsls r0, r4
        ldrb r1, [r3, #0x0A]
        orrs r0, r1
        strb r0, [r3, #0x0A]
    _0802D924:
        adds r2, #0x02
        adds r4, #0x01
        cmp r4, #0x03
        ble _0802D914
        mov r3, r12
        ldrb r0, [r3, #0x0A]
        cmp r0, #0x00
        bne _0802D936
        b _0802DAD2
    _0802D936:
        ldrb r1, [r3, #0x0B]
        cmp r0, r1
        beq _0802DA08
        movs r4, #0x00
        mov r5, r12
        movs r2, #0x0D
        add r2, r12
        mov r8, r2
        ldr r3, _0802D97C @ =0x00003FFF
        mov r9, r3
        movs r6, #0x00
        mov r3, sp
        movs r7, #0x00
    _0802D950:
        ldrh r1, [r3, #0x00]
        adds r2, r1, #0x0
        ldr r0, _0802D978 @ =0x0000FFFF
        cmp r2, r0
        bne _0802D980
        movs r0, #0x01
        lsls r0, r4
        ldrb r1, [r5, #0x0B]
        bics r1, r0
        strb r1, [r5, #0x0B]
        lsrs r0, r6, #0x18
        add r0, r8
        movs r1, #0x00
        strb r1, [r0, #0x00]
        b _0802D9B8
        .byte 0x00, 0x00
    _0802D970: .4byte 0x03004F38
    _0802D974: .4byte 0x03002C80
    _0802D978: .4byte 0x0000FFFF
    _0802D97C: .4byte 0x00003FFF
    _0802D980:
        mov r0, r9
        ands r0, r1
        cmp r0, r9
        beq _0802D9B8
        ldr r0, _0802D9FC @ =0x00004B4D
        cmp r2, r0
        bne _0802D9A0
        movs r0, #0x01
        lsls r0, r4
        ldrb r1, [r5, #0x0B]
        orrs r0, r1
        strb r0, [r5, #0x0B]
        lsrs r0, r6, #0x18
        add r0, r8
        movs r1, #0x02
        strb r1, [r0, #0x00]
    _0802D9A0:
        ldrb r1, [r5, #0x0C]
        adds r0, r1, #0x0
        asrs r0, r4
        movs r2, #0x01
        ands r0, r2
        cmp r0, #0x00
        bne _0802D9B8
        adds r0, r2, #0x0
        lsls r0, r4
        orrs r1, r0
        mov r2, r12
        strb r1, [r2, #0x0C]
    _0802D9B8:
        ldr r1, _0802DA00 @ =0x03004F58
        adds r0, r7, r1
        ldr r2, _0802DA04 @ =0x000003FF
        strh r2, [r0, #0x00]
        movs r0, #0x80
        lsls r0, r0, #0x11
        adds r6, r6, r0
        adds r3, #0x02
        adds r7, #0x02
        adds r4, #0x01
        cmp r4, #0x03
        ble _0802D950
        movs r2, #0x02
        mov r3, r10
        ldrh r1, [r3, #0x16]
        movs r3, #0xFF
        lsls r3, r3, #0x08
        adds r0, r3, #0x0
        ands r1, r0
        movs r3, #0x00
        orrs r1, r2
        mov r0, r10
        strh r1, [r0, #0x16]
        strb r3, [r0, #0x01]
        ldrb r0, [r0, #0x0C]
        mov r1, r10
        ldrb r1, [r1, #0x0A]
        cmp r0, r1
        bne _0802DAD2
        mov r2, r12
        strb r3, [r2, #0x0C]
        movs r3, #0x00
        str r3, [sp, #0x00C]
        b _0802DAEE
    _0802D9FC: .4byte 0x00004B4D
    _0802DA00: .4byte 0x03004F58
    _0802DA04: .4byte 0x000003FF
    _0802DA08:
        mov r1, r12
        ldrh r0, [r1, #0x16]
        movs r2, #0xFF
        lsls r2, r2, #0x08
        adds r1, r2, #0x0
        ands r0, r1
        movs r3, #0x01
        orrs r0, r3
        mov r1, r12
        strh r0, [r1, #0x16]
        movs r4, #0x00
        movs r2, #0x0D
        add r2, r12
        mov r9, r2
        movs r7, #0x00
        mov r6, r12
        adds r6, #0x02
        mov r5, sp
        ldr r3, _0802DA48 @ =0x00003FFF
        mov r8, r3
    _0802DA30:
        ldrh r2, [r5, #0x00]
        adds r1, r2, #0x0
        ldr r0, _0802DA4C @ =0x0000FFFF
        cmp r1, r0
        bne _0802DA50
        strh r2, [r6, #0x00]
        lsrs r0, r7, #0x18
        add r0, r9
        movs r1, #0x00
        strb r1, [r0, #0x00]
        b _0802DA80
        .byte 0x00, 0x00
    _0802DA48: .4byte 0x00003FFF
    _0802DA4C: .4byte 0x0000FFFF
    _0802DA50:
        mov r0, r8
        ands r0, r2
        cmp r0, r8
        beq _0802DA80
        ldr r3, _0802DB04 @ =0x00004B4D
        cmp r1, r3
        beq _0802DA80
        ldr r0, _0802DB08 @ =0x03002C80
        ldrb r1, [r0, #0x0C]
        adds r0, r1, #0x0
        asrs r0, r4
        movs r3, #0x01
        ands r0, r3
        cmp r0, #0x00
        bne _0802DA80
        adds r0, r3, #0x0
        lsls r0, r4
        orrs r1, r0
        mov r0, r12
        strb r1, [r0, #0x0C]
        strh r2, [r6, #0x00]
        lsrs r0, r7, #0x18
        add r0, r9
        strb r3, [r0, #0x00]
    _0802DA80:
        movs r1, #0x80
        lsls r1, r1, #0x11
        adds r7, r7, r1
        adds r6, #0x02
        adds r5, #0x02
        adds r4, #0x01
        cmp r4, #0x03
        ble _0802DA30
        mov r2, r10
        ldrb r0, [r2, #0x0C]
        ldrb r3, [r2, #0x0B]
        cmp r0, r3
        bne _0802DAD2
        movs r5, #0x00
        movs r4, #0x00
        ldr r6, _0802DB08 @ =0x03002C80
        ldr r7, _0802DB0C @ =0x000003FF
        adds r3, r6, #0x2
        ldr r2, _0802DB10 @ =0x03004F58
    _0802DAA6:
        ldrb r0, [r6, #0x0B]
        asrs r0, r4
        movs r1, #0x01
        ands r0, r1
        cmp r0, #0x00
        beq _0802DAB4
        adds r5, #0x01
    _0802DAB4:
        ldrh r1, [r3, #0x00]
        adds r0, r7, #0x0
        ands r0, r1
        strh r0, [r2, #0x00]
        adds r3, #0x02
        adds r2, #0x02
        adds r4, #0x01
        cmp r4, #0x03
        ble _0802DAA6
        movs r0, #0x00
        mov r2, r10
        strb r5, [r2, #0x01]
        strb r0, [r2, #0x0C]
        movs r3, #0x00
        str r3, [sp, #0x00C]
    _0802DAD2:
        ldr r0, [sp, #0x00C]
        cmp r0, #0x00
        beq _0802DAEE
    _0802DAD8:
        movs r0, #0x00
        bl sub_802E548
        str r0, [sp, #0x008]
        cmp r0, #0x00
        ble _0802DAE6
        b _0802D8F0
    _0802DAE6:
        ldr r1, _0802DB14 @ =0x03004F38
        ldr r0, [r1, #0x00]
        adds r0, #0x01
        str r0, [r1, #0x00]
    _0802DAEE:
        ldr r1, [sp, #0x008]
        cmp r1, #0x02
        bgt _0802DB42
        ldr r0, _0802DB08 @ =0x03002C80
        ldrb r0, [r0, #0x16]
        cmp r0, #0x01
        beq _0802DB18
        cmp r0, #0x02
        beq _0802DB3C
        b _0802DB42
        .byte 0x00, 0x00
    _0802DB04: .4byte 0x00004B4D
    _0802DB08: .4byte 0x03002C80
    _0802DB0C: .4byte 0x000003FF
    _0802DB10: .4byte 0x03004F58
    _0802DB14: .4byte 0x03004F38
    _0802DB18:
        ldr r0, _0802DB30 @ =0x04000130
        ldrh r0, [r0, #0x00]
        ldr r1, _0802DB34 @ =0x000003FF
        ands r1, r0
        ldr r0, _0802DB38 @ =0x03004F50
        ldrh r2, [r0, #0x00]
        movs r0, #0xE0
        lsls r0, r0, #0x05
        ands r0, r2
        orrs r1, r0
        b _0802DB3E
        .byte 0x00, 0x00
    _0802DB30: .4byte 0x04000130
    _0802DB34: .4byte 0x000003FF
    _0802DB38: .4byte 0x03004F50
    _0802DB3C:
        ldr r1, _0802DB54 @ =0x00004B4D
    _0802DB3E:
        ldr r0, _0802DB58 @ =0x03000208
        strh r1, [r0, #0x00]
    _0802DB42:
        ldr r0, [sp, #0x00C]
    _0802DB44:
        add sp, #0x010
        pop {r3, r4, r5}
        mov r8, r3
        mov r9, r4
        mov r10, r5
        pop {r4, r5, r6, r7}
        pop {r1}
        bx r1
    _0802DB54: .4byte 0x00004B4D
    _0802DB58: .4byte 0x03000208
        .byte 0x10, 0xB5, 0x11, 0x4A, 0x11, 0x88, 0x08, 0x20, 0x08, 0x40, 0x00, 0x04, 0x01, 0x0C, 0x00, 0x29
        .byte 0x22, 0xD1, 0x0E, 0x48, 0xC1, 0x82, 0x0C, 0x32, 0x50, 0x78, 0xC0, 0x21, 0x08, 0x43, 0x50, 0x70
        .byte 0x01, 0x20, 0xC1, 0x21, 0x49, 0x42, 0x34, 0xF0, 0x4B, 0xFD, 0x09, 0x49, 0xC0, 0x20, 0x08, 0x80
        .byte 0x08, 0x4C, 0x07, 0x20, 0x21, 0x1C, 0x34, 0xF0, 0x3B, 0xFD, 0x06, 0x20, 0x21, 0x1C, 0x34, 0xF0
        .byte 0x37, 0xFD, 0xFF, 0xF7, 0xB3, 0xFD, 0x35, 0xE0, 0x28, 0x01, 0x00, 0x04, 0x80, 0x2C, 0x00, 0x03
        .byte 0x02, 0x02, 0x00, 0x04, 0xF1, 0xD5, 0x02, 0x08, 0x18, 0x4B, 0x00, 0x21, 0x00, 0x20, 0x18, 0x56
        .byte 0x00, 0x28, 0x00, 0xDD, 0x01, 0x21, 0x00, 0x29, 0x24, 0xD0, 0x11, 0x88, 0x80, 0x20, 0x08, 0x40
        .byte 0x00, 0x28, 0x19, 0xD0, 0x00, 0x20, 0xD8, 0x82, 0x11, 0x4A, 0x50, 0x78, 0xC0, 0x21, 0x08, 0x43
        .byte 0x50, 0x70, 0x01, 0x20, 0xC1, 0x21, 0x49, 0x42, 0x34, 0xF0, 0x1A, 0xFD, 0x0D, 0x49, 0xC0, 0x20
        .byte 0x08, 0x80, 0x0D, 0x4C, 0x07, 0x20, 0x21, 0x1C, 0x34, 0xF0, 0x0A, 0xFD, 0x06, 0x20, 0x21, 0x1C
        .byte 0x34, 0xF0, 0x06, 0xFD, 0xFF, 0xF7, 0x82, 0xFD, 0x08, 0x4C, 0x20, 0x88, 0x00, 0xF0, 0x02, 0xFA
        .byte 0x07, 0x48, 0x20, 0x80, 0x10, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00, 0x80, 0x2C, 0x00, 0x03
        .byte 0x34, 0x01, 0x00, 0x04, 0x02, 0x02, 0x00, 0x04, 0xF1, 0xD5, 0x02, 0x08, 0x08, 0x02, 0x00, 0x03
        .byte 0xFF, 0x3F, 0x00, 0x00
        thumb_func_start sub_802DC30
    sub_802DC30:
        push {lr}
        ldr r0, _0802DC40 @ =0x080DE17C
        bl sub_802E0D4
        bl sub_802D708
        pop {r0}
        bx r0
    _0802DC40: .4byte 0x080DE17C
        thumb_func_start sio2_stop
    sio2_stop:
        push {r4, lr}
        ldr r2, _0802DC7C @ =0x04000134
        ldrb r0, [r2, #0x01]
        movs r1, #0xC0
        orrs r0, r1
        strb r0, [r2, #0x01]
        movs r1, #0xC1
        negs r1, r1
        movs r0, #0x01
        bl irq_updateMask
        ldr r1, _0802DC80 @ =0x04000202
        movs r0, #0xC0
        strh r0, [r1, #0x00]
        ldr r4, _0802DC84 @ =0x0802D5F1
        movs r0, #0x07
        adds r1, r4, #0x0
        bl irq_setHandler
        movs r0, #0x06
        adds r1, r4, #0x0
        bl irq_setHandler
        bl sub_802D708
        pop {r4}
        pop {r0}
        bx r0
    _0802DC7C: .4byte 0x04000134
    _0802DC80: .4byte 0x04000202
    _0802DC84: .4byte main_dummyIrqHandler
        thumb_func_start sub_802DC88
    sub_802DC88:
        push {lr}
        bl sub_802E4DC
        movs r1, #0x00
        cmp r0, #0x00
        bne _0802DC96
        movs r1, #0x01
    _0802DC96:
        adds r0, r1, #0x0
        pop {r1}
        bx r1
        .byte 0x04, 0x48, 0x00, 0x21, 0x00, 0x78, 0x00, 0x06, 0x00, 0x16, 0x00, 0x28, 0x00, 0xD1, 0x01, 0x21
        .byte 0x08, 0x1C, 0x70, 0x47, 0x80, 0x2C, 0x00, 0x03
        thumb_func_start sub_802DCB4
    sub_802DCB4:
        ldr r0, _0802DCC8 @ =0x03002C80
        movs r1, #0x00
        ldrb r0, [r0, #0x00]
        lsls r0, r0, #0x18
        asrs r0, r0, #0x18
        cmp r0, #0x00
        ble _0802DCC4
        movs r1, #0x01
    _0802DCC4:
        adds r0, r1, #0x0
        bx lr
    _0802DCC8: .4byte 0x03002C80
        .byte 0x06, 0x4B, 0x07, 0x4A, 0x0F, 0x21, 0x10, 0x78, 0x18, 0x18, 0x00, 0x04, 0x03, 0x0C, 0x01, 0x32
        .byte 0x01, 0x39, 0x00, 0x29, 0xF7, 0xDA, 0x18, 0x1C, 0x70, 0x47, 0x00, 0x00, 0x4B, 0xCD, 0x00, 0x00
        .byte 0xA0, 0x00, 0x00, 0x08
        thumb_func_start sub_802DCF0
    sub_802DCF0:
        push {r4, r5, r6, r7, lr}
        mov r7, r9
        mov r6, r8
        push {r6, r7}
        ldr r0, _0802DE04 @ =0x03004F60
        movs r4, #0x01
        str r4, [r0, #0x00]
        movs r7, #0x00
        ldr r0, _0802DE08 @ =0x0400010E
        strh r7, [r0, #0x00]
        ldr r1, _0802DE0C @ =0x03004FD8
        ldr r3, _0802DE10 @ =0x04000128
        ldrh r0, [r3, #0x00]
        strh r0, [r1, #0x00]
        ldr r2, _0802DE14 @ =0x03000270
        ldr r0, _0802DE18 @ =0x04000120
        ldrh r0, [r0, #0x00]
        ldrh r1, [r2, #0x00]
        strh r0, [r2, #0x00]
        ldr r0, _0802DE1C @ =0x04000122
        ldrh r0, [r0, #0x00]
        ldrh r1, [r2, #0x02]
        strh r0, [r2, #0x02]
        ldr r0, _0802DE20 @ =0x04000124
        ldrh r0, [r0, #0x00]
        ldrh r1, [r2, #0x04]
        strh r0, [r2, #0x04]
        ldr r0, _0802DE24 @ =0x04000126
        ldrh r0, [r0, #0x00]
        ldrh r1, [r2, #0x06]
        strh r0, [r2, #0x06]
        ldr r0, _0802DE28 @ =0x03000268
        ldr r0, [r0, #0x00]
        movs r5, #0xC0
        lsls r5, r5, #0x07
        adds r1, r5, #0x0
        orrs r0, r1
        strh r0, [r3, #0x00]
        ldr r0, _0802DE2C @ =0x030002AC
        ldr r1, [r0, #0x00]
        adds r6, r0, #0x0
        cmp r1, #0x00
        bne _0802DD48
        b _0802DEDC
    _0802DD48:
        ldr r0, [r6, #0x00]
        ldr r1, _0802DE30 @ =0x03000210
        mov r8, r1
        ldr r3, _0802DE34 @ =0x030002B8
        mov r12, r3
        ldr r5, _0802DE38 @ =0x0300026C
        mov r9, r5
        cmp r0, #0x01
        bne _0802DD7C
        ldr r0, _0802DE3C @ =0x03000250
        str r7, [r0, #0x00]
        movs r5, #0x00
        mov r3, r8
        mov r4, r12
    _0802DD64:
        str r5, [r3, #0x00]
        ldr r0, [r4, #0x00]
        lsls r1, r7, #0x03
        adds r0, #0x0C
        adds r0, r0, r1
        ldr r0, [r0, #0x00]
        str r0, [r3, #0x08]
        str r0, [r3, #0x04]
        adds r3, #0x10
        adds r7, #0x01
        cmp r7, #0x03
        ble _0802DD64
    _0802DD7C:
        movs r0, #0x02
        str r0, [r6, #0x00]
        ldrh r1, [r2, #0x00]
        ldrh r0, [r2, #0x02]
        adds r4, r0, #0x0
        ldrh r0, [r2, #0x04]
        adds r5, r0, #0x0
        ldrh r0, [r2, #0x06]
        adds r6, r0, #0x0
        movs r2, #0x00
        ldr r3, _0802DE40 @ =0x00003FFF
        adds r0, r3, #0x0
        ands r0, r1
        cmp r0, r3
        bne _0802DD9C
        movs r2, #0x01
    _0802DD9C:
        ands r4, r3
        cmp r4, r3
        bne _0802DDA4
        adds r2, #0x01
    _0802DDA4:
        ands r5, r3
        cmp r5, r3
        bne _0802DDAC
        adds r2, #0x01
    _0802DDAC:
        ands r6, r3
        cmp r6, r3
        bne _0802DDB4
        adds r2, #0x01
    _0802DDB4:
        cmp r2, #0x00
        ble _0802DDCE
        ldr r2, _0802DE44 @ =0x03004898
        ldr r0, [r2, #0x00]
        adds r0, #0x01
        str r0, [r2, #0x00]
        ldr r1, _0802DE48 @ =0x080DE1C8
        lsls r0, r0, #0x02
        adds r0, r0, r1
        ldr r0, [r0, #0x00]
        cmp r0, #0x00
        bne _0802DDCE
        str r0, [r2, #0x00]
    _0802DDCE:
        ldr r1, _0802DE4C @ =0x0400012A
        ldr r2, _0802DE50 @ =0x00007FFF
        adds r0, r2, #0x0
        strh r0, [r1, #0x00]
        mov r3, r12
        ldr r1, [r3, #0x00]
        ldr r2, [r1, #0x0C]
        ldr r0, [r1, #0x10]
        lsls r0, r0, #0x01
        adds r2, r2, r0
        mov r5, r8
        ldr r0, [r5, #0x08]
        adds r3, r0, #0x2
        cmp r3, r2
        bne _0802DDEE
        ldr r3, [r1, #0x0C]
    _0802DDEE:
        lsls r0, r7, #0x04
        mov r1, r8
        adds r1, #0x04
        adds r0, r0, r1
        ldr r0, [r0, #0x00]
        cmp r0, r3
        bne _0802DE58
        ldr r1, _0802DE54 @ =0x03000260
        movs r0, #0x02
        str r0, [r1, #0x00]
        b _0802DE9C
    _0802DE04: .4byte 0x03004F60
    _0802DE08: .4byte 0x0400010E
    _0802DE0C: .4byte 0x03004FD8
    _0802DE10: .4byte 0x04000128
    _0802DE14: .4byte 0x03000270
    _0802DE18: .4byte 0x04000120
    _0802DE1C: .4byte 0x04000122
    _0802DE20: .4byte 0x04000124
    _0802DE24: .4byte 0x04000126
    _0802DE28: .4byte 0x03000268
    _0802DE2C: .4byte 0x030002AC
    _0802DE30: .4byte 0x03000210
    _0802DE34: .4byte 0x030002B8
    _0802DE38: .4byte 0x0300026C
    _0802DE3C: .4byte 0x03000250
    _0802DE40: .4byte 0x00003FFF
    _0802DE44: .4byte 0x03004898
    _0802DE48: .4byte 0x080DE1C8
    _0802DE4C: .4byte 0x0400012A
    _0802DE50: .4byte 0x00007FFF
    _0802DE54: .4byte 0x03000260
    _0802DE58:
        movs r7, #0x00
        mov r4, r8
        adds r4, #0x08
        ldr r5, _0802DED0 @ =0x03000270
    _0802DE60:
        mov r0, r12
        ldr r1, [r0, #0x00]
        lsls r3, r7, #0x03
        adds r0, r1, #0x0
        adds r0, #0x0C
        adds r0, r0, r3
        ldr r2, [r0, #0x00]
        adds r1, #0x10
        adds r1, r1, r3
        ldr r0, [r1, #0x00]
        lsls r0, r0, #0x01
        adds r2, r2, r0
        ldr r1, [r4, #0x00]
        ldrh r0, [r5, #0x00]
        strh r0, [r1, #0x00]
        adds r1, #0x02
        str r1, [r4, #0x00]
        cmp r1, r2
        bne _0802DE92
        mov r1, r12
        ldr r0, [r1, #0x00]
        adds r0, #0x0C
        adds r0, r0, r3
        ldr r0, [r0, #0x00]
        str r0, [r4, #0x00]
    _0802DE92:
        adds r4, #0x10
        adds r5, #0x02
        adds r7, #0x01
        cmp r7, #0x03
        ble _0802DE60
    _0802DE9C:
        mov r2, r9
        ldr r0, [r2, #0x00]
        movs r1, #0xC0
        lsls r1, r1, #0x08
        ands r0, r1
        movs r1, #0x80
        lsls r1, r1, #0x07
        cmp r0, r1
        bne _0802DEF6
        ldr r0, _0802DED4 @ =0x03000264
        ldr r0, [r0, #0x00]
        cmp r0, #0x00
        bne _0802DEF6
        mov r3, r12
        ldr r1, [r3, #0x00]
        ldrh r0, [r1, #0x36]
        cmp r0, #0x00
        beq _0802DEF6
        ldr r1, _0802DED8 @ =0x0400010C
        negs r0, r0
        strh r0, [r1, #0x00]
        adds r1, #0x02
        movs r0, #0xC3
        strh r0, [r1, #0x00]
        b _0802DEF6
        .byte 0x00, 0x00
    _0802DED0: .4byte 0x03000270
    _0802DED4: .4byte 0x03000264
    _0802DED8: .4byte 0x0400010C
    _0802DEDC:
        ldr r2, _0802DF04 @ =0x0300026C
        ldr r0, [r2, #0x00]
        movs r1, #0x03
        ands r0, r1
        cmp r0, #0x02
        beq _0802DEF6
        ldr r0, [r2, #0x00]
        subs r1, #0x07
        ands r0, r1
        str r0, [r2, #0x00]
        ldr r0, [r2, #0x00]
        orrs r0, r4
        str r0, [r2, #0x00]
    _0802DEF6:
        pop {r3, r4}
        mov r8, r3
        mov r9, r4
        pop {r4, r5, r6, r7}
        pop {r0}
        bx r0
        .byte 0x00, 0x00
    _0802DF04: .4byte 0x0300026C
        thumb_func_start sub_802DF08
    sub_802DF08:
        push {r4, r5, r6, r7, lr}
        mov r7, r8
        push {r7}
        adds r4, r0, #0x0
        ldr r1, _0802DF30 @ =0x030002AC
        ldr r0, [r1, #0x00]
        cmp r0, #0x00
        beq _0802E000
        ldr r0, [r1, #0x00]
        cmp r0, #0x01
        bne _0802DF38
        ldr r1, _0802DF34 @ =0x00007FFF
        adds r0, r1, #0x0
        strh r0, [r4, #0x00]
        adds r4, #0x02
        strh r0, [r4, #0x00]
        adds r4, #0x02
        strh r0, [r4, #0x00]
        strh r0, [r4, #0x02]
        b _0802DFF8
    _0802DF30: .4byte 0x030002AC
    _0802DF34: .4byte 0x00007FFF
    _0802DF38:
        ldr r2, _0802DF4C @ =0x03000210
        ldr r1, [r2, #0x04]
        ldr r0, [r2, #0x08]
        cmp r1, r0
        bne _0802DF54
        ldr r1, _0802DF50 @ =0x00007FFF
        adds r0, r1, #0x0
        strh r0, [r4, #0x00]
        adds r4, #0x02
        b _0802DFA2
    _0802DF4C: .4byte 0x03000210
    _0802DF50: .4byte 0x00007FFF
    _0802DF54:
        ldr r0, _0802DFB0 @ =0x03004FD8
        ldrh r1, [r0, #0x00]
        movs r0, #0x40
        ands r0, r1
        cmp r0, #0x00
        beq _0802DFBC
        movs r7, #0x00
        adds r0, r4, #0x2
        mov r12, r0
        ldr r1, _0802DFB4 @ =0x030002B8
        mov r8, r1
        adds r6, r2, #0x4
    _0802DF6C:
        mov r0, r8
        ldr r1, [r0, #0x00]
        lsls r2, r7, #0x03
        adds r0, r1, #0x0
        adds r0, #0x0C
        adds r5, r0, r2
        ldr r3, [r5, #0x00]
        adds r1, #0x10
        adds r1, r1, r2
        ldr r0, [r1, #0x00]
        lsls r0, r0, #0x01
        adds r3, r3, r0
        ldr r0, [r6, #0x00]
        adds r0, #0x02
        str r0, [r6, #0x00]
        cmp r0, r3
        bne _0802DF92
        ldr r0, [r5, #0x00]
        str r0, [r6, #0x00]
    _0802DF92:
        adds r6, #0x10
        adds r7, #0x01
        cmp r7, #0x03
        ble _0802DF6C
        ldr r1, _0802DFB8 @ =0x00007FFF
        adds r0, r1, #0x0
        strh r0, [r4, #0x00]
        mov r4, r12
    _0802DFA2:
        strh r0, [r4, #0x00]
        adds r4, #0x02
        strh r0, [r4, #0x00]
        strh r0, [r4, #0x02]
        movs r0, #0x01
        negs r0, r0
        b _0802E004
    _0802DFB0: .4byte 0x03004FD8
    _0802DFB4: .4byte 0x030002B8
    _0802DFB8: .4byte 0x00007FFF
    _0802DFBC:
        movs r7, #0x00
        adds r6, r2, #0x4
        ldr r0, _0802DFFC @ =0x030002B8
        mov r8, r0
    _0802DFC4:
        mov r0, r8
        ldr r1, [r0, #0x00]
        lsls r2, r7, #0x03
        adds r0, r1, #0x0
        adds r0, #0x0C
        adds r5, r0, r2
        ldr r3, [r5, #0x00]
        adds r1, #0x10
        adds r1, r1, r2
        ldr r0, [r1, #0x00]
        lsls r0, r0, #0x01
        adds r3, r3, r0
        ldr r1, [r6, #0x00]
        ldrh r0, [r1, #0x00]
        strh r0, [r4, #0x00]
        adds r1, #0x02
        str r1, [r6, #0x00]
        adds r4, #0x02
        cmp r1, r3
        bne _0802DFF0
        ldr r0, [r5, #0x00]
        str r0, [r6, #0x00]
    _0802DFF0:
        adds r6, #0x10
        adds r7, #0x01
        cmp r7, #0x03
        ble _0802DFC4
    _0802DFF8:
        movs r0, #0x05
        b _0802E004
    _0802DFFC: .4byte 0x030002B8
    _0802E000:
        movs r0, #0x08
        negs r0, r0
    _0802E004:
        pop {r3}
        mov r8, r3
        pop {r4, r5, r6, r7}
        pop {r1}
        bx r1
        .byte 0x00, 0x00
        thumb_func_start sub_802E010
    sub_802E010:
        push {r4, lr}
        lsls r0, r0, #0x10
        lsrs r2, r0, #0x10
        ldr r0, _0802E024 @ =0x03000264
        ldr r1, [r0, #0x00]
        cmp r1, #0x03
        ble _0802E028
        movs r0, #0x04
        negs r0, r0
        b _0802E0CC
    _0802E024: .4byte 0x03000264
    _0802E028:
        ldr r0, _0802E050 @ =0x030002AC
        ldr r0, [r0, #0x00]
        cmp r0, #0x00
        beq _0802E0C8
        ldr r0, _0802E054 @ =0x0400012A
        strh r2, [r0, #0x00]
        ldr r3, _0802E058 @ =0x0300029C
        cmp r1, #0x00
        bne _0802E0B8
        movs r2, #0x00
        ldr r0, _0802E05C @ =0x030002B8
        ldr r0, [r0, #0x00]
        ldrh r0, [r0, #0x36]
        cmp r0, #0x00
        beq _0802E060
        ldr r0, [r3, #0x00]
        cmp r0, #0x00
        bne _0802E062
        b _0802E066
        .byte 0x00, 0x00
    _0802E050: .4byte 0x030002AC
    _0802E054: .4byte 0x0400012A
    _0802E058: .4byte 0x0300029C
    _0802E05C: .4byte 0x030002B8
    _0802E060:
        movs r2, #0x01
    _0802E062:
        cmp r2, #0x00
        beq _0802E0B8
    _0802E066:
        ldr r0, _0802E084 @ =0x0300026C
        ldr r0, [r0, #0x00]
        movs r1, #0x80
        lsls r1, r1, #0x04
        ands r0, r1
        cmp r0, #0x00
        beq _0802E090
        ldr r1, _0802E088 @ =0x080DE1C8
        ldr r0, _0802E08C @ =0x03004898
        ldr r0, [r0, #0x00]
        lsls r0, r0, #0x02
        adds r0, r0, r1
        ldr r2, [r0, #0x00]
        b _0802E092
        .byte 0x00, 0x00
    _0802E084: .4byte 0x0300026C
    _0802E088: .4byte 0x080DE1C8
    _0802E08C: .4byte 0x03004898
    _0802E090:
        movs r2, #0x00
    _0802E092:
        cmp r2, #0x00
        beq _0802E0A8
        ldr r1, _0802E0A4 @ =0x0400010C
        negs r0, r2
        strh r0, [r1, #0x00]
        adds r1, #0x02
        movs r0, #0xC3
        strh r0, [r1, #0x00]
        b _0802E0B8
    _0802E0A4: .4byte 0x0400010C
    _0802E0A8:
        ldr r2, _0802E0C0 @ =0x04000128
        ldr r0, _0802E0C4 @ =0x03000268
        ldr r0, [r0, #0x00]
        movs r4, #0xC1
        lsls r4, r4, #0x07
        adds r1, r4, #0x0
        orrs r0, r1
        strh r0, [r2, #0x00]
    _0802E0B8:
        movs r0, #0x01
        str r0, [r3, #0x00]
        movs r0, #0x05
        b _0802E0CC
    _0802E0C0: .4byte 0x04000128
    _0802E0C4: .4byte 0x03000268
    _0802E0C8:
        movs r0, #0x08
        negs r0, r0
    _0802E0CC:
        pop {r4}
        pop {r1}
        bx r1
        .byte 0x00, 0x00
        thumb_func_start sub_802E0D4
    sub_802E0D4:
        push {r4, r5, r6, r7, lr}
        adds r4, r0, #0x0
        ldr r0, _0802E178 @ =0x03004F60
        movs r5, #0x00
        str r5, [r0, #0x00]
        ldr r6, _0802E17C @ =0x030002B8
        str r4, [r6, #0x00]
        ldr r0, _0802E180 @ =0x03004898
        str r5, [r0, #0x00]
        ldr r1, _0802E184 @ =0x030002B0
        ldr r0, _0802E188 @ =0x030002AC
        str r5, [r0, #0x00]
        ldr r0, [r0, #0x00]
        str r0, [r1, #0x00]
        ldr r2, _0802E18C @ =0x0300026C
        str r5, [r2, #0x00]
        ldr r3, _0802E190 @ =0x03000268
        ldrh r1, [r4, #0x30]
        movs r0, #0x03
        ands r0, r1
        str r0, [r3, #0x00]
        ldr r0, _0802E194 @ =0x0300027C
        str r5, [r0, #0x00]
        ldr r0, [r4, #0x00]
        str r0, [r2, #0x00]
        ldrh r0, [r4, #0x2E]
        adds r7, r3, #0x0
        cmp r0, #0x00
        bne _0802E112
        movs r0, #0x0A
        strh r0, [r4, #0x2E]
    _0802E112:
        ldr r0, _0802E198 @ =0x03000280
        str r5, [r0, #0x04]
        ldr r1, [r0, #0x04]
        str r1, [r0, #0x00]
        ldr r1, _0802E19C @ =0x030002C0
        ldr r0, [r6, #0x00]
        ldrh r0, [r0, #0x2C]
        strh r0, [r1, #0x00]
        ldr r4, _0802E1A0 @ =0x030002CC
        ldr r3, _0802E1A4 @ =0x030002D0
        ldr r5, _0802E1A8 @ =0x0802E60D
        movs r2, #0x03
    _0802E12A:
        ldrh r0, [r1, #0x00]
        lsls r0, r0, #0x01
        strh r0, [r1, #0x02]
        adds r1, #0x02
        subs r2, #0x01
        cmp r2, #0x00
        bge _0802E12A
        movs r2, #0x00
        str r2, [r3, #0x00]
        str r2, [r4, #0x00]
        ldr r0, _0802E1AC @ =0x04000134
        strh r2, [r0, #0x00]
        ldr r3, _0802E1B0 @ =0x04000128
        ldr r0, [r7, #0x00]
        movs r4, #0x80
        lsls r4, r4, #0x06
        adds r1, r4, #0x0
        orrs r0, r1
        strh r0, [r3, #0x00]
        ldr r0, _0802E1B4 @ =0x0400010E
        strh r2, [r0, #0x00]
        movs r0, #0x07
        adds r1, r5, #0x0
        bl irq_setHandler
        ldr r1, _0802E1B8 @ =0x0802E5E9
        movs r0, #0x06
        bl irq_setHandler
        ldr r1, _0802E1BC @ =0x000100C0
        movs r0, #0x02
        bl irq_updateMask
        ldr r1, _0802E1C0 @ =0x03000264
        movs r0, #0xF0
        str r0, [r1, #0x00]
        pop {r4, r5, r6, r7}
        pop {r0}
        bx r0
    _0802E178: .4byte 0x03004F60
    _0802E17C: .4byte 0x030002B8
    _0802E180: .4byte 0x03004898
    _0802E184: .4byte 0x030002B0
    _0802E188: .4byte 0x030002AC
    _0802E18C: .4byte 0x0300026C
    _0802E190: .4byte 0x03000268
    _0802E194: .4byte 0x0300027C
    _0802E198: .4byte 0x03000280
    _0802E19C: .4byte 0x030002C0
    _0802E1A0: .4byte 0x030002CC
    _0802E1A4: .4byte 0x030002D0
    _0802E1A8: .4byte sub_802E60C
    _0802E1AC: .4byte 0x04000134
    _0802E1B0: .4byte 0x04000128
    _0802E1B4: .4byte 0x0400010E
    _0802E1B8: .4byte sub_802E5E8
    _0802E1BC: .4byte 0x000100C0
    _0802E1C0: .4byte 0x03000264
        thumb_func_start sub_802E1C4
    sub_802E1C4:
        push {r4, r5, r6, r7, lr}
        mov r7, r9
        mov r6, r8
        push {r6, r7}
        ldr r0, _0802E270 @ =0x030002B4
        movs r2, #0x00
        str r2, [r0, #0x00]
        ldr r1, _0802E274 @ =0x030002B0
        ldr r0, _0802E278 @ =0x030002AC
        str r2, [r0, #0x00]
        ldr r0, [r0, #0x00]
        str r0, [r1, #0x00]
        ldr r3, _0802E27C @ =0x0300026C
        ldr r0, [r3, #0x00]
        movs r1, #0x04
        negs r1, r1
        ands r0, r1
        str r0, [r3, #0x00]
        ldr r0, _0802E280 @ =0x03000278
        str r2, [r0, #0x00]
        ldr r0, _0802E284 @ =0x03000298
        str r2, [r0, #0x00]
        ldr r0, _0802E288 @ =0x0300029C
        str r2, [r0, #0x00]
        ldr r0, _0802E28C @ =0x03000280
        str r2, [r0, #0x04]
        ldr r1, [r0, #0x04]
        str r1, [r0, #0x00]
        ldr r0, _0802E290 @ =0x030002A0
        str r2, [r0, #0x04]
        ldr r1, [r0, #0x04]
        str r1, [r0, #0x00]
        ldr r0, _0802E294 @ =0x030002D4
        str r2, [r0, #0x00]
        ldr r1, _0802E298 @ =0x03000250
        str r2, [r1, #0x00]
        ldr r3, _0802E29C @ =0x030002B8
        ldr r0, [r3, #0x00]
        ldr r0, [r0, #0x04]
        str r0, [r1, #0x08]
        str r0, [r1, #0x04]
        ldrh r0, [r1, #0x0C]
        strh r2, [r1, #0x0C]
        movs r4, #0x00
        mov r9, r3
        ldr r7, _0802E2A0 @ =0x03000210
        movs r6, #0x00
        ldr r0, _0802E2A4 @ =0x03000288
        mov r8, r0
        adds r3, r7, #0x0
        adds r5, r3, #0x0
        movs r1, #0xFF
        mov r12, r1
    _0802E22E:
        lsls r2, r4, #0x04
        mov r0, r12
        str r0, [r3, #0x00]
        adds r0, r7, #0x4
        adds r2, r2, r0
        mov r1, r9
        ldr r0, [r1, #0x00]
        lsls r1, r4, #0x03
        adds r0, #0x0C
        adds r0, r0, r1
        ldr r0, [r0, #0x00]
        str r0, [r5, #0x08]
        str r0, [r2, #0x00]
        ldrh r0, [r3, #0x0C]
        strh r6, [r3, #0x0C]
        ldrh r0, [r3, #0x0E]
        strh r6, [r3, #0x0E]
        mov r0, r8
        adds r0, #0x04
        mov r8, r0
        subs r0, #0x04
        stm r0!, {r6}
        adds r5, #0x10
        adds r3, #0x10
        adds r4, #0x01
        cmp r4, #0x03
        ble _0802E22E
        pop {r3, r4}
        mov r8, r3
        mov r9, r4
        pop {r4, r5, r6, r7}
        pop {r0}
        bx r0
    _0802E270: .4byte 0x030002B4
    _0802E274: .4byte 0x030002B0
    _0802E278: .4byte 0x030002AC
    _0802E27C: .4byte 0x0300026C
    _0802E280: .4byte 0x03000278
    _0802E284: .4byte 0x03000298
    _0802E288: .4byte 0x0300029C
    _0802E28C: .4byte 0x03000280
    _0802E290: .4byte 0x030002A0
    _0802E294: .4byte 0x030002D4
    _0802E298: .4byte 0x03000250
    _0802E29C: .4byte 0x030002B8
    _0802E2A0: .4byte 0x03000210
    _0802E2A4: .4byte 0x03000288
        thumb_func_start sub_802E2A8
    sub_802E2A8:
        push {r4, r5, lr}
        ldr r4, _0802E2BC @ =0x030002D4
        ldr r3, [r4, #0x00]
        cmp r3, #0x00
        beq _0802E2C4
        cmp r3, #0x01
        beq _0802E330
        ldr r0, _0802E2C0 @ =0x03000264
        ldr r0, [r0, #0x00]
        b _0802E3C8
    _0802E2BC: .4byte 0x030002D4
    _0802E2C0: .4byte 0x03000264
    _0802E2C4:
        ldr r0, _0802E314 @ =0x04000134
        strh r3, [r0, #0x00]
        ldr r1, _0802E318 @ =0x0400012A
        ldr r0, _0802E31C @ =0x030002B8
        ldr r0, [r0, #0x00]
        ldrh r0, [r0, #0x2C]
        mvns r0, r0
        strh r0, [r1, #0x00]
        ldr r2, _0802E320 @ =0x04000128
        ldr r0, _0802E324 @ =0x03000268
        ldr r0, [r0, #0x00]
        movs r5, #0xC0
        lsls r5, r5, #0x07
        adds r1, r5, #0x0
        orrs r0, r1
        strh r0, [r2, #0x00]
        ldrh r0, [r2, #0x00]
        adds r2, r0, #0x0
        movs r0, #0x08
        ands r0, r2
        cmp r0, #0x00
        beq _0802E3C4
        movs r0, #0x40
        ands r0, r2
        cmp r0, #0x00
        bne _0802E3C4
        ldr r1, _0802E328 @ =0x03000264
        movs r0, #0x04
        ands r0, r2
        str r0, [r1, #0x00]
        cmp r0, #0x00
        beq _0802E308
        movs r0, #0xF0
        str r0, [r1, #0x00]
    _0802E308:
        ldr r0, _0802E32C @ =0x03004F60
        str r3, [r0, #0x00]
        movs r0, #0x01
        str r0, [r4, #0x00]
        b _0802E3C4
        .byte 0x00, 0x00
    _0802E314: .4byte 0x04000134
    _0802E318: .4byte 0x0400012A
    _0802E31C: .4byte 0x030002B8
    _0802E320: .4byte 0x04000128
    _0802E324: .4byte 0x03000268
    _0802E328: .4byte 0x03000264
    _0802E32C: .4byte 0x03004F60
    _0802E330:
        ldr r0, _0802E37C @ =0x04000128
        ldrh r0, [r0, #0x00]
        adds r2, r0, #0x0
        ldr r0, _0802E380 @ =0x03004F60
        ldr r0, [r0, #0x00]
        cmp r0, #0x00
        beq _0802E398
        movs r1, #0x40
        ands r1, r2
        cmp r1, #0x00
        bne _0802E398
        ldr r0, _0802E384 @ =0x03000260
        str r1, [r0, #0x00]
        ldr r1, _0802E388 @ =0x03000264
        movs r0, #0x30
        ands r0, r2
        asrs r0, r0, #0x04
        str r0, [r1, #0x00]
        ldr r2, _0802E38C @ =0x03000210
        lsls r1, r0, #0x04
        adds r1, r1, r2
        ldrh r2, [r1, #0x0E]
        strh r3, [r1, #0x0E]
        ldr r3, _0802E390 @ =0x0300026C
        ldr r1, [r3, #0x00]
        movs r2, #0x04
        negs r2, r2
        ands r1, r2
        str r1, [r3, #0x00]
        ldr r1, [r3, #0x00]
        movs r2, #0x02
        orrs r1, r2
        str r1, [r3, #0x00]
        ldr r1, _0802E394 @ =0x030002AC
        str r2, [r1, #0x00]
        str r2, [r4, #0x00]
        b _0802E3C8
        .byte 0x00, 0x00
    _0802E37C: .4byte 0x04000128
    _0802E380: .4byte 0x03004F60
    _0802E384: .4byte 0x03000260
    _0802E388: .4byte 0x03000264
    _0802E38C: .4byte 0x03000210
    _0802E390: .4byte 0x0300026C
    _0802E394: .4byte 0x030002AC
    _0802E398:
        ldr r1, _0802E3D0 @ =0x0400012A
        ldr r0, _0802E3D4 @ =0x030002B8
        ldr r0, [r0, #0x00]
        ldrh r0, [r0, #0x2C]
        mvns r0, r0
        strh r0, [r1, #0x00]
        ldr r2, _0802E3D8 @ =0x04000128
        ldr r0, _0802E3DC @ =0x03000268
        ldr r0, [r0, #0x00]
        movs r3, #0xC0
        lsls r3, r3, #0x07
        adds r1, r3, #0x0
        orrs r0, r1
        strh r0, [r2, #0x00]
        ldr r0, _0802E3E0 @ =0x03000264
        ldr r0, [r0, #0x00]
        cmp r0, #0x00
        bne _0802E3C4
        ldrh r0, [r2, #0x00]
        movs r1, #0x80
        orrs r0, r1
        strh r0, [r2, #0x00]
    _0802E3C4:
        movs r0, #0x01
        negs r0, r0
    _0802E3C8:
        pop {r4, r5}
        pop {r1}
        bx r1
        .byte 0x00, 0x00
    _0802E3D0: .4byte 0x0400012A
    _0802E3D4: .4byte 0x030002B8
    _0802E3D8: .4byte 0x04000128
    _0802E3DC: .4byte 0x03000268
    _0802E3E0: .4byte 0x03000264
        .byte 0xF0, 0xB5, 0x1C, 0x48, 0x01, 0x68, 0x84, 0x46, 0x03, 0x29, 0x2F, 0xDC, 0x1A, 0x48, 0x09, 0x01
        .byte 0x09, 0x18, 0x09, 0x68, 0x04, 0x1C, 0xFF, 0x29, 0x28, 0xD0, 0x18, 0x4A, 0x11, 0x68, 0x00, 0x23
        .byte 0x50, 0x68, 0x17, 0x1C, 0x16, 0x4E, 0x17, 0x4D, 0x81, 0x42, 0x04, 0xD0, 0x01, 0x31, 0x01, 0x33
        .byte 0x50, 0x68, 0x81, 0x42, 0xFA, 0xD1, 0x31, 0x68, 0x28, 0x68, 0x81, 0x42, 0x11, 0xD1, 0x12, 0x48
        .byte 0x00, 0x68, 0x80, 0x8E, 0x83, 0x42, 0x0C, 0xDD, 0x61, 0x46, 0x08, 0x68, 0x00, 0x01, 0x00, 0x19
        .byte 0xFF, 0x21, 0x01, 0x60, 0xF0, 0x20, 0x62, 0x46, 0x10, 0x60, 0x21, 0x60, 0x21, 0x61, 0x21, 0x62
        .byte 0x21, 0x63, 0x28, 0x68, 0x30, 0x60, 0x78, 0x68, 0x01, 0x30, 0x78, 0x60, 0xF0, 0xBC, 0x01, 0xBC
        .byte 0x00, 0x47, 0x00, 0x00, 0x64, 0x02, 0x00, 0x03, 0x10, 0x02, 0x00, 0x03, 0xA0, 0x02, 0x00, 0x03
        .byte 0x40, 0xEC, 0x03, 0x02, 0xA8, 0x02, 0x00, 0x03, 0xB8, 0x02, 0x00, 0x03, 0x01, 0x48, 0x00, 0x68
        .byte 0x70, 0x47, 0x00, 0x00, 0x64, 0x02, 0x00, 0x03, 0x01, 0x48, 0x00, 0x68, 0x70, 0x47, 0x00, 0x00
        .byte 0x60, 0x02, 0x00, 0x03, 0x70, 0x47, 0x00, 0x00, 0x01, 0x49, 0x01, 0x20, 0x08, 0x60, 0x70, 0x47
        .byte 0xB0, 0x02, 0x00, 0x03, 0x02, 0x1C, 0x03, 0x48, 0x00, 0x68, 0x00, 0x28, 0x04, 0xD0, 0x02, 0x20
        .byte 0x40, 0x42, 0x17, 0xE0, 0x60, 0x02, 0x00, 0x03, 0x07, 0x49, 0x90, 0x00, 0x40, 0x18, 0x01, 0x68
        .byte 0x01, 0x20, 0x40, 0x42, 0x81, 0x42, 0x0B, 0xD0, 0x04, 0x48, 0x11, 0x01, 0x09, 0x18, 0x08, 0x68
        .byte 0xFF, 0x28, 0x05, 0xD0, 0x00, 0x20, 0x05, 0xE0, 0x88, 0x02, 0x00, 0x03, 0x10, 0x02, 0x00, 0x03
        .byte 0x03, 0x20, 0x40, 0x42, 0x70, 0x47, 0x00, 0x00
        thumb_func_start sub_802E4DC
    sub_802E4DC:
        ldr r0, _0802E4EC @ =0x030002AC
        ldr r0, [r0, #0x00]
        cmp r0, #0x02
        beq _0802E4F0
        movs r0, #0x08
        negs r0, r0
        b _0802E4F2
        .byte 0x00, 0x00
    _0802E4EC: .4byte 0x030002AC
    _0802E4F0:
        movs r0, #0x00
    _0802E4F2:
        bx lr
        .byte 0x01, 0x48, 0x80, 0x89, 0x70, 0x47, 0x00, 0x00, 0x50, 0x02, 0x00, 0x03, 0x02, 0x49, 0x00, 0x01
        .byte 0x40, 0x18, 0x80, 0x89, 0x70, 0x47, 0x00, 0x00, 0x10, 0x02, 0x00, 0x03, 0x05, 0x48, 0x06, 0x49
        .byte 0x09, 0x68, 0x42, 0x68, 0x80, 0x68, 0x89, 0x68, 0x82, 0x42, 0x07, 0xD8, 0x80, 0x1A, 0x41, 0x10
        .byte 0x07, 0xE0, 0x00, 0x00, 0x50, 0x02, 0x00, 0x03, 0xB8, 0x02, 0x00, 0x03, 0x10, 0x1A, 0x40, 0x10
        .byte 0x09, 0x1A, 0x03, 0x4A, 0x10, 0x68, 0x81, 0x42, 0x00, 0xDD, 0x11, 0x60, 0x08, 0x1C, 0x70, 0x47
        .byte 0xCC, 0x02, 0x00, 0x03
        thumb_func_start sub_802E548
    sub_802E548:
        ldr r1, _0802E570 @ =0x03000210
        lsls r2, r0, #0x04
        adds r3, r1, #0x4
        adds r3, r2, r3
        adds r1, #0x08
        adds r2, r2, r1
        ldr r1, _0802E574 @ =0x030002B8
        ldr r1, [r1, #0x00]
        lsls r0, r0, #0x03
        adds r1, #0x10
        adds r1, r1, r0
        ldr r3, [r3, #0x00]
        ldr r0, [r2, #0x00]
        ldr r1, [r1, #0x00]
        cmp r3, r0
        bhi _0802E578
        subs r0, r0, r3
        asrs r1, r0, #0x01
        b _0802E57E
        .byte 0x00, 0x00
    _0802E570: .4byte 0x03000210
    _0802E574: .4byte 0x030002B8
    _0802E578:
        subs r0, r3, r0
        asrs r0, r0, #0x01
        subs r1, r1, r0
    _0802E57E:
        ldr r2, _0802E58C @ =0x030002D0
        ldr r0, [r2, #0x00]
        cmp r1, r0
        ble _0802E588
        str r1, [r2, #0x00]
    _0802E588:
        adds r0, r1, #0x0
        bx lr
    _0802E58C: .4byte 0x030002D0
        .byte 0x01, 0x48, 0x00, 0x68, 0x70, 0x47, 0x00, 0x00, 0xCC, 0x02, 0x00, 0x03, 0x01, 0x48, 0x00, 0x68
        .byte 0x70, 0x47, 0x00, 0x00, 0xD0, 0x02, 0x00, 0x03, 0x00, 0xB5, 0xFF, 0xF7, 0x0B, 0xFE, 0xFF, 0xF7
        .byte 0x7B, 0xFE, 0x02, 0xBC, 0x08, 0x47, 0x00, 0x00, 0x00, 0xB5, 0xFF, 0xF7, 0x03, 0xFE, 0x01, 0xBC
        .byte 0x00, 0x47, 0x00, 0x00
        thumb_func_start sub_802E5C4
    sub_802E5C4:
        push {lr}
        bl sub_802E2A8
        pop {r1}
        bx r1
        .byte 0x00, 0x00, 0x04, 0x48, 0x00, 0x68, 0x08, 0x21, 0x49, 0x42, 0x02, 0x28, 0x00, 0xD1, 0x00, 0x21
        .byte 0x08, 0x1C, 0x70, 0x47, 0x00, 0x00, 0xAC, 0x02, 0x00, 0x03
        thumb_func_start sub_802E5E8
    sub_802E5E8:
        ldr r1, _0802E600 @ =0x0400010E
        movs r0, #0x00
        strh r0, [r1, #0x00]
        ldr r2, _0802E604 @ =0x04000128
        ldr r0, _0802E608 @ =0x03000268
        ldr r0, [r0, #0x00]
        movs r3, #0xC1
        lsls r3, r3, #0x07
        adds r1, r3, #0x0
        orrs r0, r1
        strh r0, [r2, #0x00]
        bx lr
    _0802E600: .4byte 0x0400010E
    _0802E604: .4byte 0x04000128
    _0802E608: .4byte 0x03000268
        thumb_func_start sub_802E60C
    sub_802E60C:
        push {lr}
        bl sub_802DCF0
        ldr r0, _0802E624 @ =0x030002B8
        ldr r0, [r0, #0x00]
        ldr r0, [r0, #0x38]
        cmp r0, #0x00
        beq _0802E620
        bl _call_via_r0
    _0802E620:
        pop {r0}
        bx r0
    _0802E624: .4byte 0x030002B8
        thumb_func_start sub_802E628
    sub_802E628:
        movs r0, #0x02
        negs r0, r0
        bx lr
        .byte 0x00, 0x00
