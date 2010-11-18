-- Forge of souls
UPDATE `instance_template` SET `ScriptName`='instance_forge_of_souls' WHERE `map`=632;
UPDATE `creature_template` SET `ScriptName`='boss_bronjahm', `AIName` ='' WHERE `entry`=36497;
UPDATE `creature_template` SET `ScriptName`='mob_soul_fragment', `modelid_1`= 30233, `modelid_3`= 30233, `AIName` ='' WHERE `entry`=36535;

UPDATE `creature_template` SET `AIName`='', `Scriptname`='boss_devourer_of_souls' where `entry` IN (36502);
UPDATE `creature_template` SET `AIName`='', `Scriptname`='npc_well_of_soul' where `entry` IN (36536);
UPDATE `creature_template` SET `AIName`='', `Scriptname`='npc_unleashed_soul' where `entry` IN (36595);

UPDATE `creature_template` SET `AIName`='', `Scriptname`='npc_jaina_and_sylvana_FSintro' where `entry` IN (37597, 37596);
UPDATE `creature_template` SET `AIName`='', `Scriptname`='npc_jaina_and_sylvana_FSextro' where `entry` IN (38160, 38161);
UPDATE `creature_template` SET `scale`='0.8', `equipment_id`='1221' where `entry` IN (37597, 38160, 36993, 38188, 37221, 36955);
UPDATE `creature_template` SET `scale`='0.8' where `entry` IN (36658, 37225, 37223, 37226, 37554);
UPDATE `creature_template` SET `npcflag`='0' where `entry` IN (38160, 38161);
UPDATE `creature_template` SET `npcflag`='3' where `entry` IN (37597, 37596, 36993, 36990);
UPDATE `creature_template` SET `scale`='1' where `entry` IN (38161, 37596, 36990);
UPDATE `creature_template` SET `scale`='1' where `entry` IN (37755);
UPDATE `creature_template` SET `equipment_id`='1290' where `entry` IN (36990, 37596, 38161, 38189, 37223, 37554);
