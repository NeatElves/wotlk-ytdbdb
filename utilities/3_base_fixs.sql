# fix base

# [NPC 7918][Gossip] Stone Watcher of Norgannon [SD2 npc_stone_watcher_of_norgannon]
# [NPC 7783][Gossip] Loramus Thalipedes [SD2 npc_loramus_thalipedes]
UPDATE `creature_template` SET `ScriptName` = '' WHERE `Entry` =7918;
UPDATE `creature_template` SET `ScriptName` = '' WHERE `Entry` =7783;

# [NPC 7866,7867,7868,7869,7870,7871][Gossip] [SD2 npc_prof_leather]
UPDATE creature_template SET ScriptName='' WHERE entry IN (7866,7867,7868,7869,7870,7871);

# Quest 13011
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

# https://github.com/cmangos/mangos-wotlk/blob/master/src/game/Spells/SpellEffects.cpp#L11458
# Spells in core do not take reagents from the player
DELETE FROM dbscripts_on_gossip WHERE id IN (654001,654002,654003,654004,654000,654201,654202,654203,654204,654200,654301,654302,654303,654304,654300);
INSERT INTO `dbscripts_on_gossip` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `datafloat`, `x`, `y`, `z`, `o`, `speed`, `condition_id`, `comments`) VALUES
(654303, 0, 0, 15, 24791, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'greater wind stone - air'),
(654303, 100, 1, 17, 20406, 1, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'greater wind stone - air - delete item'),
(654303, 100, 2, 17, 20407, 1, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'greater wind stone - air - delete item'),
(654303, 100, 3, 17, 20408, 1, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'greater wind stone - air - delete item'),
(654303, 100, 4, 17, 20422, 1, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'greater wind stone - air - delete item'),
(654303, 100, 5, 17, 20448, 1, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'greater wind stone - air - delete item'),
(654303, 100, 6, 17, 20451, 1, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'greater wind stone - air - delete item'),
(654001, 0, 0, 15, 24747, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'less wind stone - fire'),
(654001, 100, 1, 17, 20406, 1, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'less wind stone - fire - delete item'),
(654001, 100, 2, 17, 20407, 1, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'less wind stone - fire - delete item'),
(654001, 100, 3, 17, 20408, 1, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'less wind stone - fire - delete item'),
(654001, 100, 4, 17, 20416, 1, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'less wind stone - fire - delete item'),
(654002, 0, 0, 15, 24759, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'less wind stone - earth'),
(654002, 100, 1, 17, 20406, 1, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'less wind stone - earth - delete item'),
(654002, 100, 2, 17, 20407, 1, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'less wind stone - earth - delete item'),
(654002, 100, 3, 17, 20408, 1, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'less wind stone - earth - delete item'),
(654002, 100, 4, 17, 20419, 1, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'less wind stone - earth - delete item'),
(654003, 0, 0, 15, 24757, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'less wind stone - air'),
(654003, 100, 1, 17, 20406, 1, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'less wind stone - air - delete item'),
(654003, 100, 2, 17, 20407, 1, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'less wind stone - air - delete item'),
(654003, 100, 3, 17, 20408, 1, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'less wind stone - air - delete item'),
(654003, 100, 4, 17, 20418, 1, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'less wind stone - air - delete item'),
(654004, 0, 0, 15, 24761, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'less wind stone - water'),
(654004, 100, 1, 17, 20406, 1, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'less wind stone - water - delete item'),
(654004, 100, 2, 17, 20407, 1, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'less wind stone - water - delete item'),
(654004, 100, 3, 17, 20408, 1, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'less wind stone - water - delete item'),
(654004, 100, 4, 17, 20420, 1, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'less wind stone - water - delete item'),
(654200, 0, 0, 15, 24762, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'wind stone - random'),
(654200, 100, 1, 17, 20406, 1, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'wind stone - random - delete item'),
(654200, 100, 2, 17, 20407, 1, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'wind stone - random - delete item'),
(654200, 100, 3, 17, 20408, 1, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'wind stone - random - delete item'),
(654200, 100, 4, 17, 20422, 1, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'wind stone - random - delete item'),
(654201, 0, 0, 15, 24766, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'wind stone - fire'),
(654201, 100, 1, 17, 20406, 1, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'wind stone - fire - delete item'),
(654201, 100, 2, 17, 20407, 1, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'wind stone - fire - delete item'),
(654201, 100, 3, 17, 20408, 1, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'wind stone - fire - delete item'),
(654201, 100, 4, 17, 20422, 1, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'wind stone - fire - delete item'),
(654201, 100, 5, 17, 20432, 1, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'wind stone - fire - delete item'),
(654202, 0, 0, 15, 24771, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'wind stone - earth'),
(654202, 100, 1, 17, 20406, 1, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'wind stone - earth - delete item'),
(654202, 100, 2, 17, 20407, 1, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'wind stone - earth - delete item'),
(654202, 100, 3, 17, 20408, 1, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'wind stone - earth - delete item'),
(654202, 100, 4, 17, 20422, 1, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'wind stone - earth - delete item'),
(654202, 100, 5, 17, 20435, 1, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'wind stone - earth - delete item'),
(654203, 0, 0, 15, 24769, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'wind stone - air'),
(654203, 100, 1, 17, 20406, 1, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'wind stone - air - delete item'),
(654203, 100, 2, 17, 20407, 1, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'wind stone - air - delete item'),
(654203, 100, 3, 17, 20408, 1, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'wind stone - air - delete item'),
(654203, 100, 4, 17, 20422, 1, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'wind stone - air - delete item'),
(654203, 100, 5, 17, 20433, 1, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'wind stone - air - delete item'),
(654204, 0, 0, 15, 24773, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'wind stone - water'),
(654204, 100, 1, 17, 20406, 1, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'wind stone - water - delete item'),
(654204, 100, 2, 17, 20407, 1, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'wind stone - water - delete item'),
(654204, 100, 3, 17, 20408, 1, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'wind stone - water - delete item'),
(654204, 100, 4, 17, 20422, 1, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'wind stone - water - delete item'),
(654204, 100, 5, 17, 20436, 1, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'wind stone - water - delete item'),
(654302, 0, 0, 15, 24792, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'greater wind stone - earth'),
(654302, 100, 1, 17, 20406, 1, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'greater wind stone - earth - delete item'),
(654302, 100, 2, 17, 20407, 1, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'greater wind stone - earth - delete item'),
(654302, 100, 3, 17, 20408, 1, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'greater wind stone - earth - delete item'),
(654302, 100, 4, 17, 20422, 1, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'greater wind stone - earth - delete item'),
(654302, 100, 5, 17, 20449, 1, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'greater wind stone - earth - delete item'),
(654302, 100, 6, 17, 20451, 1, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'greater wind stone - earth - delete item'),
(654301, 0, 0, 15, 24787, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'greater wind stone - fire'),
(654301, 100, 1, 17, 20406, 1, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'greater wind stone - fire - delete item'),
(654301, 100, 2, 17, 20407, 1, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'greater wind stone - fire - delete item'),
(654301, 100, 3, 17, 20408, 1, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'greater wind stone - fire - delete item'),
(654301, 100, 4, 17, 20422, 1, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'greater wind stone - fire - delete item'),
(654301, 100, 5, 17, 20447, 1, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'greater wind stone - fire - delete item'),
(654301, 100, 6, 17, 20451, 1, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'greater wind stone - fire - delete item'),
(654300, 0, 0, 15, 24785, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'greater wind stone - random'),
(654300, 100, 1, 17, 20406, 1, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'greater wind stone - random - delete item'),
(654300, 100, 2, 17, 20407, 1, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'greater wind stone - random - delete item'),
(654300, 100, 3, 17, 20408, 1, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'greater wind stone - random - delete item'),
(654300, 100, 4, 17, 20422, 1, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'greater wind stone - random - delete item'),
(654300, 100, 5, 17, 20451, 1, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'greater wind stone - random - delete item'),
(654000, 0, 0, 15, 24745, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'less wind stone - random'),
(654000, 100, 1, 17, 20406, 1, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'less wind stone - random - delete item'),
(654000, 100, 2, 17, 20407, 1, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'less wind stone - random - delete item'),
(654000, 100, 3, 17, 20408, 1, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'less wind stone - random - delete item'),
(654304, 0, 0, 15, 24793, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'greater wind stone - water'),
(654304, 100, 1, 17, 20406, 1, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'greater wind stone - water - delete item'),
(654304, 100, 2, 17, 20407, 1, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'greater wind stone - water - delete item'),
(654304, 100, 3, 17, 20408, 1, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'greater wind stone - water - delete item'),
(654304, 100, 4, 17, 20422, 1, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'greater wind stone - water - delete item'),
(654304, 100, 5, 17, 20450, 1, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'greater wind stone - water - delete item'),
(654304, 100, 6, 17, 20451, 1, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'greater wind stone - water - delete item');

-- wotlk ahune only has one version
UPDATE `creature_template` SET `DifficultyEntry1` = 0 WHERE `entry` IN (25740,25755,25756,25757,25865);

# NPC emissary not work - start event - crash core
#DELETE FROM creature WHERE guid IN (18935,18937);
#INSERT INTO creature (guid, id, map, spawnmask, phasemask, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, MovementType) values
#(18935,0,0,1,1,-8351.663,627.2608,95.24413,5.21675,300,300,0,0),
#(18937,0,0,1,1,-8351.663,627.2608,95.24413,5.21675,300,300,0,0);
#DELETE FROM `spawn_group` WHERE id = 19980;
#INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES (19980, 'Stormwind - Battleground Emissary x2 - Patrol', 0, 0, 3292, 0x02 | 0x08);
#DELETE FROM game_event_creature_data WHERE guid IN (18935,18937);
#INSERT INTO game_event_creature_data (guid, event, `entry_id`) VALUES (18935,18,15103),(18937,18,15103),(18935,19,15102),(18937,19,15102),(18935,20,14991),(18937,20,14991),(18935,21,22013),(18937,21,22013),
#(18935,30,30566),(18937,30,30567),(18935,42,34948),(18937,42,34950);
