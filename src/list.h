#pragma once

typedef struct list_link_single_t
{
    struct list_link_single_t* next;
} list_link_single_t;

typedef struct list_link_double_t
{
    struct list_link_double_t* next;
    struct list_link_double_t* prev;
} list_link_double_t;

typedef struct
{
    void* head;
    void* tail;
} list_t;

void list_insertHeadSingle(list_t *list, list_link_single_t *item);
void list_insertTailSingle(list_t *list, list_link_single_t *item);
list_link_single_t* list_takeHeadSingle(list_t* list);

bool32 list_isEmpty(list_t* list);
void* list_getHead(list_t* list);
void* list_getTail(list_t* list);
list_link_double_t* list_getNext(list_t* list, list_link_double_t* item);
list_link_double_t* list_getPrevious(list_t* list, list_link_double_t* item);
void list_insertHead(list_t* list, list_link_double_t* item);
void list_insertTail(list_t* list, list_link_double_t* item);
void list_insertBefore(list_t* list, list_link_double_t* target, list_link_double_t* item);
void list_insertAfter(list_t* list, list_link_double_t* target, list_link_double_t* item);
list_link_double_t* list_takeHead(list_t* list);
list_link_double_t* list_takeTail(list_t* list);
void list_remove(list_t* list, list_link_double_t* item);
void list_init(list_t* list);
