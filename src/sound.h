#pragma once

#include "mp2000/m4a.h"

static inline stopPlayer(int id)
{
    struct MusicPlayerInfo* info = gMPlayTable[id].info;
    struct SongHeader* header = 0;
    header = gSongTable[1].header;
    MPlayStart(info, header);
}

static inline stopAllSongs(void)
{
    int i;
    for (i = 0; i < (u8)NUM_MUSIC_PLAYERS; i++)
    {
        stopPlayer(i);
    }
}

static inline void stopSongPlayer(u16 songId)
{
    MPlayStart(gMPlayTable[gSongTable[songId].ms].info, gSongTable[1].header);
}
