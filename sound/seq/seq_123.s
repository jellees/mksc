@ File generated by m4a2s Song-Module
	.include "MPlayDef.s"

	.equ	seq_123_grp, bank_044
	.equ	seq_123_pri, 30
	.equ	seq_123_rev, 0
	.equ	seq_123_mvl, 127
	.equ	seq_123_key, 0

	.section .rodata
	.global	seq_123
	.align	2

@*********************** Track 01 ***********************@

seq_123_0:
	.byte	KEYSH , seq_123_key+0
	.byte	TEMPO , 150/2
	.byte		VOICE , 65
	.byte		VOL   , 127*seq_123_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		N10   , Cn3 , v127
	.byte	W10
	.byte		VOICE , 47
	.byte		BENDR , 12
	.byte		BEND  , c_v+0
	.byte		N36   , Cn6 , v032
	.byte	W02
	.byte		BEND  , c_v-4
	.byte	W02
	.byte		        c_v-7
	.byte	W01
	.byte		VOL   , 120*seq_123_mvl/mxv
	.byte	W01
	.byte		BEND  , c_v-11
	.byte	W02
	.byte		        c_v-14
	.byte	W01
	.byte		VOL   , 107*seq_123_mvl/mxv
	.byte	W01
	.byte		BEND  , c_v-17
	.byte	W02
	.byte		        c_v-21
	.byte	W01
	.byte		VOL   , 94*seq_123_mvl/mxv
	.byte	W01
	.byte		BEND  , c_v-24
	.byte	W02
	.byte		        c_v-27
	.byte	W01
	.byte		VOL   , 81*seq_123_mvl/mxv
	.byte	W01
	.byte		BEND  , c_v-31
	.byte	W02
	.byte		        c_v-34
	.byte	W01
	.byte		VOL   , 69*seq_123_mvl/mxv
	.byte	W01
	.byte		BEND  , c_v-38
	.byte	W02
	.byte		        c_v-41
	.byte	W01
	.byte		VOL   , 56*seq_123_mvl/mxv
	.byte	W01
	.byte		BEND  , c_v-44
	.byte	W02
	.byte		        c_v-48
	.byte	W01
	.byte		VOL   , 43*seq_123_mvl/mxv
	.byte	W01
	.byte		BEND  , c_v-51
	.byte	W02
	.byte		        c_v-54
	.byte	W01
	.byte		VOL   , 30*seq_123_mvl/mxv
	.byte	W01
	.byte		BEND  , c_v-58
	.byte	W02
	.byte		        c_v-61
	.byte	W01
	.byte		VOL   , 17*seq_123_mvl/mxv
	.byte	W01
	.byte	FINE

@******************************************************@

	.align	2

seq_123:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	seq_123_pri	@ Priority
	.byte	seq_123_rev	@ Reverb

	.word	seq_123_grp

	.word	seq_123_0

	.end
