@ File generated by m4a2s Song-Module
	.include "MPlayDef.s"

	.equ	song_horn_luigi_grp, bank_044
	.equ	song_horn_luigi_pri, 10
	.equ	song_horn_luigi_rev, 0
	.equ	song_horn_luigi_mvl, 127
	.equ	song_horn_luigi_key, 0

	.section .rodata
	.global	song_horn_luigi
	.align	2

@*********************** Track 01 ***********************@

song_horn_luigi_0:
	.byte		VOL   , 105*song_horn_luigi_mvl/mxv
	.byte	KEYSH , song_horn_luigi_key+0
	.byte	TEMPO , 150/2
	.byte		VOICE , 21
	.byte		N15   , Cn3 , v127
	.byte	W24
	.byte	FINE

@******************************************************@

	.align	2

song_horn_luigi:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song_horn_luigi_pri	@ Priority
	.byte	song_horn_luigi_rev	@ Reverb

	.word	song_horn_luigi_grp

	.word	song_horn_luigi_0

	.end
