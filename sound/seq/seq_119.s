@ File generated by m4a2s Song-Module
	.include "MPlayDef.s"

	.equ	seq_119_grp, bank_044
	.equ	seq_119_pri, 30
	.equ	seq_119_rev, 0
	.equ	seq_119_mvl, 127
	.equ	seq_119_key, 0

	.section .rodata
	.global	seq_119
	.align	2

@*********************** Track 01 ***********************@

seq_119_0:
	.byte		VOL   , 127*seq_119_mvl/mxv
	.byte	KEYSH , seq_119_key+0
	.byte	TEMPO , 150/2
	.byte		VOICE , 120
	.byte		BENDR , 24
	.byte		BEND  , c_v+0
	.byte		N72   , An5 , v127
	.byte	W02
	.byte		BEND  , c_v-2
	.byte	W02
	.byte		        c_v-4
	.byte	W02
	.byte		        c_v-6
	.byte	W02
	.byte		        c_v-8
	.byte	W02
	.byte		        c_v-10
	.byte	W02
	.byte		        c_v-11
	.byte	W02
	.byte		        c_v-13
	.byte	W02
	.byte		        c_v-15
	.byte	W02
	.byte		        c_v-17
	.byte	W02
	.byte		        c_v-19
	.byte	W02
	.byte		        c_v-21
	.byte	W02
	.byte		        c_v-22
	.byte	W02
	.byte		        c_v-24
	.byte	W02
	.byte		        c_v-26
	.byte	W02
	.byte		        c_v-28
	.byte	W02
	.byte		        c_v-30
	.byte	W02
	.byte		        c_v-32
	.byte	W02
	.byte		        c_v-33
	.byte	W02
	.byte		        c_v-35
	.byte	W02
	.byte		        c_v-37
	.byte	W02
	.byte		        c_v-39
	.byte	W02
	.byte		        c_v-41
	.byte	W02
	.byte		        c_v-43
	.byte	W02
	.byte		        c_v-44
	.byte	W02
	.byte		        c_v-46
	.byte	W02
	.byte		        c_v-48
	.byte	W02
	.byte		        c_v-50
	.byte	W02
	.byte		        c_v-52
	.byte	W02
	.byte		        c_v-53
	.byte	W02
	.byte		        c_v-55
	.byte	W02
	.byte		        c_v-57
	.byte	W02
	.byte		        c_v-59
	.byte	W02
	.byte		        c_v-61
	.byte	W02
	.byte		        c_v-63
	.byte	W02
	.byte		        c_v-64
	.byte	W24
	.byte	W02
	.byte	FINE

@******************************************************@

	.align	2

seq_119:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	seq_119_pri	@ Priority
	.byte	seq_119_rev	@ Reverb

	.word	seq_119_grp

	.word	seq_119_0

	.end