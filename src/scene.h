#pragma once
#include "libunk/irq.h"
#include "frameHeap.h"

typedef struct
{
    int menuMainFunc;
    u8 space1[4];
    bool8 byte_3002E28;
    int vBlankFunc;
    u8 space2[0x6F4];
    frmheap_t frameHeap;
} scene_state_t;

extern scene_state_t gSceneState;

static inline void scene_setVBlankFunc(int func)
{
    scene_state_t* sceneState = &gSceneState;
    irq_updateMask(IRQ_UPDATE_MODE_AND, ~IRQ_MASK_VBLANK);
    sceneState->vBlankFunc = func;
    irq_updateMask(IRQ_UPDATE_MODE_OR, IRQ_MASK_VBLANK | IRQ_MASK_IME);
}

static inline void scene_setMainFunc(int func)
{
    gSceneState.menuMainFunc = func;
    gSceneState.byte_3002E28 = (gSceneState.byte_3002E28 + 1) & 7;
}
