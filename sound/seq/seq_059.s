@ File generated by m4a2s Song-Module
	.include "MPlayDef.s"

	.equ	seq_059_grp, bank_041
	.equ	seq_059_pri, 0
	.equ	seq_059_rev, 148
	.equ	seq_059_mvl, 127
	.equ	seq_059_key, 0

	.section .rodata
	.global	seq_059
	.align	2

@*********************** Track 01 ***********************@

seq_059_0:
	.byte	KEYSH , seq_059_key+0
	.byte	TEMPO , 114/2
	.byte		VOICE , 55
	.byte		VOL   , 83*seq_059_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N11   , Fs4 , v112
	.byte	W48
	.byte		        Cs4 
	.byte	W48
	.byte		N60   , As3 , v112
	.byte	W72
	.byte		VOICE , 54
	.byte		N16   , Fs3 
	.byte	W16
	.byte		N06   , Gs3 , v092
	.byte	W08
	.byte	PEND
	.byte		VOICE , 55
	.byte		N12   , As3 , v112
	.byte	W24
	.byte		        Bn3 
	.byte	W24
	.byte		N11   , Cs4 
	.byte	W24
	.byte		N12   , Ds4 
	.byte	W24
	.byte	PEND
	.byte		N40   , Cs4 , v112
	.byte	W48
	.byte		        Fs4 , v104
	.byte	W48
	.byte	PEND
	.byte		VOICE , 54
	.byte		N36   , Ds4 , v112
	.byte	W40
	.byte		N04   , Ds4 , v092
	.byte	W08
	.byte		N36   , Fs4 , v104
	.byte	W40
	.byte		N03   , Ds4 , v092
	.byte	W08
	.byte	PEND
	.byte		N10   , Ds4 , v104
	.byte	W24
	.byte		N40   , Gs4 , v092
	.byte	W48
	.byte		N22   , Fs4 , v112
	.byte	W24
	.byte	PEND
	.byte		N19   , Fn4 , v112
	.byte	W24
	.byte		N15   , Fn4 , v100
	.byte	W16
	.byte		N06   , Fs4 , v092
	.byte	W08
	.byte		N08   , Fn4 , v112
	.byte	W24
	.byte		N11   , Fs4 
	.byte	W24
	.byte	PEND
	.byte		N88   , Fn4 
	.byte	W96
	.byte		VOICE , 55
	.byte		N11   , Fs4 , v112
	.byte	W48
	.byte		        Cs4 
	.byte	W48
	.byte	PATT
	 .word	seq_059_0 + 0x10
	.byte	PATT
	 .word	seq_059_0 + 0x1E
	.byte	PATT
	 .word	seq_059_0 + 0x2D
	.byte	PATT
	 .word	seq_059_0 + 0x35
	.byte	PATT
	 .word	seq_059_0 + 0x48
	.byte	PATT
	 .word	seq_059_0 + 0x55
	.byte		N88   , Fn4 , v112
	.byte	W96
	.byte	GOTO
	 .word	seq_059_0 + 0x6C
	.byte	FINE

@*********************** Track 02 ***********************@

seq_059_1:
	.byte	KEYSH , seq_059_key+0
	.byte		VOICE , 55
	.byte		VOL   , 83*seq_059_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N11   , Cs4 , v112
	.byte	W48
	.byte		        As3 
	.byte	W48
	.byte		N60   , Fs3 
	.byte	W96
	.byte		N12   , Fs3 , v112
	.byte	W24
	.byte		        Ds3 
	.byte	W24
	.byte		N11   , Fn3 
	.byte	W24
	.byte		N12   , Fs3 
	.byte	W24
	.byte	PEND
	.byte		N40   , As3 , v112
	.byte	W48
	.byte		        As3 , v104
	.byte	W48
	.byte	PEND
	.byte		VOICE , 54
	.byte		N36   , Fs3 , v112
	.byte	W40
	.byte		N04   , Fs3 , v092
	.byte	W08
	.byte		N36   , Bn3 , v100
	.byte	W40
	.byte		N03   , Fs3 , v092
	.byte	W08
	.byte	PEND
	.byte		N10   , Gs3 , v112
	.byte	W24
	.byte		N42   , Cn4 
	.byte	W48
	.byte		N22
	.byte	W24
	.byte	PEND
	.byte		N19   , Cs4 , v112
	.byte	W24
	.byte		N15   , Cs4 , v100
	.byte	W16
	.byte		N06   , Ds4 , v092
	.byte	W08
	.byte		N08   , Cs4 , v112
	.byte	W24
	.byte		N11
	.byte	W24
	.byte	PEND
	.byte		N88
	.byte	W96
	.byte		VOICE , 55
	.byte		N11   , Cs4 , v112
	.byte	W48
	.byte		        As3 
	.byte	W48
	.byte		N60   , Fs3 
	.byte	W96
	.byte	PATT
	 .word	seq_059_1 + 0x11
	.byte	PATT
	 .word	seq_059_1 + 0x1E
	.byte	PATT
	 .word	seq_059_1 + 0x26
	.byte	PATT
	 .word	seq_059_1 + 0x39
	.byte	PATT
	 .word	seq_059_1 + 0x43
	.byte		N88   , Cs4 , v112
	.byte	W96
	.byte	GOTO
	 .word	seq_059_1 + 0x58
	.byte	FINE

@*********************** Track 03 ***********************@

seq_059_2:
	.byte	KEYSH , seq_059_key+0
	.byte		VOICE , 10
	.byte		VOL   , 60*seq_059_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		N24   , Fs5 , v100
	.byte	W24
	.byte		N22   , Cs5 , v112
	.byte	W24
	.byte		N24   , Ds5 
	.byte	W24
	.byte		N22   , As4 , v100
	.byte	W23
	.byte		N12   , Fs5 , v100
	.byte	W16
	.byte		N22   , Cs5 , v108
	.byte	W22
	.byte		N32   , As4 , v104
	.byte	W32
	.byte	W02
	.byte		N20   , Bn4 , v100
	.byte	W24
	.byte	PEND
	.byte	W01
	.byte		N22   , As4 , v100
	.byte	W23
	.byte		        Bn4 
	.byte	W24
	.byte		N14   , As4 
	.byte	W16
	.byte		        Cs5 
	.byte	W17
	.byte		        Ds5 , v112
	.byte	W15
	.byte	PEND
	.byte		N44   , Cs5 , v096
	.byte	W48
	.byte	W01
	.byte		        Fs5 , v092
	.byte	W44
	.byte	W03
	.byte	PEND
	.byte		N36   , Bn4 , v100
	.byte	W40
	.byte		N06   , Bn4 , v088
	.byte	W09
	.byte		N36   , Ds5 , v100
	.byte	W36
	.byte	W02
	.byte		N07   , Cs5 , v088
	.byte	W09
	.byte	PEND
	.byte		N22   , Fs5 , v100
	.byte	W24
	.byte	W01
	.byte		N40   , Gs5 , v092
	.byte	W44
	.byte	W03
	.byte		N22   , Fs5 , v100
	.byte	W24
	.byte	PEND
	.byte		N32   , Fn5 , v100
	.byte	W36
	.byte	W01
	.byte		N09   , Fs5 , v092
	.byte	W11
	.byte		N22   , Fn5 , v108
	.byte	W24
	.byte		N16   , Ds5 , v100
	.byte	W23
	.byte		N72   , Cs5 
	.byte	W01
	.byte	PEND
	.byte	W96
	.byte	W01
	.byte		N24   , Fs5 , v100
	.byte	W24
	.byte		N22   , Cs5 , v112
	.byte	W24
	.byte		N24   , Ds5 
	.byte	W24
	.byte		N22   , As4 , v100
	.byte	W23
	.byte	PATT
	 .word	seq_059_2 + 0x18
	.byte	PATT
	 .word	seq_059_2 + 0x2A
	.byte	PATT
	 .word	seq_059_2 + 0x3A
	.byte	PATT
	 .word	seq_059_2 + 0x44
	.byte	PATT
	 .word	seq_059_2 + 0x56
	.byte	PATT
	 .word	seq_059_2 + 0x65
	.byte	W96
	.byte	GOTO
	 .word	seq_059_2 + 0x7B
	.byte	FINE

@*********************** Track 04 ***********************@

seq_059_3:
	.byte	KEYSH , seq_059_key+0
	.byte		VOICE , 61
	.byte		VOL   , 43*seq_059_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W24
	.byte		N04   , As4 , v112
	.byte	W08
	.byte		        As4 , v100
	.byte	W08
	.byte		N04
	.byte	W08
	.byte		N36   , As4 , v112
	.byte	W48
	.byte	W96
	.byte	W24
	.byte		N04   , Cs5 
	.byte	W08
	.byte		        Cs5 , v100
	.byte	W08
	.byte		N04
	.byte	W08
	.byte		N36   , Cs5 , v112
	.byte	W48
	.byte		N24   , Ds5 
	.byte	W40
	.byte		N04   , Ds5 , v100
	.byte	W08
	.byte		N24   , Ds5 , v112
	.byte	W40
	.byte		N03   , Ds5 , v100
	.byte	W08
	.byte		N06   , Ds5 , v112
	.byte	W24
	.byte		N48
	.byte	W72
	.byte		N32   , Fn5 
	.byte	W40
	.byte		N04   , Fn5 , v100
	.byte	W08
	.byte		N06   , Fn5 , v112
	.byte	W24
	.byte		        Fs5 
	.byte	W24
	.byte		N72   , Fn5 
	.byte	W96
	.byte	GOTO
	 .word	seq_059_3 + 0x10
	.byte	FINE

@*********************** Track 05 ***********************@

seq_059_4:
	.byte	KEYSH , seq_059_key+0
	.byte		VOICE , 61
	.byte		VOL   , 43*seq_059_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W24
	.byte		N04   , Fs4 , v112
	.byte	W08
	.byte		        Fs4 , v100
	.byte	W08
	.byte		N04
	.byte	W08
	.byte		N36   , Fs4 , v112
	.byte	W48
	.byte	W96
	.byte	W24
	.byte		N04   , As4 
	.byte	W08
	.byte		        As4 , v100
	.byte	W08
	.byte		N04
	.byte	W08
	.byte		N36   , As4 , v112
	.byte	W48
	.byte		N24   , Bn4 
	.byte	W40
	.byte		N04   , Bn4 , v100
	.byte	W08
	.byte		N24   , Bn4 , v112
	.byte	W40
	.byte		N03   , Bn4 , v100
	.byte	W08
	.byte		N06   , Cn5 , v112
	.byte	W24
	.byte		N48
	.byte	W72
	.byte		N32   , Cs5 
	.byte	W40
	.byte		N04   , Cs5 , v100
	.byte	W08
	.byte		N06   , Cs5 , v112
	.byte	W24
	.byte		        Ds5 
	.byte	W24
	.byte		N72   , Cs5 
	.byte	W96
	.byte	GOTO
	 .word	seq_059_4 + 0x10
	.byte	FINE

@*********************** Track 06 ***********************@

seq_059_5:
	.byte	KEYSH , seq_059_key+0
	.byte		VOICE , 127
	.byte		VOL   , 110*seq_059_mvl/mxv
	.byte		N02   , As3 , v052
	.byte	W16
	.byte		        As3 , v036
	.byte	W08
	.byte		        As3 , v056
	.byte	W16
	.byte		        As3 , v036
	.byte	W08
	.byte		        As3 , v052
	.byte	W16
	.byte		        As3 , v036
	.byte	W08
	.byte		        As3 , v056
	.byte	W16
	.byte		N07   , As3 , v040
	.byte	W08
	.byte		N02   , As3 , v052
	.byte	W16
	.byte		        As3 , v036
	.byte	W08
	.byte		        As3 , v056
	.byte	W16
	.byte		        As3 , v036
	.byte	W08
	.byte		        As3 , v052
	.byte	W16
	.byte		        As3 , v036
	.byte	W08
	.byte		        As3 , v056
	.byte	W16
	.byte		N07   , As3 , v040
	.byte	W08
	.byte	PEND
	.byte	PATT
	 .word	seq_059_5 + 0x20
	.byte		N02   , As3 , v052
	.byte	W16
	.byte		        As3 , v036
	.byte	W08
	.byte		        As3 , v056
	.byte	W16
	.byte		        As3 , v036
	.byte	W08
	.byte		        As3 , v056
	.byte	W08
	.byte		        As3 , v040
	.byte	W08
	.byte		N02
	.byte	W08
	.byte		        As3 , v056
	.byte	W16
	.byte		N07   , As3 , v040
	.byte	W08
	.byte		N02   , As3 , v056
	.byte	W16
	.byte		        As3 , v036
	.byte	W08
	.byte		        As3 , v068
	.byte	W16
	.byte		        As3 , v036
	.byte	W08
	.byte		        As3 , v056
	.byte	W16
	.byte		        As3 , v036
	.byte	W08
	.byte		        As3 , v068
	.byte	W16
	.byte		N07   , As3 , v040
	.byte	W08
	.byte	PEND
	.byte	PATT
	 .word	seq_059_5 + 0x5C
	.byte	PATT
	 .word	seq_059_5 + 0x5C
	.byte		N02   , As3 , v056
	.byte	W16
	.byte		        As3 , v036
	.byte	W08
	.byte		        As3 , v068
	.byte	W16
	.byte		        As3 , v036
	.byte	W08
	.byte		        As3 , v056
	.byte	W08
	.byte		        As3 , v040
	.byte	W08
	.byte		N02
	.byte	W08
	.byte		        As3 , v068
	.byte	W16
	.byte		N07   , As3 , v040
	.byte	W08
	.byte	PEND
	.byte	PATT
	 .word	seq_059_5 + 0x5C
	.byte	PATT
	 .word	seq_059_5 + 0x5C
	.byte	PATT
	 .word	seq_059_5 + 0x5C
	.byte	PATT
	 .word	seq_059_5 + 0x81
	.byte	PATT
	 .word	seq_059_5 + 0x5C
	.byte	PATT
	 .word	seq_059_5 + 0x5C
	.byte	PATT
	 .word	seq_059_5 + 0x5C
	.byte	PATT
	 .word	seq_059_5 + 0x81
	.byte	GOTO
	 .word	seq_059_5 + 0x9E
	.byte	FINE

@*********************** Track 07 ***********************@

seq_059_6:
	.byte	KEYSH , seq_059_key+0
	.byte		VOICE , 121
	.byte		VOL   , 34*seq_059_mvl/mxv
	.byte		PAN   , c_v+63
	.byte	W03
	.byte		N11   , Fs3 , v127
	.byte	W48
	.byte		        Cs3 
	.byte	W44
	.byte	W01
	.byte	W03
	.byte		N60   , As2 , v127
	.byte	W72
	.byte		N16   , Fs2 
	.byte	W16
	.byte		N06   , Gs2 
	.byte	W05
	.byte	PEND
	.byte	W03
	.byte		N12   , As2 , v127
	.byte	W24
	.byte		        Bn2 
	.byte	W24
	.byte		N11   , Cs3 
	.byte	W24
	.byte		N12   , Ds3 
	.byte	W21
	.byte	PEND
	.byte	W03
	.byte		N40   , Cs3 , v127
	.byte	W48
	.byte		        Fs3 
	.byte	W44
	.byte	W01
	.byte	PEND
	.byte	W03
	.byte		N36   , Ds3 , v127
	.byte	W40
	.byte		N04
	.byte	W08
	.byte		N36   , Fs3 
	.byte	W40
	.byte		N03   , Ds3 
	.byte	W05
	.byte	PEND
	.byte	W03
	.byte		N10   , Ds3 , v127
	.byte	W24
	.byte		N40   , Gs3 
	.byte	W48
	.byte		N22   , Fs3 
	.byte	W21
	.byte	PEND
	.byte	W03
	.byte		N19   , Fn3 , v127
	.byte	W24
	.byte		N15
	.byte	W16
	.byte		N06   , Fs3 
	.byte	W08
	.byte		N08   , Fn3 
	.byte	W24
	.byte		N11   , Fs3 
	.byte	W21
	.byte	PEND
	.byte	W03
	.byte		N88   , Fn3 , v127
	.byte	W92
	.byte	W01
	.byte	PEND
	.byte	W03
	.byte		N11   , Fs3 , v127
	.byte	W48
	.byte		        Cs3 
	.byte	W44
	.byte	W01
	.byte	PATT
	 .word	seq_059_6 + 0x10
	.byte	PATT
	 .word	seq_059_6 + 0x1C
	.byte	PATT
	 .word	seq_059_6 + 0x2A
	.byte	PATT
	 .word	seq_059_6 + 0x33
	.byte	PATT
	 .word	seq_059_6 + 0x41
	.byte	PATT
	 .word	seq_059_6 + 0x4D
	.byte	PATT
	 .word	seq_059_6 + 0x5E
	.byte	GOTO
	 .word	seq_059_6 + 0x65
	.byte	FINE

@*********************** Track 08 ***********************@

seq_059_7:
	.byte	KEYSH , seq_059_key+0
	.byte		VOICE , 122
	.byte		VOL   , 34*seq_059_mvl/mxv
	.byte		PAN   , c_v-64
	.byte	W03
	.byte		N11   , Cs3 , v127
	.byte	W48
	.byte		        As2 
	.byte	W44
	.byte	W01
	.byte	W03
	.byte		N60   , Fs2 , v127
	.byte	W92
	.byte	W01
	.byte	PEND
	.byte	W03
	.byte		N12   , Fs2 , v127
	.byte	W24
	.byte		        Ds2 
	.byte	W24
	.byte		N11   , Fn2 
	.byte	W24
	.byte		N12   , Fs2 
	.byte	W21
	.byte	PEND
	.byte	W03
	.byte		N40   , As2 , v127
	.byte	W48
	.byte		N40
	.byte	W44
	.byte	W01
	.byte	PEND
	.byte	W03
	.byte		N36   , Fs2 , v127
	.byte	W40
	.byte		N04
	.byte	W08
	.byte		N36   , Bn2 
	.byte	W40
	.byte		N03   , Fs2 
	.byte	W05
	.byte	PEND
	.byte	W03
	.byte		N10   , Gs2 , v127
	.byte	W24
	.byte		N42   , Cn3 
	.byte	W48
	.byte		N22
	.byte	W21
	.byte	PEND
	.byte	W03
	.byte		N19   , Cs3 , v127
	.byte	W24
	.byte		N15
	.byte	W16
	.byte		N06   , Ds3 
	.byte	W08
	.byte		N08   , Cs3 
	.byte	W24
	.byte		N11
	.byte	W21
	.byte	PEND
	.byte	W03
	.byte		N88   , Cs3 , v127
	.byte	W92
	.byte	W01
	.byte	PEND
	.byte	W03
	.byte		N11   , Cs3 , v127
	.byte	W48
	.byte		        As2 
	.byte	W44
	.byte	W01
	.byte	PATT
	 .word	seq_059_7 + 0x10
	.byte	PATT
	 .word	seq_059_7 + 0x17
	.byte	PATT
	 .word	seq_059_7 + 0x25
	.byte	PATT
	 .word	seq_059_7 + 0x2E
	.byte	PATT
	 .word	seq_059_7 + 0x3C
	.byte	PATT
	 .word	seq_059_7 + 0x47
	.byte	PATT
	 .word	seq_059_7 + 0x57
	.byte	GOTO
	 .word	seq_059_7 + 0x5E
	.byte	FINE

@******************************************************@

	.align	2

seq_059:
	.byte	8	@ NumTrks
	.byte	0	@ NumBlks
	.byte	seq_059_pri	@ Priority
	.byte	seq_059_rev	@ Reverb

	.word	seq_059_grp

	.word	seq_059_0
	.word	seq_059_1
	.word	seq_059_2
	.word	seq_059_3
	.word	seq_059_4
	.word	seq_059_5
	.word	seq_059_6
	.word	seq_059_7

	.end