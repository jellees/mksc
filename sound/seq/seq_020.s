@ File generated by m4a2s Song-Module
	.include "MPlayDef.s"

	.equ	seq_020_grp, bank_013
	.equ	seq_020_pri, 0
	.equ	seq_020_rev, 148
	.equ	seq_020_mvl, 127
	.equ	seq_020_key, 0

	.section .rodata
	.global	seq_020
	.align	2

@*********************** Track 01 ***********************@

seq_020_0:
	.byte	KEYSH , seq_020_key+0
	.byte	TEMPO , 150/2
	.byte		VOICE , 81
	.byte		VOL   , 95*seq_020_mvl/mxv
	.byte		MOD   , 0
	.byte	W01
	.byte		N01   , Gn2 , v044
	.byte		N01   , En3 
	.byte	W02
	.byte		        An2 , v048
	.byte		N01   , Fn3 
	.byte	W01
	.byte		        Bn2 , v052
	.byte		N01   , Gn3 
	.byte	W02
	.byte		        Cn3 , v060
	.byte		N01   , An3 
	.byte	W01
	.byte		        Gn2 , v072
	.byte		N01   , Dn3 
	.byte		N01   , Bn3 
	.byte	W02
	.byte		        An2 , v084
	.byte		N01   , En3 
	.byte		N01   , Cn4 
	.byte	W01
	.byte		        Bn2 , v100
	.byte		N01   , Fn3 
	.byte		N01   , Dn4 
	.byte	W02
	.byte		N06   , Cn3 
	.byte		N06   , Gn3 
	.byte		N06   , En4 
	.byte	W13
	.byte		N05   , Gn3 
	.byte		N05   , En4 
	.byte		N05   , Cn5 
	.byte	W08
	.byte		N11   , Gn3 
	.byte		N11   , En4 
	.byte		N11   , Cn5 
	.byte	W11
	.byte		N01   , En3 , v092
	.byte		N01   , Cn4 
	.byte		N01   , Gn4 
	.byte	W01
	.byte		        Cn3 , v084
	.byte		N01   , Gn3 
	.byte		N01   , En4 
	.byte	W01
	.byte		        Gn2 , v060
	.byte		N01   , En3 
	.byte		N01   , Cn4 
	.byte	W48
	.byte	W02
	.byte	FINE

@*********************** Track 02 ***********************@

seq_020_1:
	.byte	KEYSH , seq_020_key+0
	.byte		VOICE , 80
	.byte		VOL   , 110*seq_020_mvl/mxv
	.byte		MOD   , 0
	.byte	W04
	.byte		BENDR , 12
	.byte		BEND  , c_v+0
	.byte	W02
	.byte		        c_v-64
	.byte		N18   , Cn2 , v127
	.byte	W03
	.byte		BEND  , c_v-62
	.byte	W02
	.byte		        c_v-59
	.byte	W02
	.byte		        c_v-55
	.byte	W02
	.byte		        c_v-49
	.byte	W02
	.byte		        c_v-43
	.byte	W02
	.byte		        c_v-35
	.byte	W02
	.byte		        c_v-26
	.byte	W02
	.byte		        c_v-16
	.byte	W01
	.byte		        c_v+0
	.byte		N06
	.byte	W08
	.byte		N10
	.byte	W64
	.byte	FINE

@*********************** Track 03 ***********************@

seq_020_2:
	.byte	KEYSH , seq_020_key+0
	.byte		VOICE , 127
	.byte		VOL   , 95*seq_020_mvl/mxv
	.byte		N04   , Dn1 , v092
	.byte	W04
	.byte		        Dn1 , v072
	.byte	W04
	.byte		        Dn1 , v088
	.byte	W04
	.byte		N12   , Dn1 , v112
	.byte	W12
	.byte		N08   , An2 , v100
	.byte	W08
	.byte		N40   , An2 , v116
	.byte	W64
	.byte	FINE

@******************************************************@

	.align	2

seq_020:
	.byte	3	@ NumTrks
	.byte	0	@ NumBlks
	.byte	seq_020_pri	@ Priority
	.byte	seq_020_rev	@ Reverb

	.word	seq_020_grp

	.word	seq_020_0
	.word	seq_020_1
	.word	seq_020_2

	.end
