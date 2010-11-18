/* Copyright (C) 2006 - 2010 ScriptDev2 <https://scriptdev2.svn.sourceforge.net/>
 * This program is free software licensed under GPL version 2
 * Please see the included DOCS/LICENSE.TXT for more information */

#ifndef DEF_FORGE_OF_SOULS_H
#define DEF_FORGE_OF_SOULS_H
#include "BSW_ai.h"

enum
{
    MAX_ENCOUNTER               = 3,

    TYPE_INTRO                  = 0,
    TYPE_BRONJAHM               = 1,
    TYPE_DECOURER_OF_SOULS      = 2,

    NPC_BRONJAHM                = 36497,
    NPC_DEVOURER_OF_SOULS       = 36502,

    DATA_LIDER                  = 101,

    // Event NPCs
    NPC_SILVANA_BEGIN           = 37596,
    NPC_SILVANA_END             = 38161,
    npc_sylvana_credit          = 37554,
    NPC_JAINA_BEGIN             = 37597,
    NPC_JAINA_END               = 38160,
    npc_jaina_credit            = 36955,
    NPC_ARCHMAGE_ELANDRA        = 37774,
    NPC_ARCHMAGE_KORELN         = 37582,
    //NPC_DARK_RANGER_KALIRA      = 37583,
    //NPC_DARK_RANGER_LORALEN     = 37779,
    NPC_COLISEUM_CHAMPION_A_P   = 37498,                    // Alliance Paladin
    NPC_COLISEUM_CHAMPION_A_F   = 37496,                    // Alliance Footman
    NPC_COLISEUM_CHAMPION_A_M   = 37497,                    // Alliance Mage
    NPC_COLISEUM_CHAMPION_H_F   = 37584,                    // Horde Footman
    NPC_COLISEUM_CHAMPION_H_T   = 37587,                    // Horde Taure
    NPC_COLISEUM_CHAMPION_H_M   = 37588,                    // Horde Mage
};

#endif
