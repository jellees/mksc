@ File generated by m4a2s Song-Module
	.include "MPlayDef.s"

	.equ	seq_071_grp, bank_043
	.equ	seq_071_pri, 50
	.equ	seq_071_rev, 0
	.equ	seq_071_mvl, 127
	.equ	seq_071_key, 0

	.section .rodata
	.global	seq_071
	.align	2

@*********************** Track 01 ***********************@

seq_071_0:
	.byte	KEYSH , seq_071_key+0
	.byte	TEMPO , 120/2
	.byte		VOICE , 1
	.byte		VOL   , 127*seq_071_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		TIE   , Cn3 , v127
	.byte	W96
	.byte	W96
	.byte	GOTO
	 .word	seq_071_0 + 0xE
	.byte	W96
	.byte		EOT   , Cn3 
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	FINE

@******************************************************@

	.align	2

seq_071:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	seq_071_pri	@ Priority
	.byte	seq_071_rev	@ Reverb

	.word	seq_071_grp

	.word	seq_071_0

	.end
