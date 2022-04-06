.include "asm/macros.inc"

.text

arm_func_start start_vector
start_vector:
    mov r0, #0x12 // irq mode
    msr cpsr, r0
    ldr sp, sp_irq // irq stack
    mov r0, #0x1F // system mode
    msr cpsr, r0
    ldr sp, sp_usr // user/system stack
    ldr r1,= INTR_VECTOR_BUF
    adr r0, intr_main
    str r0, [r1]
    ldr r1,= AgbMain
    mov lr, pc
    bx r1
    b start_vector

.align

sp_usr:
    .word 0x03007B00
sp_irq:
    .word 0x03007FA0

arm_func_start intr_main
intr_main:
    mov r3, #REG_BASE
    add r3, r3, #(REG_IE - REG_BASE)
    ldr r2, [r3]
    and r1, r2, r2, lsr #16
    ands r0, r1, #0x2000
    beq 1f

    mov r0, #0xFF
    svc 0x10000 // RegisterRamReset
    b .

1:
    mov r2, #0
    ands r0, r1, #1
    bne 2f
    add r2, r2, #4
    ands r0, r1, #2
    bne 2f
    add r2, r2, #4
    ands r0, r1, #4
    bne 2f
    add r2, r2, #4
    ands r0, r1, #8
    bne 2f
    add r2, r2, #4
    ands r0, r1, #0x10
    bne 2f
    add r2, r2, #4
    ands r0, r1, #0x20
    bne 2f
    add r2, r2, #4
    ands r0, r1, #0x40
    bne 2f
    add r2, r2, #4
    ands r0, r1, #0x80
    bne 2f
    add r2, r2, #4
    ands r0, r1, #0x100
    bne 2f
    add r2, r2, #4
    ands r0, r1, #0x200
    bne 2f
    add r2, r2, #4
    ands r0, r1, #0x400
    bne 2f
    add r2, r2, #4
    ands r0, r1, #0x800
    bne 2f
    add r2, r2, #4
    ands r0, r1, #0x1000

2:
    strh    r0, [r3, #(REG_IF - REG_IE)]
    ldr     r1,= 0x03004F80 //IntrTable
    add     r1, r1, r2
    ldr     r0, [r1]
    bx      r0

.pool
