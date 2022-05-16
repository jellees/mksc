#pragma once
#include "libunk/irq.h"
#include "frameHeap.h"
#include "actor.h"

#define RACE_CUR_RACE_STATE_UNKNOWN_GP_MODE 0x100
#define RACE_CUR_RACE_STATE_UNKNOWN_MG_MODE 0x800

typedef struct
{
    actor_t actor;
    u32 field_44;
    u32 field_48;
    //...
} driver_t;

typedef struct
{
    u8 gap0[0x14];
    u16 nrCheckpoints;
    u8 gap16[0x6CA];
    frmheap_t frameHeap;
    u8 gap6EC[0xEE];
    u16 curRaceStateUnknown;
    u8 gap7DC[0x1A];
    driver_t* drivers[8];
    driver_t* playerDriver;
    //...
} race_state_t;

typedef bool32 (*scene_main_func_t)(void);
typedef void (*scene_vblank_func_t)(void);

typedef struct
{
    scene_main_func_t sceneMainFunc;
    u8 space1[4];
    bool8 byte_3002E28;
    scene_vblank_func_t vBlankFunc;
    u32 field10;
    u32 field14;
    u8 space2[8];
    u16 initialRepeatWait;
    u16 nextRepeatWait;
    race_state_t raceState;
} scene_state_t;

extern scene_state_t gSceneState;

static inline void scene_setVBlankFunc(scene_vblank_func_t func)
{
    scene_state_t* sceneState = &gSceneState;
    irq_updateMask(IRQ_UPDATE_MODE_AND, ~IRQ_MASK_VBLANK);
    sceneState->vBlankFunc = func;
    irq_updateMask(IRQ_UPDATE_MODE_OR, IRQ_MASK_VBLANK | IRQ_MASK_IME);
}

static inline void scene_setMainFunc(scene_main_func_t func)
{
    gSceneState.sceneMainFunc = func;
    gSceneState.byte_3002E28 = (gSceneState.byte_3002E28 + 1) & 7;
}
