.include "asm/macros.inc"

.syntax unified
.text

thumb_func_start error_8016D90
error_8016D90:
push {r4, r5, r6, r7, lr}
mov r7, r10
mov r6, r9
mov r5, r8
push {r5, r6, r7}
add sp, #-0x014
ldr r0, _08016E04 @ =0x03000188
ldr r0, [r0, #0x00]
mov r8, r0
ldr r0, _08016E08 @ =0x03002C80
ldrb r0, [r0, #0x01]
mov r9, r0
cmp r0, #0x01
bgt _08016DB0
movs r0, #0x01
mov r9, r0
_08016DB0:
mov r1, r8
ldr r0, [r1, #0x20]
adds r0, #0x01
str r0, [r1, #0x20]
mov r1, r9
adds r1, #0x01
mov r2, sp
adds r2, #0x0C
str r2, [sp, #0x010]
cmp r0, #0x7F
ble _08016DD0
_08016DC6:
subs r0, #0x7F
cmp r0, #0x7F
bgt _08016DC6
mov r3, r8
str r0, [r3, #0x20]
_08016DD0:
mov r0, r8
ldr r2, [r0, #0x20]
cmp r2, #0x00
bge _08016DE6
_08016DD8:
adds r0, r2, #0x0
adds r0, #0x7F
adds r2, r0, #0x0
cmp r0, #0x00
blt _08016DD8
mov r2, r8
str r0, [r2, #0x20]
_08016DE6:
movs r0, #0x50
bl __divsi3
mov r10, r0
movs r7, #0x00
cmp r7, r9
blt _08016DF6
b _08016EF0
_08016DF6:
mov r3, r8
ldr r1, [r3, #0x20]
cmp r1, #0x3F
ble _08016E0C
movs r0, #0x7F
subs r0, r0, r1
b _08016E0E
_08016E04: .4byte 0x03000188
_08016E08: .4byte 0x03002C80
_08016E0C:
adds r0, r1, #0x0
_08016E0E:
bl sub_8008600
adds r5, r0, #0x0
adds r0, r7, #0x0
bl spm_menuCharIdxToCharId
adds r6, r0, #0x0
lsls r4, r6, #0x01
adds r4, r4, r6
lsls r4, r4, #0x02
subs r4, r4, r6
lsls r4, r4, #0x0D
lsls r5, r5, #0x0B
ldr r0, _08016EA0 @ =0x08345800
adds r5, r5, r0
adds r4, r4, r5
lsls r5, r7, #0x0B
ldr r1, _08016EA4 @ =0x06011800
adds r5, r5, r1
bl dmaq_getVBlankDmaQueue
adds r1, r4, #0x0
adds r2, r5, #0x0
ldr r3, _08016EA8 @ =0x80000400
bl dmaq_enqueue
lsls r6, r6, #0x09
ldr r2, _08016EAC @ =0x08344600
adds r6, r6, r2
movs r0, #0x01
bl pltt_getBuffer
adds r1, r0, #0x0
lsls r0, r7, #0x05
adds r0, #0x80
adds r1, r1, r0
adds r0, r6, #0x0
movs r2, #0x08
bl CpuFastSet
movs r3, #0x00
lsls r1, r7, #0x02
lsls r4, r7, #0x03
mov r2, r8
adds r2, #0x24
mov r6, r8
adds r6, #0x28
adds r5, r7, #0x1
ldr r0, _08016EB0 @ =0x080DA2FC
adds r1, r1, r0
ldr r1, [r1, #0x00]
adds r2, r4, r2
_08016E76:
ldrh r0, [r1, #0x00]
strh r0, [r2, #0x00]
adds r1, #0x02
adds r2, #0x02
adds r3, #0x01
cmp r3, #0x03
ble _08016E76
mov r3, r8
ldr r0, [r3, #0x20]
movs r1, #0x40
ands r0, r1
cmp r0, #0x00
beq _08016EB4
adds r2, r6, r4
ldrh r1, [r2, #0x00]
movs r3, #0x80
lsls r3, r3, #0x05
adds r0, r3, #0x0
orrs r0, r1
strh r0, [r2, #0x00]
b _08016EC0
_08016EA0: .4byte 0x08345800
_08016EA4: .4byte 0x06011800
_08016EA8: .4byte 0x80000400
_08016EAC: .4byte 0x08344600
_08016EB0: .4byte 0x080DA2FC
_08016EB4:
adds r0, r6, r4
ldrh r1, [r0, #0x00]
ldr r3, _08016F1C @ =0x0000EFFF
adds r2, r3, #0x0
ands r1, r2
strh r1, [r0, #0x00]
_08016EC0:
mov r0, r10
muls r0, r5
adds r0, #0x80
lsls r0, r0, #0x10
lsrs r0, r0, #0x10
movs r1, #0xE0
lsls r1, r1, #0x0F
orrs r0, r1
str r0, [sp, #0x008]
adds r0, r4, #0x0
adds r0, #0x24
add r0, r8
movs r1, #0x00
str r1, [sp, #0x000]
str r1, [sp, #0x004]
add r1, sp, #0x008
movs r2, #0x00
movs r3, #0x00
bl oam_renderCellData
adds r7, r5, #0x0
cmp r7, r9
bge _08016EF0
b _08016DF6
_08016EF0:
ldr r0, _08016F20 @ =0x007000A8
str r0, [sp, #0x00C]
ldr r0, _08016F24 @ =0x080CA7A0
movs r1, #0x00
str r1, [sp, #0x000]
str r1, [sp, #0x004]
ldr r1, [sp, #0x010]
movs r2, #0x00
movs r3, #0x00
bl oam_renderCellData
movs r0, #0x01
bl pltt_setDirtyFlag
add sp, #0x014
pop {r3, r4, r5}
mov r8, r3
mov r9, r4
mov r10, r5
pop {r4, r5, r6, r7}
pop {r0}
bx r0
_08016F1C: .4byte 0x0000EFFF
_08016F20: .4byte 0x007000A8
_08016F24: .4byte 0x080CA7A0


