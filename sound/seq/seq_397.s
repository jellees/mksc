@ File generated by m4a2s Song-Module
	.include "MPlayDef.s"

	.equ	seq_397_grp, bank_013
	.equ	seq_397_pri, 10
	.equ	seq_397_rev, 0
	.equ	seq_397_mvl, 127
	.equ	seq_397_key, 0

	.section .rodata
	.global	seq_397
	.align	2

@*********************** Track 01 ***********************@

seq_397_0:
	.byte		VOL   , 70*seq_397_mvl/mxv
	.byte	KEYSH , seq_397_key+0
	.byte	TEMPO , 150/2
	.byte		VOICE , 72
	.byte		MOD   , 60
	.byte		LFOS  , 15
	.byte		TIE   , As3 , v080
	.byte	W24
	.byte	W72
	.byte	W72
	.byte	GOTO
	 .word	seq_397_0 + 0x10
	.byte	W24
	.byte		EOT   , As3 
	.byte	FINE

@*********************** Track 02 ***********************@

seq_397_1:
	.byte		VOL   , 70*seq_397_mvl/mxv
	.byte	KEYSH , seq_397_key+0
	.byte		VOICE , 73
	.byte		MOD   , 40
	.byte		LFOS  , 10
	.byte		TIE   , As1 , v080
	.byte	W24
	.byte	W72
	.byte	W72
	.byte	GOTO
	 .word	seq_397_1 + 0xE
	.byte	W24
	.byte		EOT   , As1 
	.byte	FINE

@******************************************************@

	.align	2

seq_397:
	.byte	2	@ NumTrks
	.byte	0	@ NumBlks
	.byte	seq_397_pri	@ Priority
	.byte	seq_397_rev	@ Reverb

	.word	seq_397_grp

	.word	seq_397_0
	.word	seq_397_1

	.end
