@ File generated by m4a2s Song-Module
	.include "MPlayDef.s"

	.equ	seq_143_grp, bank_044
	.equ	seq_143_pri, 30
	.equ	seq_143_rev, 0
	.equ	seq_143_mvl, 127
	.equ	seq_143_key, 0

	.section .rodata
	.global	seq_143
	.align	2

@*********************** Track 01 ***********************@

seq_143_0:
	.byte		VOL   , 55*seq_143_mvl/mxv
	.byte	KEYSH , seq_143_key+0
	.byte	TEMPO , 150/2
	.byte		VOICE , 43
	.byte		N04   , An4 , v127
	.byte	W04
	.byte		        Dn4 
	.byte	W04
	.byte		        Fs4 
	.byte	W04
	.byte		        Dn5 , v120
	.byte	W04
	.byte		        Fs4 , v112
	.byte	W04
	.byte		        An4 , v108
	.byte	W04
	.byte		        Fs5 , v100
	.byte	W04
	.byte		        Dn5 , v080
	.byte	W04
	.byte		        Fs5 , v052
	.byte	W04
	.byte		        Dn5 , v040
	.byte	W04
	.byte		        Fs5 , v032
	.byte	W32
	.byte	FINE

@*********************** Track 02 ***********************@

seq_143_1:
	.byte	KEYSH , seq_143_key+0
	.byte		VOICE , 41
	.byte		VOL   , 21*seq_143_mvl/mxv
	.byte	W15
	.byte		N04   , An4 , v127
	.byte	W04
	.byte		        Dn4 
	.byte	W04
	.byte		        Fs4 
	.byte	W04
	.byte		        Dn5 , v120
	.byte	W04
	.byte		        Fs4 , v112
	.byte	W04
	.byte		        An4 , v108
	.byte	W04
	.byte		        Fs5 , v100
	.byte	W04
	.byte		        Dn5 , v080
	.byte	W04
	.byte		        Fs5 , v052
	.byte	W04
	.byte		        Dn5 , v040
	.byte	W04
	.byte		        Fs5 , v032
	.byte	W17
	.byte	FINE

@******************************************************@

	.align	2

seq_143:
	.byte	2	@ NumTrks
	.byte	0	@ NumBlks
	.byte	seq_143_pri	@ Priority
	.byte	seq_143_rev	@ Reverb

	.word	seq_143_grp

	.word	seq_143_0
	.word	seq_143_1

	.end