@ File generated by m4a2s Song-Module
	.include "MPlayDef.s"

	.equ	seq_135_grp, bank_044
	.equ	seq_135_pri, 10
	.equ	seq_135_rev, 0
	.equ	seq_135_mvl, 127
	.equ	seq_135_key, 0

	.section .rodata
	.global	seq_135
	.align	2

@*********************** Track 01 ***********************@

seq_135_0:
	.byte		VOL   , 100*seq_135_mvl/mxv
	.byte	KEYSH , seq_135_key+0
	.byte	TEMPO , 150/2
	.byte		VOICE , 69
	.byte		N12   , Cn3 , v127
	.byte	W24
	.byte	FINE

@******************************************************@

	.align	2

seq_135:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	seq_135_pri	@ Priority
	.byte	seq_135_rev	@ Reverb

	.word	seq_135_grp

	.word	seq_135_0

	.end
