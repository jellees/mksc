@ File generated by m4a2s Song-Module
	.include "MPlayDef.s"

	.equ	seq_147_grp, bank_044
	.equ	seq_147_pri, 30
	.equ	seq_147_rev, 0
	.equ	seq_147_mvl, 127
	.equ	seq_147_key, 0

	.section .rodata
	.global	seq_147
	.align	2

@*********************** Track 01 ***********************@

seq_147_0:
	.byte	KEYSH , seq_147_key+0
	.byte	TEMPO , 150/2
	.byte		VOICE , 78
	.byte		VOL   , 37*seq_147_mvl/mxv
	.byte		N02   , Bn4 , v127
	.byte	W02
	.byte		        Cn5 , v120
	.byte	W02
	.byte		        Cs5 , v096
	.byte	W02
	.byte		        Dn5 , v092
	.byte	W02
	.byte		        Ds5 , v084
	.byte	W02
	.byte		        En5 , v080
	.byte	W02
	.byte		        Fn5 , v076
	.byte	W02
	.byte		        Fs5 , v072
	.byte	W02
	.byte		        Gn5 
	.byte	W02
	.byte		        Gs5 , v068
	.byte	W02
	.byte		        An5 
	.byte	W02
	.byte		        As5 , v064
	.byte	W02
	.byte		        Bn5 
	.byte	W24
	.byte	FINE

@*********************** Track 02 ***********************@

seq_147_1:
	.byte	KEYSH , seq_147_key+0
	.byte		VOICE , 79
	.byte		VOL   , 50*seq_147_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		N02   , En5 , v127
	.byte	W02
	.byte		        Fn5 , v120
	.byte	W02
	.byte		        Fs5 , v096
	.byte	W02
	.byte		        Gn5 , v092
	.byte	W02
	.byte		        Gs5 , v084
	.byte	W02
	.byte		        An5 , v080
	.byte	W02
	.byte		        As5 , v076
	.byte	W02
	.byte		        Bn5 , v072
	.byte	W02
	.byte		        Cn6 
	.byte	W02
	.byte		        Cs6 , v068
	.byte	W02
	.byte		        Dn6 
	.byte	W02
	.byte		        Ds6 , v064
	.byte	W01
	.byte	W01
	.byte		        En6 
	.byte	W23
	.byte	FINE

@******************************************************@

	.align	2

seq_147:
	.byte	2	@ NumTrks
	.byte	0	@ NumBlks
	.byte	seq_147_pri	@ Priority
	.byte	seq_147_rev	@ Reverb

	.word	seq_147_grp

	.word	seq_147_0
	.word	seq_147_1

	.end
