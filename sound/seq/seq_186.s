@ File generated by m4a2s Song-Module
	.include "MPlayDef.s"

	.equ	seq_186_grp, bank_044
	.equ	seq_186_pri, 60
	.equ	seq_186_rev, 0
	.equ	seq_186_mvl, 127
	.equ	seq_186_key, 0

	.section .rodata
	.global	seq_186
	.align	2

@*********************** Track 01 ***********************@

seq_186_0:
	.byte	KEYSH , seq_186_key+0
	.byte	TEMPO , 150/2
	.byte		VOICE , 15
	.byte		BENDR , 2
	.byte		VOL   , 70*seq_186_mvl/mxv
	.byte		BEND  , c_v+38
	.byte		N30   , Cn4 , v127
	.byte	W01
	.byte		VOL   , 97*seq_186_mvl/mxv
	.byte		BEND  , c_v+37
	.byte	W01
	.byte		VOL   , 116*seq_186_mvl/mxv
	.byte		BEND  , c_v+36
	.byte	W01
	.byte		VOL   , 116*seq_186_mvl/mxv
	.byte		BEND  , c_v+36
	.byte	W01
	.byte		VOL   , 111*seq_186_mvl/mxv
	.byte		BEND  , c_v+35
	.byte	W01
	.byte		VOL   , 106*seq_186_mvl/mxv
	.byte		BEND  , c_v+35
	.byte	W01
	.byte		VOL   , 103*seq_186_mvl/mxv
	.byte		BEND  , c_v+34
	.byte	W01
	.byte		VOL   , 98*seq_186_mvl/mxv
	.byte		BEND  , c_v+34
	.byte	W01
	.byte		VOL   , 93*seq_186_mvl/mxv
	.byte		BEND  , c_v+33
	.byte	W01
	.byte		VOL   , 90*seq_186_mvl/mxv
	.byte		BEND  , c_v+33
	.byte	W01
	.byte		VOL   , 85*seq_186_mvl/mxv
	.byte		BEND  , c_v+32
	.byte	W01
	.byte		VOL   , 81*seq_186_mvl/mxv
	.byte		BEND  , c_v+31
	.byte	W01
	.byte		VOL   , 77*seq_186_mvl/mxv
	.byte		BEND  , c_v+31
	.byte	W01
	.byte		VOL   , 72*seq_186_mvl/mxv
	.byte		BEND  , c_v+30
	.byte	W01
	.byte		VOL   , 69*seq_186_mvl/mxv
	.byte		BEND  , c_v+30
	.byte	W01
	.byte		VOL   , 64*seq_186_mvl/mxv
	.byte		BEND  , c_v+29
	.byte	W01
	.byte		VOL   , 60*seq_186_mvl/mxv
	.byte		BEND  , c_v+29
	.byte	W01
	.byte		VOL   , 56*seq_186_mvl/mxv
	.byte		BEND  , c_v+28
	.byte	W01
	.byte		VOL   , 51*seq_186_mvl/mxv
	.byte		BEND  , c_v+28
	.byte	W01
	.byte		VOL   , 47*seq_186_mvl/mxv
	.byte		BEND  , c_v+27
	.byte	W01
	.byte		VOL   , 43*seq_186_mvl/mxv
	.byte		BEND  , c_v+26
	.byte	W01
	.byte		VOL   , 39*seq_186_mvl/mxv
	.byte		BEND  , c_v+26
	.byte	W01
	.byte		VOL   , 35*seq_186_mvl/mxv
	.byte		BEND  , c_v+25
	.byte	W01
	.byte		VOL   , 30*seq_186_mvl/mxv
	.byte		BEND  , c_v+25
	.byte	W01
	.byte		VOL   , 26*seq_186_mvl/mxv
	.byte		BEND  , c_v+24
	.byte	W01
	.byte		VOL   , 22*seq_186_mvl/mxv
	.byte		BEND  , c_v+24
	.byte	W01
	.byte		VOL   , 17*seq_186_mvl/mxv
	.byte		BEND  , c_v+23
	.byte	W01
	.byte		VOL   , 13*seq_186_mvl/mxv
	.byte		BEND  , c_v+23
	.byte	W01
	.byte		VOL   , 9*seq_186_mvl/mxv
	.byte		BEND  , c_v+22
	.byte	W01
	.byte		VOL   , 5*seq_186_mvl/mxv
	.byte		BEND  , c_v+22
	.byte	W19
	.byte	FINE

@******************************************************@

	.align	2

seq_186:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	seq_186_pri	@ Priority
	.byte	seq_186_rev	@ Reverb

	.word	seq_186_grp

	.word	seq_186_0

	.end
