@ File generated by m4a2s Song-Module
	.include "MPlayDef.s"

	.equ	seq_219_grp, bank_013
	.equ	seq_219_pri, 100
	.equ	seq_219_rev, 0
	.equ	seq_219_mvl, 127
	.equ	seq_219_key, 0

	.section .rodata
	.global	seq_219
	.align	2

@*********************** Track 01 ***********************@

seq_219_0:
	.byte	KEYSH , seq_219_key+0
	.byte	TEMPO , 150/2
	.byte		VOICE , 18
	.byte		VOL   , 100*seq_219_mvl/mxv
	.byte		BENDR , 5
	.byte		BEND  , c_v+0
	.byte		N72   , Cs3 , v127
	.byte	W12
	.byte		BEND  , c_v+0
	.byte	W02
	.byte		        c_v-3
	.byte	W02
	.byte		VOL   , 97*seq_219_mvl/mxv
	.byte		BEND  , c_v-5
	.byte	W02
	.byte		        c_v-7
	.byte	W01
	.byte		VOL   , 92*seq_219_mvl/mxv
	.byte	W01
	.byte		BEND  , c_v-10
	.byte	W02
	.byte		VOL   , 88*seq_219_mvl/mxv
	.byte		BEND  , c_v-12
	.byte	W02
	.byte		        c_v-14
	.byte	W01
	.byte		VOL   , 83*seq_219_mvl/mxv
	.byte	W01
	.byte		BEND  , c_v-16
	.byte	W02
	.byte		VOL   , 78*seq_219_mvl/mxv
	.byte		BEND  , c_v-19
	.byte	W02
	.byte		        c_v-21
	.byte	W01
	.byte		VOL   , 74*seq_219_mvl/mxv
	.byte	W01
	.byte		BEND  , c_v-23
	.byte	W02
	.byte		VOL   , 69*seq_219_mvl/mxv
	.byte		BEND  , c_v-26
	.byte	W02
	.byte		        c_v-28
	.byte	W01
	.byte		VOL   , 64*seq_219_mvl/mxv
	.byte	W01
	.byte		BEND  , c_v-30
	.byte	W02
	.byte		VOL   , 59*seq_219_mvl/mxv
	.byte		BEND  , c_v-32
	.byte	W02
	.byte		        c_v-35
	.byte	W01
	.byte		VOL   , 55*seq_219_mvl/mxv
	.byte	W01
	.byte		BEND  , c_v-37
	.byte	W02
	.byte		VOL   , 50*seq_219_mvl/mxv
	.byte		BEND  , c_v-39
	.byte	W02
	.byte		        c_v-42
	.byte	W01
	.byte		VOL   , 45*seq_219_mvl/mxv
	.byte	W01
	.byte		BEND  , c_v-44
	.byte	W02
	.byte		VOL   , 40*seq_219_mvl/mxv
	.byte		BEND  , c_v-46
	.byte	W02
	.byte		        c_v-48
	.byte	W01
	.byte		VOL   , 36*seq_219_mvl/mxv
	.byte	W01
	.byte		BEND  , c_v-51
	.byte	W02
	.byte		VOL   , 31*seq_219_mvl/mxv
	.byte		BEND  , c_v-53
	.byte	W02
	.byte		        c_v-55
	.byte	W01
	.byte		VOL   , 26*seq_219_mvl/mxv
	.byte	W01
	.byte		BEND  , c_v-58
	.byte	W02
	.byte		VOL   , 22*seq_219_mvl/mxv
	.byte		BEND  , c_v-60
	.byte	W02
	.byte		        c_v-62
	.byte	W01
	.byte		VOL   , 17*seq_219_mvl/mxv
	.byte	W01
	.byte		BEND  , c_v-64
	.byte	W02
	.byte		VOL   , 12*seq_219_mvl/mxv
	.byte	W02
	.byte	FINE

@******************************************************@

	.align	2

seq_219:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	seq_219_pri	@ Priority
	.byte	seq_219_rev	@ Reverb

	.word	seq_219_grp

	.word	seq_219_0

	.end
