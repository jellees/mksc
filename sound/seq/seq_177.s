@ File generated by m4a2s Song-Module
	.include "MPlayDef.s"

	.equ	seq_177_grp, bank_044
	.equ	seq_177_pri, 10
	.equ	seq_177_rev, 0
	.equ	seq_177_mvl, 127
	.equ	seq_177_key, 0

	.section .rodata
	.global	seq_177
	.align	2

@*********************** Track 01 ***********************@

seq_177_0:
	.byte		VOL   , 110*seq_177_mvl/mxv
	.byte	KEYSH , seq_177_key+0
	.byte	TEMPO , 150/2
	.byte		VOICE , 88
	.byte		BENDR , 2
	.byte		BEND  , c_v+0
	.byte		N96   , Cn3 , v127
	.byte	W96
	.byte	FINE

@******************************************************@

	.align	2

seq_177:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	seq_177_pri	@ Priority
	.byte	seq_177_rev	@ Reverb

	.word	seq_177_grp

	.word	seq_177_0

	.end
