@ File generated by m4a2s Song-Module
	.include "MPlayDef.s"

	.equ	seq_333_grp, bank_013
	.equ	seq_333_pri, 100
	.equ	seq_333_rev, 0
	.equ	seq_333_mvl, 127
	.equ	seq_333_key, 0

	.section .rodata
	.global	seq_333
	.align	2

@*********************** Track 01 ***********************@

seq_333_0:
	.byte	KEYSH , seq_333_key+0
	.byte	TEMPO , 150/2
	.byte		VOICE , 14
	.byte		VOL   , 85*seq_333_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		N28   , Fs3 , v127
	.byte	W48
	.byte	FINE

@******************************************************@

	.align	2

seq_333:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	seq_333_pri	@ Priority
	.byte	seq_333_rev	@ Reverb

	.word	seq_333_grp

	.word	seq_333_0

	.end
