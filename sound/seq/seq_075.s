@ File generated by m4a2s Song-Module
	.include "MPlayDef.s"

	.equ	seq_075_grp, bank_043
	.equ	seq_075_pri, 50
	.equ	seq_075_rev, 0
	.equ	seq_075_mvl, 127
	.equ	seq_075_key, 0

	.section .rodata
	.global	seq_075
	.align	2

@*********************** Track 01 ***********************@

seq_075_0:
	.byte		VOL   , 115*seq_075_mvl/mxv
	.byte	KEYSH , seq_075_key+0
	.byte	TEMPO , 150/2
	.byte		VOICE , 5
	.byte		TIE   , Cn3 , v127
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	GOTO
	 .word	seq_075_0 + 0xC
	.byte	W48
	.byte		EOT   , Cn3 
	.byte	FINE

@******************************************************@

	.align	2

seq_075:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	seq_075_pri	@ Priority
	.byte	seq_075_rev	@ Reverb

	.word	seq_075_grp

	.word	seq_075_0

	.end
