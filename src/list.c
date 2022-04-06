#include "common.h"
#include "list.h"

void list_insertHeadSingle(list_t *list, list_link_single_t *item)
{
    list_link_single_t* head = list->head;
    item->next = head;
    if (!head)
        list->tail = item;
    list->head = item;
}

void list_insertTailSingle(list_t *list, list_link_single_t *item)
{
    list_link_single_t* tail;

    item->next = NULL;
    tail = list->tail;
    if (tail)
        tail->next = item;
    else
        list->head = item;
    list->tail = item;
}

list_link_single_t* list_takeHeadSingle(list_t* list)
{
    list_link_single_t* head = list->head;
    list->head = head->next;
    if (!list->head)
        list->tail = NULL;
    head->next = NULL;
    return head;
}

bool32 list_isEmpty(list_t* list)
{
    return list->head == NULL;
}

void* list_getHead(list_t* list)
{
    return list->head;
}

void* list_getTail(list_t* list)
{
    return list->tail;
}

list_link_double_t* list_getNext(list_t* list, list_link_double_t* item)
{
    return item->next;
}

list_link_double_t* list_getPrevious(list_t* list, list_link_double_t* item)
{
    return item->prev;
}

void list_insertHead(list_t* list, list_link_double_t* item)
{
    list_link_double_t* head;

    item->prev = NULL;
    head = list->head;
    item->next = head;
    if (head)
        head->prev = item;
    else
        list->tail = item;
    list->head = item;
}

void list_insertTail(list_t* list, list_link_double_t* item)
{
    list_link_double_t* tail = list->tail;
    item->prev = tail;
    item->next = NULL;
    if (tail)
        tail->next = item;
    else
        list->head = item;
    list->tail = item;
}

void list_insertBefore(list_t* list, list_link_double_t* target, list_link_double_t* item)
{
    item->prev = target->prev;
    item->next = target;
    if (target->prev)
        target->prev->next = item;
    else
        list->head = item;
    target->prev = item;
}

void list_insertAfter(list_t* list, list_link_double_t* target, list_link_double_t* item)
{
    item->prev = target;
    item->next = target->next;
    if (target->next)
        target->next->prev = item;
    else
        list->tail = item;
    target->next = item;
}

list_link_double_t* list_takeHead(list_t* list)
{
    list_link_double_t* item = list->head;
    list->head = item->next;
    if (item->next)
        item->next->prev = NULL;
    else
        list->tail = NULL;
    item->next = NULL;
    item->prev = NULL;
    return item;
}

list_link_double_t* list_takeTail(list_t* list)
{
    list_link_double_t* item = list->tail;
    list->tail = item->prev;
    if (item->prev)
        item->prev->next = NULL;
    else
        list->head = NULL;
    item->next = NULL;
    item->prev = NULL;
    return item;
}

void list_remove(list_t* list, list_link_double_t* item)
{
    if (item == list->head)
        list->head = item->next;
    else
        item->prev->next = item->next;
    if (item == list->tail)
        list->tail = item->prev;
    else
        item->next->prev = item->prev;
    item->next = NULL;
    item->prev = NULL;
}

void list_init(list_t* list)
{
    list->tail = NULL;
    list->head = NULL;
}
