@ File generated by m4a2s Song-Module
	.include "MPlayDef.s"

	.equ	seq_101_grp, bank_044
	.equ	seq_101_pri, 1
	.equ	seq_101_rev, 0
	.equ	seq_101_mvl, 127
	.equ	seq_101_key, 0

	.section .rodata
	.global	seq_101
	.align	2

@*********************** Track 01 ***********************@

seq_101_0:
	.byte	KEYSH , seq_101_key+0
	.byte	TEMPO , 150/2
	.byte		VOICE , 40
	.byte		VOL   , 60*seq_101_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	PRIO  , 10
	.byte		N03   , Bn4 , v072
	.byte	W04
	.byte		N30   , En5 , v080
	.byte	W30
	.byte	PRIO  , 0
	.byte	W14
	.byte	FINE

@******************************************************@

	.align	2

seq_101:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	seq_101_pri	@ Priority
	.byte	seq_101_rev	@ Reverb

	.word	seq_101_grp

	.word	seq_101_0

	.end
