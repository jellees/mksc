@ File generated by m4a2s Song-Module
	.include "MPlayDef.s"

	.equ	seq_337_grp, bank_013
	.equ	seq_337_pri, 100
	.equ	seq_337_rev, 0
	.equ	seq_337_mvl, 127
	.equ	seq_337_key, 0

	.section .rodata
	.global	seq_337
	.align	2

@*********************** Track 01 ***********************@

seq_337_0:
	.byte	KEYSH , seq_337_key+0
	.byte	TEMPO , 150/2
	.byte		VOICE , 17
	.byte		VOL   , 105*seq_337_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		N72   , Fs3 , v127
	.byte	W24
	.byte	W24
	.byte	W24
	.byte	FINE

@******************************************************@

	.align	2

seq_337:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	seq_337_pri	@ Priority
	.byte	seq_337_rev	@ Reverb

	.word	seq_337_grp

	.word	seq_337_0

	.end