@ File generated by m4a2s Song-Module
	.include "MPlayDef.s"

	.equ	seq_336_grp, bank_013
	.equ	seq_336_pri, 100
	.equ	seq_336_rev, 0
	.equ	seq_336_mvl, 127
	.equ	seq_336_key, 0

	.section .rodata
	.global	seq_336
	.align	2

@*********************** Track 01 ***********************@

seq_336_0:
	.byte	KEYSH , seq_336_key+0
	.byte	TEMPO , 150/2
	.byte		VOICE , 16
	.byte		VOL   , 105*seq_336_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		N48   , Fs3 , v127
	.byte	W24
	.byte	W24
	.byte	FINE

@******************************************************@

	.align	2

seq_336:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	seq_336_pri	@ Priority
	.byte	seq_336_rev	@ Reverb

	.word	seq_336_grp

	.word	seq_336_0

	.end
