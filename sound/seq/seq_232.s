@ File generated by m4a2s Song-Module
	.include "MPlayDef.s"

	.equ	seq_232_grp, bank_013
	.equ	seq_232_pri, 100
	.equ	seq_232_rev, 0
	.equ	seq_232_mvl, 127
	.equ	seq_232_key, 0

	.section .rodata
	.global	seq_232
	.align	2

@*********************** Track 01 ***********************@

seq_232_0:
	.byte		VOL   , 127*seq_232_mvl/mxv
	.byte	KEYSH , seq_232_key+0
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

seq_232:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	seq_232_pri	@ Priority
	.byte	seq_232_rev	@ Reverb

	.word	seq_232_grp

	.word	seq_232_0

	.end
