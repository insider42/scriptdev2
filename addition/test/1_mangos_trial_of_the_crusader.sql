-- Barrett Ramsey <Argent Coliseum Master>
UPDATE `creature_template` SET `npcflag`=1, `AIName`='', `ScriptName`='npc_crusader_announcer' WHERE `entry`=34816;
-- Northrend Beasts
UPDATE `creature_template` SET `AIName`='', `ScriptName`='boss_gormok' WHERE `entry`=34796;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='boss_acidmaw' WHERE `entry`=35144;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='boss_dreadscale' WHERE `entry`=34799;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='boss_icehowl' WHERE `entry`=34797;
-- Lord Jaraxxus
UPDATE `creature_template` SET `AIName`='', `ScriptName`='boss_jaraxxus' WHERE `entry`=34780;
-- Anub'arak
UPDATE `creature_template` SET `AIName`='', `ScriptName`='boss_anubarak_trial' WHERE `entry`=34564;
-- Faction Champions
UPDATE `creature_template` SET `AIName`='', `ScriptName`='boss_fc_resto_druid' WHERE `entry` IN (34459, 34469);
UPDATE `creature_template` SET `AIName`='', `ScriptName`='boss_fc_resto_shammy' WHERE `entry` IN (34444, 34470);
UPDATE `creature_template` SET `AIName`='', `ScriptName`='boss_fc_holy_pally' WHERE `entry` IN (34445, 34465);
UPDATE `creature_template` SET `AIName`='', `ScriptName`='boss_fc_holy_priest' WHERE `entry` IN (34447, 34466);
UPDATE `creature_template` SET `AIName`='', `ScriptName`='boss_fc_shadow_priest' WHERE `entry` IN (34441, 34473);
UPDATE `creature_template` SET `AIName`='', `ScriptName`='boss_fc_mage' WHERE `entry` IN (34449, 34468);
UPDATE `creature_template` SET `AIName`='', `ScriptName`='boss_fc_warlock' WHERE `entry` IN (34450, 34474);
UPDATE `creature_template` SET `AIName`='', `ScriptName`='boss_fc_hunter' WHERE `entry` IN (34448, 34467);
UPDATE `creature_template` SET `AIName`='', `ScriptName`='boss_fc_boomkin' WHERE `entry` IN (34451, 34460);
UPDATE `creature_template` SET `AIName`='', `ScriptName`='boss_fc_warrior' WHERE `entry` IN (34453, 34475);
UPDATE `creature_template` SET `AIName`='', `ScriptName`='boss_fc_deathknight' WHERE `entry` IN (34458, 34461);
UPDATE `creature_template` SET `AIName`='', `ScriptName`='boss_fc_rogue' WHERE `entry` IN (34454, 34472);
UPDATE `creature_template` SET `AIName`='', `ScriptName`='boss_fc_enh_shammy' WHERE `entry` IN (34455, 34463);
UPDATE `creature_template` SET `AIName`='', `ScriptName`='boss_fc_ret_pally' WHERE `entry` IN (34456, 34471);
-- Twin Val'kyr
UPDATE `creature_template` SET `AIName`='', `ScriptName`='boss_eydis' WHERE `entry`=34496;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='boss_fjola' WHERE `entry`=34497;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='mob_valkyr_orb' WHERE `entry` IN (34628, 34630);
UPDATE `creature_template` SET unit_flags=33554434, faction-A=14, faction_H=14 WHERE `entry` IN (34628, 34630);
INSERT INTO npc_spellclick_spells VALUES (34567, 65684, 0, 0, 0, 1), (34568, 65686, 0, 0, 0, 1); -- dark/light "portals"
INSERT INTO spell_script_target values (65875, 1, 34497), (65876, 1, 34496);
-- Instance script
UPDATE `instance_template` SET `script`='instance_trial_of_the_crusader' WHERE `map`=649;
