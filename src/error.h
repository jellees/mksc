#pragma once

typedef struct
{
    vu16 dspcnt;
    vu16 bg0cnt;
    vu16 bg0hofs;
    vu16 bg0vofs;
    vu16 bg1cnt;
    vu16 bg1hofs;
    vu16 bg1vofs;
    vu16 bg2cnt;
    vu16 bg2hofs;
    vu16 bg2vofs;
    vu16 bg3cnt;
    vu16 bg3hofs;
    vu16 bg3vofs;
    vu16 bldcnt;
    vu16 bldalpha;
    vu16 bldy;
    s32 field32;
    u16 field_24[4][4];
    u32 field68;
} error_state_t;

int error_main(void);
