@ File generated by m4a2s Song-Module
	.include "MPlayDef.s"

	.equ	seq_256_grp, bank_013
	.equ	seq_256_pri, 100
	.equ	seq_256_rev, 0
	.equ	seq_256_mvl, 127
	.equ	seq_256_key, 0

	.section .rodata
	.global	seq_256
	.align	2

@*********************** Track 01 ***********************@

seq_256_0:
	.byte		VOL   , 95*seq_256_mvl/mxv
	.byte	KEYSH , seq_256_key+0
	.byte	TEMPO , 150/2
	.byte		VOICE , 16
	.byte		N68   , Cn3 , v127
	.byte	W24
	.byte	W24
	.byte	W24
	.byte	FINE

@******************************************************@

	.align	2

seq_256:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	seq_256_pri	@ Priority
	.byte	seq_256_rev	@ Reverb

	.word	seq_256_grp

	.word	seq_256_0

	.end
