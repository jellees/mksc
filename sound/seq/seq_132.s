@ File generated by m4a2s Song-Module
	.include "MPlayDef.s"

	.equ	seq_132_grp, bank_044
	.equ	seq_132_pri, 20
	.equ	seq_132_rev, 0
	.equ	seq_132_mvl, 127
	.equ	seq_132_key, 0

	.section .rodata
	.global	seq_132
	.align	2

@*********************** Track 01 ***********************@

seq_132_0:
	.byte		VOL   , 80*seq_132_mvl/mxv
	.byte	KEYSH , seq_132_key+0
	.byte	TEMPO , 150/2
	.byte		VOICE , 68
	.byte		N72   , Cn3 , v127
	.byte	W72
	.byte	FINE

@******************************************************@

	.align	2

seq_132:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	seq_132_pri	@ Priority
	.byte	seq_132_rev	@ Reverb

	.word	seq_132_grp

	.word	seq_132_0

	.end
