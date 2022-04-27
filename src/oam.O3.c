#include "common.h"
#include "math.h"
#include "oam.h"

static const int sObjHalfWidth[3][4] = { { 4, 8, 16, 32 }, { 8, 16, 16, 32 }, { 4, 4, 8, 16 } };
static const int sObjHalfHeight[3][4] = { { 4, 8, 16, 32 }, { 4, 4, 8, 16 }, { 8, 16, 16, 32 } };

static int sBufferOffset;
static int sNextAffineId;
static u16 sBuffer[128 * 4];
static oam_cell_list_entry_t sCellListEntries[32];
static oam_cell_list_entry_t* sCellListHead;
static oam_cell_list_entry_t* sCellListTail;
static int sCellListEntryCount;
static bool32 sCopyDisabled;
static bool32 oam_3002188;
static bool32 oam_300218C;

bool32 oam_renderCell(oam_cell_t* cell);
void oam_renderCellData(const u16* cellData, vec2s16_t* position, int scaleX, int scaleY, int rotation, struc_6* a6);
oam_cell_list_entry_t* oam_802FC48(oam_cell_list_entry_t* a1);
void oam_init(void);
void oam_update(void);
void oam_reset(void);
void oam_dmaCopyToHw(void);
void oam_cpuCopyToHw(void);

inline void oam_802FE4C(bool32 value)
{
    oam_3002188 = value;
}

void oam_renderMipmapCellDataUniform(const oam_mipmap_cell_data_t* a1, vec2s16_t* position, int scale, struc_6* a4);
void oam_renderMipmapCellData(const oam_mipmap_cell_data_t* a1, vec2s16_t* position, int mipmapScale, int scaleX,
                              int scaleY, int rotation, struc_6* a7);
void oam_renderCellDataSimple(const u16* cellData, int x, int y, int scale, struc_6* a6);
bool32 sub_802FF58(vec2s16_t* a1, s16 a2);

inline int oam_bufferCellAffineMtx(oam_cell_t* cell)
{
    if (sNextAffineId > 31)
        return -1;

    (sBuffer + 3)[0x10 * sNextAffineId] = cell->affinePa;
    (sBuffer + 7)[0x10 * sNextAffineId] = cell->affinePb;
    (sBuffer + 11)[0x10 * sNextAffineId] = cell->affinePc;
    (sBuffer + 15)[0x10 * sNextAffineId] = cell->affinePd;
    return sNextAffineId++;
}

inline void oam_renderAllCells(void)
{
    oam_cell_list_entry_t* listEntry;

    if (!sCellListHead)
        return;

    listEntry = sCellListHead;
    while (1)
    {
        oam_renderCell(&listEntry->cell);
        if (!listEntry->next)
            break;
        listEntry = listEntry->next;
    }
}

#ifndef NONMATCHING
asm_unified(".include \"nonmatching/text0802F6BC.s\"");
#else
bool32 oam_renderCell(oam_cell_t* cell)
{
    int offsetX;
    int offsetY;
    int v34;
    int scaleX;
    int scaleY;
    int v37;
    const u16* cellData;
    u16 new_var11;
    int new_var18;
    u32 new_var12;
    u32 new_var17;
    int v3_3;
    const u16* v2;
    int v3;
    int v3_2;
    vu32* v5;
    vu32* v5_2;
    vu32* v5_4;
    vu32* v5_3;
    int v8;
    int v9;
    u32 new_var7;
    int shape;
    int v11;
    int size;
    int halfHeight;
    int v21;
    int v22;
    int v24;
    int halfWidth;
    int v26;
    int new_var16;
    int new_var14;
    int new_var6;
    u32 attr0;
    int new_var5;
    u32 attr2;
    int new_var8;
    int new_var3;
    u32 attr1_2;
    int new_var10;
    u32 attr1_3;
    int attr2_2;
    int new_var13;
    int new_var2;
    int new_var9;
    u16* ptr5;
    unsigned int new_var15;
    int x;
    s16 x2;
    u32 attr1;
    int y;
    int y2;
    int y3;
    int y6;
    int x3;
    s16 y4;
    u32 foo;
    int tmp2;
    u16* new_var4;
    u16 tmp;
    oam_cell_t* new_var;
    v2 = cell->cellData;
    offsetX = cell->offsetX;
    offsetY = cell->offsetY;
    v34 = *(v2++);
    scaleX = cell->scaleX;
    scaleY = cell->scaleY;
    if (sBufferOffset > 511)
    {
        return -1;
    }

    if ((((scaleX == 256) && (scaleY == 256)) && (cell->affinePa == 256)) && (cell->affinePb == 0))
    {
        for (; v34 > 0; v34--)
        {
            if (sBufferOffset > 511)
            {
                return 0;
            }

            attr1 = *(v2++);
            sBuffer[sBufferOffset] = ((attr1 + offsetY) & 0xFF) | (attr1 & 0xFF00);
            attr1 = *(v2++);
            (sBuffer + 1)[sBufferOffset] = ((attr1 + offsetX) & 0x1FF) | (attr1 & 0xFE00);
            ((vu32*)sBuffer)[sBufferOffset / 2] &= cell->attr01Mask;
            ((vu32*)sBuffer)[sBufferOffset / 2] |= cell->attr01Bits;
            ((vu32*)sBuffer)[sBufferOffset / 2] &= ~0x300;
            attr1 = *(v2++);
            (sBuffer + 2)[sBufferOffset] = attr1;
            ((vu32*)(sBuffer + 2))[sBufferOffset / 2] &= cell->attr2Mask;
            ((vu32*)(sBuffer + 2))[sBufferOffset / 2] |= cell->attr2Bits;
            sBufferOffset += 4;
        }
    }
    else
    {
        attr1 = v2[1];
        v8 = (attr1 & 0x1000) ? (-1) : (1);
        v9 = (attr1 & 0x2000) ? (-1) : (1);
        cell->affinePa *= v8;
        cell->affinePb *= v8;
        cell->affinePc *= v9;
        cell->affinePd *= v9;
        v3_3 = oam_bufferCellAffineMtx(cell);
        if (v3_3 < 0)
        {
            return -1;
        }

        if ((scaleX < 256) || (scaleY < 256))
        {
            new_var17 = 768;
        }
        else
        {
            new_var17 = 256;
        }

        for (; v34 > 0; v34--)
        {
            shape = v2[0] >> 14;
            size = v2[1] >> 14;
            if (sBufferOffset > 511)
            {
                return 0;
            }

            attr1 = *(v2++);
            y2 = attr1;
            y2 = y2 & 0xFF;
            v22 = (s8)y2;
            y3 = v22 + sObjHalfHeight[shape][size];
            halfHeight = sObjHalfHeight[shape][size];
            v22 = y3 << 8;
            v22 = Div(v22, scaleY);
            v22 = y2 + (v22 - y3);
            if (new_var17 != 256)
            {
                v22 -= halfHeight;
            }

            y4 = offsetY;
            *(&sBuffer[sBufferOffset]) = ((v22 + y4) & 0xFF) | (attr1 & (~0xFF));
            attr1 = *(v2++);
            y2 = attr1 & 511;
            v22 = (y2 > 0xFF) ? (-(y2 ^ 511)) : (y2);
            y3 = v22 + sObjHalfWidth[shape][size];
            halfHeight = sObjHalfWidth[shape][size];
            v22 = y3 << 8;
            v22 = Div(v22, scaleX);
            v22 = y2 + (v22 - y3);
            if (new_var17 != 256)
            {
                v22 -= halfHeight;
            }

            y4 = offsetX;
            (sBuffer + 1)[sBufferOffset] = (((y4 + v22) & 0x1FF) | ((v3_3 << 9) & 0x3E00)) | (attr1 & 0xC000);
            ((vu32*)sBuffer)[sBufferOffset / 2] &= cell->attr01Mask;
            ((vu32*)sBuffer)[sBufferOffset / 2] |= cell->attr01Bits;
            ((vu32*)sBuffer)[sBufferOffset / 2] &= ~0x300;
            ((vu32*)sBuffer)[sBufferOffset / 2] |= new_var17;
            (sBuffer + 2)[sBufferOffset] = *(v2++);
            ((vu32*)(sBuffer + 2))[sBufferOffset / 2] &= cell->attr2Mask;
            ((vu32*)(sBuffer + 2))[sBufferOffset / 2] |= cell->attr2Bits;
            sBufferOffset += 4;
        }
    }

    return 0;
}
#endif

void oam_renderCellData(const u16* cellData, vec2s16_t* position, int scaleX, int scaleY, int rotation, struc_6* a6)
{
    oam_cell_list_entry_t* v12;
    oam_cell_list_entry_t* v13;
    oam_cell_list_entry_t* v14;
    struc_6* v16;
    oam_cell_t* cell;
    oam_cell_t v20;

    if (!a6)
    {
        cell = &v20;
        cell->cellData = cellData;
        cell->offsetX = position->x;
        cell->offsetY = position->y;
        cell->attr01Bits = 0;
        cell->attr01Mask = -1;
        cell->attr2Bits = 0;
        cell->attr2Mask = -1;
        if (!scaleX || !scaleY)
        {
            scaleY = 256;
            scaleX = 256;
        }
        cell->affinePa = scaleX * math_cos(rotation) / 0x8000;
        cell->affinePb = scaleX * math_sin(rotation) / 0x8000;
        cell->affinePc = -scaleY * math_sin(rotation) / 0x8000;
        cell->affinePd = scaleY * math_cos(rotation) / 0x8000;
        cell->scaleX = scaleX;
        cell->scaleY = scaleY;
        oam_300218C = 1;
        oam_renderCell(cell);
        oam_300218C = 0;
        return;
    }
    if (sCellListEntryCount <= 31)
    {
        v12 = &sCellListEntries[sCellListEntryCount];
        v13 = sCellListHead;
        if (!v13)
        {
            sCellListTail = &sCellListEntries[sCellListEntryCount];
            sCellListHead = &sCellListEntries[sCellListEntryCount];
            v12->prev = v13;
            v12->next = v13;
        }
        else
        {
            v14 = sCellListTail;
            v14->next = v12;
            v12->prev = v14;
            v12->next = 0;
            sCellListTail = v12;
        }
        v16 = &sCellListEntries[sCellListEntryCount].field8;
        v16->field0 = a6->field0;
        v16->priority = a6->priority;
        v16->priority += ((cellData[3] & 0xC00) << 16);
        cell = &sCellListEntries[sCellListEntryCount].cell;
        cell->cellData = cellData;
        cell->offsetX = position->x;
        cell->offsetY = position->y;
        cell->attr01Bits = 0;
        cell->attr01Mask = -1;
        cell->attr2Bits = 0;
        cell->attr2Mask = -1;
        if (!scaleX || !scaleY)
        {
            scaleY = 256;
            scaleX = 256;
        }
        cell->affinePa = scaleX * math_cos(rotation) / 0x8000;
        cell->affinePb = scaleX * math_sin(rotation) / 0x8000;
        cell->affinePc = -scaleY * math_sin(rotation) / 0x8000;
        cell->affinePd = scaleY * math_cos(rotation) / 0x8000;
        cell->scaleX = scaleX;
        cell->scaleY = scaleY;
        sCellListEntryCount++;
    }
}

oam_cell_list_entry_t* oam_802FC48(oam_cell_list_entry_t* listEntry)
{
    oam_cell_list_entry_t* v2;
    oam_cell_list_entry_t* v4;
    oam_cell_list_entry_t* v5;
    oam_cell_list_entry_t* v7;
    oam_cell_list_entry_t* v6;
    oam_cell_list_entry_t* v8;
    oam_cell_list_entry_t* v9;
    oam_cell_list_entry_t entry;
    if ((!listEntry) || (!listEntry->next))
    {
        return listEntry;
    }

    v4 = listEntry;
    v2 = v4->next;
    while (v2)
    {
        v2 = v2->next;
        if (!v2)
        {
            break;
        }

        v4 = v4->next;
        v2 = v2->next;
    }

    v5 = v4->next;
    v4->next = 0;
    v7 = oam_802FC48(listEntry);
    v8 = oam_802FC48(v5);
    v9 = &entry;
    while (v7 && v8)
    {
        if ((v7->field8.priority > v8->field8.priority) ||
            ((v7->field8.priority == v8->field8.priority) && (v7->field8.field0 > v8->field8.field0)))
        {
            v9->next = v8;
            v9 = v8;
            v8 = v8->next;
        }
        else
        {
            v9->next = v7;
            v9 = v7;
            v7 = v7->next;
        }
    }

    if (!v7)
    {
        v5 = v8;
        v9->next = v5;
    }
    else
    {
        v9->next = v7;
    }

    return entry.next;
}

void oam_init(void)
{
    int i;
    u32* ptr;

    CpuFastFill(0, (void*)OAM, OAM_SIZE);
    sBufferOffset = 0;
    sNextAffineId = 0;
    i = 0;
    while (i < sizeof(sBuffer) / 4)
    {
        ptr = (u32*)sBuffer;
        ptr[i++] = 0x200;
        ptr[i++] = 0;
    }
    sCellListHead = sCellListTail = 0;
    sCellListEntryCount = 0;
    oam_802FE4C(1);
    oam_300218C = 0;
}

void oam_update(void)
{
    if (!oam_3002188 || !sCopyDisabled)
        return;
    oam_300218C = 1;
    sCellListHead = oam_802FC48(sCellListHead);
    oam_renderAllCells();
    sCopyDisabled = 0;
    oam_300218C = 0;
}

void oam_reset(void)
{
    int i;
    u32* ptr;

    if (!oam_3002188 || oam_300218C)
        return;

    sBufferOffset = 0;
    sNextAffineId = 0;
    sCellListHead = 0;
    sCellListTail = 0;
    sCellListEntryCount = 0;
    i = 0;
    while (i < sizeof(sBuffer) / 4)
    {
        ((u32*)sBuffer)[i] = 0x200;
        i += 2;
    }
    sCopyDisabled = 1;
}

void oam_dmaCopyToHw(void)
{
    if (!sCopyDisabled)
        DmaCopy32(0, sBuffer, (void*)OAM, sizeof(sBuffer));
}

void oam_cpuCopyToHw(void)
{
    if (!sCopyDisabled)
        CpuCopy32(sBuffer, (void*)OAM, sizeof(sBuffer));
}
void oam_renderMipmapCellDataUniform(const oam_mipmap_cell_data_t* cellData, vec2s16_t* position, int scale,
                                     struc_6* a4)
{
    if (scale <= 511)
        oam_renderCellData(cellData->level0Data, position, scale >> cellData->level0Shift,
                           scale >> cellData->level0Shift, 0, a4);
    else if (scale <= 1023)
        oam_renderCellData(cellData->level1Data, position, scale >> cellData->level1Shift,
                           scale >> cellData->level1Shift, 0, a4);
    else if (scale <= 2047)
        oam_renderCellData(cellData->level2Data, position, scale >> cellData->level2Shift,
                           scale >> cellData->level2Shift, 0, a4);
    else
        oam_renderCellData(cellData->level3Data, position, scale >> cellData->level3Shift,
                           scale >> cellData->level3Shift, 0, a4);
}

void oam_renderMipmapCellData(const oam_mipmap_cell_data_t* cellData, vec2s16_t* position, int mipmapScale, int scaleX,
                              int scaleY, int rotation, struc_6* a7)
{
    if (mipmapScale <= 511)
        oam_renderCellData(cellData->level0Data, position, scaleX >> cellData->level0Shift,
                           scaleY >> cellData->level0Shift, rotation, a7);
    else if (mipmapScale <= 1023)
        oam_renderCellData(cellData->level1Data, position, scaleX >> cellData->level1Shift,
                           scaleY >> cellData->level1Shift, rotation, a7);
    else if (mipmapScale <= 2047)
        oam_renderCellData(cellData->level2Data, position, scaleX >> cellData->level2Shift,
                           scaleY >> cellData->level2Shift, rotation, a7);
    else
        oam_renderCellData(cellData->level3Data, position, scaleX >> cellData->level3Shift,
                           scaleY >> cellData->level3Shift, rotation, a7);
}

void oam_renderCellDataSimple(const u16* cellData, int x, int y, int scale, struc_6* a6)
{
    vec2s16_t a2;
    x <<= 16;
    y <<= 16;
    *(u32*)&a2 = ((u32)x >> 16) | y;

    oam_renderCellData(cellData, &a2, scale, scale, 0, a6);
}

bool32 sub_802FF58(vec2s16_t* a1, s16 a2)
{
    if ((u16)(a1->x + 64) > 0x170 || a1->y < 0 || a1->y > 224 || a2 <= 127 || a2 > 4096)
        return 0;
    else
        return 1;
}
