	.include "MPlayDef.s"

	.equ	seq_038_grp, bank_013
	.equ	seq_038_pri, 10
	.equ	seq_038_rev, 148

	.section .rodata
	.global	seq_038
	.align	2

@******************************************************@

	.align	2

seq_038:
	.byte	0	@ NumTrks
	.byte	0	@ NumBlks
	.byte	seq_038_pri	@ Priority
	.byte	seq_038_rev	@ Reverb

	.word	seq_038_grp

	.end
