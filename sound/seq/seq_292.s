@ File generated by m4a2s Song-Module
	.include "MPlayDef.s"

	.equ	seq_292_grp, bank_013
	.equ	seq_292_pri, 100
	.equ	seq_292_rev, 0
	.equ	seq_292_mvl, 127
	.equ	seq_292_key, 0

	.section .rodata
	.global	seq_292
	.align	2

@*********************** Track 01 ***********************@

seq_292_0:
	.byte	KEYSH , seq_292_key+0
	.byte	TEMPO , 150/2
	.byte		VOICE , 12
	.byte		VOL   , 115*seq_292_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		N64   , Fs3 , v127
	.byte	W24
	.byte	W24
	.byte	W24
	.byte	FINE

@******************************************************@

	.align	2

seq_292:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	seq_292_pri	@ Priority
	.byte	seq_292_rev	@ Reverb

	.word	seq_292_grp

	.word	seq_292_0

	.end