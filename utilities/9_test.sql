# Quest "Field Duty Papers"
# https://github.com/TrinityCore/TrinityCore/blob/3.3.5/sql/old/3.3.5a/world/19041_2019_05_15/2019_04_21_02_world_335.sql

-- Horde version 8732
REPLACE INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action1_type`, `action1_param1`, `action1_param2`, `action1_param3`, `action2_type`, `action2_param1`, `action2_param2`, `action2_param3`, `action3_type`, `action3_param1`, `action3_param2`, `action3_param3`, `comment`) VALUES
(1562001, 15620, 0, 0, 100, 1025, 15000, 20000, 25000, 30000, 0, 0, 11, 25821, 4, 512, 0, 0, 0, 0, 0, 0, 0, 0, 'YTDB - Hive''Regal Hunter-Killer - Cast Charge'),
(1562002, 15620, 0, 0, 100, 1025, 7000, 10000, 16000, 19000, 0, 0, 11, 15588, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'YTDB - Hive''Regal Hunter-Killer - Cast Thunderclap'),
(1562003, 15620, 0, 0, 100, 1025, 5000, 7000, 7000, 11000, 0, 0, 11, 15284, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'YTDB - Hive''Regal Hunter-Killer - Cast Cleave'),
(1562004, 15620, 0, 0, 100, 1025, 10000, 15000, 35000, 40000, 0, 0, 11, 25815, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'YTDB - Hive''Regal Hunter-Killer - Cast Frightening Shriek'),
(1562005, 15620, 6, 0, 100, 0, 0, 0, 0, 0, 0, 0, 41, 3000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,'YTDB - Hive''Regal Hunter-Killer - Despawn on Death.'),
(1561201, 15612, 0, 0, 100, 1025, 7000, 7000, 12000, 16000, 0, 0, 11, 16856, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'YTDB - Krug Skullsplit - Cast Mortal Strike'),
(1561202, 15612, 0, 0, 100, 1025, 8000, 12000, 18000, 22000, 0, 0, 11, 15548, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'YTDB - Krug Skullsplit - Cast Thunderclap'),
(1561203, 15612, 4, 0, 100, 0, 0, 0, 0, 0, 0, 0, 1, 11288, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'YTDB - Krug Skullsplit  - Say on Aggro'),
(1561301, 15613, 0, 0, 100, 1025, 3000, 6000, 13000, 16000, 0, 0, 11, 15616, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'YTDB - Merok Longstride - Cast Flame Shock'),
(1561302, 15613, 1, 0, 100, 1, 1000, 1000, 600000, 600000, 0, 0, 11, 15507, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'YTDB - Merok Longstride - Cast Lightning Shield on Spawn'),
(1561303, 15613, 27, 0, 100, 1, 15507, 1, 15000, 30000, 0, 0, 11, 15507, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'YTDB - Merok Longstride - Cast Lightning Shield on Missing Buff'),
(1561304, 15613, 14, 0, 100, 1025, 4000, 40, 15000, 20000, 0, 0, 11, 15982, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'YTDB - Merok Longstride - Cast Healing Wave on Friendly Missing HP'),
(1561501, 15615, 14, 0, 100, 1025, 4000, 40, 15000, 20000, 0, 0, 11, 17138, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'YTDB - Shadow Priestess Shai - Cast Flash Heal on Friendly Missing HP'),
(1561502, 15615, 0, 0, 100, 1025, 6000, 8000, 22000, 26000, 0, 0, 11, 17146, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'YTDB - Shadow Priestess Shai - Cast Shadow Word: Pain'),
(1561503, 15615, 0, 0, 100, 1025, 3000, 5000, 12000, 16000, 0, 0, 11, 17194, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'YTDB - Shadow Priestess Shai - Cast Mind Blast');
UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `Entry` IN (15620,15612,15613,15615);
UPDATE `gossip_menu_option` SET `action_script_id` = 668701 WHERE `menu_id` =6687 AND `id` =0;
UPDATE `conditions` SET `value2` = 1 WHERE `condition_entry` =2990;
DELETE FROM dbscripts_on_gossip WHERE id = 668701;
INSERT INTO `dbscripts_on_gossip` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `datafloat`, `x`, `y`, `z`, `o`, `speed`, `condition_id`, `comments`) VALUES
(668701, 500, 0, 10, 15620, 120000, 1, 0, 0, 0, 1, 0, 0, 0, 0, -7765, 536, -43.4281, 0, 0, 0, 'YTDB - Krug Skullsplit - Summon HiveRegal Hunter-Killer'),
(668701, 1000, 1, 29, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'YTDB - Krug Skullsplit - Npc Flag Gossip remove');
DELETE FROM dbscripts_on_creature_death WHERE id = 15620;
INSERT INTO `dbscripts_on_creature_death` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `datafloat`, `x`, `y`, `z`, `o`, `speed`, `condition_id`, `comments`) VALUES
(15620, 0, 1, 45, 1561301, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(15620, 0, 2, 45, 1561501, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(15620, 0, 3, 45, 1561201, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
DELETE FROM dbscripts_on_relay WHERE id = 1561201;
INSERT INTO `dbscripts_on_relay` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `datafloat`, `x`, `y`, `z`, `o`, `speed`, `condition_id`, `comments`) VALUES
(1561201, 0, 1, 31, 15612, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'YTDB - search for 15612'),
(1561201, 0, 2, 29, 2, 1, 0, 15612, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'YTDB - Krug Skullsplit - Npc Q Flag add'),
(1561201, 75000, 0, 29, 2, 0, 0, 15612, 500, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'YTDB - Krug Skullsplit - Npc Q Flag rework'),
(1561201, 76000, 0, 29, 1, 1, 0, 15612, 500, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'YTDB - Krug Skullsplit - Npc G Flag rework');
DELETE FROM dbscripts_on_relay WHERE id = 1561301;
INSERT INTO `dbscripts_on_relay` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `datafloat`, `x`, `y`, `z`, `o`, `speed`, `condition_id`, `comments`) VALUES
(1561301, 0, 1, 31, 15613, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'YTDB - search for 15613'),
(1561301, 500, 1, 3, 0, 0, 2, 15613, 100, 7, 0, 0, 0, 0, 0, -7537.15, 731.184, -16.4181, 2.79253, 0, 0, '');
DELETE FROM dbscripts_on_relay WHERE id = 1561501;
INSERT INTO `dbscripts_on_relay` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `datafloat`, `x`, `y`, `z`, `o`, `speed`, `condition_id`, `comments`) VALUES
(1561501, 0, 1, 31, 15615, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'YTDB - search for 15615'),
(1561501, 500, 2, 3, 0, 0, 2, 15615, 100, 7, 0, 0, 0, 0, 0, -7556.6, 749.007, -17.5788, 5.61996, 0, 0, '');
UPDATE `creature_template` SET `ExtraFlags` = `ExtraFlags`|4096 WHERE `Entry` =15620;
UPDATE `creature` SET `spawntimesecsmin` = 60, `spawntimesecsmax` = 60 WHERE `id` IN (15612,15613,15615,15616,15617);
UPDATE `creature_template` SET `NpcFlags` = 1, `MovementType` = 2 WHERE `Entry` =15612;
DELETE FROM `creature_movement_template` WHERE `Entry`=15620;
INSERT INTO `creature_movement_template` (`Entry`, `PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `ScriptId`) VALUES
(15620, 1, 1, -7769.14, 549.365, -44.1111, 0),
(15620, 1, 2, -7762.88, 564.709, -45.9125, 0),
(15620, 1, 3, -7749.28, 589.14, -47.1617, 0),
(15620, 1, 4, -7748.5, 622.853, -45.2946, 0),
(15620, 1, 5, -7730.37, 643.343, -46.7866, 0),
(15620, 1, 6, -7694.24, 660.321, -51.0377, 0),
(15620, 1, 7, -7674.25, 671.264, -50.4592, 0),
(15620, 1, 8, -7655.01, 671.601, -47.9161, 0),
(15620, 1, 9, -7634.07, 672.497, -47.8617, 0),
(15620, 1, 10, -7603.06, 667.321, -48.6429, 0),
(15620, 1, 11, -7571.59, 665.263, -48.3899, 1562011),
(15620, 1, 12, -7562.58, 687.328, -49.9864, 0),
(15620, 1, 13, -7559.18, 689.958, -40.8654, 0),
(15620, 1, 14, -7555.3, 692.953, -30.7562, 0),
(15620, 1, 15, -7548.27, 697.037, -25.6632, 0),
(15620, 1, 16, -7547.07, 706.949, -17.7001, 0),
(15620, 1, 17, -7549.78, 711.901, -16.4527, 0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 1562011;
INSERT INTO `dbscripts_on_creature_movement` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `datafloat`, `x`, `y`, `z`, `o`, `speed`, `condition_id`, `comments`) VALUES
(1562011, 0, 0, 0, 0, 0, 0, 15612, 100, 0, 11286, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'YTDB - force buddy to: say text'),
(1562011, 4000, 1, 0, 0, 0, 0, 15612, 100, 0, 11287, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'YTDB - force buddy to: say text'),
(1562011, 4000, 2, 3, 0, 0, 2, 15613, 100, 7, 0, 0, 0, 0, 0, -7542.45, 720.155, -15.6801, 0, 0, 0, ''),
(1562011, 4000, 3, 3, 0, 0, 2, 15615, 100, 7, 0, 0, 0, 0, 0, -7553.46, 720.924, -16.715, 0, 0, 0, '');

-- Alliance version 8508
REPLACE INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action1_type`, `action1_param1`, `action1_param2`, `action1_param3`, `action2_type`, `action2_param1`, `action2_param2`, `action2_param3`, `action3_type`, `action3_param1`, `action3_param2`, `action3_param3`, `comment`) VALUES
(1544401, 15444, 0, 0, 100, 1025, 0, 0, 3000, 5000, 0, 0, 11, 13375, 1, 256, 0, 0, 0, 0, 0, 0, 0, 0, 'YTDB - Arcanist Nozzlespring  - Cast Fireball'),
(1544402, 15444, 0, 0, 100, 1025, 6000, 9000, 14000, 20000, 0, 0, 11, 15790, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'YTDB - Arcanist Nozzlespring  - Cast Arcane Missiles'),
(1544301, 15443, 0, 0, 100, 1025, 5000, 7000, 12000, 16000, 0, 0, 11, 14518, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'YTDB - Janela Stouthammer - Cast Crusader Strike'),
(1544302, 15443, 14, 0, 100, 1025, 4000, 40, 15000, 20000, 0, 0, 11, 25263, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'YTDB - Janela Stouthammer - Cast Holy Light on Friendly Missing HP'),
(1544303, 15443, 6, 0, 100, 0, 0, 0, 0, 0, 0, 0, 41, 3000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,'YTDB - Janela Stouthammer - Despawn on Death.'),
(1544905, 15449, 6, 0, 100, 0, 0, 0, 0, 0, 0, 0, 41, 3000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,'YTDB - Hive''Zora Abomination - Despawn on Death.'),
(1544001, 15440, 6, 0, 100, 0, 0, 0, 0, 0, 0, 0, 41, 3000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,'YTDB - Captain Blackanvil - Despawn on Death.');
UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `Entry` IN (15440,15443,15444);
UPDATE `gossip_menu_option` SET `action_menu_id` = 6622, `action_script_id` = 662301, `condition_id` = 3098 WHERE `menu_id` =6623 AND `id` =0;
DELETE FROM dbscripts_on_gossip WHERE id = 662301;
INSERT INTO `dbscripts_on_gossip` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `datafloat`, `x`, `y`, `z`, `o`, `speed`, `condition_id`, `comments`) VALUES
(662301, 500, 1, 10, 15449, 120000, 1, 0, 0, 0, 1, 0, 0, 0, 0, -7355.47, 1660.02, -33.1674, 5.4105, 0, 0, 'YTDB - Janela Stouthammer - Summon Hive''Zora Abomination'),
(662301, 1000, 0, 29, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'YTDB - Janela Stouthammer - Npc Flag Gossip remove'),
(662301, 500, 2, 0, 0, 0, 0, 15441, 100, 0, 10973, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'YTDB - force buddy to: say text'),
(662301, 6500, 1, 0, 0, 0, 0, 0, 0, 0, 10974, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'YTDB - say text'),
(662301, 10500, 0, 0, 0, 0, 0, 15441, 100, 0, 10975, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'YTDB - force buddy to: say text'),
(662301, 13500, 0, 20, 2, 1, 0, 15441, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
REPLACE INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES ('6622', '7875', '0', '0');
UPDATE `creature_template` SET `ExtraFlags` = `ExtraFlags`|4096 WHERE `Entry` in (15440,15449);
UPDATE `creature` SET `spawntimesecsmin` = 60, `spawntimesecsmax` = 60 WHERE `id` IN (15441,15442,15443,15444,15903);
UPDATE `creature_template` SET `SpeedWalk` = 1.1, `ExtraFlags` = 64 WHERE `Entry` IN (15442,15443,15444,15903);
UPDATE `creature_template` SET `NpcFlags` = 0, `MovementType` = 0 WHERE `Entry` =15440;
DELETE FROM `creature_movement_template` WHERE `Entry`=15449;
INSERT INTO `creature_movement_template` (`Entry`, `PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `ScriptId`) VALUES
(15449, 1, 1, -7327.58, 1626.2, -30.2021, 0),
(15449, 1, 2, -7280.14, 1586.27, -29.5117, 0),
(15449, 1, 3, -7254.51, 1552.92, -15.7705, 0),
(15449, 1, 4, -7241.55, 1498.67, -5.84411, 0),
(15449, 1, 5, -7212.22, 1452.28, -2.78192, 0),
(15449, 1, 6, -7205.93, 1433.55, 4.94912, 1544906),
(15449, 1, 7, -7203.28, 1417.93, 5.47492, 0),
(15449, 1, 8, -7181.79, 1397.39, 2.85378, 0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 1544906;
INSERT INTO `dbscripts_on_creature_movement` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `datafloat`, `x`, `y`, `z`, `o`, `speed`, `condition_id`, `comments`) VALUES
(1544906, 0, 0, 0, 0, 0, 0, 15440, 100, 0, 10969, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'YTDB - force buddy to: say text'),
(1544906, 4000, 1, 0, 0, 0, 0, 15440, 100, 0, 10970, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'YTDB - force buddy to: say text');
DELETE FROM `creature_movement_template` WHERE `Entry`=15441;
INSERT INTO `creature_movement_template` (`Entry`, `PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `ScriptId`, `WaitTime`) VALUES
(15441, 1, 1, -7167.08, 1382.81, 2.9195, 1544101, 1000),
(15441, 1, 2, -7178.14, 1390.42, 2.9267, 1544102, 1000);
DELETE FROM dbscripts_on_creature_movement WHERE id = 1544101;
INSERT INTO `dbscripts_on_creature_movement` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `datafloat`, `x`, `y`, `z`, `o`, `speed`, `condition_id`, `comments`) VALUES
(1544101, 0, 0, 32, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(1544101, 0, 1, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.24021, 0, 0, ''),
(1544101, 5500, 0, 10, 15440, 120000, 1, 0, 0, 0, 1, 0, 0, 0, 0, -7168.18, 1380.71, 2.91784, 1.09484, 0, 0, 'YTDB - Summon Captain Blackanvil'),
(1544101, 5000, 0, 0, 0, 0, 0, 15440, 100, 0, 10968, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(1544101, 6000, 2, 0, 0, 0, 0, 0, 0, 0, 10976, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(1544101, 6000, 3, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.23402, 0, 0, ''),
(1544101, 6000, 1, 20, 2, 1, 0, 15440, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(1544101, 7100, 0, 32, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
DELETE FROM dbscripts_on_creature_movement WHERE id = 1544102;
INSERT INTO `dbscripts_on_creature_movement` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `datafloat`, `x`, `y`, `z`, `o`, `speed`, `condition_id`, `comments`) VALUES
(1544102, 0, 0, 20, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
DELETE FROM `creature_movement_template` WHERE `Entry`=15440;
INSERT INTO `creature_movement_template` (`Entry`, `PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `ScriptId`, `WaitTime`) VALUES
(15440, 1, 2, -7169.92, 1384.67, 2.91995, 1544001, 1000),
(15440, 1, 3, -7177.31, 1393.31, 2.60589, 1544002, 1000);
DELETE FROM dbscripts_on_creature_movement WHERE id = 1544001;
INSERT INTO `dbscripts_on_creature_movement` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `datafloat`, `x`, `y`, `z`, `o`, `speed`, `condition_id`, `comments`) VALUES
(1544001, 0, 0, 32, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(1544001, 7000, 0, 0, 0, 0, 0, 0, 0, 0, 10967, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(1544001, 7100, 0, 32, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
DELETE FROM dbscripts_on_creature_movement WHERE id = 1544002;
INSERT INTO `dbscripts_on_creature_movement` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `datafloat`, `x`, `y`, `z`, `o`, `speed`, `condition_id`, `comments`) VALUES
(1544002, 0, 0, 20, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
DELETE FROM dbscripts_on_creature_death WHERE id = 15449;
INSERT INTO `dbscripts_on_creature_death` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `datafloat`, `x`, `y`, `z`, `o`, `speed`, `condition_id`, `comments`) VALUES
(15449, 0, 1, 45, 1544301, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(15449, 0, 2, 45, 1544101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(15449, 0, 3, 45, 1544001, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
DELETE FROM dbscripts_on_relay WHERE id = 1544001;
INSERT INTO `dbscripts_on_relay` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `datafloat`, `x`, `y`, `z`, `o`, `speed`, `condition_id`, `comments`) VALUES
(1544001, 0, 1, 31, 15440, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'YTDB - search for 15440'),
(1544001, 0, 2, 29, 2, 1, 0, 15440, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'YTDB - Captain Blackanvil - Npc Q Flag add'),
(1544001, 75000, 0, 29, 2, 0, 0, 15440, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'YTDB - Captain Blackanvil - Npc Q Flag rework'),
(1544001, 76000, 0, 18, 0, 0, 0, 15440, 100, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'YTDB - Captain Blackanvil - Npc despawn');
DELETE FROM dbscripts_on_relay WHERE id = 1544101;
INSERT INTO `dbscripts_on_relay` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `datafloat`, `x`, `y`, `z`, `o`, `speed`, `condition_id`, `comments`) VALUES
(1544101, 0, 0, 31, 15441, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'YTDB - search for 15441'),
(1544101, 500, 0, 3, 0, 0, 2, 78667, 100, 23, 0, 0, 0, 0, 0, -7178.14, 1390.42, 2.9267, 2.23402, 0, 0, '');
DELETE FROM dbscripts_on_relay WHERE id = 1544301;
INSERT INTO `dbscripts_on_relay` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `datafloat`, `x`, `y`, `z`, `o`, `speed`, `condition_id`, `comments`) VALUES
(1544301, 0, 0, 31, 15443, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'YTDB - search for 15443'),
(1544301, 500, 0, 3, 0, 0, 2, 15443, 100, 7, 0, 0, 0, 0, 0, -7178.58, 1392.09, 2.8017, 2.25148, 0, 0, ''),
(1544301, 77000, 0, 29, 1, 1, 0, 15443, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
REPLACE INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `value3`, `value4`, `flags`, `comments`) VALUES
(3097, 37, 15440, 100, 0, 0, 1, ''), (3098, -1, 3097, 2991, 0, 0, 0, '');
