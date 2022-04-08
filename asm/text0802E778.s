    .include "asm/macros.inc"

    .syntax unified
    .text

	thumb_func_start sub_802E778
sub_802E778:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x008
	cmp r0, #0x00
	bge _0802E788
	negs r0, r0
_0802E788:
	str r0, [sp, #0x000]
	movs r0, #0x00
	str r0, [sp, #0x004]
	cmp r1, #0x00
	bge _0802E794
	negs r1, r1
_0802E794:
	adds r6, r1, #0x0
	movs r7, #0x00
	ldr r2, [sp, #0x004]
	cmp r7, r2
	bhi _0802E7A8
	cmp r7, r2
	bne _0802E7B4
	ldr r3, [sp, #0x000]
	cmp r6, r3
	bls _0802E7B4
_0802E7A8:
	ldr r4, [sp, #0x000]
	ldr r5, [sp, #0x004]
	str r6, [sp, #0x000]
	str r7, [sp, #0x004]
	adds r7, r5, #0x0
	adds r6, r4, #0x0
_0802E7B4:
	adds r0, r7, #0x0
	orrs r0, r6
	cmp r0, #0x00
	bne _0802E7C0
	ldr r0, [sp, #0x000]
	b _0802E89E
_0802E7C0:
	ldr r0, [sp, #0x004]
	cmp r0, #0x00
	bhi _0802E7D6
	cmp r0, #0x00
	bne _0802E7D0
	ldr r2, [sp, #0x000]
	cmp r2, #0xFF
	bhi _0802E7D6
_0802E7D0:
	movs r3, #0x10
	mov r9, r3
	b _0802E7DA
_0802E7D6:
	movs r0, #0x00
	mov r9, r0
_0802E7DA:
	ldr r0, [sp, #0x000]
	ldr r1, [sp, #0x004]
	mov r2, r9
	bl __ashldi3
	str r0, [sp, #0x000]
	str r1, [sp, #0x004]
	adds r1, r7, #0x0
	adds r0, r6, #0x0
	mov r2, r9
	bl __ashldi3
	adds r7, r1, #0x0
	adds r6, r0, #0x0
	movs r2, #0x00
	mov r8, r2
_0802E7FA:
	lsrs r3, r6, #0x10
	lsls r2, r7, #0x10
	adds r1, r3, #0x0
	orrs r1, r2
	lsls r0, r6, #0x10
	ldr r2, [sp, #0x000]
	ldr r3, [sp, #0x004]
	bl __udivdi3
	adds r5, r1, #0x0
	adds r4, r0, #0x0
	adds r3, r5, #0x0
	adds r2, r4, #0x0
	bl __muldi3
	lsls r3, r1, #0x10
	lsrs r2, r0, #0x10
	adds r4, r3, #0x0
	orrs r4, r2
	lsrs r5, r1, #0x10
	lsrs r3, r4, #0x18
	lsls r2, r5, #0x08
	adds r1, r3, #0x0
	orrs r1, r2
	lsls r0, r4, #0x08
	ldr r3, _0802E8B0 @ =0x00000000
	ldr r2, _0802E8AC @ =0x00040000
	adds r2, r2, r4
	adcs r3, r5
	lsls r5, r3, #0x18
	lsrs r4, r2, #0x08
	adds r2, r5, #0x0
	orrs r2, r4
	lsrs r3, r3, #0x08
	bl __udivdi3
	adds r5, r1, #0x0
	adds r4, r0, #0x0
	ldr r0, [sp, #0x000]
	ldr r1, [sp, #0x004]
	adds r3, r5, #0x0
	adds r2, r4, #0x0
	bl __muldi3
	lsls r3, r1, #0x11
	lsrs r2, r0, #0x0F
	adds r0, r3, #0x0
	orrs r0, r2
	lsrs r1, r1, #0x0F
	ldr r2, [sp, #0x000]
	ldr r3, [sp, #0x004]
	adds r2, r2, r0
	adcs r3, r1
	str r2, [sp, #0x000]
	str r3, [sp, #0x004]
	adds r1, r7, #0x0
	adds r0, r6, #0x0
	adds r3, r5, #0x0
	adds r2, r4, #0x0
	bl __muldi3
	lsls r3, r1, #0x10
	lsrs r2, r0, #0x10
	adds r6, r3, #0x0
	orrs r6, r2
	lsrs r7, r1, #0x10
	mov r0, r8
	adds r0, #0x01
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	cmp r0, #0x02
	bls _0802E7FA
	ldr r0, [sp, #0x000]
	ldr r1, [sp, #0x004]
	mov r2, r9
	bl __lshrdi3
	adds r5, r1, #0x0
	adds r4, r0, #0x0
	ldr r0, _0802E8B4 @ =0x7FFFFFFF
	ands r0, r4
_0802E89E:
	add sp, #0x008
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
_0802E8AC: .4byte 0x00040000
_0802E8B0: .4byte 0x00000000
_0802E8B4: .4byte 0x7FFFFFFF
	thumb_func_start sub_802E8B8
sub_802E8B8:
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r0, r1, #0x10
	lsls r4, r5, #0x10
	asrs r2, r4, #0x10
	cmp r2, #0x00
	bne _0802E8E2
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x00
	ble _0802E8D8
	movs r0, #0x80
	lsls r0, r0, #0x07
	b _0802EA92
_0802E8D8:
	cmp r0, #0x00
	bge _0802E8F0
	movs r0, #0xC0
	lsls r0, r0, #0x08
	b _0802EA92
_0802E8E2:
	lsls r0, r0, #0x10
	asrs r3, r0, #0x10
	adds r1, r0, #0x0
	cmp r3, #0x00
	bne _0802E8FE
	cmp r2, #0x00
	ble _0802E8F4
_0802E8F0:
	movs r0, #0x00
	b _0802EA92
_0802E8F4:
	cmp r2, #0x00
	bge _0802E8F0
	movs r0, #0x80
	lsls r0, r0, #0x08
	b _0802EA92
_0802E8FE:
	movs r0, #0x01
	mov r12, r0
	movs r7, #0x01
	movs r6, #0x00
	movs r0, #0x00
	cmp r2, #0x00
	blt _0802E93A
	cmp r3, #0x00
	blt _0802E936
	cmp r2, r3
	ble _0802E91E
	lsrs r4, r4, #0x10
	mov r12, r4
	lsrs r7, r1, #0x10
	movs r0, #0x01
	b _0802E9EA
_0802E91E:
	cmp r2, r3
	bge _0802E930
	lsrs r1, r1, #0x10
	mov r12, r1
	lsrs r7, r4, #0x10
	movs r6, #0x80
	lsls r6, r6, #0x07
	movs r0, #0xFF
	b _0802E9EA
_0802E930:
	movs r6, #0x80
	lsls r6, r6, #0x06
	b _0802E9EA
_0802E936:
	cmp r2, #0x00
	bgt _0802E9B4
_0802E93A:
	asrs r2, r1, #0x10
	cmp r2, #0x00
	blt _0802E974
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	negs r0, r0
	cmp r0, r2
	bge _0802E95A
	lsrs r1, r1, #0x10
	mov r12, r1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	movs r6, #0x80
	lsls r6, r6, #0x07
	movs r0, #0x01
	b _0802E9EA
_0802E95A:
	cmp r0, r2
	ble _0802E96E
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r12, r0
	lsrs r7, r1, #0x10
	movs r6, #0x80
	lsls r6, r6, #0x08
	movs r0, #0xFF
	b _0802E9EA
_0802E96E:
	movs r6, #0xC0
	lsls r6, r6, #0x07
	b _0802E9E8
_0802E974:
	lsls r0, r5, #0x10
	asrs r3, r0, #0x10
	adds r4, r0, #0x0
	cmp r3, #0x00
	bgt _0802E9B4
	negs r3, r3
	negs r2, r2
	cmp r3, r2
	ble _0802E998
	lsls r0, r3, #0x10
	lsrs r0, r0, #0x10
	mov r12, r0
	lsls r0, r2, #0x10
	lsrs r7, r0, #0x10
	movs r6, #0x80
	lsls r6, r6, #0x08
	movs r0, #0x01
	b _0802E9EA
_0802E998:
	cmp r3, r2
	bge _0802E9AE
	lsls r0, r2, #0x10
	lsrs r0, r0, #0x10
	mov r12, r0
	lsls r0, r3, #0x10
	lsrs r7, r0, #0x10
	movs r6, #0xC0
	lsls r6, r6, #0x08
	movs r0, #0xFF
	b _0802E9EA
_0802E9AE:
	movs r6, #0xA0
	lsls r6, r6, #0x08
	b _0802E9E8
_0802E9B4:
	adds r3, r4, #0x0
	asrs r2, r3, #0x10
	asrs r0, r1, #0x10
	negs r0, r0
	cmp r2, r0
	bge _0802E9D0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r12, r0
	lsrs r7, r3, #0x10
	movs r6, #0xC0
	lsls r6, r6, #0x08
	movs r0, #0x01
	b _0802E9EA
_0802E9D0:
	cmp r2, r0
	ble _0802E9E4
	lsrs r4, r4, #0x10
	mov r12, r4
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	movs r6, #0x80
	lsls r6, r6, #0x09
	movs r0, #0xFF
	b _0802E9EA
_0802E9E4:
	movs r6, #0xE0
	lsls r6, r6, #0x08
_0802E9E8:
	movs r0, #0x00
_0802E9EA:
	cmp r0, #0x01
	beq _0802E9F4
	cmp r0, #0xFF
	beq _0802EA44
	b _0802EA8E
_0802E9F4:
	lsls r0, r7, #0x10
	mov r1, r12
	bl Div
	adds r5, r0, #0x0
	cmp r5, #0x00
	bne _0802EA06
	movs r0, #0x00
	b _0802EA38
_0802EA06:
	movs r0, #0x80
	lsls r0, r0, #0x09
	cmp r5, r0
	bne _0802EA14
	movs r0, #0x80
	lsls r0, r0, #0x06
	b _0802EA38
_0802EA14:
	lsrs r1, r5, #0x08
	movs r2, #0xFF
	ands r1, r2
	ands r5, r2
	ldr r3, _0802EA40 @ =0x080DE1EC
	lsls r0, r1, #0x01
	adds r0, r0, r3
	ldrh r4, [r0, #0x00]
	adds r1, #0x01
	lsls r1, r1, #0x01
	adds r1, r1, r3
	ldrh r0, [r1, #0x00]
	subs r0, r0, r4
	ands r0, r2
	muls r0, r5
	asrs r0, r0, #0x08
	ands r0, r2
	adds r0, r4, r0
_0802EA38:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r6, r6, r0
	b _0802EA8E
_0802EA40: .4byte 0x080DE1EC
_0802EA44:
	lsls r0, r7, #0x10
	mov r1, r12
	bl Div
	adds r5, r0, #0x0
	cmp r5, #0x00
	bne _0802EA56
	movs r0, #0x00
	b _0802EA88
_0802EA56:
	movs r0, #0x80
	lsls r0, r0, #0x09
	cmp r5, r0
	bne _0802EA64
	movs r0, #0x80
	lsls r0, r0, #0x06
	b _0802EA88
_0802EA64:
	lsrs r1, r5, #0x08
	movs r2, #0xFF
	ands r1, r2
	ands r5, r2
	ldr r3, _0802EA98 @ =0x080DE1EC
	lsls r0, r1, #0x01
	adds r0, r0, r3
	ldrh r4, [r0, #0x00]
	adds r1, #0x01
	lsls r1, r1, #0x01
	adds r1, r1, r3
	ldrh r0, [r1, #0x00]
	subs r0, r0, r4
	ands r0, r2
	muls r0, r5
	asrs r0, r0, #0x08
	ands r0, r2
	adds r0, r4, r0
_0802EA88:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	subs r6, r6, r0
_0802EA8E:
	lsls r0, r6, #0x10
	lsrs r0, r0, #0x10
_0802EA92:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
_0802EA98: .4byte 0x080DE1EC
	thumb_func_start sub_802EA9C
sub_802EA9C:
	push {r4, lr}
	adds r4, r0, #0x0
	cmp r4, #0x00
	bne _0802EAA8
	movs r0, #0x00
	b _0802EAE4
_0802EAA8:
	movs r0, #0x80
	lsls r0, r0, #0x09
	cmp r4, r0
	beq _0802EAE0
	lsrs r1, r4, #0x08
	movs r2, #0xFF
	ands r1, r2
	ands r4, r2
	ldr r3, _0802EADC @ =0x080DE1EC
	lsls r0, r1, #0x01
	adds r0, r0, r3
	ldrh r0, [r0, #0x00]
	adds r1, #0x01
	lsls r1, r1, #0x01
	adds r1, r1, r3
	ldrh r1, [r1, #0x00]
	subs r1, r1, r0
	ands r1, r2
	muls r1, r4
	asrs r1, r1, #0x08
	ands r1, r2
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	b _0802EAE4
	.byte 0x00, 0x00
_0802EADC: .4byte 0x080DE1EC
_0802EAE0:
	movs r0, #0x80
	lsls r0, r0, #0x06
_0802EAE4:
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
    thumb_func_start sub_802EAEC
sub_802EAEC:
    push {r4, r5, r6, lr}
    lsls r0, r0, #0x10
    lsls r1, r1, #0x10
    lsrs r4, r1, #0x10
    movs r6, #0x00
    movs r5, #0x00
    lsrs r3, r0, #0x10
    cmp r0, #0x00
    ble _0802EB0A
    lsls r1, r4, #0x10
    asrs r0, r1, #0x10
    mvns r0, r0
    lsrs r2, r0, #0x1F
    adds r0, r1, #0x0
    b _0802EB14
_0802EB0A:
    lsls r0, r4, #0x10
    movs r2, #0x03
    cmp r0, #0x00
    ble _0802EB14
    movs r2, #0x02
_0802EB14:
    cmp r2, #0x01
    beq _0802EB30
    cmp r2, #0x01
    bgt _0802EB22
    cmp r2, #0x00
    beq _0802EB2C
    b _0802EB74
_0802EB22:
    cmp r2, #0x02
    beq _0802EB42
    cmp r2, #0x03
    beq _0802EB56
    b _0802EB74
_0802EB2C:
    lsls r0, r3, #0x18
    b _0802EB6C
_0802EB30:
    cmp r0, #0x00
    bne _0802EB3A
    movs r0, #0x80
    lsls r0, r0, #0x07
    b _0802EBBA
_0802EB3A:
    lsls r0, r3, #0x18
    lsrs r6, r0, #0x18
    lsls r0, r4, #0x18
    b _0802EB72
_0802EB42:
    cmp r3, #0x00
    bne _0802EB4C
    movs r0, #0x80
    lsls r0, r0, #0x08
    b _0802EBBA
_0802EB4C:
    negs r0, r3
    lsls r0, r0, #0x18
    lsrs r6, r0, #0x18
    lsls r0, r4, #0x18
    b _0802EB72
_0802EB56:
    cmp r3, #0x00
    bne _0802EB5E
    movs r0, #0x00
    b _0802EBBA
_0802EB5E:
    cmp r0, #0x00
    bne _0802EB68
    movs r0, #0xC0
    lsls r0, r0, #0x08
    b _0802EBBA
_0802EB68:
    negs r0, r3
    lsls r0, r0, #0x18
_0802EB6C:
    lsrs r6, r0, #0x18
    negs r0, r4
    lsls r0, r0, #0x18
_0802EB72:
    lsrs r5, r0, #0x18
_0802EB74:
    ldr r1, _0802EB90 @ =0x080DE3FC
    lsls r0, r5, #0x07
    subs r0, #0x81
    adds r0, r6, r0
    lsls r0, r0, #0x01
    adds r0, r0, r1
    ldrh r1, [r0, #0x00]
    cmp r2, #0x02
    beq _0802EBA0
    cmp r2, #0x02
    bgt _0802EB94
    cmp r2, #0x01
    beq _0802EB9A
    b _0802EBB6
_0802EB90: .4byte 0x080DE3FC
_0802EB94:
    cmp r2, #0x03
    beq _0802EBB0
    b _0802EBB6
_0802EB9A:
    movs r0, #0x80
    lsls r0, r0, #0x08
    b _0802EBB4
_0802EBA0:
    movs r0, #0x80
    lsls r0, r0, #0x08
    adds r1, r1, r0
    ldr r0, _0802EBAC @ =0x0000FFFF
    ands r1, r0
    b _0802EBB6
_0802EBAC: .4byte 0x0000FFFF
_0802EBB0:
    movs r0, #0x80
    lsls r0, r0, #0x09
_0802EBB4:
    subs r1, r0, r1
_0802EBB6:
    lsls r0, r1, #0x10
    lsrs r0, r0, #0x10
_0802EBBA:
    pop {r4, r5, r6}
    pop {r1}
    bx r1
    thumb_func_start sub_802EBC0
sub_802EBC0:
    push {r4, r5, r6, lr}
    cmp r0, #0x00
    bge _0802EBC8
    negs r0, r0
_0802EBC8:
    ldr r2, _0802EC18 @ =0x7FFFFFFF
    adds r4, r2, #0x0
    ands r4, r0
    cmp r1, #0x00
    bge _0802EBD4
    negs r1, r1
_0802EBD4:
    adds r5, r2, #0x0
    ands r5, r1
    cmp r4, r5
    bcs _0802EBE2
    adds r0, r4, #0x0
    adds r4, r5, #0x0
    adds r5, r0, #0x0
_0802EBE2:
    cmp r5, #0x00
    beq _0802EC0E
    movs r6, #0x02
_0802EBE8:
    adds r0, r5, #0x0
    adds r1, r4, #0x0
    bl Div
    adds r2, r0, #0x0
    adds r0, r2, #0x0
    muls r0, r2
    adds r2, r0, #0x0
    adds r1, r2, #0x4
    bl Div
    adds r2, r0, #0x0
    lsls r0, r2, #0x01
    muls r0, r4
    adds r4, r4, r0
    muls r5, r2
    subs r6, #0x01
    cmp r6, #0x00
    bge _0802EBE8
_0802EC0E:
    adds r0, r4, #0x0
    pop {r4, r5, r6}
    pop {r1}
    bx r1
    .byte 0x00, 0x00
_0802EC18: .4byte 0x7FFFFFFF
    .byte 0x00, 0xB5, 0x00, 0x04, 0x00, 0x14, 0x09, 0x04, 0x09, 0x14, 0x32, 0xF0, 0x8F, 0xFB, 0x80, 0x21
    .byte 0xC9, 0x01, 0x40, 0x18, 0x00, 0x04, 0x00, 0x0C, 0x02, 0xBC, 0x08, 0x47
    thumb_func_start sub_802EC38
sub_802EC38:
    push {lr}
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    lsls r1, r1, #0x10
    asrs r1, r1, #0x10
    bl ArcTan2
    lsls r0, r0, #0x10
    movs r1, #0x80
    lsls r1, r1, #0x17
    adds r0, r0, r1
    lsrs r0, r0, #0x10
    pop {r1}
    bx r1
    