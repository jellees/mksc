	.include "MPlayDef.s"

	.equ	seq_001_grp, bank_013
	.equ	seq_001_pri, 10
	.equ	seq_001_rev, 0

	.section .rodata
	.global	seq_001
	.align	2

@******************************************************@

	.align	2

seq_001:
	.byte	0	@ NumTrks
	.byte	0	@ NumBlks
	.byte	seq_001_pri	@ Priority
	.byte	seq_001_rev	@ Reverb

	.word	seq_001_grp

	.end
