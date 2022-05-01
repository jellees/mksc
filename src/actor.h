#pragma once
#include "math.h"

struct actor_t;

typedef void (*actor_collide_func_t)(struct actor_t* a, struct actor_t* b);

typedef struct actor_t
{
  int posX;
  int posY;
  int posZ;
  u8 sizeX;
  u8 sizeY;
  u8 sizeZ;
  u16 typeFlags;
  int updateFunc;
  actor_collide_func_t collideFunc;
  vec2s16_t field_1C;
  vec2s16_t positionS16;
  u16 scale;
  u16 field_26;
  int field_28;
  int field_2C;
  int field_30;
  u16 flags;
  u8 checkpointId;
  u16 field_38;
  struct actor_t *next;
  struct actor_t *prev;
} actor_t;
