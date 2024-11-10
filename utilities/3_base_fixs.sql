# fix base

#tmp Ulduar: Convert Hodir to BossAI
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 33174;
UPDATE `creature_template` SET `AIName` = '', `ScriptName` = 'npc_snowpack_target' WHERE `Entry` = 33174;

# DB-SCRIPT
UPDATE gameobject_template SET ScriptName='' WHERE entry=175329;
UPDATE gameobject_template SET ScriptName='' WHERE entry=175330;
UPDATE gameobject_template SET ScriptName='' WHERE entry=175331;

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
(50003, 10, 0, 38, 264, 32838, 0, 0, 0, 4, 60, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'YTDB - mail');
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

# wotlk ahune only has one version
UPDATE `creature_template` SET `DifficultyEntry1` = 0 WHERE `entry` IN (25740,25755,25756,25757,25865);

# Error Table combat_condition entry ... has invalid worldstate expression 30517. Setting to ....
DELETE FROM `combat_condition` WHERE `Id` = 4523;
DELETE FROM `combat_condition` WHERE `Id` = 5102;
DELETE FROM `combat_condition` WHERE `Id` = 5375;
DELETE FROM `combat_condition` WHERE `Id` = 5376;

# My hack
# а то только приседают и каст у двоих всего))
DELETE FROM `creature_addon` WHERE `guid` IN (70741,70774,70775,70776);
UPDATE `creature_movement` SET `WaitTime` = '10000' WHERE `Id` =70776 AND `Point` =1;
UPDATE `creature_movement` SET `WaitTime` = '15000' WHERE `Id` =70775 AND `Point` =1;
UPDATE `creature_movement` SET `WaitTime` = '20000' WHERE `Id` =70741 AND `Point` =1;
UPDATE `creature_movement` SET `WaitTime` = '25000' WHERE `Id` =70774 AND `Point` =1;
DELETE FROM `dbscripts_on_creature_movement` WHERE `Id` = 1714614 AND `priority` = 0;
INSERT INTO `dbscripts_on_creature_movement` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `datafloat`, `x`, `y`, `z`, `o`, `speed`, `condition_id`, `comments`) VALUES
(1714614, 5000, 0, 1, 51, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Kil\'Sorrow Spellbinder/Cultist - ONESHOT_SPELLCAST');

# Q 8315 hack
DELETE FROM `dbscripts_on_event` WHERE `id` = 9208;
INSERT INTO `dbscripts_on_event` (`id`, `delay`, `command`, `datalong`, `datalong2`, `dataint`, `x`, `y`, `z`, `o`, `comments`) VALUES
(9208, 20000, 10, 14862, 1200000, 0, -7276.38, 852.34, 3.64, 0.5, 'summon Emissary Roman''khan'),
(9208, 100, 10, 15288, 1200000, 0, -7233.39, 906.415, -1.76649, 1.81259, 'summon Aluntir'),
(9208, 300, 10, 15286, 1200000, 0, -7212.16, 911.711, -1.76649, 2.58543, 'summon Xil''xix'),
(9208, 500, 10, 15290, 1200000, 0, -7210.3, 895.014, -1.76649, 0.544185, 'summon Arakis');

# test tmp event https://www.wowhead.com/wotlk/ru/npc=2434/
UPDATE `creature_template` SET `ExtraFlags` = '4096', `MovementType` = '2' WHERE `Entry` =2435;
UPDATE `creature` SET `position_x` = '-740.538', `position_y` = '-525.298', `position_z` = '21.9343', `orientation` = '3.9523', `spawntimesecsmin` = '3600', `spawntimesecsmax` = '3600', `MovementType` = '2' WHERE `guid` =53052;
UPDATE `creature_ai_scripts` SET `event_param1` = '12000', `event_param2` = '12000' WHERE `id` =243502;
UPDATE `creature_ai_scripts` SET `event_param1` = '12600', `event_param2` = '12600' WHERE `id` =243503;
UPDATE `creature_ai_scripts` SET `event_param1` = '13000', `event_param2` = '13000' WHERE `id` =243504;
DELETE FROM `creature_movement_template` WHERE `entry` = 2435;
INSERT INTO `creature_movement_template` (`Entry`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `WaitTime`, `ScriptId`) VALUES
(2435, 1, -745.74, -530.658, 21.0302, 10, 5),
(2435, 2, -749.623, -536.482, 19.8807, 0, 0),
(2435, 3, -749.831, -542.323, 19.0502, 0, 0),
(2435, 4, -751.399, -545.452, 18.7756, 0, 0),
(2435, 5, -751.399, -545.452, 18.7756, 0, 0),
(2435, 6, -760.746, -546.233, 18.1427, 0, 0),
(2435, 7, -771.772, -545.382, 17.7874, 0, 0),
(2435, 8, -787.449, -540.515, 17.7064, 0, 0),
(2435, 9, -803.583, -531.155, 15.9356, 0, 0),
(2435, 10, -815.697, -524.158, 14.4849, 0, 0),
(2435, 11, -824.224, -522.261, 13.1434, 100, 243511),
(2435, 12, -840.92, -524.92, 11.2505, 10, 243512),
(2435, 13, -857.888, -532.908, 9.43952, 0, 0),
(2435, 14, -870.759, -539.774, 8.12229, 0, 0),
(2435, 15, -880.055, -540.594, 7.56718, 0, 0),
(2435, 16, -898.525, -541.205, 6.87974, 0, 0),
(2435, 17, -901.819, -547.256, 6.87974, 10, 6),
(2435, 18, -903.291, -555.882, 6.87974, 10, 243518);
DELETE FROM `dbscripts_on_creature_movement` WHERE `id` BETWEEN 243511 AND 243518;
INSERT INTO `dbscripts_on_creature_movement` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `datafloat`, `x`, `y`, `z`, `o`, `speed`, `condition_id`, `comments`) VALUES
(243511, 0, 0, 0, 0, 0, 0, 0, 0, 0, 620, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'say 1'),
(243512, 100, 1, 10, 2434, 30000, 0, 0, 0, 8, 0, 0, 0, 0, 0, -858.214, -471.187, 13.3554, 0.58591, 0, 0, 'Summon Shadowy Assassin'),
(243512, 100, 2, 10, 2434, 30000, 0, 0, 0, 8, 0, 0, 0, 0, 0, -864.901, -472.452, 13.3564, 0.58591, 0, 0, 'Summon Shadowy Assassin'),
(243512, 100, 3, 10, 2434, 30000, 0, 0, 0, 8, 0, 0, 0, 0, 0, -862.522, -476.413, 13.3564, 0.58591, 0, 0, 'Summon Shadowy Assassin'),
(243512, 100, 4, 10, 2434, 30000, 0, 0, 0, 8, 0, 0, 0, 0, 0, -861.232, -542.347, 9.33058, 0.58591, 0, 0, 'Summon Shadowy Assassin'),
(243512, 100, 5, 10, 2434, 30000, 0, 0, 0, 8, 0, 0, 0, 0, 0, -849.912, -536.618, 10.717, 0.30081, 0, 0, 'Summon Shadowy Assassin'),
(243512, 100, 6, 10, 2434, 30000, 0, 0, 0, 8, 0, 0, 0, 0, 0, -842.906, -536.79, 12.5283, 6.23677, 0, 0, 'Summon Shadowy Assassin'),
(243512, 100, 7, 10, 2434, 30000, 0, 0, 0, 8, 0, 0, 0, 0, 0, -843.281, -526.083, 11.1464, 0.819482, 0, 0, 'Summon Shadowy Assassin'),
(243512, 100, 8, 10, 2434, 30000, 0, 0, 0, 8, 0, 0, 0, 0, 0, -848.99, -517.981, 12.1924, 0.819482, 0, 0, 'Summon Shadowy Assassin'),
(243512, 100, 9, 10, 2434, 30000, 0, 0, 0, 8, 0, 0, 0, 0, 0, -867.763, -516.11, 11.3357, 0.819482, 0, 0, 'Summon Shadowy Assassin'),
(243512, 100, 10, 10, 2434, 30000, 0, 0, 0, 8, 0, 0, 0, 0, 0, -855.221, -518.702, 11.547, 0.819482, 0, 0, 'Summon Shadowy Assassin'),
(243512, 100, 11, 10, 2434, 30000, 0, 0, 0, 8, 0, 0, 0, 0, 0, -879.868, -538.859, 7.67274, 0.819482, 0, 0, 'Summon Shadowy Assassin'),
(243512, 100, 12, 10, 2434, 30000, 0, 0, 0, 8, 0, 0, 0, 0, 0, -877.552, -561.351, 11.0384, 0.819482, 0, 0, 'Summon Shadowy Assassin'),
(243512, 100, 13, 10, 2434, 30000, 0, 0, 0, 8, 0, 0, 0, 0, 0, -840.952, -505.281, 14.4908, 0.819482, 0, 0, 'Summon Shadowy Assassin'),
(243518, 0, 1, 0, 0, 0, 0, 0, 0, 0, 10453, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'say die'),
(243518, 0, 2, 18, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'die');

# NPC AQ War
#INSERT INTO game_event_creature SELECT guid, 123 FROM creature WHERE guid IN (27403,27421,27518,27524,27533,27583,27805,27834,27851);
#INSERT INTO `creature` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `movementtype`) VALUES
#(27403, 15747, 1, -5552.61, -2540.5, -56.0501, 6.01233, 900, 900, 20, 1),
#(27421, 15750, 1, -6438.32, -3780.98, -58.7494, 4.83424, 900, 900, 20, 1),
#(27518, 15753, 1, -7421.22, -3586.44, 9.84207, 1.19627, 900, 900, 20, 1),
#(27524, 15753, 1, -7177.35, -3774.91, 8.46031, 4.79025, 900, 900, 20, 1),
#(27533, 15753, 1, -4430.28, 3285.2, 12.3331, 4.83424, 900, 900, 20, 1),
#(27583, 15753, 1, -7867.85, 1741.25, -0.224884, 0.5002, 900, 900, 20, 1),
#(27805, 15753, 1, -6976.43, 1634.07, -1.2313, 4.22693, 900, 900, 20, 1),
#(27834, 15806, 1, -3422.37, -1910.41, 95.1404, 2.24812, 900, 900, 20, 1),
#(27851, 15812, 1, -2666.22, -1981.12, 97.9171, 2.91394, 900, 900, 20, 1);
#REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) SELECT `guid`, 15747 FROM `creature` WHERE `guid` IN (27403);
#REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) SELECT `guid`, 15815 FROM `creature` WHERE `guid` IN (27403);
#UPDATE `creature` SET `id` = 0 WHERE `guid` IN (27403);
#REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) SELECT `guid`, 15750 FROM `creature` WHERE `guid` IN (27421);
#REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) SELECT `guid`, 15816 FROM `creature` WHERE `guid` IN (27421);
#UPDATE `creature` SET `id` = 0 WHERE `guid` IN (27421);
#REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) SELECT `guid`, 15753 FROM `creature` WHERE `guid` IN (27518);
#REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) SELECT `guid`, 15817 FROM `creature` WHERE `guid` IN (27518);
#UPDATE `creature` SET `id` = 0 WHERE `guid` IN (27518);
#REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) SELECT `guid`, 15753 FROM `creature` WHERE `guid` IN (27524);
#REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) SELECT `guid`, 15817 FROM `creature` WHERE `guid` IN (27524);
#UPDATE `creature` SET `id` = 0 WHERE `guid` IN (27524);
#REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) SELECT `guid`, 15753 FROM `creature` WHERE `guid` IN (27533);
#REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) SELECT `guid`, 15817 FROM `creature` WHERE `guid` IN (27533);
#UPDATE `creature` SET `id` = 0 WHERE `guid` IN (27533);
#REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) SELECT `guid`, 15753 FROM `creature` WHERE `guid` IN (27583);
#REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) SELECT `guid`, 15817 FROM `creature` WHERE `guid` IN (27583);
#UPDATE `creature` SET `id` = 0 WHERE `guid` IN (27583);
#REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) SELECT `guid`, 15753 FROM `creature` WHERE `guid` IN (27805);
#REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) SELECT `guid`, 15817 FROM `creature` WHERE `guid` IN (27805);
#UPDATE `creature` SET `id` = 0 WHERE `guid` IN (27805);
#REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) SELECT `guid`, 15806 FROM `creature` WHERE `guid` IN (27834);
#REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) SELECT `guid`, 15814 FROM `creature` WHERE `guid` IN (27834);
#UPDATE `creature` SET `id` = 0 WHERE `guid` IN (27834);
#REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) SELECT `guid`, 15812 FROM `creature` WHERE `guid` IN (27851);
#REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) SELECT `guid`, 15813 FROM `creature` WHERE `guid` IN (27851);
#UPDATE `creature` SET `id` = 0 WHERE `guid` IN (27851);
