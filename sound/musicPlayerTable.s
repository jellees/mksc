.section .rodata
.include "m4a.inc"

.global gMPlayTable
gMPlayTable:
    music_player 0x030066E0, 0x02032400, 8, 0
    music_player 0x030068F0, 0x02032680, 1, 0
    music_player 0x03006930, 0x020326D0, 1, 0
    music_player 0x03006A40, 0x02032720, 1, 0
    music_player 0x030069B0, 0x02032770, 1, 0
    music_player 0x03006620, 0x020327C0, 1, 0
    music_player 0x030066A0, 0x02032810, 2, 0
    music_player 0x030068B0, 0x020328B0, 2, 1
    music_player 0x03006A00, 0x02032950, 2, 1
    music_player 0x03006660, 0x020329F0, 2, 0
    music_player 0x03006970, 0x02032A90, 2, 0
