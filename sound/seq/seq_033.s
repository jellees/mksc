@ File generated by m4a2s Song-Module
	.include "MPlayDef.s"

	.equ	seq_033_grp, bank_027
	.equ	seq_033_pri, 0
	.equ	seq_033_rev, 0
	.equ	seq_033_mvl, 127
	.equ	seq_033_key, 0

	.section .rodata
	.global	seq_033
	.align	2

@*********************** Track 01 ***********************@

seq_033_0:
	.byte	KEYSH , seq_033_key+0
	.byte	TEMPO , 140/2
	.byte		VOICE , 81
	.byte		VOL   , 60*seq_033_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+0
	.byte		N03   , Fs4 , v120
	.byte	W06
	.byte		N05
	.byte	W12
	.byte		N04   , Gn4 
	.byte	W06
	.byte		N03   , Gs4 
	.byte	W12
	.byte		N36   , An4 
	.byte	W60
	.byte	FINE

@*********************** Track 02 ***********************@

seq_033_1:
	.byte	KEYSH , seq_033_key+0
	.byte		VOICE , 80
	.byte		VOL   , 73*seq_033_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+0
	.byte		N03   , An3 , v100
	.byte		N03   , Dn4 , v112
	.byte	W06
	.byte		N05   , An3 , v100
	.byte		N05   , Dn4 , v112
	.byte	W12
	.byte		N04   , As3 , v100
	.byte		N04   , Ds4 , v112
	.byte	W06
	.byte		N03   , Bn3 , v100
	.byte		N03   , En4 , v112
	.byte	W12
	.byte		N36   , Cn4 , v100
	.byte		N36   , Fn4 , v112
	.byte	W60
	.byte	FINE

@*********************** Track 03 ***********************@

seq_033_2:
	.byte	KEYSH , seq_033_key+0
	.byte		VOICE , 121
	.byte		VOL   , 53*seq_033_mvl/mxv
	.byte		PAN   , c_v+63
	.byte		BEND  , c_v+0
	.byte		N03   , Fs3 , v120
	.byte	W06
	.byte		N05
	.byte	W12
	.byte		N04   , Gn3 
	.byte	W06
	.byte		N03   , Gs3 
	.byte	W12
	.byte		N36   , An3 
	.byte	W60
	.byte	FINE

@*********************** Track 04 ***********************@

seq_033_3:
	.byte	KEYSH , seq_033_key+0
	.byte		VOICE , 122
	.byte		VOL   , 53*seq_033_mvl/mxv
	.byte		PAN   , c_v-64
	.byte		BEND  , c_v+0
	.byte		N03   , An2 , v120
	.byte	W06
	.byte		N05
	.byte	W12
	.byte		N04   , As2 
	.byte	W06
	.byte		N03   , Bn2 
	.byte	W12
	.byte		N36   , Cn3 
	.byte	W60
	.byte	FINE

@*********************** Track 05 ***********************@

seq_033_4:
	.byte	KEYSH , seq_033_key+0
	.byte		VOICE , 9
	.byte		VOL   , 36*seq_033_mvl/mxv
	.byte		PAN   , c_v-35
	.byte		BEND  , c_v+0
	.byte	W36
	.byte		N03   , Cn5 , v096
	.byte	W06
	.byte		        Fn5 , v084
	.byte	W06
	.byte		        Cn5 , v096
	.byte	W06
	.byte		        An5 , v112
	.byte	W03
	.byte		        As5 , v096
	.byte	W03
	.byte		        An5 , v116
	.byte	W03
	.byte		        As5 , v104
	.byte	W03
	.byte		        An5 , v108
	.byte	W03
	.byte		        As5 , v076
	.byte	W03
	.byte		        An5 , v100
	.byte	W03
	.byte		        As5 , v064
	.byte	W03
	.byte		        An5 , v072
	.byte	W03
	.byte		        As5 , v044
	.byte	W03
	.byte		        An5 
	.byte	W03
	.byte		        As5 , v028
	.byte	W09
	.byte	FINE

@*********************** Track 06 ***********************@

seq_033_5:
	.byte	KEYSH , seq_033_key+0
	.byte		VOICE , 34
	.byte		VOL   , 73*seq_033_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+0
	.byte		N03   , Dn1 , v120
	.byte	W06
	.byte		N03
	.byte	W12
	.byte		        Cs1 
	.byte	W06
	.byte		N03
	.byte	W12
	.byte		N36   , Cn1 
	.byte	W60
	.byte	FINE

@******************************************************@

	.align	2

seq_033:
	.byte	6	@ NumTrks
	.byte	0	@ NumBlks
	.byte	seq_033_pri	@ Priority
	.byte	seq_033_rev	@ Reverb

	.word	seq_033_grp

	.word	seq_033_0
	.word	seq_033_1
	.word	seq_033_2
	.word	seq_033_3
	.word	seq_033_4
	.word	seq_033_5

	.end
