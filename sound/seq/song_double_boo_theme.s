@ File generated by m4a2s Song-Module
	.include "MPlayDef.s"

	.equ	song_double_boo_theme_grp, bank_006
	.equ	song_double_boo_theme_pri, 0
	.equ	song_double_boo_theme_rev, 0
	.equ	song_double_boo_theme_mvl, 127
	.equ	song_double_boo_theme_key, 0

	.section .rodata
	.global	song_double_boo_theme
	.align	2

@*********************** Track 01 ***********************@

song_double_boo_theme_0:
	.byte	KEYSH , song_double_boo_theme_key+0
	.byte	TEMPO , 140/2
	.byte		VOICE , 12
	.byte		VOL   , 110*song_double_boo_theme_mvl/mxv
	.byte		N06   , Bn4 , v127
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Fn4 , v120
	.byte	W06
	.byte		        Dn4 , v116
	.byte	W06
	.byte		        Bn3 , v112
	.byte	W06
	.byte		        Gs3 , v116
	.byte	W06
	.byte		        Fn3 , v120
	.byte	W06
	.byte		        Dn3 , v124
	.byte	W06
	.byte		        Bn2 , v127
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Bn3 , v116
	.byte	W06
	.byte		        Dn4 , v104
	.byte	W06
	.byte		        Fn4 , v096
	.byte	W06
	.byte		        Gs4 , v088
	.byte	W06
	.byte		        Bn4 , v080
	.byte	W06
	.byte		        Gs4 , v076
	.byte	W06
	.byte		        Fn4 , v080
	.byte	W06
	.byte		        Dn4 , v096
	.byte	W06
	.byte		        Bn3 , v108
	.byte	W06
	.byte		        Gs3 , v112
	.byte	W06
	.byte		        Fn3 , v127
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Fn3 , v120
	.byte	W06
	.byte		        Gs3 , v112
	.byte	W06
	.byte		        Bn3 , v108
	.byte	W06
	.byte		        Dn4 , v116
	.byte	W06
	.byte		        Fn4 , v124
	.byte	W06
	.byte		        Gs4 , v127
	.byte	W06
	.byte	GOTO
	 .word	song_double_boo_theme_0 + 0x2
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	FINE

@*********************** Track 02 ***********************@

song_double_boo_theme_1:
	.byte	KEYSH , song_double_boo_theme_key+0
	.byte		VOICE , 12
	.byte		VOL   , 95*song_double_boo_theme_mvl/mxv
	.byte		BEND  , c_v+24
	.byte		N06   , Bn4 , v127
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Fn4 , v120
	.byte	W06
	.byte		        Dn4 , v116
	.byte	W06
	.byte		        Bn3 , v112
	.byte	W06
	.byte		        Gs3 , v116
	.byte	W06
	.byte		        Fn3 , v120
	.byte	W06
	.byte		        Dn3 , v124
	.byte	W06
	.byte		        Bn2 , v127
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Bn3 , v116
	.byte	W06
	.byte		        Dn4 , v104
	.byte	W06
	.byte		        Fn4 , v096
	.byte	W06
	.byte		        Gs4 , v088
	.byte	W06
	.byte		        Bn4 , v080
	.byte	W06
	.byte		        Gs4 , v076
	.byte	W06
	.byte		        Fn4 , v080
	.byte	W06
	.byte		        Dn4 , v096
	.byte	W06
	.byte		        Bn3 , v108
	.byte	W06
	.byte		        Gs3 , v112
	.byte	W06
	.byte		        Fn3 , v127
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Fn3 , v120
	.byte	W06
	.byte		        Gs3 , v112
	.byte	W06
	.byte		        Bn3 , v108
	.byte	W06
	.byte		        Dn4 , v116
	.byte	W06
	.byte		        Fn4 , v124
	.byte	W06
	.byte		        Gs4 , v127
	.byte	W06
	.byte	GOTO
	 .word	song_double_boo_theme_1 + 0x2
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	FINE

@******************************************************@

	.align	2

song_double_boo_theme:
	.byte	2	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song_double_boo_theme_pri	@ Priority
	.byte	song_double_boo_theme_rev	@ Reverb

	.word	song_double_boo_theme_grp

	.word	song_double_boo_theme_0
	.word	song_double_boo_theme_1

	.end
