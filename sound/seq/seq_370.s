@ File generated by m4a2s Song-Module
	.include "MPlayDef.s"

	.equ	seq_370_grp, bank_044
	.equ	seq_370_pri, 100
	.equ	seq_370_rev, 0
	.equ	seq_370_mvl, 127
	.equ	seq_370_key, 0

	.section .rodata
	.global	seq_370
	.align	2

@*********************** Track 01 ***********************@

seq_370_0:
	.byte		VOL   , 35*seq_370_mvl/mxv
	.byte	KEYSH , seq_370_key+0
	.byte	TEMPO , 150/2
	.byte		VOICE , 41
	.byte		BEND  , c_v-32
	.byte		N06   , An4 , v127
	.byte	W01
	.byte		BEND  , c_v-28
	.byte	W01
	.byte		        c_v-20
	.byte	W01
	.byte		        c_v-12
	.byte	W01
	.byte		        c_v-4
	.byte	W01
	.byte		        c_v+0
	.byte	W19
	.byte	FINE

@******************************************************@

	.align	2

seq_370:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	seq_370_pri	@ Priority
	.byte	seq_370_rev	@ Reverb

	.word	seq_370_grp

	.word	seq_370_0

	.end