#pragma once

#include "gba/gba.h"

#define INTR_VECTOR_BUF (*(vu32*)0x03007FFC)

// to help in decompiling
#define asm_comment(x) asm volatile("@ -- " x " -- ")
#define asm_unified(x) asm(".syntax unified\n" x "\n.syntax divided")
#define NAKED          __attribute__((naked))
