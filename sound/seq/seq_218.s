@ File generated by m4a2s Song-Module
	.include "MPlayDef.s"

	.equ	seq_218_grp, bank_013
	.equ	seq_218_pri, 100
	.equ	seq_218_rev, 0
	.equ	seq_218_mvl, 127
	.equ	seq_218_key, 0

	.section .rodata
	.global	seq_218
	.align	2

@*********************** Track 01 ***********************@

seq_218_0:
	.byte		VOL   , 120*seq_218_mvl/mxv
	.byte	KEYSH , seq_218_key+0
	.byte	TEMPO , 150/2
	.byte		VOICE , 19
	.byte		N80   , Cn3 , v127
	.byte	W24
	.byte	W24
	.byte	W24
	.byte	W24
	.byte	FINE

@******************************************************@

	.align	2

seq_218:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	seq_218_pri	@ Priority
	.byte	seq_218_rev	@ Reverb

	.word	seq_218_grp

	.word	seq_218_0

	.end
