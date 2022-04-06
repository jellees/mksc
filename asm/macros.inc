.macro arm_func_start name
.align 2, 0
.global \name
.arm
.type \name, %function
.endm

.macro arm_func_end name
.size \name, .-\name
.endm

.macro thumb_func_start name
.align 2, 0
.global \name
.thumb
.thumb_func
.type \name, %function
.endm

.macro non_word_aligned_thumb_func_start name
.global \name
.thumb
.thumb_func
.type \name, %function
.endm

.macro thumb_func_end name
.size \name, .-\name
.endm

INTR_VECTOR_BUF = 0x03007FFC

REG_BASE = 0x04000000
REG_IE = 0x04000200
REG_IF = 0x04000202
REG_IME = 0x04000208
