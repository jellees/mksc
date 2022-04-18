@ File generated by m4a2s Song-Module
	.include "MPlayDef.s"

	.equ	seq_185_grp, bank_044
	.equ	seq_185_pri, 60
	.equ	seq_185_rev, 0
	.equ	seq_185_mvl, 127
	.equ	seq_185_key, 0

	.section .rodata
	.global	seq_185
	.align	2

@*********************** Track 01 ***********************@

seq_185_0:
	.byte	KEYSH , seq_185_key+0
	.byte	TEMPO , 150/2
	.byte		VOICE , 13
	.byte		BENDR , 2
	.byte		VOL   , 16*seq_185_mvl/mxv
	.byte		BEND  , c_v-36
	.byte		N40   , Dn4 , v127
	.byte	W01
	.byte		VOL   , 29*seq_185_mvl/mxv
	.byte		BEND  , c_v-35
	.byte	W01
	.byte		VOL   , 43*seq_185_mvl/mxv
	.byte		BEND  , c_v-33
	.byte	W01
	.byte		VOL   , 57*seq_185_mvl/mxv
	.byte		BEND  , c_v-31
	.byte	W01
	.byte		VOL   , 71*seq_185_mvl/mxv
	.byte		BEND  , c_v-29
	.byte	W01
	.byte		VOL   , 85*seq_185_mvl/mxv
	.byte		BEND  , c_v-28
	.byte	W01
	.byte		VOL   , 99*seq_185_mvl/mxv
	.byte		BEND  , c_v-26
	.byte	W01
	.byte		VOL   , 113*seq_185_mvl/mxv
	.byte		BEND  , c_v-24
	.byte	W01
	.byte		VOL   , 127*seq_185_mvl/mxv
	.byte		BEND  , c_v-22
	.byte	W01
	.byte		        c_v-20
	.byte	W01
	.byte		        c_v+38
	.byte	W01
	.byte		        c_v+37
	.byte	W01
	.byte		VOL   , 126*seq_185_mvl/mxv
	.byte		BEND  , c_v+36
	.byte	W01
	.byte		VOL   , 121*seq_185_mvl/mxv
	.byte		BEND  , c_v+36
	.byte	W01
	.byte		VOL   , 116*seq_185_mvl/mxv
	.byte		BEND  , c_v+35
	.byte	W01
	.byte		VOL   , 112*seq_185_mvl/mxv
	.byte		BEND  , c_v+35
	.byte	W01
	.byte		VOL   , 107*seq_185_mvl/mxv
	.byte		BEND  , c_v+34
	.byte	W01
	.byte		VOL   , 102*seq_185_mvl/mxv
	.byte		BEND  , c_v+34
	.byte	W01
	.byte		VOL   , 98*seq_185_mvl/mxv
	.byte		BEND  , c_v+33
	.byte	W01
	.byte		VOL   , 93*seq_185_mvl/mxv
	.byte		BEND  , c_v+33
	.byte	W01
	.byte		VOL   , 88*seq_185_mvl/mxv
	.byte		BEND  , c_v+32
	.byte	W01
	.byte		VOL   , 84*seq_185_mvl/mxv
	.byte		BEND  , c_v+31
	.byte	W01
	.byte		VOL   , 79*seq_185_mvl/mxv
	.byte		BEND  , c_v+31
	.byte	W01
	.byte		VOL   , 74*seq_185_mvl/mxv
	.byte		BEND  , c_v+30
	.byte	W01
	.byte		VOL   , 70*seq_185_mvl/mxv
	.byte		BEND  , c_v+30
	.byte	W01
	.byte		VOL   , 65*seq_185_mvl/mxv
	.byte		BEND  , c_v+29
	.byte	W01
	.byte		VOL   , 60*seq_185_mvl/mxv
	.byte		BEND  , c_v+29
	.byte	W01
	.byte		VOL   , 56*seq_185_mvl/mxv
	.byte		BEND  , c_v+28
	.byte	W01
	.byte		VOL   , 51*seq_185_mvl/mxv
	.byte		BEND  , c_v+28
	.byte	W01
	.byte		VOL   , 46*seq_185_mvl/mxv
	.byte		BEND  , c_v+27
	.byte	W01
	.byte		VOL   , 42*seq_185_mvl/mxv
	.byte		BEND  , c_v+26
	.byte	W01
	.byte		VOL   , 37*seq_185_mvl/mxv
	.byte		BEND  , c_v+26
	.byte	W01
	.byte		VOL   , 32*seq_185_mvl/mxv
	.byte		BEND  , c_v+25
	.byte	W01
	.byte		VOL   , 28*seq_185_mvl/mxv
	.byte		BEND  , c_v+25
	.byte	W01
	.byte		VOL   , 23*seq_185_mvl/mxv
	.byte		BEND  , c_v+24
	.byte	W01
	.byte		VOL   , 18*seq_185_mvl/mxv
	.byte		BEND  , c_v+24
	.byte	W01
	.byte		VOL   , 14*seq_185_mvl/mxv
	.byte		BEND  , c_v+23
	.byte	W01
	.byte		VOL   , 9*seq_185_mvl/mxv
	.byte		BEND  , c_v+23
	.byte	W01
	.byte		VOL   , 4*seq_185_mvl/mxv
	.byte		BEND  , c_v+22
	.byte	W01
	.byte		VOL   , 0*seq_185_mvl/mxv
	.byte		BEND  , c_v+22
	.byte	W09
	.byte	FINE

@******************************************************@

	.align	2

seq_185:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	seq_185_pri	@ Priority
	.byte	seq_185_rev	@ Reverb

	.word	seq_185_grp

	.word	seq_185_0

	.end