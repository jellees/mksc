#pragma once
#include "libunk/irq.h"
#include "frameHeap.h"

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
    u8 space3[0x6E0];
    frmheap_t frameHeap;
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
