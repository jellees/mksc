@ File generated by m4a2s Song-Module
	.include "MPlayDef.s"

	.equ	seq_272_grp, bank_013
	.equ	seq_272_pri, 100
	.equ	seq_272_rev, 0
	.equ	seq_272_mvl, 127
	.equ	seq_272_key, 0

	.section .rodata
	.global	seq_272
	.align	2

@*********************** Track 01 ***********************@

seq_272_0:
	.byte		VOL   , 110*seq_272_mvl/mxv
	.byte	KEYSH , seq_272_key+0
	.byte	TEMPO , 150/2
	.byte		VOICE , 30
	.byte		N09   , Cn3 , v127
	.byte	W12
	.byte		N36
	.byte	W12
	.byte	W24
	.byte	FINE

@******************************************************@

	.align	2

seq_272:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	seq_272_pri	@ Priority
	.byte	seq_272_rev	@ Reverb

	.word	seq_272_grp

	.word	seq_272_0

	.end
