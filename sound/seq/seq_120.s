@ File generated by m4a2s Song-Module
	.include "MPlayDef.s"

	.equ	seq_120_grp, bank_044
	.equ	seq_120_pri, 10
	.equ	seq_120_rev, 0
	.equ	seq_120_mvl, 127
	.equ	seq_120_key, 0

	.section .rodata
	.global	seq_120
	.align	2

@*********************** Track 01 ***********************@

seq_120_0:
	.byte		VOL   , 35*seq_120_mvl/mxv
	.byte	KEYSH , seq_120_key+0
	.byte	TEMPO , 150/2
	.byte		VOICE , 100
	.byte		N05   , Bn4 , v127
	.byte	W05
	.byte		        Bn5 , v120
	.byte	W19
	.byte	FINE

@******************************************************@

	.align	2

seq_120:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	seq_120_pri	@ Priority
	.byte	seq_120_rev	@ Reverb

	.word	seq_120_grp

	.word	seq_120_0

	.end
