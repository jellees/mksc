@ File generated by m4a2s Song-Module
	.include "MPlayDef.s"

	.equ	seq_198_grp, bank_044
	.equ	seq_198_pri, 20
	.equ	seq_198_rev, 0
	.equ	seq_198_mvl, 127
	.equ	seq_198_key, 0

	.section .rodata
	.global	seq_198
	.align	2

@*********************** Track 01 ***********************@

seq_198_0:
	.byte	KEYSH , seq_198_key+0
	.byte	TEMPO , 150/2
	.byte		VOICE , 51
	.byte		VOL   , 70*seq_198_mvl/mxv
	.byte		N02   , Cn7 , v127
	.byte	W04
	.byte		N02
	.byte	W04
	.byte		N02
	.byte	W04
	.byte		N02
	.byte	W12
	.byte	FINE

@******************************************************@

	.align	2

seq_198:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	seq_198_pri	@ Priority
	.byte	seq_198_rev	@ Reverb

	.word	seq_198_grp

	.word	seq_198_0

	.end
