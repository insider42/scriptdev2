/* Copyright (C) 2006 - 2008 ScriptDev2 <https://scriptdev2.svn.sourceforge.net/>
* This program is free software; you can redistribute it and/or modify
* it under the terms of the GNU General Public License as published by
* the Free Software Foundation; either version 2 of the License, or
* (at your option) any later version.
*
* This program is distributed in the hope that it will be useful,
* but WITHOUT ANY WARRANTY; without even the implied warranty of
* MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
* GNU General Public License for more details.
*
* You should have received a copy of the GNU General Public License
* along with this program; if not, write to the Free Software
* Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
*/

/* ScriptData
SDName: Npcs_Stormwind_City
SD%Complete: 100
SDComment: Quest support: 1640, 1447, 4185, 11223 (DB support required for spell 42711). Receive emote General Marcus
SDCategory: NPCs
EndScriptData */

#include "../../sc_defines.h"
#include "../../../../../game/Player.h"
#include "../../../../../game/GossipDef.h"

/*######
## npc_archmage_malin
######*/

#define GOSSIP_ITEM_MALIN "Can you send me to Theramore? I have an urgent message for Lady Jaina from Highlord Bolvar."

bool GossipHello_npc_archmage_malin(Player *player, Creature *_Creature)
{
    if(_Creature->isQuestGiver())
        player->PrepareQuestMenu( _Creature->GetGUID() );

    if(player->GetQuestStatus(11223) == QUEST_STATUS_COMPLETE && !player->GetQuestRewardStatus(11223))
        player->ADD_GOSSIP_ITEM(0, GOSSIP_ITEM_MALIN, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF);

    player->PlayerTalkClass->SendGossipMenu(_Creature->GetNpcTextId(), _Creature->GetGUID());

    return true;
}

bool GossipSelect_npc_archmage_malin(Player *player, Creature *_Creature, uint32 sender, uint32 action)
{
    if(action = GOSSIP_ACTION_INFO_DEF)
    {
        player->CLOSE_GOSSIP_MENU();
        _Creature->CastSpell(player, 42711, true);
    }

    return true;
}

/*######
## npc_bartleby
######*/

struct MANGOS_DLL_DECL npc_bartlebyAI : public ScriptedAI
{
    npc_bartlebyAI(Creature *c) : ScriptedAI(c) {EnterEvadeMode();}

    Unit* PlayerHolder;

    void EnterEvadeMode()
    {
        m_creature->RemoveAllAuras();
        m_creature->DeleteThreatList();
        m_creature->CombatStop();
        m_creature->setFaction(11);
        DoGoHome();
        m_creature->setEmoteState(7);

        PlayerHolder = NULL;
    }

    void JustDied(Unit *who)
    {
        m_creature->setFaction(11);
        PlayerHolder = NULL;
    }

    void DamageTaken(Unit *done_by, uint32 & damage)
    { 
        if ((m_creature->GetHealth() - damage)*100 / m_creature->GetMaxHealth() < 15)
        {
            //Take 0 damage
            damage = 0;

            if (done_by->GetTypeId() == TYPEID_PLAYER)
            {
                ((Player*)done_by)->AttackStop();
                ((Player*)done_by)->CompleteQuest(1640);
            }
            m_creature->CombatStop();
            EnterEvadeMode();
        }
        AttackedBy(done_by);
    }

    void AttackStart(Unit *who)
    {
        if (!who)
            return;

        if (who->isTargetableForAttack() && who!= m_creature)
        {
            DoStartMeleeAttack(who);
        }
    }

    void MoveInLineOfSight(Unit *who)
    {
        if (!who || m_creature->getVictim())
            return;

        if (who->isTargetableForAttack() && who->isInAccessablePlaceFor(m_creature) && m_creature->IsHostileTo(who))
        {
            float attackRadius = m_creature->GetAttackDistance(who);
            if (m_creature->IsWithinDistInMap(who, attackRadius) && m_creature->GetDistanceZ(who) <= CREATURE_Z_ATTACK_RANGE && m_creature->IsWithinLOSInMap(who))
            {
                if(who->HasStealthAura())
                    who->RemoveSpellsCausingAura(SPELL_AURA_MOD_STEALTH);

                //Begin melee attack if we are within range
                DoStartMeleeAttack(who);
            }
        }
    }

    void UpdateAI(const uint32 diff)
    {

        //Return since we have no target
        if (!m_creature->SelectHostilTarget() || !m_creature->getVictim())
            return;

        if( m_creature->IsWithinDistInMap(m_creature->getVictim(), ATTACK_DISTANCE))
        {
            //Make sure our attack is ready and we arn't currently casting
            if( m_creature->isAttackReady())
            {
                m_creature->AttackerStateUpdate(m_creature->getVictim());
                m_creature->resetAttackTimer();
            }
        }
    }
};

bool QuestAccept_npc_bartleby(Player *player, Creature *_Creature, Quest const *_Quest)
{
    if(_Quest->GetQuestId() == 1640)
    {
        _Creature->setFaction(168);
        ((npc_bartlebyAI*)_Creature->AI())->PlayerHolder = (Player*)player;
        ((npc_bartlebyAI*)_Creature->AI())->AttackStart(player);
    }
    return true;
}

CreatureAI* GetAI_npc_bartleby(Creature *_creature)
{
    return new npc_bartlebyAI(_creature);
}

/*######
## npc_dashel_stonefist
######*/

struct MANGOS_DLL_DECL npc_dashel_stonefistAI : public ScriptedAI
{
    npc_dashel_stonefistAI(Creature *c) : ScriptedAI(c) {EnterEvadeMode();}

    void EnterEvadeMode()
    {
        m_creature->RemoveAllAuras();
        m_creature->DeleteThreatList();
        m_creature->CombatStop();
        m_creature->setFaction(11);
        DoGoHome();
        m_creature->setEmoteState(7);
    }

    void DamageTaken(Unit *done_by, uint32 & damage)
    { 
        if ((m_creature->GetHealth() - damage)*100 / m_creature->GetMaxHealth() < 15)
        {
            //Take 0 damage
            damage = 0;

            if (done_by->GetTypeId() == TYPEID_PLAYER)
            {
                ((Player*)done_by)->AttackStop();
                ((Player*)done_by)->CompleteQuest(1447);
            }
            m_creature->CombatStop();
            EnterEvadeMode();
        }
        AttackedBy(done_by);
    }

    void AttackStart(Unit *who)
    {
        if (!who)
            return;

        if (who->isTargetableForAttack() && who!= m_creature)
        {
            DoStartMeleeAttack(who);
        }
    }

    void MoveInLineOfSight(Unit *who)
    {
        if (!who || m_creature->getVictim())
            return;

        if (who->isTargetableForAttack() && who->isInAccessablePlaceFor(m_creature) && m_creature->IsHostileTo(who))
        {
            float attackRadius = m_creature->GetAttackDistance(who);
            if (m_creature->IsWithinDistInMap(who, attackRadius) && m_creature->GetDistanceZ(who) <= CREATURE_Z_ATTACK_RANGE && m_creature->IsWithinLOSInMap(who))
            {
                if(who->HasStealthAura())
                    who->RemoveSpellsCausingAura(SPELL_AURA_MOD_STEALTH);

                //Begin melee attack if we are within range
                DoStartMeleeAttack(who);
            }
        }
    }

    void UpdateAI(const uint32 diff)
    {

        //Return since we have no target
        if (!m_creature->SelectHostilTarget() || !m_creature->getVictim())
            return;


        if( m_creature->IsWithinDistInMap(m_creature->getVictim(), ATTACK_DISTANCE))
        {
            //Make sure our attack is ready and we arn't currently casting
            if( m_creature->isAttackReady())
            {
                m_creature->AttackerStateUpdate(m_creature->getVictim());
                m_creature->resetAttackTimer();
            }
        }
    }
};

bool QuestAccept_npc_dashel_stonefist(Player *player, Creature *_Creature, Quest const *_Quest)
{
    if(_Quest->GetQuestId() == 1447)
    {
        _Creature->setFaction(168);
        ((npc_dashel_stonefistAI*)_Creature->AI())->AttackStart(player);
    }
    return true;
}

CreatureAI* GetAI_npc_dashel_stonefist(Creature *_creature)
{
    return new npc_dashel_stonefistAI(_creature);
}

/*######
## npc_general_marcus_jonathan
######*/

bool ReceiveEmote_npc_general_marcus_jonathan(Player *player, Creature *_Creature, uint32 emote) 
{
    if(player->GetTeam() == ALLIANCE)
    {
        if (emote == EMOTE_ONESHOT_SALUTE)
        {
            _Creature->SetOrientation(_Creature->GetAngle(player));
            _Creature->HandleEmoteCommand(EMOTE_ONESHOT_SALUTE);
        }
        if (emote == EMOTE_ONESHOT_WAVE)
        {
            _Creature->MonsterSay("Greetings citizen",LANG_COMMON,0);
        }
    }
    return true;
}

/*######
## npc_lady_katrana_prestor
######*/

#define GOSSIP_ITEM_KAT_1 "Pardon the intrusion, Lady Prestor, but Highlord Bolvar suggested that I seek your advice."
#define GOSSIP_ITEM_KAT_2 "My apologies, Lady Prestor."
#define GOSSIP_ITEM_KAT_3 "Begging your pardon, Lady Prestor. That was not my intent."
#define GOSSIP_ITEM_KAT_4 "Thank you for your time, Lady Prestor."

bool GossipHello_npc_lady_katrana_prestor(Player *player, Creature *_Creature)
{
    if (_Creature->isQuestGiver())
        player->PrepareQuestMenu( _Creature->GetGUID() );

    if (player->GetQuestStatus(4185) == QUEST_STATUS_INCOMPLETE)
        player->ADD_GOSSIP_ITEM( 0, GOSSIP_ITEM_KAT_1, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF);

    player->PlayerTalkClass->SendGossipMenu(2693, _Creature->GetGUID());

    return true;
}

bool GossipSelect_npc_lady_katrana_prestor(Player *player, Creature *_Creature, uint32 sender, uint32 action)
{
    switch (action)
    {
        case GOSSIP_ACTION_INFO_DEF:
            player->ADD_GOSSIP_ITEM( 0, GOSSIP_ITEM_KAT_2, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
            player->SEND_GOSSIP_MENU(2694, _Creature->GetGUID());
            break;
        case GOSSIP_ACTION_INFO_DEF+1:
            player->ADD_GOSSIP_ITEM( 0, GOSSIP_ITEM_KAT_3, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 2);
            player->SEND_GOSSIP_MENU(2695, _Creature->GetGUID());
            break;
        case GOSSIP_ACTION_INFO_DEF+2:
            player->ADD_GOSSIP_ITEM( 0, GOSSIP_ITEM_KAT_4, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 3);
            player->SEND_GOSSIP_MENU(2696, _Creature->GetGUID());
            break;
        case GOSSIP_ACTION_INFO_DEF+3:
            player->PlayerTalkClass->CloseGossip();
            player->CompleteQuest(4185);
            break;
    }
    return true;
}

void AddSC_npcs_stormwind_city()
{
    Script *newscript;

    newscript = new Script;
    newscript->Name="npc_archmage_malin";
    newscript->pGossipHello = &GossipHello_npc_archmage_malin;
    newscript->pGossipSelect = &GossipSelect_npc_archmage_malin;
    m_scripts[nrscripts++] = newscript;

    newscript = new Script;
    newscript->Name = "npc_bartleby";
    newscript->GetAI = GetAI_npc_bartleby;
    newscript->pQuestAccept = &QuestAccept_npc_bartleby;
    m_scripts[nrscripts++] = newscript;

    newscript = new Script;
    newscript->Name = "npc_dashel_stonefist";
    newscript->GetAI = GetAI_npc_dashel_stonefist;
    newscript->pQuestAccept = &QuestAccept_npc_dashel_stonefist;
    m_scripts[nrscripts++] = newscript;

    newscript = new Script;
    newscript->Name = "npc_general_marcus_jonathan";
    newscript->pReceiveEmote = &ReceiveEmote_npc_general_marcus_jonathan;
    m_scripts[nrscripts++] = newscript;

    newscript = new Script;
    newscript->Name="npc_lady_katrana_prestor";
    newscript->pGossipHello = &GossipHello_npc_lady_katrana_prestor;
    newscript->pGossipSelect = &GossipSelect_npc_lady_katrana_prestor;
    m_scripts[nrscripts++] = newscript;
}