@ File generated by m4a2s Song-Module
	.include "MPlayDef.s"

	.equ	seq_342_grp, bank_013
	.equ	seq_342_pri, 100
	.equ	seq_342_rev, 0
	.equ	seq_342_mvl, 127
	.equ	seq_342_key, 0

	.section .rodata
	.global	seq_342
	.align	2

@*********************** Track 01 ***********************@

seq_342_0:
	.byte	KEYSH , seq_342_key+0
	.byte	TEMPO , 150/2
	.byte		VOICE , 22
	.byte		VOL   , 110*seq_342_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		N60   , Gs3 , v127
	.byte	W24
	.byte	W24
	.byte	W24
	.byte	FINE

@******************************************************@

	.align	2

seq_342:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	seq_342_pri	@ Priority
	.byte	seq_342_rev	@ Reverb

	.word	seq_342_grp

	.word	seq_342_0

	.end
