@ File generated by m4a2s Song-Module
	.include "MPlayDef.s"

	.equ	seq_097_grp, bank_044
	.equ	seq_097_pri, 60
	.equ	seq_097_rev, 0
	.equ	seq_097_mvl, 127
	.equ	seq_097_key, 0

	.section .rodata
	.global	seq_097
	.align	2

@*********************** Track 01 ***********************@

seq_097_0:
	.byte		VOL   , 80*seq_097_mvl/mxv
	.byte	KEYSH , seq_097_key+0
	.byte	TEMPO , 150/2
	.byte		VOICE , 16
	.byte		N16   , Cn3 , v127
	.byte	W24
	.byte	FINE

@******************************************************@

	.align	2

seq_097:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	seq_097_pri	@ Priority
	.byte	seq_097_rev	@ Reverb

	.word	seq_097_grp

	.word	seq_097_0

	.end