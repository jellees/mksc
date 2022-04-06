#include "common.h"
#include "frameHeap.h"
#include "map.h"
#include "palette.h"
#include "scene.h"
#include "mobileSystemsGBLogo.h"

// External declarations.
extern u8 gMainFrmHeap[0x8000];
extern int title_sDriversBgTilesBuf[0x5800];

extern int dword_80D830C[1];
extern int dword_80D89B4[1];
extern int dword_80D82EC[1];

extern void title_main();
// End external declarations.

static gbm_state_t *sState;

void gbm_vblank();

int gbm_main()
{
    gbm_state_t *state;
    int i;
    scene_state_t *scene = &gSceneState;

    frmheap_init(&scene->frameHeap, &gMainFrmHeap, sizeof(gMainFrmHeap));

    sState = (gbm_state_t *)frmheap_calloc(&scene->frameHeap, 1, 12);
    state = sState;
    *(vu16 *)&state->bg0cnt;
    state->bg0cnt = 4;
    *(vu16 *)&state->dispcnt;
    state->dispcnt = 256;
    *(vu16 *)&state->bldcnt;
    state->bldcnt = 191;
    *(vu16 *)&state->bldy;
    state->bldy = 16;

    setVblankFunc(scene, gbm_vblank);
    core_frameProc();

    LZ77UnCompWram(dword_80D830C, title_sDriversBgTilesBuf);
    sub_80303E4(sub_8030434(), (int)title_sDriversBgTilesBuf, 0x6004000, 0x80000600);
    core_frameProc();

    map_setBufferDestination(0, 0x6000000);
    LZ77UnCompWram(dword_80D89B4, map_getBufferPtr2d(0, 0, 0));
    map_setBufferDirty(MAP_MASK_BUFFER_0);
    core_frameProc();

    CpuFastSet(dword_80D82EC, pltt_getBuffer(PLTT_BUFFER_BG), 8);
    pltt_setDirtyFlag(TRUE);
    core_frameProc();

    for (i = 0; i <= 15; ++i)
    {
        int val;
        core_frameProc();
        val = 16 - i;
        *(vu16 *)&state->bldy;
        state->bldy = val;
    }

    for (i = 59; i >= 0; --i)
        core_frameProc();

    for (i = 0; i <= 15; ++i)
    {
        core_frameProc();
        *(vu16 *)&state->bldy;
        state->bldy = i;
    }

    state = 0;

    setVblankFunc(&gSceneState, 0);
    gSceneState.menuMainFunc = (int)title_main;
    gSceneState.byte_3002E28 = (gSceneState.byte_3002E28 + 1) & 7;

    return 1;
}

void gbm_vblank()
{
    gbm_state_t *state = sState;
    REG_BLDCNT = state->bldcnt;
    REG_BLDALPHA = state->bldalpha;
    REG_BLDY = state->bldy;
    REG_DISPCNT = state->dispcnt;
    REG_BG0CNT = state->bg0cnt;
}
