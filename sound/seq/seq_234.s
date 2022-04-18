@ File generated by m4a2s Song-Module
	.include "MPlayDef.s"

	.equ	seq_234_grp, bank_013
	.equ	seq_234_pri, 100
	.equ	seq_234_rev, 0
	.equ	seq_234_mvl, 127
	.equ	seq_234_key, 0

	.section .rodata
	.global	seq_234
	.align	2

@*********************** Track 01 ***********************@

seq_234_0:
	.byte	KEYSH , seq_234_key+0
	.byte	TEMPO , 150/2
	.byte		VOICE , 30
	.byte		VOL   , 127*seq_234_mvl/mxv
	.byte		BENDR , 10
	.byte		BEND  , c_v+0
	.byte		N05   , Dn3 , v127
	.byte	W04
	.byte		VOL   , 125*seq_234_mvl/mxv
	.byte	W02
	.byte		N05   , As2 
	.byte	W02
	.byte		VOL   , 120*seq_234_mvl/mxv
	.byte		BEND  , c_v-2
	.byte	W04
	.byte		VOL   , 115*seq_234_mvl/mxv
	.byte		BEND  , c_v-4
	.byte		N18   , Cs3 
	.byte	W04
	.byte		VOL   , 110*seq_234_mvl/mxv
	.byte		BEND  , c_v-6
	.byte	W04
	.byte		VOL   , 105*seq_234_mvl/mxv
	.byte		BEND  , c_v-8
	.byte	W04
	.byte		VOL   , 100*seq_234_mvl/mxv
	.byte		BEND  , c_v-10
	.byte	W04
	.byte		VOL   , 95*seq_234_mvl/mxv
	.byte		BEND  , c_v-12
	.byte	W03
	.byte		N07   , Bn2 
	.byte	W01
	.byte		VOL   , 90*seq_234_mvl/mxv
	.byte		BEND  , c_v-14
	.byte	W04
	.byte		VOL   , 85*seq_234_mvl/mxv
	.byte		BEND  , c_v-16
	.byte	W03
	.byte		N56   , As2 
	.byte	W01
	.byte		VOL   , 80*seq_234_mvl/mxv
	.byte		BEND  , c_v-18
	.byte	W04
	.byte		VOL   , 75*seq_234_mvl/mxv
	.byte		BEND  , c_v-20
	.byte	W04
	.byte		VOL   , 70*seq_234_mvl/mxv
	.byte		BEND  , c_v-22
	.byte	W04
	.byte		VOL   , 65*seq_234_mvl/mxv
	.byte		BEND  , c_v-24
	.byte	W04
	.byte		VOL   , 60*seq_234_mvl/mxv
	.byte		BEND  , c_v-26
	.byte	W04
	.byte		VOL   , 55*seq_234_mvl/mxv
	.byte		BEND  , c_v-28
	.byte	W04
	.byte		VOL   , 50*seq_234_mvl/mxv
	.byte		BEND  , c_v-30
	.byte	W04
	.byte		VOL   , 45*seq_234_mvl/mxv
	.byte		BEND  , c_v-32
	.byte	W04
	.byte		VOL   , 40*seq_234_mvl/mxv
	.byte		BEND  , c_v-34
	.byte	W04
	.byte		VOL   , 35*seq_234_mvl/mxv
	.byte		BEND  , c_v-36
	.byte	W04
	.byte		VOL   , 30*seq_234_mvl/mxv
	.byte		BEND  , c_v-38
	.byte	W04
	.byte		VOL   , 25*seq_234_mvl/mxv
	.byte		BEND  , c_v-40
	.byte	W04
	.byte		VOL   , 20*seq_234_mvl/mxv
	.byte		BEND  , c_v-42
	.byte	W04
	.byte		VOL   , 15*seq_234_mvl/mxv
	.byte		BEND  , c_v-44
	.byte	W04
	.byte	FINE

@******************************************************@

	.align	2

seq_234:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	seq_234_pri	@ Priority
	.byte	seq_234_rev	@ Reverb

	.word	seq_234_grp

	.word	seq_234_0

	.end