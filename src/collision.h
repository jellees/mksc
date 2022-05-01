#pragma once
#include "actor.h"

typedef struct
{
    u8 activeCount;
    u8 passiveCount;
    actor_t* activeList[24];
    actor_t* passiveList[64];
} col_list_t;

bool32 col_addActive(col_list_t* colList, actor_t* actor);
bool32 col_addPassive(col_list_t* colList, actor_t* actor);
void col_clearLists(col_list_t* colList);
void col_collide(col_list_t* colList);
