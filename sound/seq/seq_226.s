@ File generated by m4a2s Song-Module
	.include "MPlayDef.s"

	.equ	seq_226_grp, bank_013
	.equ	seq_226_pri, 100
	.equ	seq_226_rev, 0
	.equ	seq_226_mvl, 127
	.equ	seq_226_key, 0

	.section .rodata
	.global	seq_226
	.align	2

@*********************** Track 01 ***********************@

seq_226_0:
	.byte		VOL   , 100*seq_226_mvl/mxv
	.byte	KEYSH , seq_226_key+0
	.byte	TEMPO , 150/2
	.byte		VOICE , 26
	.byte		N92   , Cn3 , v127
	.byte	W24
	.byte	W24
	.byte	W24
	.byte	W24
	.byte	FINE

@******************************************************@

	.align	2

seq_226:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	seq_226_pri	@ Priority
	.byte	seq_226_rev	@ Reverb

	.word	seq_226_grp

	.word	seq_226_0

	.end
