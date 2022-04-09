#pragma once
#include "common.h"

typedef struct struc21_t
{
    u32 field_0;
    u32 field_4;
    u32 field_8;
    u8 field_C;
    u8 field_D;
    u8 field_E;
    u8 field_F;
    u32 field_10;
    void* updateFcn;
    u32 field_18;
    u32 field_1C;
    u16 field_20;
    u16 field_22;
    u16 field_24;
    u16 field_26;
    u32 field_28;
    u32 field_2C;
    u32 field_30;
    u16 field_34;
    u16 field_36;
    u16 field_38;
    u16 field_3A;
    struct struc21_t* next;
    struct struc21_t* prev;
    u32 field_44;
    u32 field_48;
    u16 waitCounter;
    u16 field_4E;
    u16 field_50;
    u16 field_52;
    u16 field_54;
    u16 field_56;
    u16 field_58;
    u16 field_5A;
    u32 script;
    void* updateCallback;
    u8 flags;
    u32 field_68;
    u32 destroyFunc;
} struc21_t;

typedef struct list2_t
{
    struct struc21_t* head;
    struct struc21_t* tail;
} list2_t;

bool32 list2_isEmpty(list2_t* list);
void list2_init(list2_t* list);
void list2_insertHead(list2_t* list, struc21_t* item);
void list2_insertTail(list2_t* list, struc21_t* item);
void list2_insertBefore(list2_t* list, struc21_t* target, struc21_t* item);
void list2_insertAfter(list2_t* list, struc21_t* target, struc21_t* item);
struc21_t* list2_takeHead(list2_t* list);
struc21_t* list2_takeTail(list2_t* list);
void list2_remove(list2_t* list, struc21_t* item);

