@ File generated by m4a2s Song-Module
	.include "MPlayDef.s"

	.equ	seq_346_grp, bank_013
	.equ	seq_346_pri, 100
	.equ	seq_346_rev, 0
	.equ	seq_346_mvl, 127
	.equ	seq_346_key, 0

	.section .rodata
	.global	seq_346
	.align	2

@*********************** Track 01 ***********************@

seq_346_0:
	.byte	KEYSH , seq_346_key+0
	.byte	TEMPO , 150/2
	.byte		VOICE , 26
	.byte		VOL   , 90*seq_346_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		N60   , Gn3 , v127
	.byte	W24
	.byte	W24
	.byte	W24
	.byte	FINE

@******************************************************@

	.align	2

seq_346:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	seq_346_pri	@ Priority
	.byte	seq_346_rev	@ Reverb

	.word	seq_346_grp

	.word	seq_346_0

	.end