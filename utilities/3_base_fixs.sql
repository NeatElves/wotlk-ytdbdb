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

# NPC id=0 not work - start event 29 - crash core
DELETE FROM `game_event_creature_data` WHERE `guid` in (9661,9674,9687,9701,9726,9732,46575,46592,46704,46737,46809,52392,66114,68382,68394,68395,78932,78933,78934,78935);

# Error Table combat_condition entry ... has invalid worldstate expression 30517. Setting to ....
DELETE FROM `combat_condition` WHERE `Id` = 4523;
DELETE FROM `combat_condition` WHERE `Id` = 5102;
DELETE FROM `combat_condition` WHERE `Id` = 5375;
DELETE FROM `combat_condition` WHERE `Id` = 5376;

# No WOTLK spell, log error
DELETE FROM `spell_scripts` WHERE `Id` IN (19977,19978,19979,20162,20305,20306,20307,20308,21082,27144,27158);

INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(2930501, 'Gundrak - Moorabi (Normal) - Troll Form', 0, 0),
(2930502, 'Gundrak - Moorabi (Normal) - Mammoth Form', 0, 0),
(3053001, 'Moorabi - Moorabi (Heroic) - Troll Form', 0, 0),
(3053002, 'Moorabi - Moorabi (Heroic) - Mammoth Form', 0, 0);

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
