#pragma once

typedef struct
{
    u8 gap0[0x28];
    s8 field28[5][3];
    u8 gap37[0xF];
    u8 field46[5][3];
    //...
} save_t;

save_t* save_getSavePointer_805D9B0(void);
