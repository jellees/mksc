#pragma once

#define TRNS_FLAG_INIT_FRAME   (1 << 0)
#define TRNS_FLAG_UPDATE_FRAME (1 << 1)
#define TRNS_FLAG_SUSPENDED    (1 << 7)

typedef void (*trns_func_t)(void);

typedef struct
{
    trns_func_t applyFunc;
    trns_func_t initFunc;
    trns_func_t finishFunc;
    u8 flags;
    s8 waitCounter;
    u8 updateDelay;
    u8 frame;
} trns_state_t;

extern trns_state_t gTransitionState;
