@ File generated by m4a2s Song-Module
	.include "MPlayDef.s"

	.equ	seq_268_grp, bank_013
	.equ	seq_268_pri, 100
	.equ	seq_268_rev, 0
	.equ	seq_268_mvl, 127
	.equ	seq_268_key, 0

	.section .rodata
	.global	seq_268
	.align	2

@*********************** Track 01 ***********************@

seq_268_0:
	.byte	KEYSH , seq_268_key+0
	.byte	TEMPO , 150/2
	.byte		VOICE , 29
	.byte		VOL   , 88*seq_268_mvl/mxv
	.byte		TIE   , Cn3 , v127
	.byte	W24
	.byte	W24
	.byte	W15
	.byte		VOL   , 86*seq_268_mvl/mxv
	.byte	W03
	.byte		        83*seq_268_mvl/mxv
	.byte		BEND  , c_v+0
	.byte	W02
	.byte		        c_v-3
	.byte	W01
	.byte		VOL   , 80*seq_268_mvl/mxv
	.byte	W01
	.byte		BEND  , c_v-5
	.byte	W02
	.byte		VOL   , 77*seq_268_mvl/mxv
	.byte		BEND  , c_v-7
	.byte	W02
	.byte		VOL   , 74*seq_268_mvl/mxv
	.byte		BEND  , c_v-9
	.byte	W02
	.byte		VOL   , 72*seq_268_mvl/mxv
	.byte		BEND  , c_v-11
	.byte	W02
	.byte		VOL   , 69*seq_268_mvl/mxv
	.byte		BEND  , c_v-13
	.byte	W02
	.byte		VOL   , 66*seq_268_mvl/mxv
	.byte		BEND  , c_v-15
	.byte	W02
	.byte		VOL   , 63*seq_268_mvl/mxv
	.byte		BEND  , c_v-18
	.byte	W02
	.byte		VOL   , 60*seq_268_mvl/mxv
	.byte		BEND  , c_v-20
	.byte	W02
	.byte		VOL   , 58*seq_268_mvl/mxv
	.byte		BEND  , c_v-22
	.byte	W02
	.byte		VOL   , 55*seq_268_mvl/mxv
	.byte		BEND  , c_v-24
	.byte	W02
	.byte		VOL   , 52*seq_268_mvl/mxv
	.byte		BEND  , c_v-26
	.byte	W02
	.byte		VOL   , 49*seq_268_mvl/mxv
	.byte		BEND  , c_v-28
	.byte	W02
	.byte		VOL   , 45*seq_268_mvl/mxv
	.byte		BEND  , c_v-30
	.byte	W02
	.byte		VOL   , 40*seq_268_mvl/mxv
	.byte		BEND  , c_v-32
	.byte	W02
	.byte		VOL   , 34*seq_268_mvl/mxv
	.byte	W02
	.byte		        27*seq_268_mvl/mxv
	.byte	W02
	.byte		        20*seq_268_mvl/mxv
	.byte	W02
	.byte		        13*seq_268_mvl/mxv
	.byte	W02
	.byte		        6*seq_268_mvl/mxv
	.byte	W02
	.byte		        0*seq_268_mvl/mxv
	.byte	W01
	.byte		EOT
	.byte	W11
	.byte	FINE

@******************************************************@

	.align	2

seq_268:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	seq_268_pri	@ Priority
	.byte	seq_268_rev	@ Reverb

	.word	seq_268_grp

	.word	seq_268_0

	.end
