#pragma once
#include "unklib/irq.h"

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

static inline void scene_setVBlankFunc(scene_state_t *scene, int func)
{
    irq_updateMask(IRQ_UPDATE_MODE_AND, ~IRQ_MASK_VBLANK);
    scene->vBlankFunc = func;
    irq_updateMask(IRQ_UPDATE_MODE_OR, IRQ_MASK_VBLANK | IRQ_MASK_IME);
}
