#pragma once
#include "actor.h"

typedef struct
{
    struct actor_t* head;
    struct actor_t* tail;
} actlist_t;

bool32 actlist_isEmpty(actlist_t* list);
void actlist_init(actlist_t* list);
void actlist_insertHead(actlist_t* list, actor_t* item);
void actlist_insertTail(actlist_t* list, actor_t* item);
void actlist_insertBefore(actlist_t* list, actor_t* target, actor_t* item);
void actlist_insertAfter(actlist_t* list, actor_t* target, actor_t* item);
actor_t* actlist_takeHead(actlist_t* list);
actor_t* actlist_takeTail(actlist_t* list);
void actlist_remove(actlist_t* list, actor_t* item);
void actlist_clear(actlist_t* list);
