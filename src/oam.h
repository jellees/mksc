#pragma once

#include "math.h"

typedef struct
{
    const u16* level0Data;
    int level0Shift;
    const u16* level1Data;
    int level1Shift;
    const u16* level2Data;
    int level2Shift;
    const u16* level3Data;
    int level3Shift;
} oam_mipmap_cell_data_t;

typedef struct
{
    const u16* cellData;
    u16 offsetX;
    u16 offsetY;
    u32 attr01Bits;
    u32 attr01Mask;
    u32 attr2Bits;
    u32 attr2Mask;
    s16 affinePa;
    s16 affinePb;
    s16 affinePc;
    s16 affinePd;
    u16 scaleX;
    u16 scaleY;
} oam_cell_t;

typedef struct
{
    int field0;
    int priority;
} struc_6;

typedef struct oam_cell_list_entry_t
{
    struct oam_cell_list_entry_t* next;
    struct oam_cell_list_entry_t* prev;
    struc_6 field8;
    oam_cell_t cell;
} oam_cell_list_entry_t;

bool32 oam_renderCell(oam_cell_t* cell);
void oam_renderCellData(const u16* cellData, vec2s16_t* position, int scaleX, int scaleY, int rotation, struc_6* a6);
oam_cell_list_entry_t* oam_802FC48(oam_cell_list_entry_t* listEntry);
void oam_init(void);
void oam_update(void);
void oam_reset(void);
void oam_dmaCopyToHw(void);
void oam_cpuCopyToHw(void);

inline void oam_802FE4C(bool32 value);

void oam_renderMipmapCellDataUniform(const oam_mipmap_cell_data_t* cellData, vec2s16_t* position, int scale,
                                     struc_6* a4);
void oam_renderMipmapCellData(const oam_mipmap_cell_data_t* cellData, vec2s16_t* position, int mipmapScale, int scaleX,
                              int scaleY, int rotation, struc_6* a7);
void oam_renderCellDataSimple(const u16* cellData, int x, int y, int scale, struc_6* a6);
bool32 sub_802FF58(vec2s16_t* a1, s16 a2);

inline int oam_bufferCellAffineMtx(oam_cell_t* cell);

inline void oam_renderAllCells(void);
