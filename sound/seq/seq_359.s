@ File generated by m4a2s Song-Module
	.include "MPlayDef.s"

	.equ	seq_359_grp, bank_013
	.equ	seq_359_pri, 100
	.equ	seq_359_rev, 0
	.equ	seq_359_mvl, 127
	.equ	seq_359_key, 0

	.section .rodata
	.global	seq_359
	.align	2

@*********************** Track 01 ***********************@

seq_359_0:
	.byte	KEYSH , seq_359_key+0
	.byte	TEMPO , 150/2
	.byte		VOICE , 35
	.byte		VOL   , 95*seq_359_mvl/mxv
	.byte		BENDR , 8
	.byte		BEND  , c_v-32
	.byte		N24   , Gn3 , v127
	.byte	W03
	.byte		BEND  , c_v-22
	.byte	W03
	.byte		        c_v-4
	.byte	W03
	.byte		        c_v+20
	.byte	W03
	.byte		        c_v+32
	.byte	W03
	.byte		        c_v+29
	.byte	W03
	.byte		        c_v+21
	.byte	W03
	.byte		        c_v+8
	.byte	W03
	.byte		VOL   , 93*seq_359_mvl/mxv
	.byte		BEND  , c_v+3
	.byte	W03
	.byte		        c_v+0
	.byte		N84   , Fn3 
	.byte	W01
	.byte		VOL   , 89*seq_359_mvl/mxv
	.byte	W02
	.byte		BEND  , c_v-4
	.byte	W02
	.byte		VOL   , 86*seq_359_mvl/mxv
	.byte	W01
	.byte		BEND  , c_v-2
	.byte	W03
	.byte		VOL   , 82*seq_359_mvl/mxv
	.byte		BEND  , c_v+2
	.byte	W03
	.byte		        c_v+8
	.byte	W01
	.byte		VOL   , 78*seq_359_mvl/mxv
	.byte	W02
	.byte		BEND  , c_v+16
	.byte	W02
	.byte		VOL   , 74*seq_359_mvl/mxv
	.byte	W01
	.byte		BEND  , c_v+24
	.byte	W03
	.byte		VOL   , 71*seq_359_mvl/mxv
	.byte		BEND  , c_v+27
	.byte	W03
	.byte		        c_v+30
	.byte	W01
	.byte		VOL   , 67*seq_359_mvl/mxv
	.byte	W02
	.byte		BEND  , c_v+32
	.byte	W02
	.byte		VOL   , 63*seq_359_mvl/mxv
	.byte	W04
	.byte		        59*seq_359_mvl/mxv
	.byte		BEND  , c_v+29
	.byte	W03
	.byte		        c_v+27
	.byte	W01
	.byte		VOL   , 56*seq_359_mvl/mxv
	.byte	W02
	.byte		BEND  , c_v+25
	.byte	W02
	.byte		VOL   , 52*seq_359_mvl/mxv
	.byte	W01
	.byte		BEND  , c_v+21
	.byte	W03
	.byte		VOL   , 48*seq_359_mvl/mxv
	.byte		BEND  , c_v+16
	.byte	W03
	.byte		        c_v+12
	.byte	W01
	.byte		VOL   , 44*seq_359_mvl/mxv
	.byte	W02
	.byte		BEND  , c_v+7
	.byte	W02
	.byte		VOL   , 41*seq_359_mvl/mxv
	.byte	W01
	.byte		BEND  , c_v+3
	.byte	W03
	.byte		VOL   , 37*seq_359_mvl/mxv
	.byte		BEND  , c_v-2
	.byte	W03
	.byte		        c_v-7
	.byte	W01
	.byte		VOL   , 33*seq_359_mvl/mxv
	.byte	W02
	.byte		BEND  , c_v-12
	.byte	W02
	.byte		VOL   , 29*seq_359_mvl/mxv
	.byte	W01
	.byte		BEND  , c_v-18
	.byte	W03
	.byte		VOL   , 26*seq_359_mvl/mxv
	.byte		BEND  , c_v-25
	.byte	W03
	.byte		        c_v-33
	.byte	W01
	.byte		VOL   , 22*seq_359_mvl/mxv
	.byte	W02
	.byte		BEND  , c_v-41
	.byte	W02
	.byte		VOL   , 18*seq_359_mvl/mxv
	.byte	W01
	.byte		BEND  , c_v-48
	.byte	W03
	.byte		VOL   , 14*seq_359_mvl/mxv
	.byte		BEND  , c_v-54
	.byte	W12
	.byte	FINE

@******************************************************@

	.align	2

seq_359:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	seq_359_pri	@ Priority
	.byte	seq_359_rev	@ Reverb

	.word	seq_359_grp

	.word	seq_359_0

	.end
