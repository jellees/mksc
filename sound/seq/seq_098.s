@ File generated by m4a2s Song-Module
	.include "MPlayDef.s"

	.equ	seq_098_grp, bank_044
	.equ	seq_098_pri, 60
	.equ	seq_098_rev, 0
	.equ	seq_098_mvl, 127
	.equ	seq_098_key, 0

	.section .rodata
	.global	seq_098
	.align	2

@*********************** Track 01 ***********************@

seq_098_0:
	.byte		VOL   , 80*seq_098_mvl/mxv
	.byte	KEYSH , seq_098_key+0
	.byte	TEMPO , 150/2
	.byte		VOICE , 17
	.byte		N16   , Cn3 , v127
	.byte	W24
	.byte	FINE

@******************************************************@

	.align	2

seq_098:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	seq_098_pri	@ Priority
	.byte	seq_098_rev	@ Reverb

	.word	seq_098_grp

	.word	seq_098_0

	.end
