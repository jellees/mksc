#include "common.h"
#include "frameHeap.h"
#include "map.h"
#include "palette.h"
#include "scene.h"
#include "dmaQueue.h"
#include "mobileSystemsGBLogo.h"

// External declarations.
extern u8 gMainFrmHeap[0x8000];
extern char title_sDriversBgTilesBuf[0x16000];

extern int dword_80D830C[1];
extern int dword_80D89B4[1];
extern int dword_80D82EC[1];

extern void title_main();
// End external declarations.

static gbm_state_t* sState;

void gbm_vblank(void);

int gbm_main(void)
{
    gbm_state_t* state;
    int i;
    scene_state_t* scene = &gSceneState;

    frmheap_init(&scene->raceState.frameHeap, &gMainFrmHeap, sizeof(gMainFrmHeap));

    sState = (gbm_state_t*)frmheap_calloc(&scene->raceState.frameHeap, 1, 12);
    state = sState;
    state->bg0cnt = BGCNT_CHARBASE(1);
    state->dispcnt = DISPCNT_BG0_ON;
    state->bldcnt = BLDCNT_TGT1_ALL | BLDCNT_EFFECT_LIGHTEN;
    state->bldy = 16;

    scene_setVBlankFunc(gbm_vblank);
    main_frameProc();

    LZ77UnCompWram(dword_80D830C, title_sDriversBgTilesBuf);
    dmaq_enqueue(dmaq_getVBlankDmaQueue(), title_sDriversBgTilesBuf, BG_CHAR_ADDR(1), 0x80000600);
    main_frameProc();

    map_setBufferDestination(0, BG_VRAM);
    LZ77UnCompWram(dword_80D89B4, map_getBufferPtr2d(0, 0, 0));
    map_setBufferDirty(MAP_MASK_BUFFER_0);
    main_frameProc();

    CpuFastSet(dword_80D82EC, pltt_getBuffer(PLTT_BUFFER_BG), 8);
    pltt_setDirtyFlag(TRUE);
    main_frameProc();

    for (i = 0; i < 16; ++i)
    {
        int val;
        main_frameProc();
        val = 16 - i;
        state->bldy = val;
    }

    for (i = 59; i >= 0; --i)
        main_frameProc();

    for (i = 0; i < 16; ++i)
    {
        main_frameProc();
        state->bldy = i;
    }

    state = 0;

    scene_setVBlankFunc(NULL);
    scene_setMainFunc(title_main);

    return 1;
}

void gbm_vblank(void)
{
    gbm_state_t* state = sState;
    REG_BLDCNT = state->bldcnt;
    REG_BLDALPHA = state->bldalpha;
    REG_BLDY = state->bldy;
    REG_DISPCNT = state->dispcnt;
    REG_BG0CNT = state->bg0cnt;
}
