@ File generated by m4a2s Song-Module
	.include "MPlayDef.s"

	.equ	seq_204_grp, bank_013
	.equ	seq_204_pri, 100
	.equ	seq_204_rev, 0
	.equ	seq_204_mvl, 127
	.equ	seq_204_key, 0

	.section .rodata
	.global	seq_204
	.align	2

@*********************** Track 01 ***********************@

seq_204_0:
	.byte	KEYSH , seq_204_key+0
	.byte	TEMPO , 150/2
	.byte		VOICE , 4
	.byte		VOL   , 127*seq_204_mvl/mxv
	.byte		BENDR , 4
	.byte		BEND  , c_v+0
	.byte		TIE   , Cs3 , v127
	.byte	W12
	.byte		BEND  , c_v+0
	.byte	W03
	.byte		        c_v-2
	.byte	W03
	.byte		        c_v-4
	.byte	W03
	.byte		        c_v-6
	.byte	W03
	.byte		        c_v-8
	.byte	W03
	.byte		        c_v-9
	.byte	W03
	.byte		        c_v-11
	.byte	W02
	.byte		VOL   , 125*seq_204_mvl/mxv
	.byte	W01
	.byte		BEND  , c_v-13
	.byte	W03
	.byte		VOL   , 120*seq_204_mvl/mxv
	.byte		BEND  , c_v-15
	.byte	W03
	.byte		        c_v-16
	.byte	W01
	.byte		VOL   , 115*seq_204_mvl/mxv
	.byte	W02
	.byte		BEND  , c_v-18
	.byte	W02
	.byte		VOL   , 110*seq_204_mvl/mxv
	.byte	W01
	.byte		BEND  , c_v-20
	.byte	W03
	.byte		VOL   , 105*seq_204_mvl/mxv
	.byte		BEND  , c_v-22
	.byte	W03
	.byte		        c_v-24
	.byte	W01
	.byte		VOL   , 100*seq_204_mvl/mxv
	.byte	W02
	.byte		BEND  , c_v-25
	.byte	W02
	.byte		VOL   , 95*seq_204_mvl/mxv
	.byte	W01
	.byte		BEND  , c_v-27
	.byte	W03
	.byte		VOL   , 90*seq_204_mvl/mxv
	.byte		BEND  , c_v-29
	.byte	W03
	.byte		        c_v-31
	.byte	W01
	.byte		VOL   , 85*seq_204_mvl/mxv
	.byte	W02
	.byte		BEND  , c_v-32
	.byte	W02
	.byte		VOL   , 80*seq_204_mvl/mxv
	.byte	W01
	.byte		BEND  , c_v-34
	.byte	W03
	.byte		VOL   , 75*seq_204_mvl/mxv
	.byte		BEND  , c_v-36
	.byte	W03
	.byte		        c_v-38
	.byte	W01
	.byte		VOL   , 70*seq_204_mvl/mxv
	.byte	W02
	.byte		BEND  , c_v-40
	.byte	W02
	.byte		VOL   , 65*seq_204_mvl/mxv
	.byte	W01
	.byte		BEND  , c_v-41
	.byte	W03
	.byte		VOL   , 60*seq_204_mvl/mxv
	.byte		BEND  , c_v-43
	.byte	W03
	.byte		        c_v-45
	.byte	W01
	.byte		VOL   , 55*seq_204_mvl/mxv
	.byte	W02
	.byte		BEND  , c_v-47
	.byte	W02
	.byte		VOL   , 50*seq_204_mvl/mxv
	.byte	W01
	.byte		BEND  , c_v-48
	.byte	W03
	.byte		VOL   , 45*seq_204_mvl/mxv
	.byte		BEND  , c_v-50
	.byte	W03
	.byte		        c_v-52
	.byte	W01
	.byte		VOL   , 40*seq_204_mvl/mxv
	.byte	W02
	.byte		BEND  , c_v-54
	.byte	W02
	.byte		VOL   , 35*seq_204_mvl/mxv
	.byte	W01
	.byte		BEND  , c_v-56
	.byte	W03
	.byte		VOL   , 30*seq_204_mvl/mxv
	.byte		BEND  , c_v-57
	.byte	W03
	.byte		        c_v-59
	.byte	W01
	.byte		VOL   , 25*seq_204_mvl/mxv
	.byte	W02
	.byte		BEND  , c_v-61
	.byte	W02
	.byte		VOL   , 20*seq_204_mvl/mxv
	.byte	W01
	.byte		BEND  , c_v-63
	.byte	W03
	.byte		VOL   , 10*seq_204_mvl/mxv
	.byte		BEND  , c_v-64
	.byte	W12
	.byte		EOT
	.byte	W12
	.byte	FINE

@******************************************************@

	.align	2

seq_204:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	seq_204_pri	@ Priority
	.byte	seq_204_rev	@ Reverb

	.word	seq_204_grp

	.word	seq_204_0

	.end