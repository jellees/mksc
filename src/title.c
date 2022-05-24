#include "common.h"
#include "math.h"
#include "oam.h"
#include "map.h"
#include "palette.h"
#include "dmaQueue.h"
#include "frameHeap.h"
#include "scene.h"
#include "vcount.h"
#include "mp2000/m4a.h"
#include "main.h"
#include "save.h"
#include "sio2.h"
#include "songs.h"
#include "title.h"

extern const struc_76 stru_80D8DF8[3];
extern const u16 dword_80D8BA4[];
extern const u16* off_80D8E4C[];
extern const u16* off_80D8E34[];
extern const u16* off_80D8E1C[];
extern const u16 dword_80CAE70[];
extern const u16 dword_80D8BAC[];
extern const u16 dword_80D8B14[];
extern const u16 dword_80D8C44[];
extern const u16 title_sNightPalette2[];
extern const u16 title_sFallingStarCellData[];
extern const u16 title_sKoopaShipOamData[];
extern const u16 title_sNightPalette0[];
extern const u16 title_sNightPalette1[];
extern const u16 title_sSunsetPalette0[];
extern const u16 title_sSunsetPalette1[];
extern const u16 title_sSunsetPalette2[];
extern const u16 title_sNormalPalette0[];
extern const u16 title_sNormalPalette1[];
extern const u16 title_sNormalPalette2[];
extern const u8 title_sDriversBgTiles0[];
extern const u8 title_sDriversBgTiles1[];
extern const u8 title_sDriversBgTiles2[];
extern const u8 title_sDriversBgTiles3[];
extern const u8 title_sNightSkyBgMap[];
extern const u8 title_sDriversBgMap[];
extern u8 gTempBuffer[];
extern const u8 dword_80CDCA0[];
extern const u8 title_sSkyTiles0[];
extern const u8 title_sSkyTiles1[];
extern u8 byte_2010400[];
extern u8 title_sDriversBgMapBuf[];
extern const u8 title_sObjTiles0[];
extern const u8 title_sObjTiles1[];
extern const u8 title_sObjTiles2[];
extern const u8 title_sObjTiles3[];
extern const u8 title_sObjTiles4[];
extern const u8 title_sObjTiles5[];
extern const u8 title_sObjTiles6[];
extern const u8 title_sLogoBgMap[];
extern const u8 title_sFlagBgMap[];
extern const u8 title_sCloudsBgMap[];
extern const u8 title_sSkyBgMap[];
extern const u16 title_sObjPltt[];
extern const u8 byte_80CADC4[];
extern const u8* off_80D8E6C[];
extern u8 unk_203EBE0[];
extern const u8 dword_80D8E64[3];
extern const u8 dword_80D8E67[2];

static title_state_t* title_sState;

static void vcount70(void);

static void title_80001D8(title_state_t* state)
{
    int i;
    vec2s16_t a2;

    for (i = 0; i < 3; i++)
    {
        struc_75* v3 = &state->field_38[i];
        switch (v3->field_C)
        {
            case 0:
            case 1:
                break;
            case 2:
            {
                v3->x = stru_80D8DF8[i].x + 120;
                v3->y = stru_80D8DF8[i].y + 80;
                v3->scale = 0;
                v3->field_10 = 0;
                v3->field_C = 3;
                break;
            }
            case 3:
                if (gMPlayMemAccArea[0] == 0)
                    break;
                v3->field_C = 4;
                break;
            case 4:
                if (++v3->field_10 <= 16)
                    v3->scale = sub_800E930(64, 256, v3->field_10, 16, 5);
                else
                {
                    v3->field_10 = 0;
                    v3->scale = 256;
                    v3->field_C = 1;
                }
                break;
            case 5:
            {
                v3->x = stru_80D8DF8[i].x + 120;
                v3->y = stru_80D8DF8[i].y + 80;
                v3->scale = 0;
                v3->field_10 = 0;
                v3->field_C = 6;
                break;
            }
            case 6:
                if (gMPlayMemAccArea[0] == 0 || gMPlayMemAccArea[0] == 1)
                    break;
                v3->field_C = 7;
                break;
            case 7:
                if (++v3->field_10 <= 16)
                    v3->scale = sub_800E930(1024, 256, v3->field_10, 16, 9);
                else
                {
                    v3->scale = 256;
                    v3->field_C = 1;
                }
                break;
        }
    }
    for (i = 0; i < 3; i++)
    {
        struc_75* v3 = 0;
        v3 = &state->field_38[2 - i];
        if (!v3->scale)
            continue;
        switch (v3->field_C)
        {
            case 1:
            case 4:
            case 7:
            {
                const struc_76* shit2 = stru_80D8DF8;
                const struc_76* shit = 0;
                u32 y = (u16)v3->y << 16;
                *(u32*)&a2 = (u16)v3->x | y;
                shit = &shit2[2 - i];
                oam_renderCellData(shit->cellData, &a2, v3->scale, v3->scale, 0, 0);
                break;
            }
        }
    }
}

typedef struct
{
    int x : 16;
    int y : 16;
} test_t;

static void title_8000350(title_state_t* state)
{
    int optionId;
    int v8;
    int v10;
    int itemCount;
    idk_t* items;
    int i;
    int v20;
    const u16* v22;
    u32 v23;
    test_t v33;
    test_t a2;
    test_t v35;
    test_t v36;
    int v37;

    if (state->inLinkSubMenu != state->lastInLinkSubMenu)
    {
        if (state->inLinkSubMenu != 0)
            state->field_134 = (state->field_138 = 156);
        else
            state->field_134 = (state->field_138 = 156 - (16 * state->mainMenuCursorPos));

        state->field_130 = 0;
        state->field_13C = 0;
    }

    state->lastInLinkSubMenu = state->inLinkSubMenu;
    switch (state->field_130)
    {
        case 0:
            break;

        case 1:
            state->field_138 = state->field_134;
            state->field_130 = 2;
            state->field_13C = 0;
            break;

        case 2:
            if (++state->field_13C <= 8)
            {
                v10 = state->field_138;
                v8 = 156 - (state->cursorPos * ((!state->inLinkSubMenu) ? (16) : (13)));
                state->field_134 = v10 + (((v8 - v10) * math_sin(state->field_13C << 11)) >> 15);
            }
            else
            {
                state->field_134 = 156 - (state->cursorPos * ((!state->inLinkSubMenu) ? (16) : (13)));
                state->field_130 = 0;
                state->field_13C = 0;
            }

            break;
    }

    if (state->field_140)
    {
        if (!state->inLinkSubMenu)
        {
            itemCount = state->mainMenuItemCount;
            items = state->mainMenuItems;
            v37 = 16;
        }
        else
        {
            itemCount = state->linkSubMenuItemCount;
            items = state->linkSubMenuItems;
            v37 = 13;
        }

        if (itemCount > 1 && (state->field_390 & 0x2Fu) <= 0x1F)
        {
            test_t tmp;
            tmp.x = 0x78;
            tmp.y = 0x84;
            a2.x = tmp.x;
            v33.x = tmp.x;
            a2.y = tmp.y - 7;
            v33.y = tmp.y + 15;
            if (itemCount == 2)
            {
                if (state->cursorPos == 0)
                    oam_renderCellData(dword_80D8BA4, &v33, 0, 0, 0, 0);
                else
                    oam_renderCellData(dword_80D8BAC, &a2, 0, 0, 0, 0);
            }
            else if (state->cursorPos == 0)
                oam_renderCellData(dword_80D8BA4, &v33, 0, 0, 0, 0);
            else if (state->cursorPos == (itemCount - 1))
                oam_renderCellData(dword_80D8BAC, &a2, 0, 0, 0, 0);
            else
            {
                oam_renderCellData(dword_80D8BAC, &a2, 0, 0, 0, 0);
                oam_renderCellData(dword_80D8BA4, &v33, 0, 0, 0, 0);
            }
        }

        v20 = itemCount;
        for (i = 0; i < v20; i++)
        {
            u32 tmp;
            u32 tmp2;
            optionId = items[i].optionId;
            if (i < state->cursorPos || i > state->cursorPos)
                v22 = off_80D8E4C[optionId];
            else if (!items[i].field4)
                v22 = off_80D8E34[optionId];
            else
                v22 = off_80D8E1C[optionId];

            tmp2 = ((state->field_134 + (i * v37)) - 24) << 16;
            tmp = 0x78;
            tmp |= tmp2;
            *(s32*)&v35 = tmp;
            oam_renderCellData(v22, &v35, 0, 0, 0, 0);
        }

        *(s32*)&v36 = 0x840078;
        if (!state->inLinkSubMenu)
            oam_renderCellData(dword_80D8B14, &v36, 0, 0, 0, 0);
        else
            oam_renderCellData(dword_80D8C44, &v36, 0, 0, 0, 0);
    }

    v23 = ~(state->field_390 >> 2) & 3;
    for (i = 0; i < 4; i++)
        pltt_getBuffer(1)[175 - i] = dword_80CAE70[((int)(i + v23) > 3) ? (i + v23 - 4) : (i + v23)];

    pltt_setDirtyFlag(1);
    if (++state->field_388 > 5)
    {
        state->field_388 = 0;
        if (++state->field_38C > 15)
            state->field_38C = 0;

        CpuCopy16(&state->field_188[32 * state->field_38C + 16], pltt_getBuffer(1) + 152, 16);
        pltt_setDirtyFlag(1);
    }
}

static void title_handleNightStars(title_state_t* state)
{
    const u16* plttSrc;
    u16* plttDst;
    int v11;

    if (++state->field_154 > 8)
    {
        state->field_154 = 0;
        if (++state->field_150 > 7)
            state->field_150 = 0;
    }
    plttSrc = &title_sNightPalette2[16 * state->field_150 + 0xA];
    plttDst = pltt_getBuffer(0);
    CpuSet(plttSrc, plttDst + 122, 4);
    pltt_setDirtyFlag(1);
    switch (state->fallingStarState)
    {
        case 0:
            if (state->koopaShipEnabled)
                if (++state->field_168 > state->field_16C)
                    state->fallingStarState = 1;
            break;
        case 1:
            state->field_168 = 0;
            state->fallingStarPos.x = 60;
            state->fallingStarPos.y = -10;
            state->fallingStarScale = 384;
            state->fallingStarRot = 0;
            state->fallingStarState = 2;
            break;
        case 2:
            if (++state->field_168 <= 32)
            {
                v11 = (32 - state->field_168) * (32 - state->field_168);
                state->fallingStarPos.x = 10 - -50 * v11 / 1024;
                state->fallingStarPos.y = 50 - 60 * v11 / 1024;
                state->fallingStarScale--;
                state->fallingStarRot -= 4096;
            }
            else
            {
                state->field_168 = 0;
                state->field_16C = (main_getRandom() & 0xFF) + 255;
                state->fallingStarState = 0;
            }
            break;
    }
    if (state->fallingStarState > 1)
        oam_renderCellData(title_sFallingStarCellData, &state->fallingStarPos, state->fallingStarScale,
                           state->fallingStarScale, state->fallingStarRot, 0);
}

static void title_handleNightKoopaShip(title_state_t* state)
{
    if (!state->koopaShipEnabled)
        return;
    switch (state->koopaShipState)
    {
        case 0:
            state->koopaShipX = -2097152;
            state->koopaShipCounter = 0;
            state->koopaShipState = 1;
            break;
        case 1:
            if (++state->koopaShipCounter > 599)
            {
                state->koopaShipCounter = 0;
                state->koopaShipState = 2;
            }
            break;
        case 2:
            state->koopaShipCounter++;
            state->koopaShipX += 0x2000;
            state->koopaShipY = 8 * math_sin((u8)state->koopaShipCounter << 8) + 0x200000;
            break;
    }
    state->koopaShipPosition.x = state->koopaShipX >> 16;
    state->koopaShipPosition.y = state->koopaShipY >> 16;
    oam_renderCellData(title_sKoopaShipOamData, &state->koopaShipPosition, 0, 0, 0, NULL);
}

static void vblank(void)
{
    title_state_t* state = title_sState;
    REG_BG0HOFS = state->bg0HOfs;
    REG_BG0VOFS = state->bg0VOfs;
    REG_BG1HOFS = state->bg1HOfs;
    REG_BG1VOFS = state->bg1VOfs;
    REG_BG2HOFS = state->bg2HOfs;
    REG_BG2VOFS = state->bg2VOfs;
    REG_BG3HOFS = state->bg3HOfs;
    REG_BG3VOFS = state->bg3VOfs;
    REG_BLDCNT = state->bldCnt;
    REG_BLDALPHA = state->bldAlpha;
    REG_BLDY = state->bldY;
    REG_WIN0H = state->win0H;
    REG_WIN0V = state->win0V;
    REG_WIN1H = state->win1H;
    REG_WIN1V = state->win1V;
    REG_WININ = state->winIn;
    REG_WINOUT = state->winOut | WINOUT_WIN01_OBJ;
    REG_BG0CNT = state->bg0Cnt;
    REG_BG1CNT = state->bg1Cnt;
    REG_BG2CNT = state->bg2Cnt;
    REG_BG3CNT = state->bg3Cnt;
    REG_DISPCNT = state->dispCnt;
}

static void title_loadGraphics(void)
{
    title_state_t* state = title_sState;

    map_setBufferDestination(0, (void*)(BG_VRAM + 0x1000));
    if (state->isNight)
        LZ77UnCompWram(title_sNightPalette0, pltt_getBuffer(0));
    else if (state->isSunset)
        LZ77UnCompWram(title_sSunsetPalette0, pltt_getBuffer(0));
    else
        LZ77UnCompWram(title_sNormalPalette0, pltt_getBuffer(0));
    main_frameProc();
    if (state->isSunset)
    {
        LZ77UnCompWram(title_sNormalPalette1, pltt_getBuffer(0) + 64);
        LZ77UnCompWram(title_sSunsetPalette1, pltt_getBuffer(0) + 64);
        LZ77UnCompWram(title_sSunsetPalette2, pltt_getBuffer(0) + 112);
    }
    else
        LZ77UnCompWram(title_sNormalPalette1, pltt_getBuffer(0) + 64);
    pltt_setDirtyFlag(1);
    main_frameProc();
    LZ77UnCompWram(dword_80CDCA0, gTempBuffer);
    dmaq_enqueue(dmaq_getVBlankDmaQueue(), gTempBuffer, (void*)(BG_VRAM + 0x4000), 0x80001400);
    main_frameProc();
    LZ77UnCompWram(title_sSkyTiles0, gTempBuffer);
    dmaq_enqueue(dmaq_getVBlankDmaQueue(), gTempBuffer, (void*)(BG_VRAM + 0x8000), 0x80001300);
    main_frameProc();
    LZ77UnCompWram(title_sSkyTiles1, gTempBuffer);
    dmaq_enqueue(dmaq_getVBlankDmaQueue(), gTempBuffer, (void*)(BG_VRAM + 0xA600), 0x80001300);
    main_frameProc();
    LZ77UnCompWram(title_sLogoBgMap, map_getBufferPtr2d(0, 0, 0));
    map_setBufferDirty(1u);
    main_frameProc();
    LZ77UnCompWram(title_sFlagBgMap, gTempBuffer);
    dmaq_enqueue(dmaq_getVBlankDmaQueue(), gTempBuffer, (void*)(BG_VRAM + 0x2000), 0x80000400);
    main_frameProc();
    LZ77UnCompWram(title_sCloudsBgMap, gTempBuffer);
    dmaq_enqueue(dmaq_getVBlankDmaQueue(), gTempBuffer, (void*)(BG_VRAM + 0x2800), 0x80000800);
    main_frameProc();
    LZ77UnCompWram(title_sSkyBgMap, gTempBuffer);
    dmaq_enqueue(dmaq_getVBlankDmaQueue(), gTempBuffer, (void*)(BG_VRAM + 0x3800), 0x80000400);
    main_frameProc();
    LZ77UnCompWram(title_sObjPltt, pltt_getBuffer(1));
    pltt_setDirtyFlag(1);
    main_frameProc();
    LZ77UnCompWram(byte_80CADC4, state->field_188);
    main_frameProc();
    LZ77UnCompWram(title_sObjTiles0, gTempBuffer);
    dmaq_enqueue(dmaq_getVBlankDmaQueue(), gTempBuffer, (void*)(OBJ_VRAM0 + 0x1400), 0x80000A80);
    main_frameProc();
    LZ77UnCompWram(title_sObjTiles1, gTempBuffer);
    dmaq_enqueue(dmaq_getVBlankDmaQueue(), gTempBuffer, (void*)(OBJ_VRAM0 + 0x2900), 0x80000A80);
    main_frameProc();
    LZ77UnCompWram(title_sObjTiles2, gTempBuffer);
    dmaq_enqueue(dmaq_getVBlankDmaQueue(), gTempBuffer, (void*)(OBJ_VRAM0 + 0x3E00), 0x80000A80);
    main_frameProc();
    LZ77UnCompWram(title_sObjTiles3, gTempBuffer);
    dmaq_enqueue(dmaq_getVBlankDmaQueue(), gTempBuffer, (void*)(OBJ_VRAM0 + 0x5300), 0x80000A80);
    main_frameProc();
    LZ77UnCompWram(title_sObjTiles4, gTempBuffer);
    dmaq_enqueue(dmaq_getVBlankDmaQueue(), gTempBuffer, (void*)(OBJ_VRAM0 + 0x6800), 0x80000200);
    main_frameProc();
    LZ77UnCompWram(title_sObjTiles5, gTempBuffer);
    dmaq_enqueue(dmaq_getVBlankDmaQueue(), gTempBuffer, (void*)(OBJ_VRAM0 + 0x6C00), 0x80000400);
    main_frameProc();
    LZ77UnCompWram(title_sObjTiles6, gTempBuffer);
    dmaq_enqueue(dmaq_getVBlankDmaQueue(), gTempBuffer, (void*)(OBJ_VRAM0 + 0x7400), 0x80000260);
    main_frameProc();
    LZ77UnCompWram(title_sDriversBgTiles0, byte_2010400);
    main_frameProc();
    LZ77UnCompWram(title_sDriversBgTiles1, &byte_2010400[0x1600]);
    main_frameProc();
    LZ77UnCompWram(title_sDriversBgTiles2, &byte_2010400[0x2C00]);
    main_frameProc();
    LZ77UnCompWram(title_sDriversBgTiles3, &byte_2010400[0x4200]);
    main_frameProc();
    LZ77UnCompWram(title_sDriversBgMap, title_sDriversBgMapBuf);
    main_frameProc();
    if (state->isNight)
    {
        LZ77UnCompVram(title_sNightSkyBgMap, (void*)(BG_VRAM + 0x3800));
        CpuFastCopy(title_sNightPalette1, pltt_getBuffer(0) + 64, 32);
        CpuFastCopy(title_sNightPalette2, pltt_getBuffer(0) + 112, 32);
        pltt_setDirtyFlag(1);
    }
    main_frameProc();
    state->bg0Cnt = BGCNT_TXT512x256 | BGCNT_16COLOR | BGCNT_SCREENBASE(2) | BGCNT_CHARBASE(1) | BGCNT_PRIORITY(0);
    state->bg1Cnt = BGCNT_TXT256x256 | BGCNT_16COLOR | BGCNT_SCREENBASE(4) | BGCNT_CHARBASE(1) | BGCNT_PRIORITY(1);
    state->bg2Cnt = BGCNT_TXT256x512 | BGCNT_16COLOR | BGCNT_SCREENBASE(5) | BGCNT_CHARBASE(2) | BGCNT_PRIORITY(2);
    state->bg3Cnt = BGCNT_TXT256x256 | BGCNT_16COLOR | BGCNT_SCREENBASE(7) | BGCNT_CHARBASE(2) | BGCNT_PRIORITY(3);
    state->bldCnt = BLDCNT_TGT1_ALL | BLDCNT_EFFECT_LIGHTEN;
    state->bldY = 16;
    state->dispCnt = DISPCNT_MODE_0 | DISPCNT_OBJ_ON | DISPCNT_BG3_ON | DISPCNT_BG2_ON | DISPCNT_OBJ_1D_MAP;
    state->bg0HOfs = 0;
    state->bg0VOfs = 0;
    state->bg1HOfs = 0;
    state->bg1VOfs = 32;
    state->bg2HOfs = 0;
    state->bg2VOfs = 0;
    state->bg3HOfs = 0;
    state->bg3VOfs = 0;
}

extern u8 gMainFrmHeap[0x8000];

extern bool32 spm_main(void);
extern bool32 multilink_main(void);
extern bool32 singlelink_main(void);
extern bool32 ghost_main(void);

bool32 title_main(void)
{
    u32 stateId;
    int counter;
    title_state_t* state;
    int i;
    int j;
    int k;
    int menuItemCount;
    int v20;
    int bgMusicState;
    int v81;
    int v82;
    int v83;
    scene_state_t* sceneState;
    idk_t* menuItems;
    u32* v19;

    stateId = 1;
    counter = 0;
    bgMusicState = 0;
    v81 = 0;
    v82 = 0;
    v83 = 0;
    sio2_sMPlayerId.field_16 = 0;
    sio2_stop();
    sceneState = &gSceneState;
    frmheap_init(&sceneState->raceState.frameHeap, gMainFrmHeap, sizeof(gMainFrmHeap));
    state = title_sState = (title_state_t*)frmheap_calloc(&sceneState->raceState.frameHeap, 1, sizeof(title_state_t));
    state->field_34 = frmheap_calloc(&sceneState->raceState.frameHeap, 1, 0x1400);
    state->isSunset = TRUE;
    v19 = &state->inLinkSubMenu + 1;
    for (i = 0; i < 5; i++)
    {
        for (j = 0; j < 3; j++)
        {
            if (save_getSavePointer_805D9B0()->field28[i][j])
                state->isSunset = FALSE;
        }
    }

    state->isNight = TRUE;
    for (i = 0; i < 5; i++)
    {
        for (j = 0; j < 3; j++)
        {
            if (save_getSavePointer_805D9B0()->field46[i][j])
                state->isNight = FALSE;
        }
    }

    state->field_2C = 0;
    state->field_30 = 0;
    state->mainMenuItemCount = 3;
    for (i = 0; i < state->mainMenuItemCount; i++)
    {
        state->mainMenuItems[i].optionId = dword_80D8E64[i];
        state->mainMenuItems[i].field4 = 0;
    }

    state->mainMenuCursorPos = 0;
    state->inLinkSubMenu = FALSE;
    state->lastInLinkSubMenu = 0;
    state->cursorPos = 0;
    state->lastCursorPos = 0;
    state->field_130 = 0;
    state->field_134 = 156;
    state->field_138 = 156;
    state->field_13C = 0;
    state->field_140 = 0;
    state->field_388 = 0;
    state->field_38C = 0;
    state->koopaShipEnabled = 0;
    state->fallingStarScale = 0;
    state->fallingStarRot = 0;
    state->field_168 = 0;
    state->field_16C = 0;
    state->koopaShipState = 0;
    for (i = 0; i <= 0; i++)
        (state->field_38 + i)->field_C = 2;
    for (i = 1; i <= 2; i++)
        (state->field_38 + i)->field_C = 5;

    m4aMPlayAllStop();
    oam_init();
    state->dispCnt = 0;
    state->bldCnt = BLDCNT_TGT1_ALL | BLDCNT_EFFECT_LIGHTEN;
    state->bldY = 16;
    scene_setVBlankFunc(vblank);
    title_loadGraphics();
    vcount_register(70, vcount70);
    irq_updateMask(IRQ_UPDATE_MODE_OR, IRQ_MASK_VCOUNT);
    while (1)
    {
        oam_update();
        main_frameProc();
        state->field_390++;
        if (!v19[-1])
        {
            menuItemCount = state->mainMenuItemCount;
            menuItems = state->mainMenuItems;
        }
        else
        {
            menuItemCount = state->linkSubMenuItemCount;
            menuItems = state->linkSubMenuItems;
        }

        for (k = 0; k < menuItemCount; k++)
        {
            switch (menuItems[k].optionId)
            {
                case 0:
                    menuItems[k].field4 = 1;
                    break;
                case 1:
                    menuItems[k].field4 = 1;
                    break;
                case 2:
                    menuItems[k].field4 = 1;
                    break;
                case 3:
                    menuItems[k].field4 = 1;
                    break;
                case 4:
                    menuItems[k].field4 = 1;
                    break;
                case 5:
                    menuItems[k].field4 = 1;
                    break;
            }
        }

        switch (stateId)
        {
            case 1:
                stateId = 0x15;
                counter = 0;
                break;

            case 21:
                v20 = 0;
                if (counter <= 32)
                {
                    state->bldCnt = BLDCNT_TGT1_ALL | BLDCNT_EFFECT_LIGHTEN;
                    state->bldY = (-16 * counter / 32) + 16;
                }
                else if ((u32)(counter - 128) <= 0x80)
                    v20 = 10 * (counter - 128) / 128;
                else
                    v20 = 10;

                if (counter > 128)
                {
                    state->dispCnt |= DISPCNT_BG1_ON;
                    state->bldCnt = BLDCNT_TGT1_BG1 | BLDCNT_EFFECT_BLEND | BLDCNT_TGT2_BG0 | BLDCNT_TGT2_BG2 |
                                    BLDCNT_TGT2_BG3 | BLDCNT_TGT2_OBJ | BLDCNT_TGT2_BD;
                    state->bldAlpha = BLDALPHA_BLEND(v20, 16 - (s16)v20);
                }

                if (++counter <= 480)
                {
                    if (counter <= 128)
                        state->bg2VOfs = (192 * counter / 128) + 128;
                    else if (counter > 304)
                        state->bg2VOfs = (288 * (counter - 304) / 176) + 320;

                    state->bg3VOfs = counter / 6;
                }
                else
                {
                    counter = 0;
                    stateId = 0;
                }

                if (state->bg2VOfs > 0x140u && v82 != 1)
                {
                    if (v83 <= 15)
                    {
                        const void* src = &byte_2010400[0x580 * v83];
                        void* dst = (void*)(BG_VRAM + 0xA800 + 0x580 * v83);
                        dmaq_enqueue(dmaq_getVBlankDmaQueue(), src, dst, 0x800002C0);
                        ++v83;
                    }
                    else
                    {
                        dmaq_enqueue(dmaq_getVBlankDmaQueue(), title_sDriversBgMapBuf, (void*)(BG_VRAM + 0x2800),
                                     0x80000400);
                        v82 = 1;
                    }

                    state->bg2Cnt &= ~BGCNT_256COLOR;
                    state->bg2Cnt |= BGCNT_256COLOR;
                }

                if (counter > 32 && main_checkKeysTriggered(A_BUTTON | START_BUTTON))
                {
                    bgMusicState = 2;
                    counter = 0;
                    stateId = 0x16;
                }

                break;

            case 0:
                if (gMPlayMemAccArea[0] > 2u)
                {
                    counter = 0;
                    stateId = 0x16;
                }

                if (main_checkKeysTriggered(A_BUTTON | START_BUTTON))
                {
                    bgMusicState = 2;
                    counter = 0;
                    stateId = 0x16;
                }

                break;

            case 22:
                if (++counter <= 10)
                {
                    state->bldCnt = BLDCNT_TGT1_ALL | BLDCNT_EFFECT_LIGHTEN;
                    state->bldY = (16 * counter) / 10;
                }
                else
                {
                    state->bldCnt = BLDCNT_TGT1_ALL | BLDCNT_EFFECT_LIGHTEN;
                    state->bldY = 16;
                    counter = 0;
                    stateId = 0x17;
                    v83 = 0;
                }
                break;

            case 23:
                state->bg0HOfs = 0;
                state->bg0VOfs = 0;
                state->bg1HOfs = 0;
                state->bg1VOfs = 32;
                state->bg2HOfs = 0;
                state->bg2VOfs = 608;
                state->bg3HOfs = 0;
                state->bg3VOfs = 80;
                for (i = 0; i < 3; i++)
                    (state->field_38 + i)->field_C = 0;
                state->dispCnt |= DISPCNT_BG0_ON;
                state->dispCnt |= DISPCNT_BG1_ON;
                state->win0H = WIN_RANGE(40, 200);
                state->win0V = WIN_RANGE(117, 147);
                state->win1H = WIN_RANGE(200, 240);
                state->win1V = WIN_RANGE(128, 160);
                state->winIn = WININ_WIN0_BG_ALL | WININ_WIN0_OBJ | WININ_WIN0_CLR | WININ_WIN1_BG_ALL |
                               WININ_WIN1_OBJ | WININ_WIN1_CLR;
                state->winOut = WINOUT_WIN01_BG_ALL | WINOUT_WIN01_CLR;
                state->dispCnt |= DISPCNT_WIN0_ON | DISPCNT_WIN1_ON;
                state->field_140 = 1;
                state->koopaShipEnabled = 1;
                if (v82 != 1)
                {
                    if (v83 <= 15)
                    {
                        const void* src = &byte_2010400[0x580 * v83];
                        void* dst = (void*)(BG_VRAM + 0xA800 + 0x580 * v83);
                        dmaq_enqueue(dmaq_getVBlankDmaQueue(), src, dst, 0x800002C0);
                        ++v83;
                    }
                    else
                    {
                        dmaq_enqueue(dmaq_getVBlankDmaQueue(), title_sDriversBgMapBuf, (void*)(BG_VRAM + 0x2800),
                                     0x80000400);
                        v82 = 1;
                    }

                    state->bg2Cnt &= ~BGCNT_256COLOR;
                    state->bg2Cnt |= BGCNT_256COLOR;
                }

                if (v82)
                {
                    counter = 0;
                    stateId = 0x18;
                }
                break;

            case 24:
                if (++counter <= 16)
                {
                    state->bldCnt = BLDCNT_TGT1_ALL | BLDCNT_EFFECT_LIGHTEN;
                    state->bldY = 16 - counter;
                }
                else
                {
                    u32 tmp;
                    state->bldCnt = BLDCNT_TGT1_BG1 | BLDCNT_EFFECT_BLEND | BLDCNT_TGT2_BG0 | BLDCNT_TGT2_BG2 |
                                    BLDCNT_TGT2_BG3 | BLDCNT_TGT2_OBJ | BLDCNT_TGT2_BD;
                    tmp = BLDALPHA_BLEND(10, 6);
                    state->bldAlpha = tmp;
                    counter = 0;
                    stateId = 0x19;
                }
                break;

            case 25:
                if (counter <= 69)
                    ++counter;

                if (main_checkKeysRepeatTriggered(DPAD_UP))
                    --state->cursorPos;

                if (main_checkKeysRepeatTriggered(DPAD_DOWN))
                    ++state->cursorPos;

                if (state->cursorPos < 0)
                    state->cursorPos = 0;

                if (state->cursorPos >= state->mainMenuItemCount)
                    state->cursorPos = state->mainMenuItemCount - 1;

                if (state->lastCursorPos != state->cursorPos)
                {
                    m4aSongNumStart(SONG_141);
                    state->field_130 = 1;
                }
                else if (main_checkKeysTriggered(A_BUTTON | START_BUTTON) && counter > 69)
                {
                    counter = 0;
                    if (state->mainMenuItems[state->cursorPos].field4)
                    {
                        if (state->mainMenuItems[state->cursorPos].optionId == 1)
                        {
                            m4aSongNumStart(SONG_142);
                            state->linkSubMenuItemCount = 2;
                            for (i = 0; i < state->linkSubMenuItemCount; i++)
                            {
                                state->linkSubMenuItems[i].optionId = dword_80D8E67[i];
                                state->linkSubMenuItems[i].field4 = 0;
                            }

                            state->inLinkSubMenu = TRUE;
                            state->mainMenuCursorPos = state->cursorPos;
                            state->cursorPos = 0;
                            stateId = 0x1A;
                        }
                        else
                        {
                            m4aSongNumStart(SONG_143);
                            state->selectedOption = state->mainMenuItems[state->cursorPos].optionId;
                            stateId = 0x1C;
                        }
                    }
                    else
                        m4aSongNumStart(SONG_145);
                }

                state->lastCursorPos = state->cursorPos;
                break;

            case 26:
                counter = 0;
                if (main_checkKeysRepeatTriggered(DPAD_UP))
                    --state->cursorPos;

                if (main_checkKeysRepeatTriggered(DPAD_DOWN))
                    ++state->cursorPos;

                if (state->cursorPos < 0)
                    state->cursorPos = 0;

                if (state->cursorPos >= state->linkSubMenuItemCount)
                    state->cursorPos = state->linkSubMenuItemCount - 1;

                if (state->lastCursorPos != state->cursorPos)
                {
                    m4aSongNumStart(SONG_141);
                    state->field_130 = 1;
                }
                else if (main_checkKeysTriggered(A_BUTTON | START_BUTTON))
                {
                    if (state->linkSubMenuItems[state->cursorPos].field4)
                    {
                        m4aSongNumStart(SONG_143);
                        state->selectedOption = state->linkSubMenuItems[state->cursorPos].optionId;
                        stateId = 0x1C;
                    }
                    else
                        m4aSongNumStart(SONG_145);
                }
                else if (main_checkKeysTriggered(B_BUTTON))
                {
                    m4aSongNumStart(SONG_144);
                    state->inLinkSubMenu = FALSE;
                    state->cursorPos = state->mainMenuCursorPos;
                    counter = 70;
                    stateId = 25;
                }

                state->lastCursorPos = state->cursorPos;
                break;

            case 28:
            {
                const struct MusicPlayer* mPlayTab = gMPlayTable;
                const struct Song* songTab = gSongTable;
                const struct Song* song = &songTab[52];
                struct MusicPlayerInfo* info = mPlayTab[song->ms].info;
                m4aMPlayFadeOut(info, 1);
                stateId = 0x1D;
                break;
            }

            case 29:
                if (++counter <= 16)
                {
                    state->bldCnt = BLDCNT_TGT1_ALL | BLDCNT_EFFECT_LIGHTEN;
                    state->bldY = counter;
                    break;
                }

                pltt_getBuffer(0)[0] = 0xFFFF;
                pltt_setDirtyFlag(1);
                scene_setVBlankFunc(0);
                irq_updateMask(IRQ_UPDATE_MODE_AND, ~IRQ_MASK_VCOUNT);
                switch (state->selectedOption)
                {
                    case 0:
                        scene_setMainFunc(spm_main);
                        return 1;

                    case 2:
                        scene_setMainFunc(ghost_main);
                        return 1;

                    case 1:
                    case 4:
                        scene_setMainFunc(multilink_main);
                        return 1;

                    case 5:
                        scene_setMainFunc(singlelink_main);
                        return 1;
                }

                return 1;
        }

        if (v82 != 1)
            state->bg2HOfs++;
        else
            state->bg2HOfs = 0;

        if (state->bg2VOfs > 320)
            dmaq_enqueue(dmaq_getVBlankDmaQueue(), unk_203EBE0, (void*)(BG_VRAM + 0x8000), 0x81000020);

        if (++state->field_2C > 8)
        {
            state->field_2C = 0;
            if (++state->field_30 > 4)
                state->field_30 = 0;

            LZ77UnCompWram(off_80D8E6C[state->field_30], state->field_34);
            dmaq_enqueue(dmaq_getVBlankDmaQueue(), state->field_34, (void*)(BG_VRAM + 0x6000), 0x80000A00);
        }

        title_8000350(state);
        title_80001D8(state);
        if (state->isNight)
        {
            title_handleNightStars(state);
            title_handleNightKoopaShip(state);
        }

        switch (bgMusicState)
        {
            case 0:
                m4aSongNumStart(state->isNight ? SONG_TITLE_INTRO_NIGHT : SONG_TITLE_INTRO);
                bgMusicState = 1;
                break;

            case 1:
                if (gMPlayMemAccArea[0] > 2u && ++v81 > 23)
                    bgMusicState = 2;
                break;

            case 2:
                m4aSongNumStart(SONG_TITLE);
                bgMusicState = 3;
                break;
        }
    }
}

static void vcount70(void)
{
    title_state_t* state = title_sState;
    REG_WINOUT = state->winOut;
}
