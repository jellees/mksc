@ File generated by m4a2s Song-Module
	.include "MPlayDef.s"

	.equ	seq_266_grp, bank_013
	.equ	seq_266_pri, 100
	.equ	seq_266_rev, 0
	.equ	seq_266_mvl, 127
	.equ	seq_266_key, 0

	.section .rodata
	.global	seq_266
	.align	2

@*********************** Track 01 ***********************@

seq_266_0:
	.byte		VOL   , 86*seq_266_mvl/mxv
	.byte	KEYSH , seq_266_key+0
	.byte	TEMPO , 150/2
	.byte		VOICE , 26
	.byte		N92   , Cn3 , v127
	.byte	W24
	.byte	W24
	.byte	W24
	.byte	W24
	.byte	FINE

@******************************************************@

	.align	2

seq_266:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	seq_266_pri	@ Priority
	.byte	seq_266_rev	@ Reverb

	.word	seq_266_grp

	.word	seq_266_0

	.end
