@ File generated by m4a2s Song-Module
	.include "MPlayDef.s"

	.equ	seq_306_grp, bank_013
	.equ	seq_306_pri, 100
	.equ	seq_306_rev, 0
	.equ	seq_306_mvl, 127
	.equ	seq_306_key, 0

	.section .rodata
	.global	seq_306
	.align	2

@*********************** Track 01 ***********************@

seq_306_0:
	.byte	KEYSH , seq_306_key+0
	.byte	TEMPO , 150/2
	.byte		VOICE , 26
	.byte		VOL   , 100*seq_306_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		N60   , Gn3 , v127
	.byte	W24
	.byte	W24
	.byte	W24
	.byte	FINE

@******************************************************@

	.align	2

seq_306:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	seq_306_pri	@ Priority
	.byte	seq_306_rev	@ Reverb

	.word	seq_306_grp

	.word	seq_306_0

	.end