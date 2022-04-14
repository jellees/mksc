
#include "list2.h"

bool32 list2_isEmpty(list2_t* list)
{
    return list->head == NULL;
}

void list2_init(list2_t* list)
{
    list->tail = NULL;
    list->head = NULL;
}

// Not matching: might be the fault of a compiler
void list2_insertHead(list2_t* list, struc21_t* item)
{
    struc21_t* head;

    head = list->head;
    item->prev = NULL;
    item->next = list->head;

    if (head)
    {
        head->prev = item;
    }
    else
    {
        list->tail = item;
    }
    list->head = item;
}

// Not matching: might be the fault of a compiler
void list2_insertTail(list2_t* list, struc21_t* item)
{
    struc21_t* tail;

    tail = list->tail;
    item->prev = tail;
    item->next = NULL;
    if (tail)
        tail->next = item;
    else
        list->head = item;
    list->tail = item;
}

void list2_insertBefore(list2_t* list, struc21_t* target, struc21_t* item)
{
    struc21_t* result;

    item->prev = target->prev;
    item->next = target;
    result = target->prev;
    if (result)
        result->next = item;
    else
        list->head = item;
    target->prev = item;
}

void list2_insertAfter(list2_t* list, struc21_t* target, struc21_t* item)
{
    struc21_t* next;
    struc21_t* result;

    next = target->next;
    item->prev = target;
    item->next = next;
    result = target->next;
    if (result)
        result->prev = item;
    else
        list->tail = item;
    target->next = item;
}

struc21_t* list2_takeHead(list2_t* list)
{
    struc21_t* item;
    struc21_t* next;

    item = list->head;
    next = list->head->next;
    list->head = next;
    if (next)
        next->prev = NULL;
    else
        list->tail = NULL;
    item->prev = NULL;
    item->next = NULL;
    return item;
}

struc21_t* list2_takeTail(list2_t* list)
{
    struc21_t* item;
    struc21_t* prev;

    item = list->tail;
    prev = item->prev;
    list->tail = prev;
    if (prev)
        prev->next = NULL;
    else
        list->head = NULL;
    item->prev = NULL;
    item->next = NULL;
    return item;
}

// Not matching: might be the fault of a compiler
void list2_remove(list2_t* list, struc21_t* item)
{
    struc21_t* next;
    struc21_t* prev;

    if (item == list->head)
    {
        next = item->next;
        list->head = next;
        if (next)
        {
            next->prev = NULL;
        }
        else
        {
            list->tail = NULL;
        }
    }
    else
    {
        if (item != list->tail)
        {
            item->prev->next = item->next;
            item->next->prev = item->prev;
            item->prev = NULL;
            item->next = NULL;
            return;
        }
        prev = item->prev;
        list->tail = prev;
        if (prev)
        {
            prev->next = NULL;
        }
        else
        {
            list->head = NULL;
        }
    }

    item->prev = NULL;
    item->next = NULL;
}