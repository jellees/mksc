#pragma once

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

static inline void setVblankFunc(scene_state_t *scene, int func)
{
    irq_updateMask(1, -2);
    scene->vBlankFunc = func;
    irq_updateMask(2, 0x10001);
}
