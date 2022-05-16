#include "common.h"
#include "actor.h"
#include "sound.h"
#include "libunk/irq.h"
#include "frameHeap.h"
#include "scene.h"

typedef struct
{
    s32 cmd;
    u32 arg;
} script_cmd_t;

typedef struct
{
    actor_t actor;
    u8 pad1[4];
    u32 cellData;
    u16 waitCounter;
    u8 field_4E;
    u16 field_50;
    u16 field_52;
    u32 driver;
    u16 scale2;
    u16 rotation;
    script_cmd_t* script;
    u32 updateCallback;
    u8 scriptFlags;
    u32 field_68;
    u32 destroyFunc;
    u8 field_70;
    u8 field_71;
    u8 pad2[2];
    u8 field_74;
    u8 pad3[3];
    u8 field_78;
    u8 field_79;
    u8 field_7A;
    u32 field_7C;
    u32 field_80;
} somepool84_entry_t;

typedef bool32 (*script_func_t)(somepool84_entry_t* a1);

#ifndef NONMATCHING
asm_unified(".include \"nonmatching/text08030004.s\"");
#else
void script_executeScript(somepool84_entry_t* a1)
{
    script_cmd_t* script = a1->script;

    switch (script->cmd)
    {
        case 0:
            a1->script = (script_cmd_t*)0;
            break;

        case 0x11:
            a1->cellData = script->arg;
            a1->scriptFlags |= 1;
            a1->script = script + 1;
            break;

        case 0x40:
            a1->script = script + 1;
            break;

        case 0x41:
            a1->field_68 = script->arg;
            a1->scriptFlags |= 1;
            a1->script = script + 1;
            break;

        case 0x42:
            a1->script = (script_cmd_t*)script->arg;
            break;

        case 0x43:
            a1->updateCallback = script->arg;
            a1->scriptFlags |= 1;
            a1->scriptFlags |= 2;
            a1->script = script + 1;
            break;

        case 0xF4:
            ((script_func_t)script->arg)(a1);
            a1->scriptFlags |= 1;
            a1->script = script + 1;
            break;

        case 0xF5:
            if (!((script_func_t)script->arg)(a1))
                return;
            a1->scriptFlags |= 1;
            a1->script = script + 1;
            break;

        case 0xF1:
            if (script->arg != 0)
                a1->waitCounter = script->arg - 1;
            else
                a1->scriptFlags |= 1;
            a1->script = script + 1;
            break;

        case 0xF2:
            a1->script = script + script->arg;
            a1->scriptFlags |= 1;
            break;

        case 0xF6:
        {
            u32 arg = script->arg;
            if (a1->field_68)
                a1->script = script + arg;
            else
                a1->script = script + 1;
            a1->scriptFlags |= 1;
            break;
        }

        case 0xF7:
            a1->script = script + 1;
            break;

        case 0x81:
        case 0x85:
            m4aSongNumStart(script->arg);
            a1->scriptFlags |= 1;
            a1->script = script + 1;
            break;

        case 0x82:
        {
            u32 song = script->arg;
            if ((gSceneState.raceState.playerDriver->field_48 & 0x20) == 0)
                m4aSongNumStart(song);
            a1->scriptFlags |= 1;
            a1->script = script + 1;
            break;
        }

        case 0x83:
            stopSongPlayer(script->arg);
            a1->scriptFlags |= 1;
            a1->script = script + 1;
            break;

        case 0x84:
            stopAllSongs();
            a1->scriptFlags |= 1;
            a1->script = script + 1;
            break;

        case 0x86:
            m4aSongNumStop(script->arg);
            a1->scriptFlags |= 1;
            a1->script = script + 1;
            break;

        default:
            a1->script = script + 1;
            break;
    }
}
#endif
