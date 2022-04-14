#include "common.h"
#include "transition.h"

trns_state_t gTransitionState;

void trns_update(void)
{
    if (gTransitionState.flags & TRNS_FLAG_UPDATE_FRAME)
    {
        if (!(gTransitionState.flags & TRNS_FLAG_SUSPENDED))
        {
            if (--gTransitionState.waitCounter > 0)
                return;
            if (gTransitionState.applyFunc)
            {
                gTransitionState.applyFunc();
                gTransitionState.frame++;
                gTransitionState.waitCounter = gTransitionState.updateDelay;
            }
            else
            {
                if (gTransitionState.finishFunc)
                    gTransitionState.finishFunc();
                gTransitionState.applyFunc = NULL;
                gTransitionState.initFunc = NULL;
                gTransitionState.finishFunc = NULL;
                gTransitionState.waitCounter = 0;
                gTransitionState.updateDelay = 0;
                gTransitionState.frame = 0;
                gTransitionState.flags = 0;
            }
            return;
        }
    }
    if (gTransitionState.flags & TRNS_FLAG_INIT_FRAME)
        gTransitionState.flags = gTransitionState.flags & ~TRNS_FLAG_INIT_FRAME | TRNS_FLAG_UPDATE_FRAME;
}

void trns_init(void)
{
    gTransitionState.applyFunc = NULL;
    gTransitionState.initFunc = NULL;
    gTransitionState.finishFunc = NULL;
    gTransitionState.waitCounter = 0;
    gTransitionState.updateDelay = 0;
    gTransitionState.frame = 0;
    gTransitionState.flags = 0;
}

void trns_start(void)
{
    if (gTransitionState.initFunc)
    {
        gTransitionState.initFunc();
        gTransitionState.flags = 1;
    }
    else
        gTransitionState.flags = 2;
    gTransitionState.waitCounter = gTransitionState.updateDelay;
    gTransitionState.frame = 0;
}

void trns_initDefaultInTransition(void)
{
    REG_WININ = 0;
    REG_WINOUT = 0;
    REG_DISPCNT &= ~(DISPCNT_WIN0_ON | DISPCNT_WIN1_ON);
    REG_DISPCNT |= DISPCNT_WIN0_ON;
}

void trns_applyDefaultInTransition(void)
{
    u8 frame = gTransitionState.frame;
    REG_WIN0H = WIN_RANGE(120 - 6 * frame, 6 * frame + 120);
    REG_WIN0V = WIN_RANGE(80 - 4 * frame, 4 * frame + 80);
    REG_WININ = WININ_WIN0_BG_ALL | WININ_WIN0_OBJ | WININ_WIN0_CLR;
    if (frame == 20)
        gTransitionState.applyFunc = NULL;
}

void trns_finishDefaultInTransition(void)
{
    REG_DISPCNT &= ~(DISPCNT_WIN0_ON | DISPCNT_WIN1_ON);
    REG_WIN0H = WIN_RANGE(0, 240);
    REG_WIN0V = WIN_RANGE(0, 160);
}

void trns_initDefaultOutTransition(void)
{
    REG_WIN0H = WIN_RANGE(0, 240);
    REG_WIN0V = WIN_RANGE(0, 160);
    REG_WININ = WININ_WIN0_BG_ALL | WININ_WIN0_OBJ | WININ_WIN0_CLR;
    REG_WINOUT = 0;
    REG_DISPCNT &= ~(DISPCNT_WIN0_ON | DISPCNT_WIN1_ON);
    REG_DISPCNT |= DISPCNT_WIN0_ON;
}

void trns_applyDefaultOutTransition(void)
{
    u8 frame = gTransitionState.frame;
    REG_WIN0H = WIN_RANGE(6 * frame, 240 - 6 * frame);
    REG_WIN0V = WIN_RANGE(4 * frame, 160 - 4 * frame);
    if (frame == 20)
        gTransitionState.applyFunc = NULL;
}
