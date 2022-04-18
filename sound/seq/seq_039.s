	.include "MPlayDef.s"

	.equ	seq_039_grp, bank_013
	.equ	seq_039_pri, 10
	.equ	seq_039_rev, 178

	.section .rodata
	.global	seq_039
	.align	2

@******************************************************@

	.align	2

seq_039:
	.byte	0	@ NumTrks
	.byte	0	@ NumBlks
	.byte	seq_039_pri	@ Priority
	.byte	seq_039_rev	@ Reverb

	.word	seq_039_grp

	.end
