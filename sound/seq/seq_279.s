@ File generated by m4a2s Song-Module
	.include "MPlayDef.s"

	.equ	seq_279_grp, bank_013
	.equ	seq_279_pri, 100
	.equ	seq_279_rev, 0
	.equ	seq_279_mvl, 127
	.equ	seq_279_key, 0

	.section .rodata
	.global	seq_279
	.align	2

@*********************** Track 01 ***********************@

seq_279_0:
	.byte	KEYSH , seq_279_key+0
	.byte	TEMPO , 150/2
	.byte		VOICE , 35
	.byte		VOL   , 105*seq_279_mvl/mxv
	.byte		BENDR , 8
	.byte		BEND  , c_v+0
	.byte		N32   , Cs3 , v127
	.byte	W12
	.byte		BEND  , c_v+0
	.byte	W03
	.byte		        c_v-2
	.byte	W01
	.byte		VOL   , 103*seq_279_mvl/mxv
	.byte	W02
	.byte		BEND  , c_v-4
	.byte	W02
	.byte		VOL   , 99*seq_279_mvl/mxv
	.byte	W01
	.byte		BEND  , c_v-6
	.byte	W03
	.byte		VOL   , 95*seq_279_mvl/mxv
	.byte		BEND  , c_v-8
	.byte	W03
	.byte		        c_v-10
	.byte	W01
	.byte		VOL   , 90*seq_279_mvl/mxv
	.byte	W02
	.byte		BEND  , c_v-12
	.byte	W02
	.byte		VOL   , 86*seq_279_mvl/mxv
	.byte	W01
	.byte		BEND  , c_v-14
	.byte	W03
	.byte		VOL   , 82*seq_279_mvl/mxv
	.byte		BEND  , c_v-16
	.byte		N84   , Bn2 
	.byte	W03
	.byte		BEND  , c_v-18
	.byte	W01
	.byte		VOL   , 78*seq_279_mvl/mxv
	.byte	W02
	.byte		BEND  , c_v-20
	.byte	W02
	.byte		VOL   , 74*seq_279_mvl/mxv
	.byte	W01
	.byte		BEND  , c_v-22
	.byte	W03
	.byte		VOL   , 70*seq_279_mvl/mxv
	.byte		BEND  , c_v-24
	.byte	W03
	.byte		        c_v-26
	.byte	W01
	.byte		VOL   , 66*seq_279_mvl/mxv
	.byte	W02
	.byte		BEND  , c_v-28
	.byte	W02
	.byte		VOL   , 62*seq_279_mvl/mxv
	.byte	W01
	.byte		BEND  , c_v-30
	.byte	W03
	.byte		VOL   , 57*seq_279_mvl/mxv
	.byte		BEND  , c_v-32
	.byte	W03
	.byte		        c_v-34
	.byte	W01
	.byte		VOL   , 53*seq_279_mvl/mxv
	.byte	W02
	.byte		BEND  , c_v-36
	.byte	W02
	.byte		VOL   , 49*seq_279_mvl/mxv
	.byte	W01
	.byte		BEND  , c_v-38
	.byte	W03
	.byte		VOL   , 45*seq_279_mvl/mxv
	.byte		BEND  , c_v-40
	.byte	W03
	.byte		        c_v-42
	.byte	W01
	.byte		VOL   , 41*seq_279_mvl/mxv
	.byte	W02
	.byte		BEND  , c_v-44
	.byte	W02
	.byte		VOL   , 37*seq_279_mvl/mxv
	.byte	W01
	.byte		BEND  , c_v-46
	.byte	W03
	.byte		VOL   , 33*seq_279_mvl/mxv
	.byte		BEND  , c_v-48
	.byte	W03
	.byte		        c_v-50
	.byte	W01
	.byte		VOL   , 28*seq_279_mvl/mxv
	.byte	W02
	.byte		BEND  , c_v-52
	.byte	W02
	.byte		VOL   , 24*seq_279_mvl/mxv
	.byte	W01
	.byte		BEND  , c_v-54
	.byte	W03
	.byte		VOL   , 20*seq_279_mvl/mxv
	.byte		BEND  , c_v-56
	.byte	W03
	.byte		        c_v-58
	.byte	W01
	.byte		VOL   , 16*seq_279_mvl/mxv
	.byte	W02
	.byte		BEND  , c_v-60
	.byte	W02
	.byte		VOL   , 12*seq_279_mvl/mxv
	.byte	W01
	.byte		BEND  , c_v-62
	.byte	W03
	.byte		VOL   , 8*seq_279_mvl/mxv
	.byte		BEND  , c_v-64
	.byte	W04
	.byte		VOL   , 4*seq_279_mvl/mxv
	.byte	W04
	.byte		        0*seq_279_mvl/mxv
	.byte	W04
	.byte	FINE

@******************************************************@

	.align	2

seq_279:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	seq_279_pri	@ Priority
	.byte	seq_279_rev	@ Reverb

	.word	seq_279_grp

	.word	seq_279_0

	.end
