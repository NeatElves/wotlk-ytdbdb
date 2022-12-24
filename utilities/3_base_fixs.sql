# fix base

# [NPC 7918][Gossip] Stone Watcher of Norgannon [SD2 npc_stone_watcher_of_norgannon]
# [NPC 7783][Gossip] Loramus Thalipedes [SD2 npc_loramus_thalipedes]
UPDATE `creature_template` SET `ScriptName` = '' WHERE `Entry` =7918;
UPDATE `creature_template` SET `ScriptName` = '' WHERE `Entry` =7783;

# [NPC 7866,7867,7868,7869,7870,7871][Gossip] [SD2 npc_prof_leather]
UPDATE creature_template SET ScriptName='' WHERE entry IN (7866,7867,7868,7869,7870,7871);

#Quest 13011
DELETE FROM `dbscripts_on_relay` WHERE `id` = 50001;
DELETE FROM `dbscripts_on_relay` WHERE `id` = 50002;
INSERT INTO `dbscripts_on_relay` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `datafloat`, `x`, `y`, `z`, `o`, `speed`, `condition_id`, `comments`) VALUES
(50001, 1000, 0, 15, 56566, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'YTDB - cast Create Bear Flank'),
(50001, 500, 0, 18, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'YTDB - despawn self'),
(50002, 1000, 0, 18, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'YTDB - despawn self');

# Manabonk send mail
DELETE FROM `dbscripts_on_relay` WHERE `id` = 50003;
INSERT INTO `dbscripts_on_relay` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `datafloat`, `x`, `y`, `z`, `o`, `speed`, `condition_id`, `comments`) VALUES
(50003, 10,   0, 38, 264, 32838, 0, 0, 0, 4, 60, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'YTDB - mail');
INSERT INTO `mail_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES (264, 44817, 100, 0, 1, 1, 0, '');

# part 0479_VDB-20201224122604_world.sql
DELETE FROM `dbscripts_on_relay` WHERE `id` IN (9006,9007);
INSERT INTO `dbscripts_on_relay` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `datafloat`, `x`, `y`, `z`, `o`, `speed`, `condition_id`, `comments`) VALUES
(9006, 0, 0, 31, 9157, 100000, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Muigin - Terminate Script if Bloodpetal Pest 9157 IS found alife in range'),
(9006, 0, 1, 0, 0, 0, 0, 0, 0, 0, 4966, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'I hope this works!'),
(9006, 1000, 1, 0, 0, 0, 0, 0, 0, 0, 4967, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '%s adds the haze to the Bloodpetal sprouts.'),
(9006, 1000, 1, 10, 9157, 86400000, 0, 0, 0, 8, 1, 0, 0, 0, 0, -6213.662, -1056.375, -197.906, 0, 0, 0, 'Muigin - Spawn Bloodpetal Pest 9157'),
(9006, 1000, 1, 10, 9157, 86400000, 0, 0, 0, 8, 1, 0, 0, 0, 0, -6211.25, -1057.72, -197.9, 0, 0, 0, 'Muigin - Spawn Bloodpetal Pest 9157'),
(9006, 1000, 1, 10, 9157, 86400000, 0, 0, 0, 8, 1, 0, 0, 0, 0, -6210.807, -1053.875, -197.906, 0, 0, 0, 'Muigin - Spawn Bloodpetal Pest 9157'),
(9006, 1000, 1, 10, 9157, 86400000, 0, 0, 0, 8, 1, 0, 0, 0, 0, -6213.333, -1059.195, -197.906, 0, 0, 0, 'Muigin - Spawn Bloodpetal Pest 9157'),
(9006, 1000, 1, 10, 9157, 86400000, 0, 0, 0, 8, 1, 0, 0, 0, 0, -6210.617, -1059.143, -197.906, 0, 0, 0, 'Muigin - Spawn Bloodpetal Pest 9157'),
(9006, 4000, 1, 0, 0, 0, 0, 0, 0, 0, 4968, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Look at them go!'),
(9006, 6000, 1, 0, 0, 0, 0, 0, 0, 0, 4969, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '%s laughs as he watches the pests run off.'),
(9007, 3000, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -6190.68, -1099.47, -215.189, 0, 0, 0, 'Bloodpetal Pest - Move'),
(9007, 9000, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -6202.63, -1114.64, -220.1, 0, 0, 0, 'Bloodpetal Pest - Move'),
(9007, 12000, 0, 20, 1, 20, 0, 0, 0, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Bloodpetal Pest - MovementType 1 and Spawndist 20');
