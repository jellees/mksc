@ File generated by m4a2s Song-Module
	.include "MPlayDef.s"

	.equ	seq_073_grp, bank_043
	.equ	seq_073_pri, 50
	.equ	seq_073_rev, 0
	.equ	seq_073_mvl, 127
	.equ	seq_073_key, 0

	.section .rodata
	.global	seq_073
	.align	2

@*********************** Track 01 ***********************@

seq_073_0:
	.byte		VOL   , 110*seq_073_mvl/mxv
	.byte	KEYSH , seq_073_key+0
	.byte	TEMPO , 150/2
	.byte		VOICE , 3
	.byte		TIE   , Gn2 , v127
	.byte	W48
	.byte	W48
	.byte	W48
	.byte	GOTO
	 .word	seq_073_0 + 0xC
	.byte	W48
	.byte		EOT   , Gn2 
	.byte	FINE

@******************************************************@

	.align	2

seq_073:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	seq_073_pri	@ Priority
	.byte	seq_073_rev	@ Reverb

	.word	seq_073_grp

	.word	seq_073_0

	.end
