@ File generated by m4a2s Song-Module
	.include "MPlayDef.s"

	.equ	seq_304_grp, bank_013
	.equ	seq_304_pri, 100
	.equ	seq_304_rev, 0
	.equ	seq_304_mvl, 127
	.equ	seq_304_key, 0

	.section .rodata
	.global	seq_304
	.align	2

@*********************** Track 01 ***********************@

seq_304_0:
	.byte	KEYSH , seq_304_key+0
	.byte	TEMPO , 150/2
	.byte		VOICE , 24
	.byte		VOL   , 115*seq_304_mvl/mxv
	.byte		BENDR , 8
	.byte		BEND  , c_v+0
	.byte		N48   , Gs3 , v127
	.byte	W04
	.byte		VOL   , 108*seq_304_mvl/mxv
	.byte		BEND  , c_v+0
	.byte	W02
	.byte		        c_v-4
	.byte	W02
	.byte		VOL   , 101*seq_304_mvl/mxv
	.byte		BEND  , c_v-7
	.byte	W02
	.byte		        c_v-10
	.byte	W02
	.byte		VOL   , 94*seq_304_mvl/mxv
	.byte		BEND  , c_v-13
	.byte	W02
	.byte		        c_v-16
	.byte	W02
	.byte		VOL   , 86*seq_304_mvl/mxv
	.byte		BEND  , c_v-20
	.byte	W02
	.byte		        c_v-23
	.byte	W02
	.byte		VOL   , 79*seq_304_mvl/mxv
	.byte		BEND  , c_v-26
	.byte	W02
	.byte		        c_v-29
	.byte	W02
	.byte		VOL   , 72*seq_304_mvl/mxv
	.byte		BEND  , c_v-32
	.byte	W02
	.byte		        c_v-36
	.byte	W02
	.byte		VOL   , 63*seq_304_mvl/mxv
	.byte		BEND  , c_v-39
	.byte	W02
	.byte		        c_v-42
	.byte	W02
	.byte		VOL   , 57*seq_304_mvl/mxv
	.byte		BEND  , c_v-45
	.byte	W02
	.byte		        c_v-48
	.byte	W02
	.byte		VOL   , 49*seq_304_mvl/mxv
	.byte		BEND  , c_v-52
	.byte	W02
	.byte		        c_v-55
	.byte	W02
	.byte		VOL   , 40*seq_304_mvl/mxv
	.byte		BEND  , c_v-58
	.byte	W02
	.byte		        c_v-61
	.byte	W02
	.byte		VOL   , 31*seq_304_mvl/mxv
	.byte		BEND  , c_v-64
	.byte	W04
	.byte	W24
	.byte	FINE

@******************************************************@

	.align	2

seq_304:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	seq_304_pri	@ Priority
	.byte	seq_304_rev	@ Reverb

	.word	seq_304_grp

	.word	seq_304_0

	.end
