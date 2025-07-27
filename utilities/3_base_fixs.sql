# fix base

# DB-SCRIPT in base dbscripts_on_go_template_use [go_furbolg_food]
#UPDATE gameobject_template SET ScriptName='' WHERE entry=175329;
#UPDATE gameobject_template SET ScriptName='' WHERE entry=175330;
#UPDATE gameobject_template SET ScriptName='' WHERE entry=175331;
#DELETE FROM `dbscripts_on_go_template_use` WHERE `id` IN (175331,175329,175330);
#INSERT INTO `dbscripts_on_go_template_use` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `comments`) VALUES
#(175329, 0, 0, 10, 2168, 300000, 'Blackwood Grain Store - Summon Creature'),
#(175329, 30000, 0, 31, 2168, 50, 'Blackwood Grain Store - Spam Prevention'),
#(175330, 0, 0, 10, 2168, 300000, 'Blackwood Nut Store - Summon Creature'),
#(175330, 30000, 0, 31, 2168, 50, 'Blackwood Nut Store - Spam Prevention'),
#(175331, 0, 0, 10, 2168, 300000, 'Blackwood Fruit Store - Summon Creature'),
#(175331, 30000, 0, 31, 2168, 50, 'Blackwood Nut Store - Spam Prevention');

# [NPC 7866,7867,7868,7869,7870,7871][Gossip] [SD2 npc_prof_leather]
UPDATE creature_template SET ScriptName='' WHERE entry IN (7866,7867,7868,7869,7870,7871);

# cosmetic update quest 11232
#UPDATE `spell_script_target` SET `entry` = '43079' WHERE `entry` =43078 AND `type` =1 AND `targetEntry` =23972;
#UPDATE `creature_ai_scripts` SET `action2_param1` = '20155' WHERE `id` =2397201;
#UPDATE `creature_ai_scripts` SET `event_param1` = '43079' WHERE `id` =2397202;
#DELETE FROM dbscripts_on_relay WHERE id IN (20155);
#INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
#(20155,2,31,23805,201,0,0,0,0,0,0,0,0,0,0,0,0,''),
#(20155,3,15,43079,0,0,23805,200,3,0,0,0,0,0,0,0,0,'');

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
# Spells in core do not take reagents from the player (08.03.2025 - core not work)
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
DELETE FROM `dbscripts_on_creature_death` WHERE `id` IN (15286,15288,15290);
INSERT INTO `dbscripts_on_creature_death` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `datafloat`, `x`, `y`, `z`, `o`, `speed`, `condition_id`, `comments`) VALUES
(15288, 1000, 0, 18, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'despawn'),
(15286, 1000, 0, 18, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'despawn'),
(15290, 1000, 0, 18, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'despawn');
DELETE FROM `dbscripts_on_event` WHERE `id` = 9208;
INSERT INTO `dbscripts_on_event` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `datafloat`, `x`, `y`, `z`, `o`, `speed`, `condition_id`, `comments`) VALUES
(9208, 20000, 0, 10, 14862, 1200000, 0, 0, 0, 0, 0, 0, 0, 0, 0, -7307.85, 838.671, 1.64449, 0.750492, 0, 0, 'summon Emissary Roman''khan'),
(9208, 20010, 0, 0, 0, 0, 0, 14862, 500, 7, 10888, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Talk Emissary Roman''khan'),
(9208, 20015, 0, 3, 0, 0, 2, 14862, 500, 7, 0, 0, 0, 0, 0, -7214.39, 911.366, -1.76575, 4.19105, 0, 0, 'move'),
(9208, 100, 0, 10, 15288, 1200000, 0, 0, 0, 0, 0, 0, 0, 0, 0, -7223.8, 820.815, 4.89979, 0.0872665, 0, 0, 'summon Aluntir'),
(9208, 300, 0, 10, 15286, 1200000, 0, 0, 0, 0, 0, 0, 0, 0, 0, -7258.49, 828.158, 3.21053, 4.29351, 0, 0, 'summon Xil''xix'),
(9208, 500, 0, 10, 15290, 1200000, 0, 0, 0, 0, 0, 0, 0, 0, 0, -7268.27, 878.263, 1.88339, 1.85005, 0, 0, 'summon Arakis'),
(9208, 150, 0, 3, 0, 0, 2, 15288, 100, 0, 0, 0, 0, 0, 0, -7214.39, 911.366, -1.76575, 4.19105, 0, 0, 'move'),
(9208, 350, 0, 3, 0, 0, 2, 15286, 100, 0, 0, 0, 0, 0, 0, -7214.39, 911.366, -1.76575, 4.19105, 0, 0, 'move'),
(9208, 550, 0, 3, 0, 0, 2, 15290, 100, 0, 0, 0, 0, 0, 0, -7214.39, 911.366, -1.76575, 4.19105, 0, 0, 'move');

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

# test systen groupid item Weapon+Armor for Blue & Green quality
UPDATE `creature_loot_template` SET `groupid` = '7' WHERE `item` IN (SELECT `entry` FROM `item_template` WHERE `Quality` =3 AND `class` IN (2,4) AND `item` NOT IN (22712,37799));
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '0.5' WHERE `item` = 1203;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '0.5' WHERE `item` = 1973;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '0.5' WHERE `item` = 2564;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '0.5' WHERE `item` = 5266;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '0.5' WHERE `item` = 5267;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '0.5' WHERE `item` = 6660;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '0.5' WHERE `item` = 7734;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '0.5' WHERE `item` = 9402;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '0.5' WHERE `item` = 11302;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '0.5' WHERE `item` = 13001;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '0.5' WHERE `item` = 13003;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '0.5' WHERE `item` = 13004;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '0.5' WHERE `item` = 13036;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '10' WHERE `entry` =8443 AND `item` =10838;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '0' WHERE `entry` =8443 AND `item` =10842;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '0' WHERE `entry` =8443 AND `item` =10843;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '5' WHERE `entry` =8443 AND `item` =10844;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '0' WHERE `entry` =8443 AND `item` =10845;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '0' WHERE `entry` =8443 AND `item` =10846;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '10' WHERE `entry` =7358 AND `item` =10761;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '0' WHERE `entry` =7358 AND `item` =10762;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '0' WHERE `entry` =7358 AND `item` =10763;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '20' WHERE `entry` =7358 AND `item` =10764;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '20' WHERE `entry` =7358 AND `item` =10765;

UPDATE `creature_loot_template` SET `groupid` = '6' WHERE `item` IN (SELECT `entry` FROM `item_template` WHERE `Quality` =2 AND `class` IN (2,4) AND `item` NOT IN (3985,4949,17922,18450,18674,18677));
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '1' WHERE `item` = 1608;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '1' WHERE `item` = 1639;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '1' WHERE `item` = 1994;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '1' WHERE `item` = 3208;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '1' WHERE `item` = 4046;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '1' WHERE `item` = 7517;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '1' WHERE `item` = 8106;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '1' WHERE `item` = 8246;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '1' WHERE `item` = 727;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '1' WHERE `item` = 2075;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '1' WHERE `item` = 2140;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '1' WHERE `item` = 3283;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '1' WHERE `item` = 789;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '1' WHERE `item` = 790;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '1' WHERE `item` = 2072;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '1' WHERE `item` = 2078;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '1' WHERE `item` = 2079;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '1' WHERE `item` = 2981;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '1' WHERE `item` = 2982;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '1' WHERE `item` = 2988;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '1' WHERE `item` = 3048;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '1' WHERE `item` = 3057;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '1' WHERE `item` = 3058;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '5' WHERE `item` = 8269;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '5' WHERE `item` = 8283;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '5' WHERE `item` = 8284;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '5' WHERE `item` = 8288;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '5' WHERE `item` = 8289;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '5' WHERE `item` = 8292;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '5' WHERE `item` = 8303;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '5' WHERE `item` = 10135;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '5' WHERE `item` = 10141;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '2' WHERE `item` = 10246;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '2' WHERE `item` = 863;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '2' WHERE `item` = 864;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '2' WHERE `item` = 1207;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '2' WHERE `item` = 1608;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '2' WHERE `item` = 1613;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '2' WHERE `item` = 1990;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '2' WHERE `item` = 1994;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '2' WHERE `item` = 4044;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '2' WHERE `item` = 4046;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '2' WHERE `item` = 4047;

UPDATE `item_loot_template` SET `groupid` = '7' WHERE `item` IN (SELECT `entry` FROM `item_template` WHERE `Quality` =3 AND `class` IN (2,4));
UPDATE `item_loot_template` SET `groupid` = '6' WHERE `item` IN (SELECT `entry` FROM `item_template` WHERE `Quality` =2 AND `class` IN (2,4) AND `item` NOT IN (10780,10781,10782,10298,10299,11979,11980,11992,12005,12016,12017,12027,12036,12048,12058));
UPDATE `item_loot_template` SET `ChanceOrQuestChance` = '10' WHERE `entry` =43622 AND `item` =35979;
UPDATE `item_loot_template` SET `ChanceOrQuestChance` = '10' WHERE `entry` =43622 AND `item` =35987;
UPDATE `item_loot_template` SET `ChanceOrQuestChance` = '10' WHERE `entry` =43622 AND `item` =35995;
UPDATE `item_loot_template` SET `ChanceOrQuestChance` = '1' WHERE `entry` =43622 AND `item` =37754;
UPDATE `item_loot_template` SET `ChanceOrQuestChance` = '1' WHERE `entry` =43622 AND `item` =37755;
UPDATE `item_loot_template` SET `ChanceOrQuestChance` = '1' WHERE `entry` =43622 AND `item` =37756;
UPDATE `item_loot_template` SET `ChanceOrQuestChance` = '1' WHERE `item` = 1608;
UPDATE `item_loot_template` SET `ChanceOrQuestChance` = '1' WHERE `item` = 1639;
UPDATE `item_loot_template` SET `ChanceOrQuestChance` = '1' WHERE `item` = 1994;
UPDATE `item_loot_template` SET `ChanceOrQuestChance` = '1' WHERE `item` = 3208;
UPDATE `item_loot_template` SET `ChanceOrQuestChance` = '1' WHERE `item` = 4046;
UPDATE `item_loot_template` SET `ChanceOrQuestChance` = '1' WHERE `item` = 7517;
UPDATE `item_loot_template` SET `ChanceOrQuestChance` = '1' WHERE `item` = 8106;

UPDATE `gameobject_loot_template` SET `groupid` = '6' WHERE `item` IN (SELECT `entry` FROM `item_template` WHERE `Quality` =2 AND `class` IN (2,4) AND `item` NOT IN (18475,18476));
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = '1' WHERE `item` = 1613;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = '1' WHERE `item` = 1625;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = '1' WHERE `item` = 866;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = '1' WHERE `item` = 8288;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = '1' WHERE `item` = 8246;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = '1' WHERE `item` = 4044;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = '1' WHERE `item` = 4046;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = '1' WHERE `item` = 4047;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = '1' WHERE `item` = 8292;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = '1' WHERE `item` = 8289;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = '1' WHERE `item` = 8284;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = '1' WHERE `item` = 8269;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = '1' WHERE `item` = 8251;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = '1' WHERE `item` = 8245;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = '1' WHERE `item` = 1990;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = '1' WHERE `item` = 2077;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = '1' WHERE `item` = 2080;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = '1' WHERE `item` = 2819;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = '1' WHERE `item` = 3042;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = '1' WHERE `item` = 3186;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = '1' WHERE `item` = 865;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = '1' WHERE `item` = 864;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = '1' WHERE `item` = 4716;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = '1' WHERE `item` = 3197;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = '1' WHERE `item` = 8254;

UPDATE `gameobject_loot_template` SET `groupid` = '7' WHERE `item` IN (SELECT `entry` FROM `item_template` WHERE `Quality` =3 AND `class` IN (2,4) AND `item` NOT IN (18495,18499,18500));
UPDATE `creature_loot_template` SET `groupid` = '13' WHERE `item` =4614;
