# Y2kCat
# ALTER TABLE db_version_ytdb CHANGE COLUMN 663_FIX_14032 664_FIX_14060 bit;
# REPLACE INTO `db_version_ytdb` (`version`) VALUES ('664_FIX_14060');

UPDATE db_version SET `cache_id`= '664';
UPDATE db_version SET `version`= 'YTDB_0.15.2_R664_cMaNGOS_R14060_RuDB_R72';

DELETE FROM spell_proc_event WHERE entry IN(23333,23335,34976);
INSERT INTO spell_proc_event(entry, procEx) VALUES
(23333,65536),
(23335,65536),
(34976,65536);

UPDATE `npc_vendor` SET `slot` = 1 WHERE `entry` IN (3165,3610,3589) AND `item` = 5439;
UPDATE `npc_vendor` SET `slot` = 2 WHERE `entry` IN (3165,3610,3589) AND `item` = 11362;
UPDATE `npc_vendor` SET `slot` = 3 WHERE `entry` IN (3165,3610,3589) AND `item` = 2512;
UPDATE `npc_vendor` SET `slot` = 4 WHERE `entry` IN (3165,3610,3589) AND `item` = 2515;
UPDATE `npc_vendor` SET `slot` = 5 WHERE `entry` IN (3165,3610,3589) AND `item` = 2506;
UPDATE `npc_vendor` SET `slot` = 6 WHERE `entry` IN (3165,3610,3589) AND `item` = 2507;
UPDATE `npc_vendor` SET `slot` = 1 WHERE `entry` IN (1240,1249,1294,2046,3613,4164,4177,5106,5812,5819,16750,17930) AND `item` = 2392;
UPDATE `npc_vendor` SET `slot` = 2 WHERE `entry` IN (1240,1249,1294,2046,3613,4164,4177,5106,5812,5819,16750,17930) AND `item` = 2393;
UPDATE `npc_vendor` SET `slot` = 3 WHERE `entry` IN (1240,1249,1294,2046,3613,4164,4177,5106,5812,5819,16750,17930) AND `item` = 2394;
UPDATE `npc_vendor` SET `slot` = 4 WHERE `entry` IN (1240,1249,1294,2046,3613,4164,4177,5106,5812,5819,16750,17930) AND `item` = 2395;
UPDATE `npc_vendor` SET `slot` = 5 WHERE `entry` IN (1240,1249,1294,2046,3613,4164,4177,5106,5812,5819,16750,17930) AND `item` = 2396;
UPDATE `npc_vendor` SET `slot` = 6 WHERE `entry` IN (1240,1249,1294,2046,3613,4164,4177,5106,5812,5819,16750,17930) AND `item` = 2397;

REPLACE INTO `spell_proc_event` (`entry`, `ppmRate`) VALUES (21747, 1);

DELETE FROM spell_proc_event WHERE entry=1784;
INSERT INTO spell_proc_event(entry, procEx) VALUES
(1784,65536);

DELETE FROM spell_proc_event WHERE entry=5215;
INSERT INTO spell_proc_event(entry, procEx) VALUES
(5215,65536);

UPDATE `creature` SET `position_x` = '1420.98', `position_y` = '405.895', `position_z` = '-85.163', `orientation` = '6.07375', `spawntimesecsmin` = '300', `spawntimesecsmax` = '300' WHERE `guid` =15374;

-- wotlk ahune only has one version
UPDATE `creature_template` SET `DifficultyEntry1` = 0 WHERE `entry` IN (25740,25755,25756,25757,25865);

INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES
(49371,25324,1,1,1,0,0,3905.8003,912.67535,1.3239094,3.8397243,10,10,0,0,0,0,0,0),
(49372,25324,1,1,1,0,0,3797.5642,852.38464,0.5235723,2.6005406,10,10,0,0,0,0,0,0),
(49373,25324,1,1,1,0,0,4094.12,819.842,1.60686,2.64606,10,10,0,0,0,0,0,0),
(49374,25324,1,1,1,0,0,4206.9644,1088.714,24.683048,4.6251225,10,10,0,0,0,0,0,0),
(49375,25324,1,1,1,0,0,3844.81,732.213,7.52728,1.85,10,10,0,0,0,0,0,0),
(49376,25324,1,1,1,0,0,4088.092,1096.7585,2.2374983,0,10,10,0,0,0,0,0,0),
(49377,25324,1,1,1,0,0,4066.42,1031.31,0.269309,6.04236,10,10,0,0,0,0,0,0),
(49378,25324,1,1,1,0,0,4052.53,960.331,0.198278,5.56719,10,10,0,0,0,0,0,0),
(49379,25324,1,1,1,0,0,4032.58,914.006,0.200063,5.12736,10,10,0,0,0,0,0,0),
(49380,25324,1,1,1,0,0,3991.04,878.956,0.085163,5.03704,10,10,0,0,0,0,0,0),
(49381,25324,1,1,1,0,0,3943.86,700.93,8.28475,1.83655,10,10,0,0,0,0,0,0),
(49382,25324,1,1,1,0,0,4018.99,743.399,6.47049,2.35177,10,10,0,0,0,0,0,0),
(49383,25324,1,1,1,0,0,4053.11,778.055,4.26647,2.19469,10,10,0,0,0,0,0,0),
(49384,25324,1,1,1,0,0,4118.04,851.14,8.46706,2.73269,10,10,0,0,0,0,0,0),
(49385,25324,1,1,1,0,0,4133.99,928.143,3.58653,2.37448,10,10,0,0,0,0,0,0),
(49386,25324,1,1,1,0,0,4194.75,985.897,10.7252,2.70435,10,10,0,0,0,0,0,0),
(49387,25324,1,1,1,0,0,4210.89,1050.96,18.3835,3.34838,10,10,0,0,0,0,0,0),
(49388,25324,1,1,1,0,0,4253.39,1120.35,9.78433,2.43339,10,10,0,0,0,0,0,0),
(49389,25324,1,1,1,0,0,4101.56,1156.63,0.176375,0.02614,10,10,0,0,0,0,0,0);
DELETE FROM creature_template_addon WHERE entry IN (25324);
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES (25324,0,0,1,0,0,0,24235);
INSERT INTO game_event_creature (guid, event) SELECT guid, 1 FROM creature WHERE id = 25324;
DELETE FROM spell_script_target WHERE `entry`=47129;
INSERT INTO spell_script_target (`entry`, `type`, `targetEntry`, `inverseEffectMask`) VALUES (47129, 1, 25324, 0);
UPDATE creature_template SET Faction = 1727, UnitFlags = 256 WHERE entry = 25324;
DELETE FROM dbscripts_on_spell WHERE id = 47129;
INSERT INTO dbscripts_on_spell (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(47129,1,31,25324,500,0,0,0,0,0,0,0,0,0,0,0,0,'check for 25324'),
(47129,11,34,2375,500,0,25324,500,1|0x08,0,0,0,0,0,0,0,0,'aura check'),
(47129,100,14,24235,0,0,25324,500,7,0,0,0,0,0,0,0,0,'remove aura from buddy'),
(47129,100,21,1,0,0,25324,500,7,0,0,0,0,0,0,0,0,'buddy active'),
(47129,101,23,23114,0,0,25324,500,7 | 0x08,0,0,0,0,0,0,0,0,'buddy change model'),
(47129,110,25,1,0,0,25324,500,7,0,0,0,0,0,0,0,0,'RUN ON'),
(47129,500,37,0,0,0,25324,500,0,0,0,0,0,0,0,0,0,'make buddy come to player');
DELETE FROM conditions WHERE condition_entry = 2375;
INSERT INTO conditions (condition_entry,type,value1,value2,value3,value4,flags) VALUE (2375,1,24235,0,0,0,2);
DELETE FROM dbscripts_on_relay WHERE id IN (19986,19987);
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(19986,1,29,2,0,0,0,0,4,0,0,0,0,0,0,0,0,'remove unitflag'),
(19986,2,21,0,0,0,0,0,4,0,0,0,0,0,0,0,0,'unactive'),
(19987,10,35,8,7,0,0,0,0,0,0,0,0,0,0,0,0,'Send Event AI 8'),
(19987,100,0,0,0,0,0,0,4,25739,25740,25741,0,0,0,0,0,'random say'),
(19987,1000,29,2,1,0,0,0,4,0,0,0,0,0,0,0,0,'NPCFlags added'),
(19987,60000,29,2,0,0,0,0,4,0,0,0,0,0,0,0,0,'NPCFlags removed'),
(19987,60001,3,0,0,0,0,0,4,0,0,0,0,4118.06,830.81,6.75728,5.49293,'move'),
(19987,70000,18,0,0,0,0,0,4,0,0,0,0,0,0,0,0,'despawn self');

DELETE FROM dbscripts_on_quest_start WHERE id = '1960';
INSERT INTO dbscripts_on_quest_start(id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, datafloat, x, y, z, o, speed, condition_id, comments) VALUES
(1960,0,0,1,1,100,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Investigate the Alchemist Shop - Emote Talk'),
(1960,0,1,0,0,0,0,0,0,0,2682,0,0,0,0,0,0,0,0,0,0,'Investigate the Alchemist Shop - Say Text'),
(1960,40000,0,31,4568,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Investigate the Alchemist Shop - Spam Prevention');
UPDATE `quest_template` SET `StartScript`='1960' WHERE `entry`='1960';
DELETE FROM dbscripts_on_quest_start WHERE id = '1920';
INSERT INTO dbscripts_on_quest_start(id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, datafloat, x, y, z, o, speed, condition_id, comments) VALUES
(1920,0,0,1,1,100,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Investigate the Blue Recluse - Emote Talk'),
(1920,0,1,0,0,0,0,0,0,0,2681,0,0,0,0,0,0,0,0,0,0,'Investigate the Blue Recluse - Say Text'),
(1920,40000,0,31,5497,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Investigate the Blue Recluse - Spam Prevention');
UPDATE `quest_template` SET `StartScript`='1920' WHERE `entry`='1920';

DELETE FROM dbscripts_on_quest_end WHERE id = 5062 AND delay = 5000;
INSERT INTO dbscripts_on_quest_end(id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, datafloat, x, y, z, o, speed, condition_id, comments) VALUES
(5062,5000,0,31,4046,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Sacred Fire - Spam Prevention');

DELETE FROM dbscripts_on_quest_end WHERE id = 1027 AND delay = 0;
INSERT INTO `dbscripts_on_quest_end` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `x`, `y`, `z`, `o`, `comments`) VALUES
('1027', '0', '0', '21', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0','Shaeldryn - Set Active'),
('1027', '0', '1', '29', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0','Shaeldryn - Remove NPC Flags'),
('1027', '0', '2', '0', '0', '0', '0', '0', '0', '0', '1380', '0', '0', '0', '0','Shaeldryn - Say Text'),
('1027', '0', '3', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0','Shaeldryn - Emote Talk');

DELETE FROM dbscripts_on_quest_end WHERE id = 8425 AND delay = 8000;
INSERT INTO dbscripts_on_quest_end(id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, datafloat, x, y, z, o, speed, condition_id, comments) VALUES
(8425,8000,0,28,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Fallen Hero of the Horde - State Stand'),
(8425,8000,1,15,25100,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,'Fallen Hero of the Horde - Cast Untransform Hero'),
(8425,8000,2,29,2,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Fallen Hero of the Horde - Add Quest flag'),
(8425,8000,3,21,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Fallen Hero of the Horde - Remove Active Object');

DELETE FROM dbscripts_on_quest_end WHERE id = 4821 AND command =21;
DELETE FROM dbscripts_on_quest_end WHERE id = 4821 AND delay =9000;
INSERT INTO dbscripts_on_quest_end(id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, datafloat, x, y, z, o, speed, condition_id, comments) VALUES
(4821,0,2,21,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Alien Egg - Set Active'),
(4821,9000,0,43,0,0,0,175567,5,1,0,0,0,0,0,0,0,0,0,0,0,'Alien Egg - Activate Gameobject'),
(4821,9000,1,40,0,0,0,175567,5,1,0,0,0,0,0,0,0,0,0,0,0,'Alien Egg - Despawn Gameobject'),
(4821,9000,2,21,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Alien Egg - Remove Active');

DELETE FROM dbscripts_on_quest_end WHERE id = 4441 AND delay = 9000;
INSERT INTO dbscripts_on_quest_end(id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, datafloat, x, y, z, o, speed, condition_id, comments) VALUES
(4441,9000,0,47,3,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,'Eridan Bluewind - Stop Casting');

SET @OGUID := 37299;
DELETE FROM `dbscripts_on_quest_end` WHERE id = '582';
INSERT INTO dbscripts_on_quest_end(id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, datafloat, x, y, z, o, speed, condition_id, comments) VALUES
(582,0,1,21,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Nimboya - Set Active'),
(582,0,2,29,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Nimboya - Remove QuestFlags'),
(582,0,3,3,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0.64577,0,0,'Nimboya - Orientation'),
(582,0,4,0,0,0,0,0,0,0,732,0,0,0,0,0,0,0,0,0,0,'Nimboya - Say EmoteText'),
(582,1000,0,9,@OGUID,60,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Nimboya - Respawn Skull GObject'),
(582,1000,1,9,@OGUID+1,60,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Nimboya - Respawn Skull GObject'),
(582,1000,2,9,@OGUID+2,60,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Nimboya - Respawn Skull GObject'),
(582,1000,3,9,@OGUID+3,60,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Nimboya - Respawn Skull GObject'),
(582,1000,4,9,@OGUID+4,60,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Nimboya - Respawn Skull GObject'),
(582,1000,5,9,@OGUID+5,60,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Nimboya - Respawn Skull GObject'),
(582,1000,6,9,@OGUID+6,60,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Nimboya - Respawn Skull GObject'),
(582,7000,1,9,@OGUID+7,54,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Nimboya - Respawn Skull GObject'),
(582,7000,2,9,@OGUID+8,54,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Nimboya - Respawn Skull GObject'),
(582,7000,3,9,@OGUID+9,54,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Nimboya - Respawn Skull GObject'),
(582,7000,4,9,@OGUID+10,54,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Nimboya - Respawn Skull GObject'),
(582,7000,5,9,@OGUID+11,54,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Nimboya - Respawn Skull GObject'),
(582,7000,6,9,@OGUID+12,54,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Nimboya - Respawn Skull GObject'),
(582,7000,7,0,0,0,0,0,0,0,733,0,0,0,0,0,0,0,0,0,0,'Nimboya - Say EmoteText'),
(582,12000,1,9,@OGUID+13,49,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Nimboya - Respawn Skull GObject'),
(582,12000,2,9,@OGUID+14,49,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Nimboya - Respawn Skull GObject'),
(582,12000,3,9,@OGUID+15,49,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Nimboya - Respawn Skull GObject'),
(582,12000,4,9,@OGUID+16,49,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Nimboya - Respawn Skull GObject'),
(582,12000,5,9,@OGUID+17,49,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Nimboya - Respawn Skull GObject'),
(582,12000,6,9,@OGUID+18,49,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Nimboya - Respawn Skull GObject'),
(582,19000,0,36,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Nimboya - Face Player'),
(582,19000,1,0,0,0,0,0,0,0,734,0,0,0,0,0,0,0,0,0,0,'Nimboya - Say EmoteText'),
(582,19000,2,29,2,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Nimboya - Add QuestFlags'),
(582,25000,0,3,0,0,1,0,0,0,0,0,0,0,0,0,0,0,3.19395,0,0,'Nimboya - Change Orientation'),
(582,25000,1,21,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Nimboya - Remove Active');
UPDATE `quest_template` SET `CompleteScript`='582' WHERE `entry`='582';
UPDATE `creature` SET `position_x` = '-12348.2', `position_y` = '168.519', `position_z` = '3.16495', `orientation` = '3.19395', `spawntimesecsmin` = '300', `spawntimesecsmax` = '300' WHERE `guid` =664;
DELETE FROM gameobject WHERE `guid` IN (157010, 157011, 157012, 157013, 157014, 157015, 157016, 157017, 157018, 157019, 157020, 157021, 157022, 157023, 157024, 157025, 157026, 157027, 157028);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`) VALUES
(@OGUID, '2371', '0', '-12345.903', '170.5356', '3.004278', '4.4331365', '-0.7986355', '0.60181504', '-60', '-60', '1'),
(@OGUID+1, '2371', '0', '-12346.513', '171.06647', '3.004277', '3.1940022', '-0.9996567', '0.026201647', '-60', '-60', '1'),
(@OGUID+2, '2371', '0', '-12346.201', '171.26357', '3.00435', '3.0717661', '0.9993906', '0.034906134', '-60', '-60', '1'),
(@OGUID+3, '2371', '0', '-12346.156', '170.5383', '3.004277', '1.780234', '0.7771454', '0.6293211', '-60', '-60', '1'),
(@OGUID+4, '2371', '0', '-12346.156', '170.5383', '3.004277', '1.780234', '0.7771454', '0.6293211', '-60', '-60', '1'),
(@OGUID+5, '2371', '0', '-12346.107', '170.72945', '3.00435', '0', '0', '1', '-60', '-60', '1'),
(@OGUID+6, '2371', '0', '-12345.833', '169.7869', '2.978263', '0', '0', '1', '-60', '-60', '1'),
(@OGUID+7, '2371', '0', '-12346.037', '170.97575', '3.00435', '5.585054', '-0.34202003', '0.9396927', '-60', '-60', '1'),
(@OGUID+8, '2371', '0', '-12346.091', '170.27995', '3.004277', '2.0769393', '0.86162853', '0.99904823', '-60', '-60', '1'),
(@OGUID+9, '2371', '0', '-12346.354', '170.8782', '3.004349', '0.087266', '0.043619156', '0.99904823', '-60', '-60', '1'),
(@OGUID+10, '2371', '0', '-12347.181', '170.73628', '3.022072', '5.811947', '-0.23344517', '0.97236997', '-60', '-60', '1'),
(@OGUID+11, '2371', '0', '-12345.812', '170.6614', '3.079033', '0.94247663', '0.45398998', '0.89100677', '-60', '-60', '1'),
(@OGUID+12, '2371', '0', '-12346.648', '170.6251', '3.214931', '4.9741898', '-0.60876083', '0.7933538', '-60', '-60', '1'),
(@OGUID+13, '2371', '0', '-12346.784', '169.93674', '3.01733', '3.9095414', '-0.92718315', '0.3746083', '-60', '-60', '1'),
(@OGUID+14, '2371', '0', '-12346.142', '171.32802', '3.214792', '2.1642058', '0.88294697', '0.4694727', '-60', '-60', '1'),
(@OGUID+15, '2371', '0', '-12346.013', '171.04683', '3.192957', '0.12217299', '0.061048508', '0.9981348', '-60', '-60', '1'),
(@OGUID+16, '2371', '0', '-12345.653', '170.5593', '3.215016', '3.0194132', '0.9981346', '0.061051756', '-60', '-60', '1'),
(@OGUID+17, '2371', '0', '-12346.173', '171.38135', '3.533223', '3.8397253', '-0.9396925', '0.34202045', '-60', '-60', '1'),
(@OGUID+18, '2371', '0', '-12346.501', '170.10889', '3.00499', '2.2514734', '0.902585', '0.43051165', '-60', '-60', '1');

INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(17862, 2371, 0, 1, 1, -12543.8, -722.978, 41.5382, 2.1293, 0, 0, 0.874619, 0.48481, 900, 900, 100, 1),
(17870, 2371, 0, 1, 1, -12850.8, -819.913, 56.0581, 0.855211, 0, 0, 0.414693, 0.909961, 900, 900, 100, 1);

UPDATE `creature_template_classlevelstats` SET `BaseDamageExp0`='34.482' WHERE `Level`='61' and`Class`='1';

UPDATE item_template SET ExtraFlags=2,Flags2=0 WHERE entry=7666;
DELETE FROM conditions WHERE condition_entry BETWEEN 2885 AND 2893;
INSERT INTO conditions (condition_entry, type, value1, value2, value3, value4, flags) VALUES
(2885, 9, 2198, 0, 0, 0, 1),
(2886, 8, 2198, 0, 0, 0, 1),
(2887, -1, 2886, 2885, 340, 0, 0),
(2888, 9, 2283, 0, 0, 0, 0),
(2889, 8, 2283, 0, 0, 0, 1),
(2890, -1, 2889, 2888, 273, 0, 0),
(2891, -2, 2890, 2887, 0, 0, 0),
(2892, 23, 7666, 1, 0, 0, 1),
(2893, -1, 2892, 2891, 0, 0, 0);
UPDATE creature_loot_template SET condition_id = 2893 WHERE item = 7666;

DELETE FROM `dbscripts_on_quest_end` WHERE id IN (9467);
INSERT INTO `dbscripts_on_quest_end` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `datafloat`, `x`, `y`, `z`, `o`, `speed`, `condition_id`, `comments`) VALUES
(9467,1000,0,15,30218,1,0,17274,100,1,0,0,0,0,0,0,0,0,0,0,0,''),
(9467,2000,0,10,17220,13000,0,0,0,8,0,0,0,0,0,-3266.49,-12929.1,11.4484,1.570796,0,0,''),
(9467,5000,0,0,0,0,0,17220,50,7,13694,0,0,0,0,0,0,0,0,0,0,'17220 text'),
(9467,7000,0,36,0,0,0,17220,50,0,0,0,0,0,0,0,0,0,0,0,0,'turn to player'),
(9467,8000,0,0,0,0,0,17220,50,7,13693,0,0,0,0,0,0,0,0,0,0,'17220 text');

DELETE FROM game_event_creature WHERE guid IN (58300,58284,58338,58256);

DELETE FROM `dbscripts_on_creature_movement` WHERE id IN (1944503);
INSERT INTO `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(1944503,0,1,93,0,0,0,0,4,0,0,0,0,0,0,0,0,0,''),
(1944503,3900,1,0,0,0,0,0,4,0,0,0,0,0,0,0,0,0,''),
(1944503,4000,28,7,0,0,0,0,4,0,0,0,0,0,0,0,0,0,'UNIT_STAND_STATE_DEAD'),
(1944503,4100,35,5,30,0,0,0,0,0,0,0,0,0,0,0,0,0,'send event 5'),
(1944503,10000,0,0,0,0,0,0,4,16732,0,0,0,0,0,0,0,0,''),
(1944503,14900,28,0,0,0,0,0,4,0,0,0,0,0,0,0,0,0,'UNIT_STAND_STATE_STAND'),
(1944503,15000,18,0,0,0,0,0,4,0,0,0,0,0,0,0,0,0,'despawn self'),
(1944503,15001,21,0,0,0,0,0,4,0,0,0,0,0,0,0,0,0,'unactive');
DELETE FROM `dbscripts_on_relay` WHERE id IN (19985);
INSERT INTO `dbscripts_on_relay` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(19985,0,21,1,0,0,0,0,4,0,0,0,0,0,0,0,0,0,'Part of Operations Officer 19446 EAI: active'),
(19985,1,3,0,0,0,0,0,4,0,0,0,0,0,0,0,0.532048,0,'Part of Operations Officer 19446 EAI: move'),
(19985,1000,0,0,0,0,0,0,4,16737,0,0,0,0,0,0,0,0,'Part of Operations Officer 19446 EAI: say'),
(19985,7000,0,0,0,0,0,0,4,16738,0,0,0,0,0,0,0,0,'Part of Operations Officer 19446 EAI: say'),
(19985,11000,0,0,0,0,0,0,4,16739,0,0,0,0,0,0,0,0,'Part of Operations Officer 19446 EAI: say'),
(19985,11100,3,0,0,0,0,0,4,0,0,0,0,0,0,0,5.51524,0,'Part of Operations Officer 19446 EAI: move'),
(19985,12000,21,0,0,0,0,0,4,0,0,0,0,0,0,0,0,0,'Part of Operations Officer 19446 EAI: unactive');

DELETE FROM `dbscripts_on_quest_end` WHERE id = '584';
INSERT INTO dbscripts_on_quest_end(id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, datafloat, x, y, z, o, speed, condition_id, comments) VALUES
(584,0,1,21,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Bubbling Cauldron - Set Active'),
(584,0,2,0,0,0,0,2519,10,0,735,0,0,0,0,0,0,0,0,0,0,'Kinweelay - Say Text'),
(584,5000,0,3,0,0,0,2519,10,0,0,0,0,0,0,0,0,0,1.65806,0,0,'Kinweelay - Change Orientation'),
(584,5000,1,15,3644,0,0,2519,10,7,0,0,0,0,0,0,0,0,0,0,0,'Kinweelay - Cast Spell'),
(584,5000,2,0,0,0,0,2519,10,0,736,0,0,0,0,0,0,0,0,0,0,'Kinweelay - Say Text'),
(584,12000,0,36,0,0,0,2519,10,0,0,0,0,0,0,0,0,0,0,0,0,'Kinweelay - Face Player'),
(584,12000,1,0,0,0,0,2519,10,0,740,0,0,0,0,0,0,0,0,0,0,'Kinweelay - Say Text'),
(584,12000,2,21,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Bubbling Cauldron - Remove Active');
UPDATE `quest_template` SET `CompleteScript`='584' WHERE `entry`='584';

UPDATE `creature` SET `position_x` = '-4692.6', `position_y` = '-1312.64', `orientation` = '2.93215', `spawntimesecsmin` = '300', `spawntimesecsmax` = '300' WHERE `guid` =9650;
DELETE FROM `dbscripts_on_quest_end` WHERE id = '4512';
INSERT INTO dbscripts_on_quest_end(id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, datafloat, x, y, z, o, speed, condition_id, comments) VALUES
(4512,0,1,21,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Laris Geardawdle - Set Active'),
(4512,0,2,29,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Laris Geardawdle - Remove QuestFlags'),
(4512,0,4,20,2,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Laris Geardawdle - Start Waypoints');
UPDATE `quest_template` SET `CompleteScript`='4512' WHERE `entry`='4512';
SET @PATH := 9616;
DELETE FROM creature_movement_template WHERE `Entry` = @PATH;
INSERT INTO `creature_movement_template` (`Entry`, `PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(@PATH,1, 1,-4691.348,-1316.5197,503.38144,100,1000,961600),
(@PATH,1, 2,-4693.7476,-1310.9523,503.38144,100,0,0),
(@PATH,1, 3,-4692.0693,-1315.1838,503.38144,100,0,0),
(@PATH,1, 4,-4692.6,-1312.6398,503.38144,100,0,0),
(@PATH,1, 5,-4692.6,-1312.6398,503.38144,2.932153224945068359,1000,961601);
DELETE FROM `dbscripts_on_creature_movement` WHERE id IN (961600, 961601);
INSERT INTO dbscripts_on_creature_movement(id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, datafloat, x, y, z, o, speed, condition_id, comments) VALUES
(961600,1000,0,0,0,0,0,0,0,0,5447,0,0,0,0,0,0,0,0,0,0,'Laris Geardawdle - Say Text'),
(961600,1000,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Laris Geardawdle - Emote Talk'),
(961601,0,0,20,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Laris Geardawdle - Remove WaypointMovement'),
(961601,2000,1,21,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Laris Geardawdle - Remove Active'),
(961601,2000,2,29,2,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Laris Geardawdle - Add QuestFlags');

UPDATE `creature` SET `spawntimesecsmin` = '300', `spawntimesecsmax` = '300' WHERE `guid` =14767;
DELETE FROM `dbscripts_on_quest_end` WHERE id = '5803';
INSERT INTO dbscripts_on_quest_end(id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, datafloat, x, y, z, o, speed, condition_id, comments) VALUES
(5803,0,1,21,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Alchemist Arbington - Set Active'),
(5803,0,2,29,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Alchemist Arbington - Remove QuestFlags'),
(5803,0,3,0,0,0,0,0,0,0,7278,0,0,0,0,0,0,0,0,0,0,'Alchemist Arbington - Say Text'),
(5803,0,4,20,2,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Alchemist Arbington - Start Waypoints');
UPDATE `quest_template` SET `CompleteScript`='5803' WHERE `entry`='5803';
SET @PATH := 11056;
DELETE FROM creature_movement_template WHERE `Entry` = @PATH;
INSERT INTO `creature_movement_template` (`Entry`, `PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`, `Comment`) VALUES
(@PATH,0,1,966.8047,-1412.9824,69.265816,100,0,0, ''),
(@PATH,0,2,963.66394,-1413.011,67.56177,100,1000,1105600, ''),
(@PATH,0,3,966.5482,-1413.6582,68.88953,100,0,0, 'Pathfinding Issue'),
(@PATH,0,4,966.5482,-1414.6582,68.13953,100,0,0, 'Pathfinding Issue'),
(@PATH,0,5,966.4325,-1416.8053,67.217285,100,0,0, ''),
(@PATH,0,6,965.1352,-1417.8662,66.552734,100,0,0, ''),
(@PATH,0,7,965.1352,-1417.8662,66.552734,4.188790321350097656,1000,1105601, '');
DELETE FROM `dbscripts_on_creature_movement` WHERE id IN (1105600, 1105601);
INSERT INTO dbscripts_on_creature_movement(id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, datafloat, x, y, z, o, speed, condition_id, comments) VALUES
(1105600,0,0,15,9744,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,'Alchemist Arbington - Cast Spell - Jarkals Translation'),
(1105601,0,0,20,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Alchemist Arbington - Remove WaypointMovement'),
(1105601,2000,0,0,0,0,0,0,0,0,7279,0,0,0,0,0,0,0,0,0,0,'Alchemist Arbington - Say Text'),
(1105601,2000,1,21,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Alchemist Arbington - Remove Active'),
(1105601,2000,2,29,2,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Alchemist Arbington - Add QuestFlags');
UPDATE `creature` SET `position_x` = '1751.82', `position_y` = '-729.987', `position_z` = '60.1524', `orientation` = '2.51327', `spawntimesecsmin` = '300', `spawntimesecsmax` = '300' WHERE `guid` =16014;
DELETE FROM `dbscripts_on_quest_end` WHERE id = '5804';
INSERT INTO dbscripts_on_quest_end(id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, datafloat, x, y, z, o, speed, condition_id, comments) VALUES
(5804,0,1,21,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Apothecary Dithers - Set Active'),
(5804,0,2,29,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Apothecary Dithers - Remove QuestFlags'),
(5804,0,3,0,0,0,0,0,0,0,7278,0,0,0,0,0,0,0,0,0,0,'Apothecary Dithers - Say Text'),
(5804,1000,0,15,9744,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,'Apothecary Dithers - Cast Spell - Jarkals Translation'),
(5804,10000,0,0,0,0,0,0,0,0,7279,0,0,0,0,0,0,0,0,0,0,'Apothecary Dithers - Say Text'),
(5804,12000,1,21,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Apothecary Dithers - Remove Active'),
(5804,12000,2,29,2,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Apothecary Dithers - Add QuestFlags');
UPDATE `quest_template` SET `CompleteScript`='5804' WHERE `entry`='5804';

UPDATE `creature` SET `position_x` = '-1274.69', `position_y` = '-2516.63', `position_z` = '21.4792', `orientation` = '5.27122', `spawntimesecsmin` = '300', `spawntimesecsmax` = '300' WHERE `guid` =11546;
DELETE FROM `dbscripts_on_quest_end` WHERE id = '682';
INSERT INTO dbscripts_on_quest_end(id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, datafloat, x, y, z, o, speed, condition_id, comments) VALUES
(682,0,0,21,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Captain Nials - Set Active'),
(682,0,1,3,0,0,0,0,0,0,0,0,0,0,0,-1275,-2513.586,21.479235,0,0,0,'Captain Nials - Move'),
(682,2000,0,0,0,0,0,0,0,0,873,0,0,0,0,0,0,0,0,0,0,'Captain Nials - Say Text'),
(682,5000,0,0,0,0,0,0,0,0,874,875,876,877,0,0,0,0,0,0,0,'Captain Nials - RND Say Text'),
(682,9000,0,0,0,0,0,0,0,0,878,879,880,881,0,0,0,0,0,0,0,'Captain Nials - RND Say Text'),
(682,12000,0,0,0,0,0,0,0,0,882,0,0,0,0,0,0,0,0,0,0,'Captain Nials - Say Text'),
(682,14000,0,0,0,0,0,0,0,0,883,0,0,0,0,0,0,0,0,0,0,'Captain Nials - Say Text'),
(682,17000,0,3,0,0,0,0,0,0,0,0,0,0,0,-1274.687,-2516.6316,21.571032,0,0,0,'Captain Nials - Move'),
(682,17000,1,0,0,0,0,0,0,0,885,0,0,0,0,0,0,0,0,0,0,'Captain Nials - Say Text'),
(682,17000,0,21,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Captain Nials - Remove Active');
UPDATE `quest_template` SET `CompleteScript`='682' WHERE `entry`='682';

DELETE FROM `dbscripts_on_quest_start` WHERE id = '753';
INSERT INTO dbscripts_on_quest_start(id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, datafloat, x, y, z, o, speed, condition_id, comments) VALUES
(753,0,0,0,0,0,0,0,0,0,1528,0,0,0,0,0,0,0,0,0,0,'Greatmother Hawkwind - Say Text'),
(753,20000,0,31,2991,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'A Humble Task - Spam Prevention');
UPDATE `quest_template` SET `StartScript`='753' WHERE `entry`='753';
UPDATE `creature` SET `position_x` = '-3052.54', `position_y` = '-522.498', `position_z` = '27.0143', `orientation` = '0.977384' WHERE `guid` =28583;
UPDATE `creature` SET `position_x` = '-2877.95', `position_y` = '-221.83', `position_z` = '54.9039', `orientation` = '4.34587', `spawntimesecsmin` = '300', `spawntimesecsmax` = '300' WHERE `guid` =28979;

UPDATE `creature` SET `position_z` = '41.6879' WHERE `guid` =34673;
DELETE FROM dbscripts_on_quest_start WHERE id = '4786';
INSERT INTO dbscripts_on_quest_start(id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, datafloat, x, y, z, o, speed, condition_id, comments) VALUES
(4786,0,1,21,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Menara Voidrender - Set Active'),
(4786,0,2,29,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Menara Voidrender - Remove QuestFlags'),
(4786,0,3,15,16633,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Menara Voidrender - Cast Spell'),
(4786,7000,1,21,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Menara Voidrender - Remove Active'),
(4786,7000,2,29,2,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Menara Voidrender - Add QuestFlags');
UPDATE `quest_template` SET `StartScript`='4786' WHERE `entry`='4786';

UPDATE `creature_template_classlevelstats` SET `BaseDamageExp0`='32.6201' WHERE `Level`='62' and`Class`='2';

UPDATE `creature_template` SET `SpeedWalk` = 2.8, `SpeedRun` = 2.28571 WHERE `Entry` = 15343;
UPDATE `creature_template` SET `Faction` = 15, `Faction` = 15, `MovementType` = 1 WHERE `Entry` = 15168;
UPDATE `quest_template` SET `QuestFlags`='256' WHERE `entry`='8579';
UPDATE `quest_template` SET `PrevQuestId`='8579' WHERE `entry`='8627';
UPDATE `quest_template` SET `PrevQuestId`='8579' WHERE `entry`='8628';
UPDATE `quest_template` SET `PrevQuestId`='8579' WHERE `entry`='8629';
UPDATE `quest_template` SET `PrevQuestId`='8579' WHERE `entry`='8630';
UPDATE `quest_template` SET `PrevQuestId`='8579' WHERE `entry`='8655';
UPDATE `quest_template` SET `PrevQuestId`='8579' WHERE `entry`='8544';
UPDATE `quest_template` SET `PrevQuestId`='8579' WHERE `entry`='8559';
UPDATE `quest_template` SET `PrevQuestId`='8579' WHERE `entry`='8560';
UPDATE `quest_template` SET `PrevQuestId`='8579' WHERE `entry`='8561';
UPDATE `quest_template` SET `PrevQuestId`='8579' WHERE `entry`='8562';
UPDATE `quest_template` SET `PrevQuestId`='8579' WHERE `entry`='8626';
UPDATE `quest_template` SET `PrevQuestId`='8579' WHERE `entry`='8656';
UPDATE `quest_template` SET `PrevQuestId`='8579' WHERE `entry`='8657';
UPDATE `quest_template` SET `PrevQuestId`='8579' WHERE `entry`='8658';
UPDATE `quest_template` SET `PrevQuestId`='8579' WHERE `entry`='8659';
UPDATE `quest_template` SET `PrevQuestId`='8579' WHERE `entry`='8637';
UPDATE `quest_template` SET `PrevQuestId`='8579' WHERE `entry`='8638';
UPDATE `quest_template` SET `PrevQuestId`='8579' WHERE `entry`='8639';
UPDATE `quest_template` SET `PrevQuestId`='8579' WHERE `entry`='8640';
UPDATE `quest_template` SET `PrevQuestId`='8579' WHERE `entry`='8641';
UPDATE `quest_template` SET `PrevQuestId`='8579' WHERE `entry`='8592';
UPDATE `quest_template` SET `PrevQuestId`='8579' WHERE `entry`='8593';
UPDATE `quest_template` SET `PrevQuestId`='8579' WHERE `entry`='8594';
UPDATE `quest_template` SET `PrevQuestId`='8579' WHERE `entry`='8596';
UPDATE `quest_template` SET `PrevQuestId`='8579' WHERE `entry`='8603';
UPDATE `quest_template` SET `PrevQuestId`='8579' WHERE `entry`='8602';
UPDATE `quest_template` SET `PrevQuestId`='8579' WHERE `entry`='8621';
UPDATE `quest_template` SET `PrevQuestId`='8579' WHERE `entry`='8622';
UPDATE `quest_template` SET `PrevQuestId`='8579' WHERE `entry`='8623';
UPDATE `quest_template` SET `PrevQuestId`='8579' WHERE `entry`='8624';
UPDATE `quest_template` SET `PrevQuestId`='8579' WHERE `entry`='8625';
UPDATE `quest_template` SET `PrevQuestId`='8579' WHERE `entry`='8631';
UPDATE `quest_template` SET `PrevQuestId`='8579' WHERE `entry`='8632';
UPDATE `quest_template` SET `PrevQuestId`='8579' WHERE `entry`='8633';
UPDATE `quest_template` SET `PrevQuestId`='8579' WHERE `entry`='8634';
UPDATE `quest_template` SET `PrevQuestId`='8579' WHERE `entry`='8660';
UPDATE `quest_template` SET `PrevQuestId`='8579' WHERE `entry`='8661';
UPDATE `quest_template` SET `PrevQuestId`='8579' WHERE `entry`='8662';
UPDATE `quest_template` SET `PrevQuestId`='8579' WHERE `entry`='8663';
UPDATE `quest_template` SET `PrevQuestId`='8579' WHERE `entry`='8664';
UPDATE `quest_template` SET `PrevQuestId`='8579' WHERE `entry`='8665';
UPDATE `quest_template` SET `PrevQuestId`='8579' WHERE `entry`='8666';
UPDATE `quest_template` SET `PrevQuestId`='8579' WHERE `entry`='8667';
UPDATE `quest_template` SET `PrevQuestId`='8579' WHERE `entry`='8668';
UPDATE `quest_template` SET `PrevQuestId`='8579' WHERE `entry`='8669';

UPDATE `creature_template` SET `ResistanceHoly`='0' WHERE `Entry`='15339';

UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `Entry`='15324';
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `Entry`='15327';
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `Entry`='15325';
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `Entry`='15348';
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `Entry`='15387';
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `Entry`='15391';
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `Entry`='15392';
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `Entry`='15390';
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `Entry`='15389';
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `Entry`='15386';
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `Entry`='15385';
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `Entry`='15388';
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `Entry`='15341';
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `Entry`='15320';
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2500', `RangedBaseAttackTime`='2500' WHERE `Entry`='15370';
UPDATE `creature_template` SET `MinLevel`='60', `MaxLevel`='60', `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `Entry`='15964';
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `Entry`='15335';
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `Entry`='15521';
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `Entry`='15333';
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `Entry`='15336';
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `Entry`='15319';
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `Entry`='15318';
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `Entry`='15555';
UPDATE `creature_template` SET `MeleeBaseAttackTime`='1800', `RangedBaseAttackTime`='1800' WHERE `Entry`='15339';
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `Entry`='15355';
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `Entry`='15537';
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `Entry`='15461';
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `Entry`='15462';
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `Entry`='15338';
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `Entry`='15340';
UPDATE `creature_template` SET `MeleeBaseAttackTime`='1200', `RangedBaseAttackTime`='1200' WHERE `Entry`='15505';

UPDATE `areatrigger_teleport` SET `required_level` = 0 WHERE `id` = 2890;

UPDATE `quest_template` SET `RequestItemsText` = 'I never met a hunter who got any kills by standing around the campfire. Were you planning on killing those Stranglethorn Raptors or were you hoping they would die of old age?' WHERE `entry` = 194;

UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -33, `MinCountOrRef` = 3, `MaxCount` = 10 WHERE `item` = 11467;
UPDATE `quest_template` SET `RequiredClasses` = 384 WHERE `entry` = 8381;

DELETE FROM `creature_template_addon` WHERE `entry` IN (13318, 13138, 13297, 13300, 13143, 13137, 13298, 13296, 13152, 13144, 13147);
INSERT INTO `creature_template_addon` VALUES
(13318, 14577, 0, 1, 16, 0, 0, NULL),
(13138, 14337, 0, 1, 16, 0, 0, NULL),
(13297, 14577, 0, 1, 16, 0, 0, NULL),
(13300, 14337, 0, 1, 16, 0, 0, NULL),
(13143, 14348, 0, 1, 16, 0, 0, NULL),
(13137, 14334, 0, 1, 16, 0, 0, NULL),
(13298, 14372, 0, 1, 16, 0, 0, NULL),
(13296, 14337, 0, 1, 16, 0, 0, NULL),
(13152, 14334, 0, 1, 16, 0, 0, NULL),
(13144, 14388, 0, 1, 16, 0, 0, NULL),
(13147, 10671, 0, 1, 16, 0, 0, NULL);

UPDATE `creature_template_addon` SET `mount` = 0, b2_0_sheath = 1, b2_1_pvp_state = 16 WHERE `entry` = 469;
DELETE FROM `creature_addon` WHERE `guid` IN (SELECT `guid` FROM `creature` WHERE `id` = 469);

UPDATE `areatrigger_teleport` SET `required_level` = 0 WHERE `id` = 606;
UPDATE `areatrigger_teleport` SET `required_quest_done` = 7848 WHERE `id` = 3528;
UPDATE `areatrigger_teleport` SET `name` = 'Blackwing Lair - Exiting' WHERE `id` = 3728;
UPDATE `areatrigger_teleport` SET `name` = 'Zul\'Gurub - Exiting' WHERE `id` = 3930;

UPDATE `creature_template` SET `ResistanceFrost`='0', `ResistanceNature`='0', `ResistanceShadow`='0', `ResistanceArcane`='0' WHERE `entry`='11669';

UPDATE `creature_template` SET `SpeedWalk` = (2.5 / 2.5), `MeleeBaseAttackTime` = 2000, `RangedBaseAttackTime` = 2000 WHERE `Entry` = 8208;
UPDATE `creature` SET `position_x` = -7529.07, `position_y` = -4106.24, `position_z` = 11.4291, `MovementType` = 4 WHERE `id` = 8208;
DELETE FROM `creature_movement` WHERE `Id` = 23377;
DELETE FROM `creature_movement_template` WHERE `entry` = 8208;
INSERT INTO `creature_movement_template` (`Entry`, `PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`) VALUES
(8208, 0, 1, -7529.07, -4106.24, 11.4291),
(8208, 0, 2, -7484.07, -3945.09, 10.1258),
(8208, 0, 3, -7455.05, -3985.49, 11.4905),
(8208, 0, 4, -7389.93, -3990.88, 9.19264),
(8208, 0, 5, -7364.4, -3887.94, 14.0009),
(8208, 0, 6, -7406.35, -3828.79, 10.0113),
(8208, 0, 7, -7368.14, -3641.06, 11.2229),
(8208, 0, 8, -7119.98, -3516.72, 10.0818),
(8208, 0, 9, -7086.01, -3521.54, 11.7477);

UPDATE `creature_template` SET `MinLevel` = 1, `MaxLevel` = 1 WHERE `Entry` = 4196;

UPDATE `creature_template` SET `ResistanceHoly`='0', `ResistanceFire`='0', `ResistanceNature`='0', `ResistanceFrost`='0', `ResistanceShadow`='0', `ResistanceArcane`='0' WHERE `Entry`='8911';

DELETE FROM dbscripts_on_quest_end WHERE id = 411;
INSERT INTO `dbscripts_on_quest_end` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `datafloat`, `x`, `y`, `z`, `o`, `speed`, `condition_id`, `comments`) VALUES
(411, 1000, 0, 21, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'active'),
(411, 2000, 0, 15, 7762, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Bethor - Cast 7762- Summon Gunther\'s Visage'),
(411, 7000, 0, 10, 5666, 23000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1768.58, 55.4891, -46.3198, 2.28248, 0, 0, 'Summon Visage'),
(411, 12000, 0, 0, 0, 0, 0, 5666, 20, 0, 1973, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Gunther says'),
(411, 12000, 0, 1, 1, 0, 0, 5666, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(411, 17000, 0, 0, 0, 0, 0, 0, 0, 0, 1974, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Bethor says'),
(411, 17000, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(411, 21000, 0, 36, 0, 0, 0, 5666, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(411, 23000, 0, 0, 0, 0, 0, 5666, 20, 0, 1975, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Gunther Say 3'),
(411, 23000, 0, 1, 2, 0, 0, 5666, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(411, 30000, 0, 0, 0, 0, 0, 0, 0, 0, 1976, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Bethor Say'),
(411, 31000, 0, 21, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'unactive');

UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `ResistanceHoly`='0', `ResistanceFire`='0', `ResistanceNature`='0', `ResistanceFrost`='0', `ResistanceShadow`='0', `ResistanceArcane`='0', `MovementType`=0 WHERE `Entry`='8982';
UPDATE `creature_template` SET `UnitFlags` = 64, ExtraFlags='0', `MovementType`=0,`MeleeBaseAttackTime`='2400', `RangedBaseAttackTime`='2400' WHERE `Entry`='9938';

UPDATE `creature_template` SET `MinLootGold`='107', `MaxLootGold`='534' WHERE `entry`='7276';

UPDATE `creature_template` SET `SpeedWalk` = 2.4 WHERE `entry` IN (15544,15511,15543);
UPDATE `creature_template` SET `SpeedWalk` = 2.8 WHERE `entry` IN (15516,15984);
UPDATE `creature_template` SET `SpeedWalk` = 2.8 WHERE `Entry` = 15250;

UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `Entry`='15630';
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `Entry`='15727';
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2500', `RangedBaseAttackTime`='2500' WHERE `Entry`='15589';
UPDATE `creature_template` SET `MinLevel`='63', `MaxLevel`='63' WHERE `Entry`='15904';
UPDATE `creature_template` SET `MinLevel`='63', `MaxLevel`='63' WHERE `Entry`='15910';
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `Entry`='15264';
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `Entry`='15263';
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2500', `RangedBaseAttackTime`='2500' WHERE `Entry`='15544';
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `Entry`='15543';
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2500', `RangedBaseAttackTime`='2500' WHERE `Entry`='15511';
UPDATE `creature_template` SET `MeleeBaseAttackTime`='1600', `RangedBaseAttackTime`='1600' WHERE `Entry`='15984';
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `Entry`='15510';
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `Entry`='15509';
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `Entry`='15275';
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `Entry`='15276';
UPDATE `creature_template` SET `MinLevel`='63', `MaxLevel`='63' WHERE `Entry`='15963';
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2700', `RangedBaseAttackTime`='2700' WHERE `Entry`='15517';
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `Entry`='15380';
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `Entry`='15379';
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `Entry`='15378';
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `Entry`='15334';
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2500', `RangedBaseAttackTime`='2500' WHERE `Entry`='15728';
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `Entry`='15802';

DELETE FROM `creature_addon` WHERE `guid` IN (SELECT `guid` FROM `creature` WHERE `id` = 22834);
UPDATE `creature_template_addon` SET `bytes1` = 3, `emote` = 0 WHERE `entry` = 22834;
UPDATE `creature_template` SET `SpeedWalk` = (2.5 / 2.5), `SpeedRun` = (8 / 7) WHERE `entry` = 22834;
DELETE FROM `creature_addon` WHERE `guid` IN (SELECT `guid` FROM `creature` WHERE `id` = 22835);
REPLACE INTO `creature_addon` (`guid`, `b2_0_sheath`, `b2_1_pvp_state`, `emote`) VALUES (92166, 1, 16, 375);
REPLACE INTO `creature_addon` (`guid`, `b2_0_sheath`, `b2_1_pvp_state`, `emote`) VALUES (91927, 1, 16, 375);
REPLACE INTO `creature_template_addon` (`entry`, `b2_0_sheath`, `b2_1_pvp_state`) VALUES (22835, 1, 16);
UPDATE `creature_template` SET `SpeedWalk` = (2.5 / 2.5), `SpeedRun` = (8 / 7), `ExtraFlags` = `ExtraFlags`|1048576 WHERE `entry` = 22835;
UPDATE `creature_template` SET `SpeedWalk` = (2.5 / 2.5), `SpeedRun` = (8 / 7) WHERE `entry` = 22837;
UPDATE `creature_template` SET `SpeedWalk` = (2.5 / 2.5), `SpeedRun` = (8 / 7), `ExtraFlags` = `ExtraFlags`|1048576 WHERE `entry` = 22889;
UPDATE `creature_template_addon` SET `Auras` = '39579 37509' WHERE `entry` = 22889;
UPDATE `creature_model_info` SET `modelid_alternative` = 21125 WHERE `modelid` = 21124;
UPDATE `creature_model_info` SET `modelid_alternative` = 21126 WHERE `modelid` = 21125;
UPDATE `creature_model_info` SET `modelid_alternative` = 21124 WHERE `modelid` = 21126;
UPDATE `creature_template` SET `SpeedWalk` = (2.5 / 2.5), `SpeedRun` = (8 / 7), `ExtraFlags` = `ExtraFlags`|1048576 WHERE `entry` = 22902;
UPDATE `creature_template_addon` SET `Auras` = '39579 37509' WHERE `entry` = 22902;
UPDATE `creature_template` SET `SpeedWalk` = (2.5 / 2.5), `SpeedRun` = (8 / 7) WHERE `entry` = 22916;
DELETE FROM `creature` WHERE `id` IN (22834,22837,22889,22902,22916);
INSERT INTO `creature` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `MovementType`) VALUES
(125587, 22834, 1, 7459.48095703125, -3123.032470703125, 438.3978271484375, 5.515240192413330078, 300, 300, 0, 0),
(125588, 22837, 1, 7517.58251953125, -3054.2138671875, 444.817962646484375, 4.886921882629394531, 300, 300, 0, 0),
(92158, 22889, 1, 7499.978515625, -3109.99169921875, 434.813018798828125, 5.056669235229492187, 300, 300, 1, 1),
(92159, 22889, 1, 7475.38427734375, -3055.274169921875, 428.4320068359375, 5.55210733413696289, 300, 300, 1, 1),
(92232, 22889, 1, 7466.44873046875, -3048.40185546875, 427.54541015625, 1.905826330184936523, 300, 300, 1, 1),
(92233, 22889, 1, 7442.244140625, -3085.729248046875, 438.321563720703125, 3.982341766357421875, 300, 300, 1, 1),
(92163, 22889, 1, 7510.23974609375, -3132.617431640625, 434.40325927734375, 2.740166902542114257, 300, 300, 1, 1),
(92165, 22889, 1, 7448.9677734375, -3083.588623046875, 438.03570556640625, 5.16617441177368164, 300, 300, 1, 1),
(92168, 22902, 1, 7534.64501953125, -3049.080322265625, 463.423095703125, 0.767944872379302978, 10, 20, 0, 0),
(92167, 22902, 1, 7502.4833984375, -3073.6064453125, 442.200927734375, 1.727875947952270507, 10, 20, 0, 0),
(92160, 22902, 1, 7467.2490234375, -3095.43408203125, 428.952606201171875, 1.588536858558654785, 300, 300, 3, 1),
(92016, 22902, 1, 7487.0615234375, -3087.757080078125, 439.67449951171875, 0.401425719261169433, 300, 300, 3, 1),
(92255, 22902, 1, 7480.5927734375, -3108.267578125, 432.00469970703125, 5.724679946899414062, 300, 300, 3, 1),
(49390, 22916, 1, 7460.5224609375, -3122.060546875, 438.292205810546875, 5.201081275939941406, 300, 300, 0, 0),
(49391, 22916, 1, 7459.92431640625, -3122.24951171875, 438.3291015625, 1.902408838272094726, 300, 300, 0, 0),
(49392, 22916, 1, 7459.93505859375, -3122.084716796875, 438.324798583984375, 0.698131680488586425, 300, 300, 0, 0),
(49393, 22916, 1, 7460.0771484375, -3121.51806640625, 438.29693603515625, 0.715584993362426757, 300, 300, 0, 0),
(49394, 22916, 1, 7460.173828125, -3122.189208984375, 438.297454833984375, 4.363323211669921875, 300, 300, 0, 0),
(49395, 22916, 1, 7460.00244140625, -3121.855224609375, 438.312255859375, 1.361356854438781738, 300, 300, 0, 0),
(49396, 22916, 1, 7460.68603515625, -3121.959716796875, 438.292327880859375, 5.06145477294921875, 300, 300, 0, 0),
(49397, 22916, 1, 7460.390625, -3122.39111328125, 438.291961669921875, 3.490658521652221679, 300, 300, 0, 0),
(49398, 22916, 1, 7460.2578125, -3122.627685546875, 438.295135498046875, 4.677482128143310546, 300, 300, 0, 0),
(92164, 22916, 1, 7459.5927734375, -3122.029541015625, 438.365814208984375, 0.610865235328674316, 300, 300, 0, 0);

UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000', `MechanicImmuneMask`='617316187' WHERE `entry`='9816';
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `entry`='9818';
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `entry`='10161';
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000', `ResistanceFire`=177 WHERE `entry`='10258';
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `entry`='10264';
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `entry`='10316';
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000', `MechanicImmuneMask`='100729173' WHERE `entry`='10339';
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000', `MechanicImmuneMask`='650854235' WHERE `entry`='10363';
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `entry`='10366';
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `entry`='10371';
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `entry`='10372';
UPDATE `creature_template` SET `MechanicImmuneMask`='617299803' WHERE `entry`='10429';
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000', `MechanicImmuneMask`='617299803' WHERE `entry`='10430';
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `entry`='10509';
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `entry`='10680';
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `entry`='10681';
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000', `ResistanceFire`=177 WHERE `entry`='10683';
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `entry`='10762';
UPDATE `creature_template` SET `MechanicImmuneMask`=`MechanicImmuneMask`&~1073741824 WHERE `entry`='10814';
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `entry`='10899';
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='15776';
UPDATE `creature_template` SET `MinLevel`='61', `MaxLevel`='61', `MovementType`='1' WHERE `entry`='15796';
UPDATE `creature_template` SET `MeleeBaseAttackTime`='1200', `RangedBaseAttackTime`='1500', `MechanicImmuneMask`='617299803' WHERE `entry`='16042';

UPDATE `conditions` SET `value1` = '1267', `comments` = NULL WHERE `condition_entry` =354;

DELETE FROM dbscripts_on_quest_end WHERE id = '1947';
INSERT INTO dbscripts_on_quest_end(id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, datafloat, x, y, z, o, speed, condition_id, comments) VALUES
(1947,0,0,21,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Tabetha - Set Active'),
(1947,0,1,0,0,0,0,0,0,0,2656,0,0,0,0,0,0,0,0,0,0,'Tabetha - Say Text'),
(1947,1000,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0.4712,0,0,'Tabetha - Set Orientation'),
(1947,1000,1,1,133,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Tabetha - Emote STATE_USESTANDING_NOSHEATHE'),
(1947,4000,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Tabetha - Remove Emote'),
(1947,5000,0,1,71,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Tabetha - Emote ONESHOT_CHEER_NOSHEATHE'),
(1947,5000,1,0,0,0,0,0,0,0,2657,0,0,0,0,0,0,0,0,0,0,'Tabetha - Say Text'),
(1947,8000,0,36,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Tabetha - Face Player'),
(1947,8000,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Tabetha - Emote Talk'),
(1947,8000,2,0,0,0,0,0,0,0,2658,0,0,0,0,0,0,0,0,0,0,'Tabetha - Say Text'),
(1947,11000,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2.1293,0,0,'Tabetha - Set Orientation'),
(1947,11000,0,21,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Tabetha - Remove Active');
UPDATE `quest_template` SET `CompleteScript`='1947' WHERE `entry`='1947';
DELETE FROM dbscripts_on_quest_end WHERE id = '1951';
INSERT INTO dbscripts_on_quest_end(id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, datafloat, x, y, z, o, speed, condition_id, comments) VALUES
(1951,0,0,0,0,0,0,0,0,0,2659,0,0,0,0,0,0,0,0,0,0,'Tabetha - Say Text'),
(1951,0,1,20,3,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Tabetha - Set Movement');
UPDATE `quest_template` SET `CompleteScript`='1951' WHERE `entry`='1951';
SET @PATH := 6546;
DELETE FROM creature_movement_template WHERE `Entry` = @PATH AND `PathId` = 1;
INSERT INTO `creature_movement_template` (`Entry`, `PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(@PATH,1,1,-4031.2214,-3394.1526,39.01234,5.092,6000,0),
(@PATH,1,2,-4031.56,-3392.96,39.01,2.129,1000,3);
DELETE FROM dbscripts_on_quest_start WHERE id = '1952';
INSERT INTO dbscripts_on_quest_start(id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, datafloat, x, y, z, o, speed, condition_id, comments) VALUES
(1952,0,0,21,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Tabetha - Set Active'),
(1952,0,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Tabetha - Emote Talk'),
(1952,0,2,0,0,0,0,0,0,0,2708,0,0,0,0,0,0,0,0,0,0,'Tabetha - Say Text'),
(1952,0,3,29,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Tabetha - Remove NPC Flags'),
(1952,6000,0,1,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Tabetha - Emote Cheer'),
(1952,6000,1,29,2,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Tabetha - Add NPC Flags'),
(1952,6000,2,0,0,0,0,0,0,0,2709,0,0,0,0,0,0,0,0,0,0,'Tabetha - Say Text'),
(1952,6000,0,21,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Tabetha - Set Active');
UPDATE `quest_template` SET `StartScript`='1952' WHERE `entry`='1952';

UPDATE `creature` SET `position_x` = '6395.57', `position_y` = '-2536.75', `position_z` = '541.548', `orientation` = '2.63731', `spawntimesecsmin` = '300', `spawntimesecsmax` = '300' WHERE `guid` =44076;
DELETE FROM `dbscripts_on_quest_end` WHERE id = '5087';
INSERT INTO dbscripts_on_quest_end(id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, datafloat, x, y, z, o, speed, condition_id, comments) VALUES
(5087,0,1,21,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Donova Snowden - Set Active'),
(5087,0,2,29,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Donova Snowden - Remove QuestFlags'),
(5087,0,3,20,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Donova Snowden - Start Waypoints');
UPDATE `quest_template` SET `CompleteScript`='5087' WHERE `entry`='5087';
SET @PATH := 9298;
DELETE FROM creature_movement_template WHERE `Entry` = @PATH;
INSERT INTO `creature_movement_template` (`Entry`, `PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(@PATH,0,1,6393.311,-2531.2017,541.43024,100,0,0),
(@PATH,0,2,6390.147,-2529.2485,540.6507,100,1000,929800),
(@PATH,0,3,6395.5728,-2536.7476,541.6417,100,0,0),
(@PATH,0,4,6395.5728,-2536.7476,541.6417,2.426007747650146484,1000,929801);
DELETE FROM `dbscripts_on_creature_movement` WHERE id IN (929800, 929801, 1437200);
INSERT INTO dbscripts_on_creature_movement(id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, datafloat, x, y, z, o, speed, condition_id, comments) VALUES
(929800,0,0,32,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Donova Snowden - Pause Waypoints'),
(929800,0,1,0,0,0,0,0,0,0,6231,0,0,0,0,0,0,0,0,0,0,'Donova Snowden - Say EmoteText'),
(929800,3000,0,0,0,0,0,0,0,0,6232,0,0,0,0,0,0,0,0,0,0,'Donova Snowden - Say Text'),
(929800,3000,1,10,14372,180000,1,0,0,8,1,0,0,0,0,6389.5317,-2501.9636,541.0671, 1.6231,0,2376,'Donova Snowden - Spawn Winterfall Ambusher'),
(929800,3000,2,10,14372,180000,1,0,0,8,1,0,0,0,0,6386.3447,-2501.3552,540.42206,3.52556,0,2376,'Donova Snowden - Spawn Winterfall Ambusher'),
(929800,3000,3,10,14372,180000,1,0,0,8,1,0,0,0,0,6389.5327,-2498.4856,540.7365,5.2010,0,2376,'Donova Snowden - Spawn Winterfall Ambusher'),
(929800,6000,0,0,0,0,0,0,0,0,6233,0,0,0,0,0,0,0,0,0,0,'Donova Snowden - Say Text'),
(929800,11000,0,25,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Donova Snowden - Set Run'),
(929800,12000,0,32,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Donova Snowden - Unpause Waypoints'),
(929801,0,0,20,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Donova Snowden - Remove Waypoint Movement'),
(929800,0,1,25,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Donova Snowden - Remove Run'),
(929801,2000,1,21,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Donova Snowden - Remove Active'),
(929801,2000,2,29,2,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Donova Snowden - Add QuestFlags'),
(1437200,2000,0,20,1,10,0,0,0,8,0,0,0,0,0,0,0,0,0,0,0,'Winterfall Ambusher - Start RandomMovement');
UPDATE `creature_template` SET `MovementType`='2' WHERE (`Entry`='14372');
SET @PATH := 14372;
DELETE FROM creature_movement_template WHERE `Entry` = @PATH;
INSERT INTO `creature_movement_template` (`Entry`, `PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`, `Comment`) VALUES
(@PATH,1,1,6380.987,-2520.9492,538.0356,100,5000,1437200, '');
DELETE FROM conditions WHERE condition_entry = '2376';
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `flags`, `comments`) VALUES
('2376', '37', '14372', '20', '1', 'Winterfall Ambusher in Range');
UPDATE `creature` SET `position_x`='6904.6416', `position_y`='-2296.5254', `position_z`='589.17346', `orientation`='4.118977' WHERE (`guid`='94998');
UPDATE `creature` SET `position_x`='6908.5347', `position_y`='-2298.954', `position_z`='588.86053', `orientation`='3.54129' WHERE (`guid`='94990');
UPDATE `creature` SET `position_x`='6898.7153', `position_y`='-2293.98', `position_z`='587.87805', `orientation`='5.51886' WHERE (`guid`='94989');
DELETE FROM creature_movement WHERE Id = '94998';
UPDATE creature_template SET ExtraFlags = ExtraFlags + 4096 WHERE entry = 10916;
DELETE FROM `spawn_group` WHERE `Id` = '19004';
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
('19004', 'Winterspring - Winterfall Runner', '0', '3', '0', '0');
DELETE FROM `spawn_group_formation` WHERE `Id` = '19004';
INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
('19004', '4', '5', '0', '19004', '2', 'Winterspring - Winterfall Runner');
DELETE FROM `spawn_group_spawn` WHERE `Id` = '19004';
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
('19004', '94998', '0'),
('19004', '94990', '1'),
('19004', '94989', '2');
DELETE FROM waypoint_path_name WHERE PathId = '19004';
INSERT INTO `waypoint_path_name` (`PathId`, `Name`) VALUES
('19004', 'Kalimdor - Winterspring - Winterfall Runners');
SET @PATH := 19004;
DELETE FROM waypoint_path WHERE `PathId` = @PATH;
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(@PATH,1,6883.397,-2307.2742,582.3803,100,0,0),
(@PATH,2,6860.4766,-2308.3794,579.95636,100,0,0),
(@PATH,3,6840.4126,-2307.9648,580.43805,100,0,0),
(@PATH,4,6818.5215,-2307.6135,580.9789,100,0,0),
(@PATH,5,6804.612,-2309.247,580.0708,100,0,0),
(@PATH,6,6784.8354,-2323.5396,576.488,100,0,0),
(@PATH,7,6754.5654,-2334.0676,572.16656,100,0,0),
(@PATH,8,6725.491,-2338.0579,570.0515,100,0,0),
(@PATH,9,6687.617,-2338.2476,570.35675,100,0,0),
(@PATH,10,6666.604,-2343.5479,570.6366,100,0,0),
(@PATH,11,6656.4536,-2360.2861,569.29114,100,0,0),
(@PATH,12,6625.617,-2374.327,572.4637,100,0,0),
(@PATH,13,6606.411,-2393.626,572.24335,100,0,0),
(@PATH,14,6589.174,-2401.6055,573.74,100,0,0),
(@PATH,15,6564.564,-2419.217,575.0133,100,0,0),
(@PATH,16,6538.905,-2436.4724,575.5397,100,0,0),
(@PATH,17,6517.192,-2450.7263,572.9729,100,0,0),
(@PATH,18,6516.865,-2476.7385,568.825,100,0,0),
(@PATH,19,6519.787,-2506.7476,568.15985,100,0,0),
(@PATH,20,6523.7876,-2538.1907,568.15625,100,0,0),
(@PATH,21,6525.3164,-2571.3042,567.9315,100,0,0),
(@PATH,22,6532.3286,-2609.9778,564.35657,100,0,0),
(@PATH,23,6536.6816,-2647.0208,564.99615,100,0,0),
(@PATH,24,6542.336,-2683.8499,567.55774,100,0,0),
(@PATH,25,6548.317,-2722.467,570.3727,100,0,0),
(@PATH,26,6550.4497,-2763.961,569.3126,100,0,0),
(@PATH,27,6547.611,-2788.2397,572.2039,100,0,0),
(@PATH,28,6544.617,-2815.301,578.1884,100,0,0),
(@PATH,29,6541.099,-2847.6921,585.2842,100,0,0),
(@PATH,30,6537.7686,-2888.2166,588.3924,100,0,0),
(@PATH,31,6537.942,-2926.906,589.85614,100,0,0),
(@PATH,32,6539.8555,-2964.0608,591.88007,100,0,0),
(@PATH,33,6545.69,-3002.5942,594.2931,100,0,0),
(@PATH,34,6547.881,-3035.5293,596.47046,100,0,0),
(@PATH,35,6562.4185,-3070.22,598.8057,100,0,0),
(@PATH,36,6575.7964,-3105.8694,600.9687,100,0,0),
(@PATH,37,6593.9087,-3146.255,602.7558,100,0,0),
(@PATH,38,6606.138,-3187.1528,606.1534,100,0,0),
(@PATH,39,6617.757,-3231.0496,613.23065,100,0,0),
(@PATH,40,6628.3384,-3271.527,620.97656,100,0,0),
(@PATH,41,6637.586,-3311.9265,628.39996,100,0,0),
(@PATH,42,6642.4497,-3359.452,637.30615,100,0,0),
(@PATH,43,6645.7773,-3407.3574,650.5073,100,0,0),
(@PATH,44,6644.328,-3450.009,662.3237,100,0,0),
(@PATH,45,6644.9873,-3495.0098,671.6823,100,0,0),
(@PATH,46,6646.2983,-3538.2297,678.72394,100,0,0),
(@PATH,47,6652.639,-3586.178,688.10547,100,0,0),
(@PATH,48,6656.6426,-3627.0176,694.33386,100,0,0),
(@PATH,49,6661.2827,-3652.7236,696.0284,100,0,0),
(@PATH,50,6670.4595,-3677.5547,695.3266,100,0,0),
(@PATH,51,6684.9014,-3720.9067,692.3158,100,0,0),
(@PATH,52,6697.434,-3761.659,688.47046,100,0,0),
(@PATH,53,6714.619,-3803.5798,685.5921,100,0,0),
(@PATH,54,6731.653,-3812.7708,685.0921,100,0,0),
(@PATH,55,6754.172,-3845.9563,682.05383,100,0,0),
(@PATH,56,6778.5703,-3877.2495,681.60626,100,0,0),
(@PATH,57,6797.733,-3913.7466,682.04645,100,0,0),
(@PATH,58,6809.807,-3958.8918,684.6458,100,0,0),
(@PATH,59,6821.4805,-3988.9385,687.7111,100,0,0),
(@PATH,60,6837.932,-4017.0369,688.53424,100,0,0),
(@PATH,61,6854.178,-4058.2942,689.03125,100,0,0),
(@PATH,62,6889.2524,-4093.0474,691.1778,100,0,0),
(@PATH,63,6928.76,-4123.306,692.4278,100,0,0),
(@PATH,64,6964.7744,-4138.483,695.62726,100,0,0),
(@PATH,65,7011.4004,-4147.316,697.60925,100,0,0),
(@PATH,66,7047.417,-4149.6777,700.52515,100,0,0),
(@PATH,67,7064.6587,-4188.405,703.2609,100,0,0),
(@PATH,68,7087.34,-4223.3657,695.23785,100,0,0),
(@PATH,69,7109.225,-4258.7993,680.7249,100,0,0),
(@PATH,70,7114.1626,-4297.3438,672.27106,100,0,0),
(@PATH,71,7114.651,-4334.7554,661.4651,100,0,0),
(@PATH,72,7122.7134,-4371.7075,651.27686,100,0,0),
(@PATH,73,7138.5938,-4402.044,643.7828,100,0,0),
(@PATH,74,7155.247,-4433.6426,635.5412,100,0,0),
(@PATH,75,7176.8623,-4459.873,626.74255,100,0,0),
(@PATH,76,7207.6646,-4488.7437,616.0163,100,0,0),
(@PATH,77,7247.3345,-4505.738,604.5187,100,0,0),
(@PATH,78,7278.143,-4525.275,590.0195,100,0,0),
(@PATH,79,7308.1226,-4559.305,589.8831,100,0,0),
(@PATH,80,7338.3115,-4594.8496,592.388,100,0,0),
(@PATH,81,7353.3335,-4610.618,600.96533,100,0,0),
(@PATH,82,7369.155,-4639.6587,608.93616,100,0,0),
(@PATH,83,7375.5835,-4663.561,620.7311,100,0,0),
(@PATH,84,7389.488,-4684.435,630.76666,100,0,0),
(@PATH,85,7403.2676,-4715.996,646.9597,100,0,0),
(@PATH,86,7402.701,-4714.664,646.5034,100,0,0),
(@PATH,87,7399.332,-4740.424,655.72534,100,0,0),
(@PATH,88,7353.4565,-4742.8213,661.22375,100,0,0),
(@PATH,89,7335.605,-4731.386,664.62946,100,0,0),
(@PATH,90,7305.079,-4754.4673,673.8997,100,0,0),
(@PATH,91,7284.908,-4782.4272,681.1078,100,0,0),
(@PATH,92,7247.8296,-4807.4844,686.2208,100,0,0),
(@PATH,93,7216.407,-4822.1255,693.4069,100,0,0),
(@PATH,94,7188.5166,-4856.708,698.6139,100,0,0),
(@PATH,95,7163.0396,-4866.733,698.4728,100,0,0),
(@PATH,96,7130.868,-4863.4517,696.75073,100,0,0),
(@PATH,97,7082.917,-4862.369,696.10077,100,0,0),
(@PATH,98,7052.2993,-4870.6294,696.03937,100,0,0),
(@PATH,99,7022.1196,-4886.9287,695.97424,100,0,0),
(@PATH,100,7004.4697,-4899.9243,695.72424,100,0,0),
(@PATH,101,6965.521,-4927.568,692.20795,100,0,0),
(@PATH,102,6945.8076,-4962.3,690.8763,100,0,0),
(@PATH,103,6940.607,-4999.3896,691.8817,100,0,0),
(@PATH,104,6934.691,-5032.5713,692.1778,100,0,0),
(@PATH,105,6926.44,-5044.0244,691.1906,100,0,0),
(@PATH,106,6901.048,-5056.6895,688.9554,100,0,0),
(@PATH,107,6880.2124,-5061.403,688.8325,100,0,0),
(@PATH,108,6857.0454,-5075.4688,689.83417,100,0,0),
(@PATH,109,6813.94,-5095.202,695.06555,100,0,0),
(@PATH,110,6787.3076,-5105.598,703.3073,100,0,0),
(@PATH,111,6777.7065,-5111.5415,710.1192,100,0,0),
(@PATH,112,6772.0186,-5123.901,719.5323,100,0,0),
(@PATH,113,6761.592,-5137.4907,725.945,100,0,0),
(@PATH,114,6740.9775,-5155.317,733.0837,100,0,0),
(@PATH,115,6728.4688,-5177.6196,744.28705,100,0,0),
(@PATH,116,6721.9565,-5189.743,752.1503,100,0,0),
(@PATH,117,6725.942,-5199.338,756.4035,100,0,0),
(@PATH,118,6739.176,-5203.9043,760.8345,100,0,0),
(@PATH,119,6737.143,-5214.222,764.9502,100,0,0),
(@PATH,120,6727.2466,-5223.838,772.4213,100,0,0),
(@PATH,121,6715.482,-5239.652,779.11346,100,0,0),
(@PATH,122,6720.427,-5261.178,778.58417,100,2000,1);

UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `Entry`='15667';
UPDATE `creature_template` SET `SpeedRun`=('8' / '7') WHERE `Entry`='15963';
UPDATE `creature_template` SET `MinLevel`='60', `MaxLevel`='60', `SpeedWalk`=('12' / '2.5'), `SpeedRun`=('12' / '7') WHERE `Entry`='15712';
UPDATE `creature_template` SET `MinLevel`='63', `MaxLevel`='63' WHERE `Entry`='15896';
UPDATE `creature_template` SET `MinLevel`='60', `MaxLevel`='60' WHERE `Entry`='15901';
UPDATE `creature_template` SET `SpeedWalk`=('2.5' / '2.5') WHERE `Entry`='15229';
UPDATE `creature_template` SET `Faction`='310' WHERE `Entry`='15537';
UPDATE `creature_template` SET `Faction`='310' WHERE `Entry`='15538';

UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `Entry`='15527';

DELETE FROM `creature_addon` WHERE `guid` in (SELECT `guid` FROM `creature` WHERE `id`=833);
DELETE FROM `creature_movement` WHERE `id` IN (SELECT `guid` FROM `creature` WHERE `id`=833);
DELETE FROM `creature` WHERE `id`=833;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(2909, 833, 0, 1, 0, 0, -9877.62, 1391.86, 52.6885, 1.54346, 300, 300, 10, 0, 0, 0, 0, 1),
(2999, 833, 0, 1, 0, 0, -9745.65, 1355.22, 42.4935, 0.396221, 300, 300, 10, 0, 0, 0, 0, 1),
(3061, 833, 0, 1, 0, 0, -9946.2, 852.274, 32.082, 1.10821, 300, 300, 10, 0, 0, 0, 0, 1),
(3080, 833, 0, 1, 0, 0, -10379.8, 837.39, 39.4706, 4.57726, 300, 300, 10, 0, 0, 0, 0, 1),
(3102, 833, 0, 1, 0, 0, -10022.9, 1556.61, 44.9144, 2.5923, 300, 300, 5, 0, 0, 0, 0, 1),
(3134, 833, 0, 1, 0, 0, -10019, 1625.89, 45.3409, 1.4965, 300, 300, 5, 0, 0, 0, 0, 1),
(3144, 833, 0, 1, 0, 0, -9821.91, 1577.27, 38.3083, 2.9189, 300, 300, 10, 0, 0, 0, 0, 1),
(3178, 833, 0, 1, 0, 0, -10012, 1577.74, 43.0575, 5.18603, 300, 300, 10, 0, 0, 0, 0, 1),
(3211, 833, 0, 1, 0, 0, -10095.7, 1760.02, 36.2412, 2.97099, 300, 300, 10, 0, 0, 0, 0, 1),
(3224, 833, 0, 1, 0, 0, -10291, 1949.16, 37.473, 6.15786, 300, 300, 10, 0, 0, 0, 0, 1),
(3230, 833, 0, 1, 0, 0, -10106.3, 1860.35, 35.9594, 6.12969, 300, 300, 10, 0, 0, 0, 0, 1),
(3274, 833, 0, 1, 0, 0, -10250.9, 1737.43, 38.017, 1.29196, 300, 300, 10, 0, 0, 0, 0, 1),
(3319, 833, 0, 1, 0, 0, -10183.9, 1756.71, 35.4559, 4.83372, 300, 300, 5, 0, 0, 0, 0, 1),
(3351, 833, 0, 1, 0, 0, -10312.6, 1792.61, 35.9927, 5.60842, 300, 300, 5, 0, 0, 0, 0, 1),
(3381, 833, 0, 1, 0, 0, -10137.9, 1852.07, 38.2453, 4.33224, 300, 300, 10, 0, 0, 0, 0, 1),
(3406, 833, 0, 1, 0, 0, -10337.2, 1876.12, 37.662, 3.36428, 300, 300, 10, 0, 0, 0, 0, 1),
(3411, 833, 0, 1, 0, 0, -10249.4, 1950.36, 36.9782, 1.89471, 300, 300, 10, 0, 0, 0, 0, 1),
(3421, 833, 0, 1, 0, 0, -10157.2, 844.637, 25.8592, 5.70511, 300, 300, 10, 0, 0, 0, 0, 1),
(3611, 833, 0, 1, 0, 0, -10219.2, 1198.03, 40.0987, 3.97602, 300, 300, 5, 0, 0, 0, 0, 1),
(3623, 833, 0, 1, 0, 0, -10249.9, 913.865, 41.1429, 4.3915, 300, 300, 10, 0, 0, 0, 0, 1),
(3636, 833, 0, 1, 0, 0, -10397.1, 1783.93, 35.27, 3.21986, 300, 300, 5, 0, 0, 0, 0, 1),
(3671, 833, 0, 1, 0, 0, -9985.95, 1712.09, 34.5036, 5.36701, 300, 300, 10, 0, 0, 0, 0, 1);
DELETE FROM `creature_addon` WHERE `guid` in (SELECT `guid` FROM `creature` WHERE `id`=199);
DELETE FROM `creature_movement` WHERE `id` IN (SELECT `guid` FROM `creature` WHERE `id`=199);
DELETE FROM `creature` WHERE `id`=199;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(3694, 199, 0, 1, 0, 0, -9836.84, 1181.76, 40.1257, 0.047901, 300, 300, 10, 0, 0, 0, 0, 1),
(3743, 199, 0, 1, 0, 0, -9811.64, 1084.39, 28.9064, 4.76923, 300, 300, 10, 0, 0, 0, 0, 1),
(3752, 199, 0, 1, 0, 0, -9976.25, 1283.29, 44.1212, 4.98523, 300, 300, 5, 0, 0, 0, 0, 1),
(3758, 199, 0, 1, 0, 0, -9973.92, 1049.38, 38.8119, 3.20023, 300, 300, 5, 0, 0, 0, 0, 1),
(3762, 199, 0, 1, 0, 0, -9723.31, 957.742, 33.3346, 4.76123, 300, 300, 5, 0, 0, 0, 0, 1),
(3829, 199, 0, 1, 0, 0, -9868.77, 1454.1, 67.5757, 4.13847, 300, 300, 5, 0, 0, 0, 0, 1),
(3845, 199, 0, 1, 0, 0, -9825.13, 1343.07, 44.7054, 3.12707, 300, 300, 5, 0, 0, 0, 0, 1),
(3888, 199, 0, 1, 0, 0, -10048.1, 1322.72, 44.4317, 1.55101, 300, 300, 5, 0, 0, 0, 0, 1),
(3958, 199, 0, 1, 0, 0, -10154.2, 922.038, 37.8582, 5.44942, 300, 300, 10, 0, 0, 0, 0, 1),
(3961, 199, 0, 1, 0, 0, -10328.6, 915.115, 40.6276, 4.36694, 300, 300, 5, 0, 0, 0, 0, 1),
(4028, 199, 0, 1, 0, 0, -10337.2, 871.422, 41.0713, 5.47293, 300, 300, 5, 0, 0, 0, 0, 1),
(4044, 199, 0, 1, 0, 0, -10052.6, 884.181, 34.4039, 4.8004, 300, 300, 10, 0, 0, 0, 0, 1),
(4094, 199, 0, 1, 0, 0, -10084.4, 881.558, 34.0505, 0.600729, 300, 300, 10, 0, 0, 0, 0, 1),
(4139, 199, 0, 1, 0, 0, -10224, 852.177, 38.3078, 4.57326, 300, 300, 10, 0, 0, 0, 0, 1),
(4166, 199, 0, 1, 0, 0, -10049.5, 817.679, 33.4157, 2.43018, 300, 300, 10, 0, 0, 0, 0, 1),
(4167, 199, 0, 1, 0, 0, -9964.89, 912.581, 39.8513, 3.27176, 300, 300, 5, 0, 0, 0, 0, 1),
(4181, 199, 0, 1, 0, 0, -10236.7, 1304.16, 39.5538, 4.7886, 300, 300, 10, 0, 0, 0, 0, 1),
(4247, 199, 0, 1, 0, 0, -10046.1, 1201.38, 40.6739, 4.61855, 300, 300, 10, 0, 0, 0, 0, 1),
(4331, 199, 0, 1, 0, 0, -10232.9, 1170.96, 34.7181, 0.454037, 300, 300, 10, 0, 0, 0, 0, 1),
(4405, 199, 0, 1, 0, 0, -10077.1, 1406.89, 43.9664, 1.34775, 300, 300, 5, 0, 0, 0, 0, 1),
(4427, 199, 0, 1, 0, 0, -10268.8, 1287.45, 40.0604, 0.562734, 300, 300, 10, 0, 0, 0, 0, 1),
(19080, 199, 0, 1, 0, 0, -10385.4, 1218.91, 44.382, 5.96236, 300, 300, 5, 0, 0, 0, 0, 1),
(2859, 199, 0, 1, 0, 0, -9838.69, 1491.27, 46.3646, 3.99889, 300, 300, 5, 0, 0, 0, 0, 1),
(2981, 199, 0, 1, 0, 0, -9864.85, 1680.95, 38.4324, 1.10882, 300, 300, 5, 0, 0, 0, 0, 1),
(2987, 199, 0, 1, 0, 0, -10149.4, 1683.88, 38.235, 5.45499, 300, 300, 5, 0, 0, 0, 0, 1),
(2990, 199, 0, 1, 0, 0, -9986.13, 1513.89, 50.3167, 3.91594, 300, 300, 5, 0, 0, 0, 0, 1),
(2996, 199, 0, 1, 0, 0, -10328.2, 1120.76, 36.7664, 3.20459, 300, 300, 10, 0, 0, 0, 0, 1),
(3126, 199, 0, 1, 0, 0, -10424.1, 1137.91, 39.1297, 4.905, 300, 300, 10, 0, 0, 0, 0, 1),
(3143, 199, 0, 1, 0, 0, -9780.47, 1246.5, 41.7554, 3.25796, 300, 300, 10, 0, 0, 0, 0, 1),
(3152, 199, 0, 1, 0, 0, -10187.4, 1512.87, 42.9605, 0.873183, 300, 300, 5, 0, 0, 0, 0, 1),
(3182, 199, 0, 1, 0, 0, -10017.6, 1747.71, 34.9165, 4.98113, 300, 300, 10, 0, 0, 0, 0, 1),
(3243, 199, 0, 1, 0, 0, -9784.17, 1548.49, 42.1891, 3.36566, 300, 300, 10, 0, 0, 0, 0, 1),
(3249, 199, 0, 1, 0, 0, -10332.6, 1321, 54.9631, 2.99763, 300, 300, 5, 0, 0, 0, 0, 1),
(3256, 199, 0, 1, 0, 0, -10326.8, 1016.52, 39.4294, 6.27635, 300, 300, 5, 0, 0, 0, 0, 1),
(3305, 199, 0, 1, 0, 0, -10104.4, 1322.3, 42.5532, 6.27733, 300, 300, 10, 0, 0, 0, 0, 1);
DELETE FROM `creature_addon` WHERE `guid` in (SELECT `guid` FROM `creature` WHERE `id`=834);
DELETE FROM `creature_movement` WHERE `id` IN (SELECT `guid` FROM `creature` WHERE `id`=834);
DELETE FROM `creature` WHERE `id`=834;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(3306, 834, 0, 1, 0, 0, -10017.8, 1354.18, 42.0099, 1.56494, 300, 300, 10, 0, 0, 0, 0, 1),
(3340, 834, 0, 1, 0, 0, -9686.46, 929.745, 34.1962, 1.74666, 300, 300, 5, 0, 0, 0, 0, 1),
(3346, 834, 0, 1, 0, 0, -9652.73, 950.747, 39.811, 4.0703, 300, 300, 10, 0, 0, 0, 0, 1),
(3382, 834, 0, 1, 0, 0, -9921.94, 1055.62, 40.3448, 5.67918, 300, 300, 5, 0, 0, 0, 0, 1),
(3399, 834, 0, 1, 0, 0, -9758.03, 1358.16, 41.8685, 0.198803, 300, 300, 10, 0, 0, 0, 0, 1),
(3489, 834, 0, 1, 0, 0, -9742.64, 971.802, 30.1428, 0.19242, 300, 300, 5, 0, 0, 0, 0, 1),
(3493, 834, 0, 1, 0, 0, -10325.6, 876.92, 40.066, 4.31439, 300, 300, 5, 0, 0, 0, 0, 1),
(3547, 834, 0, 1, 0, 0, -10110.6, 939.295, 33.7459, 5.28008, 300, 300, 10, 0, 0, 0, 0, 1),
(3578, 834, 0, 1, 0, 0, -10279.2, 910.686, 36.9784, 3.18486, 300, 300, 10, 0, 0, 0, 0, 1),
(3606, 834, 0, 1, 0, 0, -10014.1, 862.448, 33.1132, 0.832489, 300, 300, 5, 0, 0, 0, 0, 1),
(3627, 834, 0, 1, 0, 0, -10387.9, 822.711, 34.6869, 1.60988, 300, 300, 10, 0, 0, 0, 0, 1),
(3669, 834, 0, 1, 0, 0, -10055.5, 957.597, 37.0503, 2.0388, 300, 300, 10, 0, 0, 0, 0, 1),
(3673, 834, 0, 1, 0, 0, -10079, 856.851, 34.2083, 1.4626, 300, 300, 5, 0, 0, 0, 0, 1),
(3682, 834, 0, 1, 0, 0, -9923.83, 959.985, 35.8598, 1.84221, 300, 300, 5, 0, 0, 0, 0, 1),
(3692, 834, 0, 1, 0, 0, -10349.6, 1090.5, 37.2508, 2.87531, 300, 300, 10, 0, 0, 0, 0, 1),
(3748, 834, 0, 1, 0, 0, -10216.5, 1565.8, 45.1973, 1.40404, 300, 300, 5, 0, 0, 0, 0, 1),
(3796, 834, 0, 1, 0, 0, -10291.9, 1150.99, 39.7536, 4.75854, 300, 300, 10, 0, 0, 0, 0, 1),
(3801, 834, 0, 1, 0, 0, -10080.7, 1240.87, 38.4358, 4.60874, 300, 300, 10, 0, 0, 0, 0, 1),
(3805, 834, 0, 1, 0, 0, -10046.1, 1106.56, 40.5197, 5.19995, 300, 300, 10, 0, 0, 0, 0, 1),
(3839, 834, 0, 1, 0, 0, -10126.6, 1398.59, 40.1143, 4.20681, 300, 300, 5, 0, 0, 0, 0, 1),
(3855, 834, 0, 1, 0, 0, -10047.2, 1586.38, 43.5193, 0.276073, 300, 300, 10, 0, 0, 0, 0, 1),
(3879, 834, 0, 1, 0, 0, -10007.5, 1741.95, 34.123, 3.48961, 300, 300, 10, 0, 0, 0, 0, 1),
(3925, 834, 0, 1, 0, 0, -10083.9, 1619.16, 42.2527, 1.79943, 300, 300, 5, 0, 0, 0, 0, 1),
(3966, 834, 0, 1, 0, 0, -9886.34, 1632.12, 36.3031, 5.62797, 300, 300, 10, 0, 0, 0, 0, 1),
(3981, 834, 0, 1, 0, 0, -10033, 1726.21, 37.538, 2.19184, 300, 300, 10, 0, 0, 0, 0, 1),
(3986, 834, 0, 1, 0, 0, -9955.25, 1679.98, 33.9662, 4.92894, 300, 300, 10, 0, 0, 0, 0, 1),
(4001, 834, 0, 1, 0, 0, -9842.71, 1559.68, 43.6983, 3.03449, 300, 300, 10, 0, 0, 0, 0, 1),
(4023, 834, 0, 1, 0, 0, -10015.8, 1574.58, 43.8843, 4.68896, 300, 300, 10, 0, 0, 0, 0, 1),
(4050, 834, 0, 1, 0, 0, -10074.1, 1757.77, 37.4793, 5.05916, 300, 300, 10, 0, 0, 0, 0, 1),
(4112, 834, 0, 1, 0, 0, -10316.6, 1938.28, 35.3574, 4.58733, 300, 300, 10, 0, 0, 0, 0, 1),
(4193, 834, 0, 1, 0, 0, -9924.48, 1150.64, 42.326, 4.07946, 300, 300, 10, 0, 0, 0, 0, 1),
(4208, 834, 0, 1, 0, 0, -10080.1, 1497.98, 45.3276, 1.84775, 300, 300, 5, 0, 0, 0, 0, 1),
(4217, 834, 0, 1, 0, 0, -10146.3, 1551.37, 44.0582, 0.973038, 300, 300, 5, 0, 0, 0, 0, 1),
(4226, 834, 0, 1, 0, 0, -10249.1, 822.796, 50.05, 0.424199, 300, 300, 10, 0, 0, 0, 0, 1),
(4252, 834, 0, 1, 0, 0, -9756.36, 924.189, 28.1601, 2.75311, 300, 300, 10, 0, 0, 0, 0, 1),
(4254, 834, 0, 1, 0, 0, -9825.14, 1022.24, 29.8273, 1.62158, 300, 300, 5, 0, 0, 0, 0, 1),
(4289, 834, 0, 1, 0, 0, -9788.76, 985.814, 29.2505, 5.01376, 300, 300, 10, 0, 0, 0, 0, 1),
(4306, 834, 0, 1, 0, 0, -10383.5, 1778.99, 35.3814, 4.99575, 300, 300, 5, 0, 0, 0, 0, 1),
(4325, 834, 0, 1, 0, 0, -10024.4, 1048.16, 37.4913, 0.518662, 300, 300, 10, 0, 0, 0, 0, 1),
(4365, 834, 0, 1, 0, 0, -10451.8, 1248.44, 51.8239, 4.14907, 300, 300, 5, 0, 0, 0, 0, 1),
(4366, 834, 0, 1, 0, 0, -10476.7, 1221.47, 66.3223, 4.20027, 300, 300, 5, 0, 0, 0, 0, 1),
(4404, 834, 0, 1, 0, 0, -10088, 1088.4, 38.4085, 1.10722, 300, 300, 5, 0, 0, 0, 0, 1),
(4443, 834, 0, 1, 0, 0, -9884.34, 852.013, 31.8458, 0, 300, 300, 10, 0, 0, 0, 0, 1);

DELETE FROM `gameobject` WHERE `guid` = 15319;
UPDATE `gameobject` SET `orientation` = -2.81871 WHERE `id` = 114;
UPDATE `gameobject` SET `orientation` = -0.602137 WHERE `id` = 74091;
UPDATE `gameobject` SET `orientation` = -2.01586 WHERE `id` = 3203;
UPDATE `gameobject` SET `orientation` = 0.671952 WHERE `id` = 17277;
UPDATE `gameobject` SET `orientation` = 3.14159 WHERE `id` = 113791;
UPDATE `gameobject` SET `orientation` = -0.951203 WHERE `id` = 17280;
UPDATE `gameobject` SET `orientation` = -3 WHERE `id` = 2657;
UPDATE `gameobject` SET `orientation` = 0.951204 WHERE `id` = 2166;
UPDATE `gameobject` SET `orientation` = 0.733039 WHERE `id` = 23295;
UPDATE `gameobject` SET `orientation` = -2.77507 WHERE `id` = 91673;
UPDATE `gameobject` SET `orientation` = -0.942478 WHERE `id` = 2164;
UPDATE `gameobject` SET `orientation` = -2.01586 WHERE `id` = 3204;
UPDATE `gameobject` SET `orientation` = 2.46092 WHERE `id` = 2146;
UPDATE `gameobject` SET `orientation` = -0.898844 WHERE `id` = 2109;
UPDATE `gameobject` SET `orientation` = 0.471239 WHERE `id` = 2145;
UPDATE `gameobject` SET `orientation` = 2.97579 WHERE `id` = 2162;
UPDATE `gameobject` SET `orientation` = 0.671952 WHERE `id` = 179738;
UPDATE `gameobject` SET `orientation` = -2.53073 WHERE `id` = 2163;
UPDATE `gameobject` SET `orientation` = -0.898844 WHERE `id` = 179737;
UPDATE `gameobject` SET `orientation` = 1.5708 WHERE `id` = 178828;
UPDATE `gameobject` SET `orientation` = -0.898844 WHERE `id` = 179736;
UPDATE `gameobject` SET `orientation` = -1.12724 WHERE `id` = 177200;
UPDATE `gameobject` SET `orientation` = 4.71239 WHERE `id` = 177201;
UPDATE `gameobject` SET `orientation` = 2.37365 WHERE `id` = 105188;
UPDATE `gameobject` SET `orientation` = -0.331612 WHERE `id` = 177905;
UPDATE `gameobject` SET `orientation` = -0.898844 WHERE `id` = 2158;
UPDATE `gameobject` SET `orientation` = 0.610866 WHERE `id` = 179224;
UPDATE `gameobject` SET `orientation` = 0.368054 WHERE `id` = 56905;
UPDATE `gameobject` SET `orientation` = -0.855212 WHERE `id` = 138498;
UPDATE `gameobject` SET `orientation` = 2.16421 WHERE `id` = 174605;
UPDATE `gameobject` SET `orientation` = -2.81871 WHERE `id` = 116;
UPDATE `gameobject` SET `orientation` = -0.898844 WHERE `id` = 2153;
UPDATE `gameobject` SET `orientation` = -0.986112 WHERE `id` = 112898;
UPDATE `gameobject` SET `orientation` = -0.90757 WHERE `id` = 2154;
UPDATE `gameobject` SET `orientation` = 2.9147 WHERE `id` = 169967;
UPDATE `gameobject` SET `orientation` = 2.2253 WHERE `id` = 130125;
UPDATE `gameobject` SET `orientation` = 2.24275 WHERE `id` = 176594;
UPDATE `gameobject` SET `orientation` = -0.261799 WHERE `id` = 93;
UPDATE `gameobject` SET `orientation` = -2.50455 WHERE `id` = 179725;
UPDATE `gameobject` SET `orientation` = -2.50455 WHERE `id` = 179743;
UPDATE `gameobject` SET `orientation` = 0.331614 WHERE `id` = 179144;
UPDATE `gameobject` SET `orientation` = -0.261799 WHERE `id` = 94;
UPDATE `gameobject` SET `orientation` = -0.898844 WHERE `id` = 10082;
UPDATE `gameobject` SET `orientation` = -0.663225 WHERE `id` = 3207;
UPDATE `gameobject` SET `orientation` = -2.6529 WHERE `id` = 2120;
UPDATE `gameobject` SET `orientation` = -2.50455 WHERE `id` = 179744;
UPDATE `gameobject` SET `orientation` = 0 WHERE `id` = 1324;
UPDATE `gameobject` SET `orientation` = 0.671952 WHERE `id` = 17273;
UPDATE `gameobject` SET `orientation` = 0.637046 WHERE `id` = 28041;
UPDATE `gameobject` SET `orientation` = -2.40856 WHERE `id` = 92526;
UPDATE `gameobject` SET `orientation` = -0.253073 WHERE `id` = 184084;
UPDATE `gameobject` SET `orientation` = -0.933751 WHERE `id` = 92549;
UPDATE `gameobject` SET `orientation` = 2.87107 WHERE `id` = 92528;
UPDATE `gameobject` SET `orientation` = 3.00197 WHERE `id` = 92541;
UPDATE `gameobject` SET `orientation` = 2.74017 WHERE `id` = 13350;
UPDATE `gameobject` SET `orientation` = 2.05949 WHERE `id` = 92545;
UPDATE `gameobject` SET `orientation` = 0.637045 WHERE `id` = 92699;
UPDATE `gameobject` SET `orientation` = -2.79253 WHERE `id` = 92537;
UPDATE `gameobject` SET `orientation` = 0.322885 WHERE `id` = 12360;
UPDATE `gameobject` SET `orientation` = 0.043631 WHERE `id` = 92694;
UPDATE `gameobject` SET `orientation` = -0.733205 WHERE `id` = 59846;
UPDATE `gameobject` SET `orientation` = 2.89961 WHERE `id` = 176945;
UPDATE `gameobject` SET `orientation` = -3.02815 WHERE `id` = 92527;
UPDATE `gameobject` SET `orientation` = -1.85878 WHERE `id` = 176365;
UPDATE `gameobject` SET `orientation` = 0.069813 WHERE `id` = 92540;
UPDATE `gameobject` SET `orientation` = -0.890118 WHERE `id` = 12365;
UPDATE `gameobject` SET `orientation` = 0.322885 WHERE `id` = 12361;
UPDATE `gameobject` SET `orientation` = -2.53073 WHERE `id` = 148423;
UPDATE `gameobject` SET `orientation` = -1.8092 WHERE `id` = 183857;
UPDATE `gameobject` SET `orientation` = -2.60927 WHERE `id` = 92536;
UPDATE `gameobject` SET `orientation` = -0.715585 WHERE `id` = 92544;
UPDATE `gameobject` SET `orientation` = -2.81871 WHERE `id` = 12362;
UPDATE `gameobject` SET `orientation` = -2.81871 WHERE `id` = 12358;
UPDATE `gameobject` SET `orientation` = 2.38238 WHERE `id` = 12355;
UPDATE `gameobject` SET `orientation` = 0.680678 WHERE `id` = 12366;
UPDATE `gameobject` SET `orientation` = -2.86234 WHERE `id` = 92534;
UPDATE `gameobject` SET `orientation` = 3.08923 WHERE `id` = 12897;
UPDATE `gameobject` SET `orientation` = -0.28798 WHERE `id` = 92539;
UPDATE `gameobject` SET `orientation` = 2.64418 WHERE `id` = 92542;
UPDATE `gameobject` SET `orientation` = 0.314159 WHERE `id` = 92700;
UPDATE `gameobject` SET `orientation` = -2.81871 WHERE `id` = 12359;
UPDATE `gameobject` SET `orientation` = -0.925026 WHERE `id` = 146096;
UPDATE `gameobject` SET `orientation` = -0.401426 WHERE `id` = 13351;
UPDATE `gameobject` SET `orientation` = -2.81871 WHERE `id` = 92535;
UPDATE `gameobject` SET `orientation` = 0.322885 WHERE `id` = 12363;
UPDATE `gameobject` SET `orientation` = -0.261799 WHERE `id` = 92696;
UPDATE `gameobject` SET `orientation` = 0.061086 WHERE `id` = 1596;
UPDATE `gameobject` SET `orientation` = -3.0805 WHERE `id` = 1597;
UPDATE `gameobject` SET `orientation` = 0.654499 WHERE `id` = 56911;
UPDATE `gameobject` SET `orientation` = -1.53995 WHERE `id` = 24777;
UPDATE `gameobject` SET `orientation` = -2.86234 WHERE `id` = 107;
UPDATE `gameobject` SET `orientation` = -2.86234 WHERE `id` = 105;
UPDATE `gameobject` SET `orientation` = 2.85361 WHERE `id` = 112;
UPDATE `gameobject` SET `orientation` = 2.29511 WHERE `id` = 3208;
UPDATE `gameobject` SET `orientation` = 2.86234 WHERE `id` = 103;
UPDATE `gameobject` SET `orientation` = -3.13445 WHERE `id` = 81;
UPDATE `gameobject` SET `orientation` = -0.05236 WHERE `id` = 171596;
UPDATE `gameobject` SET `orientation` = 0.099154 WHERE `id` = 80;
UPDATE `gameobject` SET `orientation` = 0.837757 WHERE `id` = 59850;
UPDATE `gameobject` SET `orientation` = -3.0805 WHERE `id` = 1598;
UPDATE `gameobject` SET `orientation` = 0.02618 WHERE `id` = 16396;
UPDATE `gameobject` SET `orientation` = -1.95477 WHERE `id` = 181849;
UPDATE `gameobject` SET `orientation` = 3.01942 WHERE `id` = 177123;
UPDATE `gameobject` SET `orientation` = -2.93215 WHERE `id` = 177112;
UPDATE `gameobject` SET `orientation` = -2.93215 WHERE `id` = 177111;
UPDATE `gameobject` SET `orientation` = -0.087266 WHERE `id` = 177152;
UPDATE `gameobject` SET `orientation` = 0.209439 WHERE `id` = 177114;
UPDATE `gameobject` SET `orientation` = 1.78024 WHERE `id` = 177115;
UPDATE `gameobject` SET `orientation` = -0.671953 WHERE `id` = 177118;
UPDATE `gameobject` SET `orientation` = 2.49582 WHERE `id` = 184223;
UPDATE `gameobject` SET `orientation` = 3.47321 WHERE `id` = 184285;
UPDATE `gameobject` SET `orientation` = 0.870731 WHERE `id` = 185063;
UPDATE `gameobject` SET `orientation` = 0.731104 WHERE `id` = 185066;
UPDATE `gameobject` SET `orientation` = 1.63867 WHERE `id` = 185070;
UPDATE `gameobject` SET `orientation` = 1.92665 WHERE `id` = 185077;
UPDATE `gameobject` SET `orientation` = -0.700062 WHERE `id` = 185078;
UPDATE `gameobject` SET `orientation` = 3.00875 WHERE `id` = 185079;
UPDATE `gameobject` SET `orientation` = 0.0416993 WHERE `id` = 185086;
UPDATE `gameobject` SET `orientation` = 3.01748 WHERE `id` = 185087;
UPDATE `gameobject` SET `orientation` = -1.468 WHERE `id` = 185096;
UPDATE `gameobject` SET `orientation` = -0.087266 WHERE `id` = 177151;
UPDATE `gameobject` SET `orientation` = -0.671953 WHERE `id` = 177117;
UPDATE `gameobject` SET `orientation` = -0.122174 WHERE `id` = 177124;
UPDATE `gameobject` SET `orientation` = -0.671953 WHERE `id` = 177105;
UPDATE `gameobject` SET `orientation` = 0.898844 WHERE `id` = 177120;
UPDATE `gameobject` SET `orientation` = -0.122174 WHERE `id` = 177125;
UPDATE `gameobject` SET `orientation` = -2.92343 WHERE `id` = 13405;
UPDATE `gameobject` SET `orientation` = 3.15033 WHERE `id` = 185832;
UPDATE `gameobject` SET `orientation` = 3.15033 WHERE `id` = 185833;
UPDATE `gameobject` SET `orientation` = 3.15033 WHERE `id` = 185764;
UPDATE `gameobject` SET `orientation` = 3.15033 WHERE `id` = 185835;
UPDATE `gameobject` SET `orientation` = 3.15033 WHERE `id` = 185767;
UPDATE `gameobject` SET `orientation` = 3.15033 WHERE `id` = 185815;
UPDATE `gameobject` SET `orientation` = 3.11539 WHERE `id` = 185817;
UPDATE `gameobject` SET `orientation` = 3.09792 WHERE `id` = 185818;
UPDATE `gameobject` SET `orientation` = 3.13286 WHERE `id` = 185824;
UPDATE `gameobject` SET `orientation` = 3.13286 WHERE `id` = 185825;
UPDATE `gameobject` SET `orientation` = 3.13286 WHERE `id` = 185827;
UPDATE `gameobject` SET `orientation` = 3.15033 WHERE `id` = 185736;
UPDATE `gameobject` SET `orientation` = 3.13286 WHERE `id` = 185741;
UPDATE `gameobject` SET `orientation` = 3.13286 WHERE `id` = 185742;
UPDATE `gameobject` SET `orientation` = 3.15033 WHERE `id` = 185739;
UPDATE `gameobject` SET `orientation` = 3.15033 WHERE `id` = 185737;
UPDATE `gameobject` SET `orientation` = 3.15033 WHERE `id` = 185738;
UPDATE `gameobject` SET `orientation` = 3.13286 WHERE `id` = 185740;
UPDATE `gameobject` SET `orientation` = 3.15033 WHERE `id` = 185812;
UPDATE `gameobject` SET `orientation` = 3.15033 WHERE `id` = 185814;
UPDATE `gameobject` SET `orientation` = 3.12412 WHERE `id` = 185819;
UPDATE `gameobject` SET `orientation` = 3.15033 WHERE `id` = 185813;
UPDATE `gameobject` SET `orientation` = 3.12412 WHERE `id` = 185816;
UPDATE `gameobject` SET `orientation` = 3.11539 WHERE `id` = 185822;
UPDATE `gameobject` SET `orientation` = 3.12412 WHERE `id` = 185830;
UPDATE `gameobject` SET `orientation` = 3.12412 WHERE `id` = 185744;
UPDATE `gameobject` SET `orientation` = 3.11539 WHERE `id` = 185750;
UPDATE `gameobject` SET `orientation` = 3.12412 WHERE `id` = 185745;
UPDATE `gameobject` SET `orientation` = 3.11539 WHERE `id` = 185823;
UPDATE `gameobject` SET `orientation` = 3.12412 WHERE `id` = 185746;
UPDATE `gameobject` SET `orientation` = 3.11539 WHERE `id` = 185748;
UPDATE `gameobject` SET `orientation` = 3.11539 WHERE `id` = 185749;
UPDATE `gameobject` SET `orientation` = 3.11539 WHERE `id` = 185820;
UPDATE `gameobject` SET `orientation` = 3.12412 WHERE `id` = 185828;
UPDATE `gameobject` SET `orientation` = 3.12412 WHERE `id` = 185831;
UPDATE `gameobject` SET `orientation` = 3.11539 WHERE `id` = 185751;
UPDATE `gameobject` SET `orientation` = 3.11539 WHERE `id` = 185821;
UPDATE `gameobject` SET `orientation` = 3.15033 WHERE `id` = 185805;
UPDATE `gameobject` SET `orientation` = 3.15033 WHERE `id` = 185806;
UPDATE `gameobject` SET `orientation` = 3.15033 WHERE `id` = 185731;
UPDATE `gameobject` SET `orientation` = 3.15033 WHERE `id` = 185730;
UPDATE `gameobject` SET `orientation` = 3.15033 WHERE `id` = 185804;
UPDATE `gameobject` SET `orientation` = 3.15033 WHERE `id` = 185728;
UPDATE `gameobject` SET `orientation` = 3.15033 WHERE `id` = 185807;
UPDATE `gameobject` SET `orientation` = 3.15033 WHERE `id` = 185710;
UPDATE `gameobject` SET `orientation` = 3.13286 WHERE `id` = 185847;
UPDATE `gameobject` SET `orientation` = 3.10665 WHERE `id` = 185846;
UPDATE `gameobject` SET `orientation` = 3.13286 WHERE `id` = 185844;
UPDATE `gameobject` SET `orientation` = 3.11539 WHERE `id` = 185811;
UPDATE `gameobject` SET `orientation` = 3.11539 WHERE `id` = 185808;
UPDATE `gameobject` SET `orientation` = 3.11539 WHERE `id` = 185809;
UPDATE `gameobject` SET `orientation` = 3.11539 WHERE `id` = 185732;
UPDATE `gameobject` SET `orientation` = 3.11539 WHERE `id` = 185734;
UPDATE `gameobject` SET `orientation` = 3.11539 WHERE `id` = 185810;
UPDATE `gameobject` SET `orientation` = 3.11539 WHERE `id` = 185735;
UPDATE `gameobject` SET `orientation` = 3.15033 WHERE `id` = 185795;
UPDATE `gameobject` SET `orientation` = 3.15033 WHERE `id` = 185792;
UPDATE `gameobject` SET `orientation` = 3.15033 WHERE `id` = 185797;
UPDATE `gameobject` SET `orientation` = 3.15033 WHERE `id` = 185799;
UPDATE `gameobject` SET `orientation` = 3.15033 WHERE `id` = 185803;
UPDATE `gameobject` SET `orientation` = 3.15033 WHERE `id` = 185727;
UPDATE `gameobject` SET `orientation` = 3.15033 WHERE `id` = 185791;
UPDATE `gameobject` SET `orientation` = 3.15033 WHERE `id` = 185725;
UPDATE `gameobject` SET `orientation` = 3.15033 WHERE `id` = 185726;
UPDATE `gameobject` SET `orientation` = 3.15033 WHERE `id` = 185802;
UPDATE `gameobject` SET `orientation` = 3.15033 WHERE `id` = 185798;
UPDATE `gameobject` SET `orientation` = 3.15033 WHERE `id` = 185796;
UPDATE `gameobject` SET `orientation` = 3.15033 WHERE `id` = 185801;
UPDATE `gameobject` SET `orientation` = 3.15033 WHERE `id` = 185788;
UPDATE `gameobject` SET `orientation` = 3.15033 WHERE `id` = 185789;
UPDATE `gameobject` SET `orientation` = 3.15033 WHERE `id` = 185790;
UPDATE `gameobject` SET `orientation` = 3.12412 WHERE `id` = 185648;
UPDATE `gameobject` SET `orientation` = 3.12412 WHERE `id` = 185649;
UPDATE `gameobject` SET `orientation` = 3.12412 WHERE `id` = 185650;
UPDATE `gameobject` SET `orientation` = 3.12412 WHERE `id` = 185654;
UPDATE `gameobject` SET `orientation` = 3.12412 WHERE `id` = 185655;
UPDATE `gameobject` SET `orientation` = 3.12412 WHERE `id` = 185684;
UPDATE `gameobject` SET `orientation` = 3.12412 WHERE `id` = 185687;
UPDATE `gameobject` SET `orientation` = 3.12412 WHERE `id` = 185690;
UPDATE `gameobject` SET `orientation` = 3.12412 WHERE `id` = 185685;
UPDATE `gameobject` SET `orientation` = 3.12412 WHERE `id` = 185652;
UPDATE `gameobject` SET `orientation` = 3.12412 WHERE `id` = 185653;
UPDATE `gameobject` SET `orientation` = 3.12412 WHERE `id` = 185686;
UPDATE `gameobject` SET `orientation` = 3.12412 WHERE `id` = 185688;
UPDATE `gameobject` SET `orientation` = 3.12412 WHERE `id` = 185651;
UPDATE `gameobject` SET `orientation` = 3.12412 WHERE `id` = 185637;
UPDATE `gameobject` SET `orientation` = 3.12412 WHERE `id` = 185638;
UPDATE `gameobject` SET `orientation` = 3.12412 WHERE `id` = 185636;
UPDATE `gameobject` SET `orientation` = 3.12412 WHERE `id` = 185639;
UPDATE `gameobject` SET `orientation` = 3.15906 WHERE `id` = 185643;
UPDATE `gameobject` SET `orientation` = 3.12412 WHERE `id` = 185676;
UPDATE `gameobject` SET `orientation` = 3.12412 WHERE `id` = 185642;
UPDATE `gameobject` SET `orientation` = 3.12412 WHERE `id` = 185677;
UPDATE `gameobject` SET `orientation` = 3.12412 WHERE `id` = 185641;
UPDATE `gameobject` SET `orientation` = 3.12412 WHERE `id` = 185678;
UPDATE `gameobject` SET `orientation` = 3.15033 WHERE `id` = 185647;
UPDATE `gameobject` SET `orientation` = 3.15033 WHERE `id` = 185645;
UPDATE `gameobject` SET `orientation` = 3.15033 WHERE `id` = 185646;
UPDATE `gameobject` SET `orientation` = 3.15033 WHERE `id` = 185683;
UPDATE `gameobject` SET `orientation` = 3.15033 WHERE `id` = 185681;
UPDATE `gameobject` SET `orientation` = 3.15033 WHERE `id` = 185682;
UPDATE `gameobject` SET `orientation` = 3.15033 WHERE `id` = 185680;
UPDATE `gameobject` SET `orientation` = 3.15906 WHERE `id` = 185671;
UPDATE `gameobject` SET `orientation` = 3.15906 WHERE `id` = 185702;
UPDATE `gameobject` SET `orientation` = 3.15906 WHERE `id` = 185668;
UPDATE `gameobject` SET `orientation` = 3.15906 WHERE `id` = 185701;
UPDATE `gameobject` SET `orientation` = 3.15906 WHERE `id` = 185703;
UPDATE `gameobject` SET `orientation` = 3.11539 WHERE `id` = 185658;
UPDATE `gameobject` SET `orientation` = 3.15906 WHERE `id` = 185700;
UPDATE `gameobject` SET `orientation` = 3.12412 WHERE `id` = 185626;
UPDATE `gameobject` SET `orientation` = 3.12412 WHERE `id` = 185627;
UPDATE `gameobject` SET `orientation` = 3.11539 WHERE `id` = 185628;
UPDATE `gameobject` SET `orientation` = 3.12412 WHERE `id` = 185631;
UPDATE `gameobject` SET `orientation` = 3.12412 WHERE `id` = 185629;
UPDATE `gameobject` SET `orientation` = 3.12412 WHERE `id` = 185625;
UPDATE `gameobject` SET `orientation` = 3.12412 WHERE `id` = 185624;
UPDATE `gameobject` SET `orientation` = 3.12412 WHERE `id` = 185630;
UPDATE `gameobject` SET `orientation` = 3.12412 WHERE `id` = 185852;
UPDATE `gameobject` SET `orientation` = 3.12412 WHERE `id` = 185632;
UPDATE `gameobject` SET `orientation` = 3.12412 WHERE `id` = 185634;
UPDATE `gameobject` SET `orientation` = 3.12412 WHERE `id` = 185854;
UPDATE `gameobject` SET `orientation` = 3.12412 WHERE `id` = 185853;
UPDATE `gameobject` SET `orientation` = 3.12412 WHERE `id` = 185635;
UPDATE `gameobject` SET `orientation` = 3.11539 WHERE `id` = 185607;
UPDATE `gameobject` SET `orientation` = 3.12412 WHERE `id` = 185633;
UPDATE `gameobject` SET `orientation` = 3.1678 WHERE `id` = 185604;
UPDATE `gameobject` SET `orientation` = 3.12412 WHERE `id` = 185606;
UPDATE `gameobject` SET `orientation` = 3.13286 WHERE `id` = 185616;
UPDATE `gameobject` SET `orientation` = 3.13286 WHERE `id` = 185621;
UPDATE `gameobject` SET `orientation` = 3.17653 WHERE `id` = 185613;
UPDATE `gameobject` SET `orientation` = 3.15906 WHERE `id` = 185615;
UPDATE `gameobject` SET `orientation` = 3.13286 WHERE `id` = 185605;
UPDATE `gameobject` SET `orientation` = 3.13286 WHERE `id` = 185622;
UPDATE `gameobject` SET `orientation` = 3.13286 WHERE `id` = 185623;
UPDATE `gameobject` SET `orientation` = 3.13286 WHERE `id` = 185620;
UPDATE `gameobject` SET `orientation` = 3.13286 WHERE `id` = 185617;
UPDATE `gameobject` SET `orientation` = 3.13286 WHERE `id` = 185618;
UPDATE `gameobject` SET `orientation` = -0.91823 WHERE `id` = 185092;
UPDATE `gameobject` SET `orientation` = -2.50646 WHERE `id` = 185099;
UPDATE `gameobject` SET `orientation` = 0.654498 WHERE `id` = 185100;
UPDATE `gameobject` SET `orientation` = 0.547844 WHERE `id` = 185091;
UPDATE `gameobject` SET `orientation` = 2.05755 WHERE `id` = 185093;
UPDATE `gameobject` SET `orientation` = 0.303502 WHERE `id` = 185083;
UPDATE `gameobject` SET `orientation` = -1.12718 WHERE `id` = 185097;
UPDATE `gameobject` SET `orientation` = -3.00391 WHERE `id` = 185084;
UPDATE `gameobject` SET `orientation` = 0.898844 WHERE `id` = 177119;
UPDATE `gameobject` SET `orientation` = 0.209439 WHERE `id` = 177113;
UPDATE `gameobject` SET `orientation` = -0.671953 WHERE `id` = 177106;
UPDATE `gameobject` SET `orientation` = -0.017454 WHERE `id` = 177110;
UPDATE `gameobject` SET `orientation` = -0.514872 WHERE `id` = 177129;
UPDATE `gameobject` SET `orientation` = 1.10187 WHERE `id` = 184688;
UPDATE `gameobject` SET `orientation` = 5.2247 WHERE `id` = 184686;
UPDATE `gameobject` SET `orientation` = 4.32729 WHERE `id` = 184687;
UPDATE `gameobject` SET `orientation` = -0.820305 WHERE `id` = 4135;
UPDATE `gameobject` SET `orientation` = 1.78024 WHERE `id` = 172992;
UPDATE `gameobject` SET `orientation` = -3.10669 WHERE `id` = 3227;
UPDATE `gameobject` SET `orientation` = 0.41888 WHERE `id` = 4118;
UPDATE `gameobject` SET `orientation` = 1.9803 WHERE `id` = 186731;
UPDATE `gameobject` SET `orientation` = -0.113447 WHERE `id` = 50524;
UPDATE `gameobject` SET `orientation` = 3.06305 WHERE `id` = 50484;
UPDATE `gameobject` SET `orientation` = 2.60927 WHERE `id` = 172994;
UPDATE `gameobject` SET `orientation` = 2.81871 WHERE `id` = 173082;
UPDATE `gameobject` SET `orientation` = -3.06305 WHERE `id` = 50522;
UPDATE `gameobject` SET `orientation` = 0.488692 WHERE `id` = 177268;
UPDATE `gameobject` SET `orientation` = -2.38238 WHERE `id` = 2975;
UPDATE `gameobject` SET `orientation` = -1.72788 WHERE `id` = 3198;
UPDATE `gameobject` SET `orientation` = -0.017453 WHERE `id` = 173174;
UPDATE `gameobject` SET `orientation` = -2.74017 WHERE `id` = 179740;
UPDATE `gameobject` SET `orientation` = -2.85361 WHERE `id` = 3196;
UPDATE `gameobject` SET `orientation` = 0.41888 WHERE `id` = 4116;
UPDATE `gameobject` SET `orientation` = -2.67036 WHERE `id` = 50486;
UPDATE `gameobject` SET `orientation` = 2.29511 WHERE `id` = 173024;
UPDATE `gameobject` SET `orientation` = -2.67036 WHERE `id` = 173218;
UPDATE `gameobject` SET `orientation` = -2.618 WHERE `id` = 2978;
UPDATE `gameobject` SET `orientation` = -2.85361 WHERE `id` = 3276;
UPDATE `gameobject` SET `orientation` = 2.26893 WHERE `id` = 50529;
UPDATE `gameobject` SET `orientation` = -2.11185 WHERE `id` = 179742;
UPDATE `gameobject` SET `orientation` = -2.74017 WHERE `id` = 172972;
UPDATE `gameobject` SET `orientation` = -3.00197 WHERE `id` = 172991;
UPDATE `gameobject` SET `orientation` = 0.375246 WHERE `id` = 50494;
UPDATE `gameobject` SET `orientation` = -1.59698 WHERE `id` = 50497;
UPDATE `gameobject` SET `orientation` = -2.6529 WHERE `id` = 173216;
UPDATE `gameobject` SET `orientation` = 0.575958 WHERE `id` = 172974;
UPDATE `gameobject` SET `orientation` = 0.584685 WHERE `id` = 50531;
UPDATE `gameobject` SET `orientation` = -0.523599 WHERE `id` = 50499;
UPDATE `gameobject` SET `orientation` = 0.959932 WHERE `id` = 50533;
UPDATE `gameobject` SET `orientation` = 1.88496 WHERE `id` = 50512;
UPDATE `gameobject` SET `orientation` = -0.174534 WHERE `id` = 148424;
UPDATE `gameobject` SET `orientation` = 0.567231 WHERE `id` = 173168;
UPDATE `gameobject` SET `orientation` = 2.97579 WHERE `id` = 50535;
UPDATE `gameobject` SET `orientation` = 1.78024 WHERE `id` = 172983;
UPDATE `gameobject` SET `orientation` = -0.541054 WHERE `id` = 173080;
UPDATE `gameobject` SET `orientation` = -2.34747 WHERE `id` = 173220;
UPDATE `gameobject` SET `orientation` = -1.51844 WHERE `id` = 165557;
UPDATE `gameobject` SET `orientation` = -3.11541 WHERE `id` = 172970;
UPDATE `gameobject` SET `orientation` = 0.733039 WHERE `id` = 172985;
UPDATE `gameobject` SET `orientation` = 0.907571 WHERE `id` = 50503;
UPDATE `gameobject` SET `orientation` = -0.610866 WHERE `id` = 3232;
UPDATE `gameobject` SET `orientation` = -0.401426 WHERE `id` = 50488;
UPDATE `gameobject` SET `orientation` = 2.99324 WHERE `id` = 173081;
UPDATE `gameobject` SET `orientation` = 0.28798 WHERE `id` = 3197;
UPDATE `gameobject` SET `orientation` = -0.209441 WHERE `id` = 2970;
UPDATE `gameobject` SET `orientation` = 2.97579 WHERE `id` = 173020;
UPDATE `gameobject` SET `orientation` = 0.584685 WHERE `id` = 50527;
UPDATE `gameobject` SET `orientation` = 0.034906 WHERE `id` = 3226;
UPDATE `gameobject` SET `orientation` = 0.767946 WHERE `id` = 2968;
UPDATE `gameobject` SET `orientation` = -3.11541 WHERE `id` = 3224;
UPDATE `gameobject` SET `orientation` = 2.60927 WHERE `id` = 172995;
UPDATE `gameobject` SET `orientation` = 0.05236 WHERE `id` = 173022;
UPDATE `gameobject` SET `orientation` = 2.62105 WHERE `id` = 186730;
UPDATE `gameobject` SET `orientation` = 3.53314 WHERE `id` = 184320;
UPDATE `gameobject` SET `orientation` = 3.14133 WHERE `id` = 181319;
UPDATE `gameobject` SET `orientation` = 3.14153 WHERE `id` = 181362;
UPDATE `gameobject` SET `orientation` = -0.016211 WHERE `id` = 181888;
UPDATE `gameobject` SET `orientation` = 0.973143 WHERE `id` = 181994;
UPDATE `gameobject` SET `orientation` = 1.39202 WHERE `id` = 181995;
UPDATE `gameobject` SET `orientation` = 0.632805 WHERE `id` = 181996;
UPDATE `gameobject` SET `orientation` = -1.62739 WHERE `id` = 181997;
UPDATE `gameobject` SET `orientation` = -2.71822 WHERE `id` = 182000;
UPDATE `gameobject` SET `orientation` = 2.82319 WHERE `id` = 182001;
UPDATE `gameobject` SET `orientation` = 0.904019 WHERE `id` = 182215;
UPDATE `gameobject` SET `orientation` = 2.47481 WHERE `id` = 182217;
UPDATE `gameobject` SET `orientation` = -2.86588 WHERE `id` = 182218;
UPDATE `gameobject` SET `orientation` = 0.554955 WHERE `id` = 182221;
UPDATE `gameobject` SET `orientation` = 0.785397 WHERE `id` = 182303;
UPDATE `gameobject` SET `orientation` = -2.80997 WHERE `id` = 182306;
UPDATE `gameobject` SET `orientation` = -1.49249 WHERE `id` = 182344;
UPDATE `gameobject` SET `orientation` = 0.320558 WHERE `id` = 182400;
UPDATE `gameobject` SET `orientation` = 5.09542 WHERE `id` = 182402;
UPDATE `gameobject` SET `orientation` = 2.93214 WHERE `id` = 182536;
UPDATE `gameobject` SET `orientation` = -0.137774 WHERE `id` = 182944;
UPDATE `gameobject` SET `orientation` = 2.1779 WHERE `id` = 184496;
UPDATE `gameobject` SET `orientation` = 0.355989 WHERE `id` = 185036;
UPDATE `gameobject` SET `orientation` = 0.355989 WHERE `id` = 185037;
UPDATE `gameobject` SET `orientation` = -0.281054 WHERE `id` = 185038;
UPDATE `gameobject` SET `orientation` = 0.355989 WHERE `id` = 185039;
UPDATE `gameobject` SET `orientation` = 0.355989 WHERE `id` = 185040;
UPDATE `gameobject` SET `orientation` = 0.355989 WHERE `id` = 185042;
UPDATE `gameobject` SET `orientation` = 0.355989 WHERE `id` = 185044;
UPDATE `gameobject` SET `orientation` = 0.355989 WHERE `id` = 185045;
UPDATE `gameobject` SET `orientation` = 0.355989 WHERE `id` = 185046;
UPDATE `gameobject` SET `orientation` = 2.60053 WHERE `id` = 185060;
UPDATE `gameobject` SET `orientation` = -0.410152 WHERE `id` = 173121;
UPDATE `gameobject` SET `orientation` = -2.88852 WHERE `id` = 173120;
UPDATE `gameobject` SET `orientation` = -2.17294 WHERE `id` = 173119;
UPDATE `gameobject` SET `orientation` = -0.637044 WHERE `id` = 173118;
UPDATE `gameobject` SET `orientation` = -2.38238 WHERE `id` = 173217;
UPDATE `gameobject` SET `orientation` = -3.00197 WHERE `id` = 172988;
UPDATE `gameobject` SET `orientation` = -0.122173 WHERE `id` = 173056;
UPDATE `gameobject` SET `orientation` = 2.97579 WHERE `id` = 50506;
UPDATE `gameobject` SET `orientation` = -0.061087 WHERE `id` = 33998;
UPDATE `gameobject` SET `orientation` = 3.4383 WHERE `id` = 147829;
UPDATE `gameobject` SET `orientation` = 0.305432 WHERE `id` = 19033;
UPDATE `gameobject` SET `orientation` = -0.209441 WHERE `id` = 2972;
UPDATE `gameobject` SET `orientation` = 2.618 WHERE `id` = 173025;
UPDATE `gameobject` SET `orientation` = 0.087267 WHERE `id` = 173160;
UPDATE `gameobject` SET `orientation` = 0.663224 WHERE `id` = 172973;
UPDATE `gameobject` SET `orientation` = -2.03331 WHERE `id` = 173219;
UPDATE `gameobject` SET `orientation` = 0.174533 WHERE `id` = 172990;
UPDATE `gameobject` SET `orientation` = -0.375246 WHERE `id` = 50528;
UPDATE `gameobject` SET `orientation` = 2.6529 WHERE `id` = 173016;
UPDATE `gameobject` SET `orientation` = -0.741765 WHERE `id` = 50493;
UPDATE `gameobject` SET `orientation` = -2.46092 WHERE `id` = 173177;
UPDATE `gameobject` SET `orientation` = 0.584685 WHERE `id` = 50530;
UPDATE `gameobject` SET `orientation` = 1.88496 WHERE `id` = 50513;
UPDATE `gameobject` SET `orientation` = -2.84489 WHERE `id` = 50500;
UPDATE `gameobject` SET `orientation` = -0.427606 WHERE `id` = 55774;
UPDATE `gameobject` SET `orientation` = -3.01942 WHERE `id` = 24508;
UPDATE `gameobject` SET `orientation` = -0.113446 WHERE `id` = 24601;
UPDATE `gameobject` SET `orientation` = -2.74017 WHERE `id` = 172969;
UPDATE `gameobject` SET `orientation` = 2.60927 WHERE `id` = 172993;
UPDATE `gameobject` SET `orientation` = -2.90597 WHERE `id` = 50495;
UPDATE `gameobject` SET `orientation` = -0.087265 WHERE `id` = 22231;
UPDATE `gameobject` SET `orientation` = -0.026181 WHERE `id` = 176983;
UPDATE `gameobject` SET `orientation` = 1.64934 WHERE `id` = 179756;
UPDATE `gameobject` SET `orientation` = -0.008727 WHERE `id` = 153695;
UPDATE `gameobject` SET `orientation` = 2.04204 WHERE `id` = 1871;
UPDATE `gameobject` SET `orientation` = 1.67879 WHERE `id` = 48535;
UPDATE `gameobject` SET `orientation` = -0.030924 WHERE `id` = 48556;
UPDATE `gameobject` SET `orientation` = -2.12057 WHERE `id` = 1780;
UPDATE `gameobject` SET `orientation` = -0.008726 WHERE `id` = 94188;
UPDATE `gameobject` SET `orientation` = 0.523597 WHERE `id` = 2977;
UPDATE `gameobject` SET `orientation` = 0.663224 WHERE `id` = 173079;
UPDATE `gameobject` SET `orientation` = -0.309393 WHERE `id` = 182014;
UPDATE `gameobject` SET `orientation` = 3.08918 WHERE `id` = 182293;
UPDATE `gameobject` SET `orientation` = -2.49356 WHERE `id` = 182373;
UPDATE `gameobject` SET `orientation` = 0.794123 WHERE `id` = 183245;
UPDATE `gameobject` SET `orientation` = -2.79252 WHERE `id` = 183247;
UPDATE `gameobject` SET `orientation` = 1.85181 WHERE `id` = 184128;
UPDATE `gameobject` SET `orientation` = 1.5165 WHERE `id` = 185088;
UPDATE `gameobject` SET `orientation` = 1.11507 WHERE `id` = 185073;
UPDATE `gameobject` SET `orientation` = -0.351 WHERE `id` = 185074;
UPDATE `gameobject` SET `orientation` = 0.0504276 WHERE `id` = 185089;
UPDATE `gameobject` SET `orientation` = -0.892051 WHERE `id` = 185095;
UPDATE `gameobject` SET `orientation` = 2.86233 WHERE `id` = 186406;
UPDATE `gameobject` SET `orientation` = 0.200711 WHERE `id` = 182285;
UPDATE `gameobject` SET `orientation` = -0.637045 WHERE `id` = 182289;
UPDATE `gameobject` SET `orientation` = -0.375245 WHERE `id` = 182290;
UPDATE `gameobject` SET `orientation` = 0.104719 WHERE `id` = 182283;
UPDATE `gameobject` SET `orientation` = 0.261798 WHERE `id` = 182310;
UPDATE `gameobject` SET `orientation` = -0.998044 WHERE `id` = 182370;
UPDATE `gameobject` SET `orientation` = 3.11539 WHERE `id` = 185692;
UPDATE `gameobject` SET `orientation` = 3.15906 WHERE `id` = 185669;
UPDATE `gameobject` SET `orientation` = 3.11539 WHERE `id` = 185656;
UPDATE `gameobject` SET `orientation` = 3.11539 WHERE `id` = 185659;
UPDATE `gameobject` SET `orientation` = 3.1678 WHERE `id` = 185667;
UPDATE `gameobject` SET `orientation` = 3.12412 WHERE `id` = 185706;
UPDATE `gameobject` SET `orientation` = 3.12412 WHERE `id` = 185675;
UPDATE `gameobject` SET `orientation` = 3.1678 WHERE `id` = 185698;
UPDATE `gameobject` SET `orientation` = 3.1678 WHERE `id` = 185664;
UPDATE `gameobject` SET `orientation` = 3.1678 WHERE `id` = 185665;
UPDATE `gameobject` SET `orientation` = 3.1678 WHERE `id` = 185666;
UPDATE `gameobject` SET `orientation` = 3.12412 WHERE `id` = 185673;
UPDATE `gameobject` SET `orientation` = 3.12412 WHERE `id` = 185674;
UPDATE `gameobject` SET `orientation` = 3.12412 WHERE `id` = 185672;
UPDATE `gameobject` SET `orientation` = 3.13286 WHERE `id` = 185663;
UPDATE `gameobject` SET `orientation` = 3.15906 WHERE `id` = 185609;
UPDATE `gameobject` SET `orientation` = 3.7001 WHERE `id` = 185962;
UPDATE `gameobject` SET `orientation` = 1.67551 WHERE `id` = 185964;
UPDATE `gameobject` SET `orientation` = 5.32326 WHERE `id` = 185963;
UPDATE `gameobject` SET `orientation` = 3.12412 WHERE `id` = 185714;
UPDATE `gameobject` SET `orientation` = 3.15033 WHERE `id` = 185779;
UPDATE `gameobject` SET `orientation` = 3.12412 WHERE `id` = 185775;
UPDATE `gameobject` SET `orientation` = 3.12412 WHERE `id` = 185770;
UPDATE `gameobject` SET `orientation` = 3.12412 WHERE `id` = 185771;
UPDATE `gameobject` SET `orientation` = 3.12412 WHERE `id` = 185772;
UPDATE `gameobject` SET `orientation` = 3.12412 WHERE `id` = 185777;
UPDATE `gameobject` SET `orientation` = 3.12412 WHERE `id` = 185774;
UPDATE `gameobject` SET `orientation` = 3.15033 WHERE `id` = 185783;
UPDATE `gameobject` SET `orientation` = 3.12412 WHERE `id` = 185720;
UPDATE `gameobject` SET `orientation` = 3.12412 WHERE `id` = 185768;
UPDATE `gameobject` SET `orientation` = 3.15033 WHERE `id` = 185776;
UPDATE `gameobject` SET `orientation` = 3.15033 WHERE `id` = 185711;
UPDATE `gameobject` SET `orientation` = 3.12412 WHERE `id` = 185773;
UPDATE `gameobject` SET `orientation` = 3.12412 WHERE `id` = 185769;
UPDATE `gameobject` SET `orientation` = 3.15033 WHERE `id` = 185781;
UPDATE `gameobject` SET `orientation` = 3.15033 WHERE `id` = 185782;
UPDATE `gameobject` SET `orientation` = 3.12412 WHERE `id` = 185845;
UPDATE `gameobject` SET `orientation` = 2.49582 WHERE `id` = 184224;
UPDATE `gameobject` SET `orientation` = -0.654499 WHERE `id` = 172984;
UPDATE `gameobject` SET `orientation` = 3.13286 WHERE `id` = 2057;
UPDATE `gameobject` SET `orientation` = 0.726 WHERE `id` = 144013;
UPDATE `gameobject` SET `orientation` = 1.72788 WHERE `id` = 172965;
UPDATE `gameobject` SET `orientation` = 1.26537 WHERE `id` = 20922;
UPDATE `gameobject` SET `orientation` = -1.98095 WHERE `id` = 186084;
UPDATE `gameobject` SET `orientation` = -0.410151 WHERE `id` = 186097;
UPDATE `gameobject` SET `orientation` = -0.584684 WHERE `id` = 186136;
UPDATE `gameobject` SET `orientation` = -0.584684 WHERE `id` = 186135;
UPDATE `gameobject` SET `orientation` = -2.33001 WHERE `id` = 186032;
UPDATE `gameobject` SET `orientation` = -1.28281 WHERE `id` = 185997;
UPDATE `gameobject` SET `orientation` = 2.34747 WHERE `id` = 177022;
UPDATE `gameobject` SET `orientation` = 3.08918 WHERE `id` = 179830;
UPDATE `gameobject` SET `orientation` = -1.47952 WHERE `id` = 83;
UPDATE `gameobject` SET `orientation` = 2.6529 WHERE `id` = 184647;
UPDATE `gameobject` SET `orientation` = 2.6529 WHERE `id` = 184645;
UPDATE `gameobject` SET `orientation` = 3.15033 WHERE `id` = 185708;
UPDATE `gameobject` SET `orientation` = 3.15033 WHERE `id` = 185709;
UPDATE `gameobject` SET `orientation` = 3.14159 WHERE `id` = 185758;
UPDATE `gameobject` SET `orientation` = 4.71239 WHERE `id` = 177202;
UPDATE `gameobject` SET `position_x` = -11089.3,`position_y` = 1561.09,`position_z` = 49.4401,`orientation` = 2.31256,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 178834;
UPDATE `gameobject` SET `position_x` = 1392.59,`position_y` = 147.99,`position_z` = -62.4183,`orientation` = 1.92859,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 52175;
UPDATE `gameobject` SET `position_x` = -5910.55,`position_y` = 57.5189,`position_z` = 372.987,`orientation` = 3.14159,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 1573;
UPDATE `gameobject` SET `position_x` = 92.3294,`position_y` = -55.5541,`position_z` = 21.6017,`orientation` = -0.698132,`rotation0` = 0.0737276,`rotation1` = -0.0268345,`rotation2` = -0.340965,`rotation3` = 0.936796 WHERE `id` = 19559;
UPDATE `gameobject` SET `position_x` = 6402.21,`position_y` = 503.891,`position_z` = 8.12518,`orientation` = -1.85005,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 175320;
UPDATE `gameobject` SET `position_x` = 10675.3,`position_y` = 1857.27,`position_z` = 1323.36,`orientation` = 3.14159,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 19552;
UPDATE `gameobject` SET `position_x` = -7199.38,`position_y` = -1327.03,`position_z` = -180.773,`orientation` = 1.55334,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 164910;
UPDATE `gameobject` SET `position_x` = 2303.87,`position_y` = -5352.26,`position_z` = 91.5743,`orientation` = 2.16421,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 176317;
UPDATE `gameobject` SET `position_x` = 5966.68,`position_y` = -1266.65,`position_z` = 381.831,`orientation` = 2.1293,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 173324;
UPDATE `gameobject` SET `position_x` = 1226.3,`position_y` = -313.66,`position_z` = 43.622,`orientation` = -2.87107,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 1765;
UPDATE `gameobject` SET `position_x` = 101.517,`position_y` = -244.563,`position_z` = 8.88794,`orientation` = 3.14159,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 19583;
UPDATE `gameobject` SET `position_x` = 1888.35,`position_y` = -4416.65,`position_z` = 11.9746,`orientation` = -2.93215,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 173104;
UPDATE `gameobject` SET `position_x` = 9245.65,`position_y` = 1644.85,`position_z` = 1303.61,`orientation` = 1.6057,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 6751;
UPDATE `gameobject` SET `position_x` = -3417.04,`position_y` = -4173.36,`position_z` = 10.2917,`orientation` = -0.872664,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 21071;
UPDATE `gameobject` SET `position_x` = -1922.88,`position_y` = -712.922,`position_z` = 3.69172,`orientation` = 2.95833,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 2908;
UPDATE `gameobject` SET `position_x` = 264.878,`position_y` = -4685.26,`position_z` = -8.57834,`orientation` = -1.67552,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 2556;
UPDATE `gameobject` SET `position_x` = -1002.34,`position_y` = -3664.53,`position_z` = 25.7661,`orientation` = -1.00356,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 174857;
UPDATE `gameobject` SET `position_x` = 1681.83,`position_y` = 286.665,`position_z` = -62.5492,`orientation` = 0.165807,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 77813;
UPDATE `gameobject` SET `position_x` = -10228.8,`position_y` = -3319.46,`position_z` = 22.3632,`orientation` = -1.50098,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 32569;
UPDATE `gameobject` SET `position_x` = -5262.73,`position_y` = -483.056,`position_z` = 387.135,`orientation` = -1.23918,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 1674;
UPDATE `gameobject` SET `position_x` = -6026.55,`position_y` = -1021.78,`position_z` = -217.151,`orientation` = 0.174532,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0.0871553,`rotation3` = 0.996195 WHERE `id` = 164927;
UPDATE `gameobject` SET `position_x` = 8727.45,`position_y` = 1002.96,`position_z` = 23.5019,`orientation` = -0.750491,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 142958;
UPDATE `gameobject` SET `position_x` = 1783.06,`position_y` = -1248.57,`position_z` = 59.8121,`orientation` = 0.802851,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 175894;
UPDATE `gameobject` SET `position_x` = -223.825,`position_y` = -5095.61,`position_z` = 49.3529,`orientation` = -2.31256,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 3239;
UPDATE `gameobject` SET `position_x` = 1615.76,`position_y` = 226.406,`position_z` = -56.0906,`orientation` = 2.33874,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 113576;
UPDATE `gameobject` SET `position_x` = 4133.31,`position_y` = -700.016,`position_z` = 283.633,`orientation` = 2.25148,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 164885;
UPDATE `gameobject` SET `position_x` = 603.36,`position_y` = 325.836,`position_z` = 46.0544,`orientation` = 1.67552,`rotation0` = 0.0346966,`rotation1` = 0.0450449,`rotation2` = 0.741777,`rotation3` = 0.668233 WHERE `id` = 19568;
UPDATE `gameobject` SET `position_x` = -198.584,`position_y` = -337.764,`position_z` = 72.8801,`orientation` = 2.33874,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 1768;
UPDATE `gameobject` SET `position_x` = 3766.65,`position_y` = -1400,`position_z` = 203.65,`orientation` = -0.453786,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 164886;
UPDATE `gameobject` SET `position_x` = 1487.24,`position_y` = 285.943,`position_z` = -58.2546,`orientation` = -0.392699,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 58614;
UPDATE `gameobject` SET `position_x` = -2953.11,`position_y` = 2624.45,`position_z` = 69.1637,`orientation` = 3.14159,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 142188;
UPDATE `gameobject` SET `position_x` = -5356.56,`position_y` = -528.312,`position_z` = 391.688,`orientation` = -0.846485,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 314;
UPDATE `gameobject` SET `position_x` = -11226.9,`position_y` = -1734.26,`position_z` = 4.38246,`orientation` = 1.59698,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 177049;
UPDATE `gameobject` SET `position_x` = -1944.78,`position_y` = 1844.42,`position_z` = 65.9396,`orientation` = 1.55334,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 177243;
UPDATE `gameobject` SET `position_x` = 1705.15,`position_y` = 284.347,`position_z` = -58.439,`orientation` = -2.75762,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 58619;
UPDATE `gameobject` SET `position_x` = -1564.13,`position_y` = -1905.51,`position_z` = 48.2893,`orientation` = -1.55334,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 2703;
UPDATE `gameobject` SET `position_x` = -5203.7,`position_y` = 606.7,`position_z` = 411.465,`orientation` = 1.9984,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 179555;
UPDATE `gameobject` SET `position_x` = -1350.81,`position_y` = -2740.07,`position_z` = 59.1623,`orientation` = 3.14159,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 2690;
UPDATE `gameobject` SET `position_x` = -3201.4,`position_y` = -952.171,`position_z` = 8.44999,`orientation` = -3.14159,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 142151;
UPDATE `gameobject` SET `position_x` = 970.835,`position_y` = 599.321,`position_z` = 53.9521,`orientation` = -2.66163,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 1599;
UPDATE `gameobject` SET `position_x` = 92.3087,`position_y` = -55.575,`position_z` = 22.1523,`orientation` = -0.698132,`rotation0` = 0.0737276,`rotation1` = -0.0268345,`rotation2` = -0.340965,`rotation3` = 0.936796 WHERE `id` = 19558;
UPDATE `gameobject` SET `position_x` = 785.534,`position_y` = -1821.2,`position_z` = 91.667,`orientation` = 2.60927,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 20739;
UPDATE `gameobject` SET `position_x` = 1756.07,`position_y` = -724.743,`position_z` = 60.1272,`orientation` = 1.5708,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 176092;
UPDATE `gameobject` SET `position_x` = 1641.53,`position_y` = 141.79,`position_z` = -55.9469,`orientation` = -1.11701,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 58626;
UPDATE `gameobject` SET `position_x` = -382.261,`position_y` = 1644.94,`position_z` = 24.2887,`orientation` = 3.12414,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 1594;
UPDATE `gameobject` SET `position_x` = 1639.7,`position_y` = 131.31,`position_z` = -58.0613,`orientation` = 1.95477,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 58627;
UPDATE `gameobject` SET `position_x` = -12171.9,`position_y` = 628.196,`position_z` = -62.1219,`orientation` = 0.479968,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 2576;
UPDATE `gameobject` SET `position_x` = -351.925,`position_y` = 20.1563,`position_z` = 54.7687,`orientation` = 3.14159,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 1720;
UPDATE `gameobject` SET `position_x` = -8954.27,`position_y` = 1008.3,`position_z` = 122.038,`orientation` = 2.19039,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 17250;
UPDATE `gameobject` SET `position_x` = 253.017,`position_y` = -1437.67,`position_z` = 49.9317,`orientation` = 3.13287,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 89931;
UPDATE `gameobject` SET `position_x` = -5409.98,`position_y` = -2878.57,`position_z` = 342.565,`orientation` = 1.5708,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 299;
UPDATE `gameobject` SET `position_x` = -5073.02,`position_y` = 436.788,`position_z` = 410.832,`orientation` = 3.14159,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 102984;
UPDATE `gameobject` SET `position_x` = -679.382,`position_y` = 39.8115,`position_z` = 47.5202,`orientation` = 0.095993,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 1774;
UPDATE `gameobject` SET `position_x` = 451.498,`position_y` = 361.607,`position_z` = 51.0175,`orientation` = -2.40855,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 177904;
UPDATE `gameobject` SET `position_x` = -4782.01,`position_y` = -1039.75,`position_z` = 504.587,`orientation` = -1.87623,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 171711;
UPDATE `gameobject` SET `position_x` = -5918.12,`position_y` = -2037.57,`position_z` = 400.75,`orientation` = 1.91986,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 85562;
UPDATE `gameobject` SET `position_x` = -195.441,`position_y` = -3829.46,`position_z` = 238.351,`orientation` = 0.087266,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 179915;
UPDATE `gameobject` SET `position_x` = -7179.28,`position_y` = 435.092,`position_z` = 64.374,`orientation` = -1.22173,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 178553;
UPDATE `gameobject` SET `position_x` = 2449.44,`position_y` = -1662.34,`position_z` = 103.127,`orientation` = 0.261799,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 177490;
UPDATE `gameobject` SET `position_x` = -1256.3,`position_y` = -2549.68,`position_z` = 21.5346,`orientation` = 3.14159,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 2729;
UPDATE `gameobject` SET `position_x` = -6381.16,`position_y` = 770.078,`position_z` = 386.212,`orientation` = 3.14159,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 1943;
UPDATE `gameobject` SET `position_x` = -7426.64,`position_y` = -349.64,`position_z` = -233.862,`orientation` = -1.91986,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 164956;
UPDATE `gameobject` SET `position_x` = 1486.69,`position_y` = 196.506,`position_z` = -57.9991,`orientation` = 0.392699,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 58624;
UPDATE `gameobject` SET `position_x` = -793.997,`position_y` = -4905.74,`position_z` = 19.5642,`orientation` = 0.629431,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 31411;
UPDATE `gameobject` SET `position_x` = -4465.69,`position_y` = -1807.09,`position_z` = 86.6898,`orientation` = -3.00197,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 178825;
UPDATE `gameobject` SET `position_x` = -3721.85,`position_y` = -2541.17,`position_z` = 69.7589,`orientation` = -0.000001,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 21042;
UPDATE `gameobject` SET `position_x` = -12544,`position_y` = -723.063,`position_z` = 40.4432,`orientation` = 3.14159,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 2891;
UPDATE `gameobject` SET `position_x` = 1704.1,`position_y` = 194.835,`position_z` = -57.7369,`orientation` = 2.74889,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 58629;
UPDATE `gameobject` SET `position_x` = 366.669,`position_y` = -4720.59,`position_z` = 13.5744,`orientation` = 3.11541,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 31572;
UPDATE `gameobject` SET `position_x` = 1292.74,`position_y` = 1078.11,`position_z` = 53.6475,`orientation` = -2.41728,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 1677;
UPDATE `gameobject` SET `position_x` = -10363.7,`position_y` = -1282.15,`position_z` = 35.3959,`orientation` = 3.14159,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 321;
UPDATE `gameobject` SET `position_x` = -10270.2,`position_y` = 53.8742,`position_z` = 41.8359,`orientation` = -3.12414,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 51708;
UPDATE `gameobject` SET `position_x` = -12705.1,`position_y` = -472.833,`position_z` = 30.2692,`orientation` = 3.14159,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 2892;
UPDATE `gameobject` SET `position_x` = -6947.41,`position_y` = -3722.05,`position_z` = 47.185,`orientation` = 0.270526,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 151974;
UPDATE `gameobject` SET `position_x` = -6484.87,`position_y` = -973.079,`position_z` = 333.565,`orientation` = -2.84489,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 148506;
UPDATE `gameobject` SET `position_x` = -255.823,`position_y` = -3630.3,`position_z` = 238.769,`orientation` = -1.7366,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 144070;
UPDATE `gameobject` SET `position_x` = -2188.06,`position_y` = -1603.06,`position_z` = -40.6469,`orientation` = -2.58309,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 2708;
UPDATE `gameobject` SET `position_x` = -1768.74,`position_y` = -1521.21,`position_z` = 75.2377,`orientation` = 3.10669,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 2717;
UPDATE `gameobject` SET `position_x` = -243.773,`position_y` = -4022.4,`position_z` = 187.304,`orientation` = 0.226893,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 61934;
UPDATE `gameobject` SET `position_x` = -460.793,`position_y` = 2609.83,`position_z` = 2.75692,`orientation` = 1.51844,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 35251;
UPDATE `gameobject` SET `position_x` = -4957.59,`position_y` = 463.196,`position_z` = 18.9743,`orientation` = -0.10472,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 142195;
UPDATE `gameobject` SET `position_x` = 4874.41,`position_y` = -377.052,`position_z` = 351.308,`orientation` = 2.02458,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 174684;
UPDATE `gameobject` SET `position_x` = -6910.33,`position_y` = -1066.01,`position_z` = 257.716,`orientation` = -2.32129,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 149032;
UPDATE `gameobject` SET `position_x` = -1749.23,`position_y` = -1541.31,`position_z` = 60.9273,`orientation` = -0.479967,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 2715;
UPDATE `gameobject` SET `position_x` = 848.998,`position_y` = 2208.29,`position_z` = -137.5,`orientation` = 1.50034,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0.681762,`rotation3` = 0.731574 WHERE `id` = 177790;
UPDATE `gameobject` SET `position_x` = -11206.3,`position_y` = -1755.07,`position_z` = 4.38246,`orientation` = 1.59698,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 176901;
UPDATE `gameobject` SET `position_x` = -7658.82,`position_y` = -1798.54,`position_z` = -272.077,`orientation` = -2.88852,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 161505;
UPDATE `gameobject` SET `position_x` = -11067.9,`position_y` = -1824.71,`position_z` = 60.1991,`orientation` = 1.59698,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 177203;
UPDATE `gameobject` SET `position_x` = -6717.8,`position_y` = -4106.92,`position_z` = 263.891,`orientation` = 3.14159,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 2933;
UPDATE `gameobject` SET `position_x` = -11091,`position_y` = -68.9618,`position_z` = 15.4935,`orientation` = -2.97149,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 119;
UPDATE `gameobject` SET `position_x` = -6477.94,`position_y` = -1243.35,`position_z` = 180.183,`orientation` = -2.75762,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 148498;
UPDATE `gameobject` SET `position_x` = -8059.6,`position_y` = -1626.94,`position_z` = 133.591,`orientation` = 1.65806,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 178125;
UPDATE `gameobject` SET `position_x` = -4864.81,`position_y` = -3328.1,`position_z` = 304.771,`orientation` = 1.02974,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 104569;
UPDATE `gameobject` SET `position_x` = 3866.64,`position_y` = -666.657,`position_z` = 329.731,`orientation` = -2.37365,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 164888;
UPDATE `gameobject` SET `position_x` = -3107.43,`position_y` = -966.177,`position_z` = 7.88422,`orientation` = -3.14159,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 259;
UPDATE `gameobject` SET `position_x` = -247.137,`position_y` = 1509.01,`position_z` = 75.8482,`orientation` = -2.68781,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 178845;
UPDATE `gameobject` SET `position_x` = 9859.68,`position_y` = 587.283,`position_z` = 1299.92,`orientation` = 3.14159,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 19550;
UPDATE `gameobject` SET `position_x` = -9619.27,`position_y` = -2815.05,`position_z` = 8.21132,`orientation` = -3.13287,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 142343;
UPDATE `gameobject` SET `position_x` = -10240.1,`position_y` = 354.663,`position_z` = 50.3859,`orientation` = 2.93132,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 61;
UPDATE `gameobject` SET `position_x` = 4815.38,`position_y` = 230.723,`position_z` = 49.1618,`orientation` = -1.14319,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 17185;
UPDATE `gameobject` SET `position_x` = -2370.3,`position_y` = -4091.4,`position_z` = 6.69146,`orientation` = 3.14159,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 2871;
UPDATE `gameobject` SET `position_x` = 6433.25,`position_y` = -1266.62,`position_z` = 383.206,`orientation` = 2.23402,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 173284;
UPDATE `gameobject` SET `position_x` = -9253.08,`position_y` = -3404.9,`position_z` = 104.348,`orientation` = 0.547548,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 31;
UPDATE `gameobject` SET `position_x` = -9264.42,`position_y` = -3282.77,`position_z` = 150.947,`orientation` = -0.837758,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 103628;
UPDATE `gameobject` SET `position_x` = -10514.2,`position_y` = 2109.99,`position_z` = 2.68824,`orientation` = -1.49493,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 35;
UPDATE `gameobject` SET `position_x` = -1064.84,`position_y` = -241.505,`position_z` = 158.863,`orientation` = 1.56207,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 50537;
UPDATE `gameobject` SET `position_x` = -7670.07,`position_y` = -1801.72,`position_z` = -278.489,`orientation` = -0.418879,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 161504;
UPDATE `gameobject` SET `position_x` = -6999.61,`position_y` = -3878.1,`position_z` = 285.264,`orientation` = 1.56207,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 2848;
UPDATE `gameobject` SET `position_x` = 1666.92,`position_y` = -4213.37,`position_z` = 56.2608,`orientation` = -0.689405,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 176518;
UPDATE `gameobject` SET `position_x` = -1792.98,`position_y` = -1520.95,`position_z` = 99.3942,`orientation` = 0.593412,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 2716;
UPDATE `gameobject` SET `position_x` = -14468.3,`position_y` = 457.6,`position_z` = 15.1661,`orientation` = 0.139626,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 143230;
UPDATE `gameobject` SET `position_x` = -733.3,`position_y` = -5600.06,`position_z` = 24.9447,`orientation` = 2.14675,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 178444;
UPDATE `gameobject` SET `position_x` = 3466.96,`position_y` = -4985.37,`position_z` = 195.424,`orientation` = -2.35619,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 175487;
UPDATE `gameobject` SET `position_x` = 1596.14,`position_y` = 269.916,`position_z` = -53.1671,`orientation` = -1.57952,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 58606;
UPDATE `gameobject` SET `position_x` = -247.79,`position_y` = -990.699,`position_z` = 16.2164,`orientation` = -0.174534,`rotation0` = 0,`rotation1` = 0,`rotation2` = -0.0871553,`rotation3` = 0.996195 WHERE `id` = 19554;
UPDATE `gameobject` SET `position_x` = -7115.47,`position_y` = -3833.45,`position_z` = 9.44576,`orientation` = 2.07694,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 142071;
UPDATE `gameobject` SET `position_x` = -4855.03,`position_y` = 742.434,`position_z` = 249.325,`orientation` = -0.078541,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 90567;
UPDATE `gameobject` SET `position_x` = -12033.5,`position_y` = -544.274,`position_z` = 14.4719,`orientation` = -2.46091,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 20691;
UPDATE `gameobject` SET `position_x` = 5703.49,`position_y` = -4504.99,`position_z` = 762.929,`orientation` = 0.392698,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 175587;
UPDATE `gameobject` SET `position_x` = -7455.4,`position_y` = -2194.29,`position_z` = 165.309,`orientation` = -1.6057,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 175246;
UPDATE `gameobject` SET `position_x` = -5056.14,`position_y` = -258.076,`position_z` = 441.288,`orientation` = 2.04203,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 149419;
UPDATE `gameobject` SET `position_x` = -10457.8,`position_y` = -3807.79,`position_z` = 18.0667,`orientation` = 1.98095,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 179554;
UPDATE `gameobject` SET `position_x` = 1600.37,`position_y` = 210.108,`position_z` = -53.283,`orientation` = 1.56207,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 58608;
UPDATE `gameobject` SET `position_x` = 92.1316,`position_y` = -57.3277,`position_z` = 19.4242,`orientation` = 2.36492,`rotation0` = 0.0634027,`rotation1` = 0.166318,`rotation2` = 0.910466,`rotation3` = 0.373323 WHERE `id` = 19562;
UPDATE `gameobject` SET `position_x` = 1631.32,`position_y` = 254.778,`position_z` = -34.3416,`orientation` = -2.62672,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 58600;
UPDATE `gameobject` SET `position_x` = -7199.53,`position_y` = -2321.68,`position_z` = -227.072,`orientation` = 1.64061,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 164957;
UPDATE `gameobject` SET `position_x` = -9135.07,`position_y` = -1050.37,`position_z` = 70.5258,`orientation` = -1.63188,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 20923;
UPDATE `gameobject` SET `position_x` = -2976.94,`position_y` = 2743.2,`position_z` = 53.0054,`orientation` = -2.40855,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 144063;
UPDATE `gameobject` SET `position_x` = -1152.77,`position_y` = 177.588,`position_z` = 0.451798,`orientation` = 3.14159,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 92013;
UPDATE `gameobject` SET `position_x` = -974.429,`position_y` = -4406.92,`position_z` = 29.2641,`orientation` = -2.09439,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 3192;
UPDATE `gameobject` SET `position_x` = 2485.43,`position_y` = 22.1354,`position_z` = 26.8835,`orientation` = 3.05432,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 1557;
UPDATE `gameobject` SET `position_x` = -8956.6,`position_y` = 1008.58,`position_z` = 122.038,`orientation` = 0.6545,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 17251;
UPDATE `gameobject` SET `position_x` = 1551.94,`position_y` = 349.372,`position_z` = -57.73,`orientation` = -1.18682,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 58615;
UPDATE `gameobject` SET `position_x` = 10709.6,`position_y` = 762.342,`position_z` = 1320.24,`orientation` = 3.14159,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 19549;
UPDATE `gameobject` SET `position_x` = -10266.3,`position_y` = 54.1146,`position_z` = 41.828,`orientation` = 0.018691,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 37;
UPDATE `gameobject` SET `position_x` = -8953.95,`position_y` = 1010.44,`position_z` = 122.038,`orientation` = -2.4871,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 17279;
UPDATE `gameobject` SET `position_x` = -4763.4,`position_y` = -1036.58,`position_z` = 512.188,`orientation` = -2.23402,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 143334;
UPDATE `gameobject` SET `position_x` = -10357.7,`position_y` = -2747.54,`position_z` = 17.3974,`orientation` = -2.83616,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 2553;
UPDATE `gameobject` SET `position_x` = 307.906,`position_y` = -4662.34,`position_z` = 16.3877,`orientation` = -3.14159,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 31574;
UPDATE `gameobject` SET `position_x` = -9974.27,`position_y` = -3657.53,`position_z` = 21.9236,`orientation` = -1.71042,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 50936;
UPDATE `gameobject` SET `position_x` = -6198.54,`position_y` = -2929.79,`position_z` = 214.336,`orientation` = 0.802851,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 124388;
UPDATE `gameobject` SET `position_x` = 5576.07,`position_y` = 147.814,`position_z` = 28.9071,`orientation` = 1.02974,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 17189;
UPDATE `gameobject` SET `position_x` = 1818.3,`position_y` = -4402.07,`position_z` = -17.8275,`orientation` = 2.68781,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 179596;
UPDATE `gameobject` SET `position_x` = -247.695,`position_y` = -990.196,`position_z` = 18.3119,`orientation` = -0.226892,`rotation0` = 0.0779548,`rotation1` = -0.00888157,`rotation2` = -0.112854,`rotation3` = 0.990509 WHERE `id` = 19553;
UPDATE `gameobject` SET `position_x` = -5376.7,`position_y` = 2283.4,`position_z` = -2.06862,`orientation` = 2.0944,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 164909;
UPDATE `gameobject` SET `position_x` = -8427.56,`position_y` = 631.026,`position_z` = 95.7472,`orientation` = 2.28742,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 24746;
UPDATE `gameobject` SET `position_x` = 633.42,`position_y` = 359.589,`position_z` = 52.0103,`orientation` = -3.08923,`rotation0` = -0.139589,`rotation1` = -0.115725,`rotation2` = -0.982527,`rotation3` = 0.0419993 WHERE `id` = 19569;
UPDATE `gameobject` SET `position_x` = -353.081,`position_y` = 1747.82,`position_z` = 139.57,`orientation` = -1.37008,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 3892;
UPDATE `gameobject` SET `position_x` = -9849.81,`position_y` = 1290.18,`position_z` = 41.887,`orientation` = -0.802851,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 290;
UPDATE `gameobject` SET `position_x` = 6266.67,`position_y` = -2000.02,`position_z` = 573.426,`orientation` = -1.02974,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 174594;
UPDATE `gameobject` SET `position_x` = 1632.57,`position_y` = -3075.2,`position_z` = 85.9586,`orientation` = -0.802851,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 21004;
UPDATE `gameobject` SET `position_x` = -1417.55,`position_y` = 2817.21,`position_z` = 112.341,`orientation` = 2.93215,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 178827;
UPDATE `gameobject` SET `position_x` = 1548.17,`position_y` = 142.028,`position_z` = -56.9035,`orientation` = -2.03331,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 58625;
UPDATE `gameobject` SET `position_x` = -3105.46,`position_y` = -1201.16,`position_z` = 85.2409,`orientation` = 1.09956,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 3076;
UPDATE `gameobject` SET `position_x` = 6313.35,`position_y` = 541.665,`position_z` = 13.2845,`orientation` = -1.78896,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 17182;
UPDATE `gameobject` SET `position_x` = -6924.42,`position_y` = -3345.08,`position_z` = 243.462,`orientation` = -0.986111,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 2875;
UPDATE `gameobject` SET `position_x` = 1232.23,`position_y` = -2571.76,`position_z` = 90.4589,`orientation` = -1.71042,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 178832;
UPDATE `gameobject` SET `position_x` = 1694.62,`position_y` = 286.703,`position_z` = -56.5023,`orientation` = 0.445059,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 58617;
UPDATE `gameobject` SET `position_x` = -1423.31,`position_y` = 2926.35,`position_z` = 135.388,`orientation` = 1.67552,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 177444;
UPDATE `gameobject` SET `position_x` = -8684.69,`position_y` = 880.801,`position_z` = 97.394,`orientation` = 3.81354,`rotation0` = 0,`rotation1` = 0,`rotation2` = -0.944089,`rotation3` = 0.329691 WHERE `id` = 2106;
UPDATE `gameobject` SET `position_x` = 3347.26,`position_y` = -694.841,`position_z` = 159.843,`orientation` = 1.55334,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 178147;
UPDATE `gameobject` SET `position_x` = 265.02,`position_y` = -2806.68,`position_z` = 123.37,`orientation` = 2.54818,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 144071;
UPDATE `gameobject` SET `position_x` = -602.425,`position_y` = -4250.57,`position_z` = 37.5115,`orientation` = 3.14159,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 3084;
UPDATE `gameobject` SET `position_x` = -82.7896,`position_y` = 1692.18,`position_z` = 88.7181,`orientation` = -0.994838,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 50961;
UPDATE `gameobject` SET `position_x` = 689.519,`position_y` = 995.651,`position_z` = 33.5328,`orientation` = -2.03331,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 1593;
UPDATE `gameobject` SET `position_x` = 1754.6,`position_y` = -1735.33,`position_z` = 59.2001,`orientation` = 0.209439,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 176991;
UPDATE `gameobject` SET `position_x` = -1557.78,`position_y` = -3026.11,`position_z` = 14.7075,`orientation` = -2.61799,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 2687;
UPDATE `gameobject` SET `position_x` = -383.672,`position_y` = 1766.89,`position_z` = 139.436,`orientation` = -1.23046,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 174847;
UPDATE `gameobject` SET `position_x` = 2997.61,`position_y` = -2860.27,`position_z` = 107.63,`orientation` = 1.11701,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 177789;
UPDATE `gameobject` SET `position_x` = -340.531,`position_y` = 1767.06,`position_z` = 139.618,`orientation` = -0.977384,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 3909;
UPDATE `gameobject` SET `position_x` = -8701.68,`position_y` = 712.72,`position_z` = 97.6471,`orientation` = 5.37562,`rotation0` = 0,`rotation1` = 0,`rotation2` = -0.43837,`rotation3` = 0.898795 WHERE `id` = 2105;
UPDATE `gameobject` SET `position_x` = -1922.37,`position_y` = 1808.77,`position_z` = 66.7608,`orientation` = -2.42601,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 177365;
UPDATE `gameobject` SET `position_x` = -5408.02,`position_y` = -2878.55,`position_z` = 342.552,`orientation` = -1.5708,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 301;
UPDATE `gameobject` SET `position_x` = 6437.44,`position_y` = 397.496,`position_z` = 11.7038,`orientation` = -1.95477,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 177187;
UPDATE `gameobject` SET `position_x` = -8806.95,`position_y` = 956.342,`position_z` = 112.986,`orientation` = 3.81354,`rotation0` = 0,`rotation1` = 0,`rotation2` = -0.944089,`rotation3` = 0.329691 WHERE `id` = 25341;
UPDATE `gameobject` SET `position_x` = 3490.97,`position_y` = -5131.95,`position_z` = 85.1316,`orientation` = 0.305432,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 149420;
UPDATE `gameobject` SET `position_x` = -8684.51,`position_y` = 709.813,`position_z` = 109.421,`orientation` = 3.81354,`rotation0` = 0,`rotation1` = 0,`rotation2` = -0.944089,`rotation3` = 0.329691 WHERE `id` = 25340;
UPDATE `gameobject` SET `position_x` = -8556.2,`position_y` = 666.567,`position_z` = 103.701,`orientation` = 5.38434,`rotation0` = 0,`rotation1` = 0,`rotation2` = -0.434444,`rotation3` = 0.900699 WHERE `id` = 25338;
UPDATE `gameobject` SET `position_x` = -1240.52,`position_y` = 104.844,`position_z` = 128.592,`orientation` = 2.80998,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 50469;
UPDATE `gameobject` SET `position_x` = 8071.29,`position_y` = -3843.42,`position_z` = 689.28,`orientation` = -1.43117,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 177684;
UPDATE `gameobject` SET `position_x` = 3184.06,`position_y` = 190.81,`position_z` = 4.61263,`orientation` = 5.55407,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 19862;
UPDATE `gameobject` SET `position_x` = -2076.96,`position_y` = -2135.19,`position_z` = 21.1222,`orientation` = 3.08051,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 103772;
UPDATE `gameobject` SET `position_x` = 5533.32,`position_y` = -933.35,`position_z` = 376.883,`orientation` = 1.22173,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 174709;
UPDATE `gameobject` SET `position_x` = -11331.5,`position_y` = -962.01,`position_z` = 30.0434,`orientation` = 2.38879,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 157636;
UPDATE `gameobject` SET `position_x` = -5608.29,`position_y` = -1501.34,`position_z` = 398.99,`orientation` = 0,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 1570;
UPDATE `gameobject` SET `position_x` = 2571.7,`position_y` = -46.7431,`position_z` = 33.4288,`orientation` = -2.96706,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 1586;
UPDATE `gameobject` SET `position_x` = 3611.72,`position_y` = 1144.3,`position_z` = 9.75088,`orientation` = 1.43117,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 178247;
UPDATE `gameobject` SET `position_x` = 2655.95,`position_y` = -678.247,`position_z` = 111.193,`orientation` = 0.427606,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 178844;
UPDATE `gameobject` SET `position_x` = -4810.88,`position_y` = -1177.32,`position_z` = 505.397,`orientation` = 1.50098,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 143338;
UPDATE `gameobject` SET `position_x` = -14419.3,`position_y` = 415.404,`position_z` = 22.63,`orientation` = -0.514874,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 59853;
UPDATE `gameobject` SET `position_x` = -8705.89,`position_y` = 709.364,`position_z` = 103.556,`orientation` = 3.81354,`rotation0` = 0,`rotation1` = 0,`rotation2` = -0.944089,`rotation3` = 0.329691 WHERE `id` = 63197;
UPDATE `gameobject` SET `position_x` = 1914.1,`position_y` = -1638.53,`position_z` = 60.3946,`orientation` = 2.60054,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 175926;
UPDATE `gameobject` SET `position_x` = -4328.22,`position_y` = -3004.77,`position_z` = 35.538,`orientation` = -2.93215,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 19905;
UPDATE `gameobject` SET `position_x` = -8690.85,`position_y` = 472.158,`position_z` = 96.2616,`orientation` = 0.663225,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0.325568,`rotation3` = 0.945519 WHERE `id` = 2108;
UPDATE `gameobject` SET `position_x` = -4750.57,`position_y` = -3389.01,`position_z` = 284.88,`orientation` = -2.30383,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 1585;
UPDATE `gameobject` SET `position_x` = -42.8271,`position_y` = -2471.28,`position_z` = 119.413,`orientation` = -1.53589,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 144066;
UPDATE `gameobject` SET `position_x` = -485.261,`position_y` = -1343.86,`position_z` = 53.6516,`orientation` = 2.58309,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 1721;
UPDATE `gameobject` SET `position_x` = -4831.21,`position_y` = -973.333,`position_z` = 464.636,`orientation` = 1.9984,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 171761;
UPDATE `gameobject` SET `position_x` = 5633.84,`position_y` = 166.193,`position_z` = 32.2765,`orientation` = 3.14159,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 16393;
UPDATE `gameobject` SET `position_x` = -4890.83,`position_y` = -898.608,`position_z` = 503.168,`orientation` = 1.91986,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 32424;
UPDATE `gameobject` SET `position_x` = -7078.09,`position_y` = -3800.28,`position_z` = 9.22767,`orientation` = -3.01069,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 151981;
UPDATE `gameobject` SET `position_x` = -1985.62,`position_y` = 1944.33,`position_z` = 62.1731,`orientation` = -0.174533,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 177366;
UPDATE `gameobject` SET `position_x` = -9336.17,`position_y` = -986.384,`position_z` = 67.191,`orientation` = 3.14159,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 55;
UPDATE `gameobject` SET `position_x` = -7452.62,`position_y` = -2197.98,`position_z` = 165.769,`orientation` = -0.017453,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 175249;
UPDATE `gameobject` SET `position_x` = -7978.56,`position_y` = -5495.29,`position_z` = 7.52451,`orientation` = 1.74533,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 142184;
UPDATE `gameobject` SET `position_x` = -3586.88,`position_y` = -1996.54,`position_z` = 116.154,`orientation` = 1.37881,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 9630;
UPDATE `gameobject` SET `position_x` = -310.74,`position_y` = 1758.49,`position_z` = 139.436,`orientation` = 1.91113,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 3901;
UPDATE `gameobject` SET `position_x` = 342.653,`position_y` = 1249.23,`position_z` = 81.2299,`orientation` = 1.27409,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 1689;
UPDATE `gameobject` SET `position_x` = 7083.71,`position_y` = 193.24,`position_z` = 0.820762,`orientation` = -3.01069,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 17183;
UPDATE `gameobject` SET `position_x` = -4773.95,`position_y` = -1190.97,`position_z` = 509.432,`orientation` = 0.462513,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 171742;
UPDATE `gameobject` SET `position_x` = 825.53,`position_y` = -2686.73,`position_z` = 91.6111,`orientation` = -0.829032,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 4141;
UPDATE `gameobject` SET `position_x` = 1802.02,`position_y` = 726.09,`position_z` = 48.9915,`orientation` = -2.56563,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 37098;
UPDATE `gameobject` SET `position_x` = -11030.4,`position_y` = -1633.73,`position_z` = 27.9784,`orientation` = 1.59698,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 177247;
UPDATE `gameobject` SET `position_x` = 1630.96,`position_y` = 225.036,`position_z` = -33.7029,`orientation` = 2.66163,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 113752;
UPDATE `gameobject` SET `position_x` = -8576.98,`position_y` = 671.771,`position_z` = 109.566,`orientation` = 5.38434,`rotation0` = 0,`rotation1` = 0,`rotation2` = -0.434444,`rotation3` = 0.900699 WHERE `id` = 25339;
UPDATE `gameobject` SET `position_x` = -3734.91,`position_y` = -2530.63,`position_z` = 73.2862,`orientation` = -0.802864,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 20992;
UPDATE `gameobject` SET `position_x` = 1457.6,`position_y` = -1275.34,`position_z` = 69.4593,`orientation` = -2.37365,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 176192;
UPDATE `gameobject` SET `position_x` = -1041.88,`position_y` = -214.582,`position_z` = 159.212,`orientation` = 2.90597,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 50520;
UPDATE `gameobject` SET `position_x` = -928.168,`position_y` = -3694.26,`position_z` = 7.475,`orientation` = 1.36136,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 68865;
UPDATE `gameobject` SET `position_x` = 5771.17,`position_y` = 105.759,`position_z` = 35.0185,`orientation` = 1.4399,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 17188;
UPDATE `gameobject` SET `position_x` = -2930.95,`position_y` = 2817.98,`position_z` = 71.2819,`orientation` = -1.6057,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 142186;
UPDATE `gameobject` SET `position_x` = -4608.19,`position_y` = -1216.53,`position_z` = -55.8168,`orientation` = -1.11495,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 10388;
UPDATE `gameobject` SET `position_x` = -8649.44,`position_y` = 475.233,`position_z` = 102.919,`orientation` = 5.37562,`rotation0` = 0,`rotation1` = 0,`rotation2` = -0.43837,`rotation3` = 0.898795 WHERE `id` = 28033;
UPDATE `gameobject` SET `position_x` = -8547.07,`position_y` = 499.236,`position_z` = 99.3676,`orientation` = 5.38434,`rotation0` = 0,`rotation1` = 0,`rotation2` = -0.434444,`rotation3` = 0.900699 WHERE `id` = 28034;
UPDATE `gameobject` SET `position_x` = -4348.37,`position_y` = -2607.68,`position_z` = 38.2624,`orientation` = -2.18166,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 2555;
UPDATE `gameobject` SET `position_x` = -6829.23,`position_y` = -2874.29,`position_z` = 9.19099,`orientation` = -1.18682,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 178829;
UPDATE `gameobject` SET `position_x` = -8604.14,`position_y` = 494.375,`position_z` = 115.383,`orientation` = 0.67195,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0.32969,`rotation3` = 0.944089 WHERE `id` = 25337;
UPDATE `gameobject` SET `position_x` = -1527.43,`position_y` = -2648.48,`position_z` = 92.1057,`orientation` = 1.06651,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 6908;
UPDATE `gameobject` SET `position_x` = 1753.62,`position_y` = 60.143,`position_z` = -55.9975,`orientation` = 2.34747,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 58611;
UPDATE `gameobject` SET `position_x` = -459.514,`position_y` = 2611.73,`position_z` = 2.09082,`orientation` = 0.244346,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 177787;
UPDATE `gameobject` SET `position_x` = -12416.7,`position_y` = 168.672,`position_z` = 3.27947,`orientation` = -1.64061,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 1967;
UPDATE `gameobject` SET `position_x` = -4955.59,`position_y` = -1270.56,`position_z` = 508.418,`orientation` = 1.00356,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 143255;
UPDATE `gameobject` SET `position_x` = 2371.71,`position_y` = -1190.5,`position_z` = 89.1238,`orientation` = -1.7366,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 3722;
UPDATE `gameobject` SET `position_x` = -9224.19,`position_y` = -1234.33,`position_z` = 73.4313,`orientation` = -0.95993,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 56;
UPDATE `gameobject` SET `position_x` = -2544.29,`position_y` = -711.974,`position_z` = -9.77772,`orientation` = 3.14159,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 2913;
UPDATE `gameobject` SET `position_x` = -8620.57,`position_y` = 515.028,`position_z` = 115.383,`orientation` = 0.67195,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0.32969,`rotation3` = 0.944089 WHERE `id` = 25336;
UPDATE `gameobject` SET `position_x` = 1575.17,`position_y` = 253.843,`position_z` = -56.0906,`orientation` = -0.802852,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 113570;
UPDATE `gameobject` SET `position_x` = -249.25,`position_y` = -992.101,`position_z` = 16.4972,`orientation` = -1.22173,`rotation0` = -0.143518,`rotation1` = -0.0847635,`rotation2` = -0.574211,`rotation3` = 0.801561 WHERE `id` = 19557;
UPDATE `gameobject` SET `position_x` = 6311.27,`position_y` = 857.436,`position_z` = -14.0184,`orientation` = -2.62672,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 176189;
UPDATE `gameobject` SET `position_x` = -5495.18,`position_y` = -457.479,`position_z` = 395.44,`orientation` = -0.287979,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 26449;
UPDATE `gameobject` SET `position_x` = 2537.49,`position_y` = -900.56,`position_z` = 56.3891,`orientation` = 2.40855,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 178464;
UPDATE `gameobject` SET `position_x` = 2923.08,`position_y` = -4946.41,`position_z` = 95.1625,`orientation` = -3.002,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 177264;
UPDATE `gameobject` SET `position_x` = -1322.29,`position_y` = -1848.53,`position_z` = 63.3485,`orientation` = 1.19555,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 2679;
UPDATE `gameobject` SET `position_x` = -8700.69,`position_y` = 730.15,`position_z` = 109.421,`orientation` = 3.81354,`rotation0` = 0,`rotation1` = 0,`rotation2` = -0.944089,`rotation3` = 0.329691 WHERE `id` = 63198;
UPDATE `gameobject` SET `position_x` = -486.062,`position_y` = 121.95,`position_z` = 60.4183,`orientation` = -2.26893,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 1759;
UPDATE `gameobject` SET `position_x` = -7118.87,`position_y` = -3795.27,`position_z` = 8.37656,`orientation` = -0.235619,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 150075;
UPDATE `gameobject` SET `position_x` = -6955.58,`position_y` = -4102.33,`position_z` = 285.789,`orientation` = -1.57079,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 2858;
UPDATE `gameobject` SET `position_x` = -8458.72,`position_y` = 695.654,`position_z` = 111.569,`orientation` = 2.24275,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0.900698,`rotation3` = 0.434446 WHERE `id` = 28046;
UPDATE `gameobject` SET `position_x` = -11064.6,`position_y` = -1539.47,`position_z` = 27.9784,`orientation` = 1.59698,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 177250;
UPDATE `gameobject` SET `position_x` = -4707.97,`position_y` = -1214.16,`position_z` = 504.101,`orientation` = 0.68068,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 171531;
UPDATE `gameobject` SET `position_x` = 1943.25,`position_y` = -1652.02,`position_z` = 59.4557,`orientation` = -3.08923,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 175925;
UPDATE `gameobject` SET `position_x` = 1475.09,`position_y` = 429.974,`position_z` = -68.8891,`orientation` = -0.008727,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 177884;
UPDATE `gameobject` SET `position_x` = -2002.06,`position_y` = 1866.33,`position_z` = 52.4633,`orientation` = -3.08923,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 177367;
UPDATE `gameobject` SET `position_x` = -8779.16,`position_y` = 666.676,`position_z` = 104.138,`orientation` = 5.38434,`rotation0` = 0,`rotation1` = 0,`rotation2` = -0.434444,`rotation3` = 0.900699 WHERE `id` = 2099;
UPDATE `gameobject` SET `position_x` = 1622,`position_y` = 213.146,`position_z` = -30.3544,`orientation` = 2.34747,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 177064;
UPDATE `gameobject` SET `position_x` = -233.926,`position_y` = -3114.39,`position_z` = 125.674,`orientation` = -2.21657,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 50937;
UPDATE `gameobject` SET `position_x` = -4010.62,`position_y` = -3813.58,`position_z` = 37.3444,`orientation` = -0.671953,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 20727;
UPDATE `gameobject` SET `position_x` = -11032.8,`position_y` = -1539.14,`position_z` = 29.4563,`orientation` = 1.59697,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 177256;
UPDATE `gameobject` SET `position_x` = -247.686,`position_y` = -990.168,`position_z` = 17.7513,`orientation` = -0.226892,`rotation0` = 0.0779548,`rotation1` = -0.00888157,`rotation2` = -0.112854,`rotation3` = 0.990509 WHERE `id` = 19555;
UPDATE `gameobject` SET `position_x` = 23.7603,`position_y` = -1736.37,`position_z` = 108.722,`orientation` = 0.253073,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 3642;
UPDATE `gameobject` SET `position_x` = -7649.36,`position_y` = -629.479,`position_z` = 201.412,`orientation` = 2.09439,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 179782;
UPDATE `gameobject` SET `position_x` = -11014,`position_y` = 187.361,`position_z` = 28.7922,`orientation` = -1.23918,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 21052;
UPDATE `gameobject` SET `position_x` = -8851.11,`position_y` = 920.184,`position_z` = 114.328,`orientation` = 0.506145,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0.25038,`rotation3` = 0.968148 WHERE `id` = 25351;
UPDATE `gameobject` SET `position_x` = -14238.8,`position_y` = 301.05,`position_z` = 27.1206,`orientation` = 3.12414,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 3217;
UPDATE `gameobject` SET `position_x` = -3288.32,`position_y` = -948.694,`position_z` = 8.9405,`orientation` = 2.45219,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 261;
UPDATE `gameobject` SET `position_x` = -933.51,`position_y` = -3480.52,`position_z` = 51.3067,`orientation` = 3.14159,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 2726;
UPDATE `gameobject` SET `position_x` = -6434.21,`position_y` = -4157.25,`position_z` = 286.794,`orientation` = -3.14159,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 2842;
UPDATE `gameobject` SET `position_x` = -4608.83,`position_y` = -1008.52,`position_z` = 504.586,`orientation` = 1.85005,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 142341;
UPDATE `gameobject` SET `position_x` = 9650.52,`position_y` = 2279.11,`position_z` = 1346.62,`orientation` = 0.314159,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 19877;
UPDATE `gameobject` SET `position_x` = -8551.27,`position_y` = 495.743,`position_z` = 105.725,`orientation` = 3.81354,`rotation0` = 0,`rotation1` = 0,`rotation2` = -0.944089,`rotation3` = 0.329691 WHERE `id` = 28047;
UPDATE `gameobject` SET `position_x` = -7625.35,`position_y` = -1226.51,`position_z` = 231.776,`orientation` = -2.77262,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 179585;
UPDATE `gameobject` SET `position_x` = -8893.7,`position_y` = 749.8,`position_z` = 105.477,`orientation` = 5.38434,`rotation0` = 0,`rotation1` = 0,`rotation2` = -0.434444,`rotation3` = 0.900699 WHERE `id` = 25348;
UPDATE `gameobject` SET `position_x` = -2175.81,`position_y` = -1610.09,`position_z` = -48.3808,`orientation` = 1.32645,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 2710;
UPDATE `gameobject` SET `position_x` = 1876.89,`position_y` = 1624.95,`position_z` = 94.7472,`orientation` = -1.8675,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 178090;
UPDATE `gameobject` SET `position_x` = -9765.27,`position_y` = -1565.24,`position_z` = 41.4964,`orientation` = -0.305432,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 85563;
UPDATE `gameobject` SET `position_x` = -1279.63,`position_y` = -2524.15,`position_z` = 22.7172,`orientation` = 0.008727,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 2713;
UPDATE `gameobject` SET `position_x` = -8863.89,`position_y` = 943.257,`position_z` = 114.328,`orientation` = 0.506145,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0.25038,`rotation3` = 0.968148 WHERE `id` = 25350;
UPDATE `gameobject` SET `position_x` = 1754.7,`position_y` = -1735.39,`position_z` = 60.5517,`orientation` = -1.37008,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 176994;
UPDATE `gameobject` SET `position_x` = -8479.61,`position_y` = 679.04,`position_z` = 111.569,`orientation` = 2.24275,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0.900698,`rotation3` = 0.434446 WHERE `id` = 28044;
UPDATE `gameobject` SET `position_x` = 1609.18,`position_y` = 260.417,`position_z` = -56.0906,`orientation` = -2.37365,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 113572;
UPDATE `gameobject` SET `position_x` = -12850.8,`position_y` = -819.736,`position_z` = 54.8824,`orientation` = 3.14159,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 2893;
UPDATE `gameobject` SET `position_x` = 9502.27,`position_y` = 720.536,`position_z` = 1255.44,`orientation` = -0.497418,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 7923;
UPDATE `gameobject` SET `position_x` = -7024.78,`position_y` = -1786.5,`position_z` = 265.828,`orientation` = 2.16421,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 173265;
UPDATE `gameobject` SET `position_x` = -8912.03,`position_y` = 793.969,`position_z` = 87.4019,`orientation` = 3.81354,`rotation0` = 0,`rotation1` = 0,`rotation2` = -0.944089,`rotation3` = 0.329691 WHERE `id` = 2096;
UPDATE `gameobject` SET `position_x` = 10855.3,`position_y` = 2052.4,`position_z` = 1327.59,`orientation` = 2.60054,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 6752;
UPDATE `gameobject` SET `position_x` = -4689.41,`position_y` = -1434.1,`position_z` = -50.5466,`orientation` = -2.02458,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 176195;
UPDATE `gameobject` SET `position_x` = -1703.56,`position_y` = 1747.92,`position_z` = 60.5614,`orientation` = -2.05949,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 177397;
UPDATE `gameobject` SET `position_x` = -1275.51,`position_y` = -3012.4,`position_z` = 71.2432,`orientation` = -2.86234,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 3737;
UPDATE `gameobject` SET `position_x` = -8873.05,`position_y` = 766.222,`position_z` = 105.477,`orientation` = 5.38434,`rotation0` = 0,`rotation1` = 0,`rotation2` = -0.434444,`rotation3` = 0.900699 WHERE `id` = 25349;
UPDATE `gameobject` SET `position_x` = -8808,`position_y` = 938.986,`position_z` = 101.841,`orientation` = 5.37562,`rotation0` = 0,`rotation1` = 0,`rotation2` = -0.43837,`rotation3` = 0.898795 WHERE `id` = 23301;
UPDATE `gameobject` SET `position_x` = -2810.56,`position_y` = -984.148,`position_z` = -13.3295,`orientation` = 2.06822,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 112948;
UPDATE `gameobject` SET `position_x` = -3917.21,`position_y` = -890.293,`position_z` = 0.322858,`orientation` = 0.593411,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 2734;
UPDATE `gameobject` SET `position_x` = -5028.5,`position_y` = -1187.64,`position_z` = 506.21,`orientation` = 0.5236,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 143254;
UPDATE `gameobject` SET `position_x` = -6831.69,`position_y` = -1222.37,`position_z` = 240.014,`orientation` = 1.78024,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 152034;
UPDATE `gameobject` SET `position_x` = -2367.14,`position_y` = -2510.34,`position_z` = 75.344,`orientation` = 1.8326,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 2652;
UPDATE `gameobject` SET `position_x` = -6946.26,`position_y` = -3722.2,`position_z` = 45.8472,`orientation` = -2.87107,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 151976;
UPDATE `gameobject` SET `position_x` = -933.02,`position_y` = -3685.36,`position_z` = 13.8213,`orientation` = -2.74889,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 174858;
UPDATE `gameobject` SET `position_x` = -1047.04,`position_y` = -311.059,`position_z` = 161.673,`orientation` = 1.77151,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 177205;
UPDATE `gameobject` SET `position_x` = 252.513,`position_y` = 2963.7,`position_z` = 1.64204,`orientation` = 0.907571,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 177673;
UPDATE `gameobject` SET `position_x` = 92.4392,`position_y` = -55.4797,`position_z` = 21.1166,`orientation` = -0.69813,`rotation0` = 0.095253,`rotation1` = -0.0439034,`rotation2` = -0.339275,`rotation3` = 0.934822 WHERE `id` = 19560;
UPDATE `gameobject` SET `position_x` = -7454.07,`position_y` = -2196.13,`position_z` = 166.703,`orientation` = -2.53073,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 175247;
UPDATE `gameobject` SET `position_x` = -1060.18,`position_y` = -309.301,`position_z` = 161.102,`orientation` = 1.16064,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 177209;
UPDATE `gameobject` SET `position_x` = -11567.5,`position_y` = -565.939,`position_z` = 33.7841,`orientation` = -1.13446,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 287;
UPDATE `gameobject` SET `position_x` = -8529.82,`position_y` = 495.843,`position_z` = 111.292,`orientation` = 3.81354,`rotation0` = 0,`rotation1` = 0,`rotation2` = -0.944089,`rotation3` = 0.329691 WHERE `id` = 28045;
UPDATE `gameobject` SET `position_x` = -8897.94,`position_y` = 909.434,`position_z` = 110.7,`orientation` = 5.20108,`rotation0` = 0,`rotation1` = 0,`rotation2` = -0.515037,`rotation3` = 0.857168 WHERE `id` = 23300;
UPDATE `gameobject` SET `position_x` = -8439.52,`position_y` = 650.01,`position_z` = 93.5751,`orientation` = 0.663225,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0.325568,`rotation3` = 0.945519 WHERE `id` = 2098;
UPDATE `gameobject` SET `position_x` = -4791.75,`position_y` = 3613.3,`position_z` = 12.5194,`orientation` = -2.33001,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 142179;
UPDATE `gameobject` SET `position_x` = -5609.25,`position_y` = -1502.27,`position_z` = 399.519,`orientation` = 1.5708,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 149024;
UPDATE `gameobject` SET `position_x` = -8707.29,`position_y` = 909.091,`position_z` = 102.03,`orientation` = 0.680677,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0.333806,`rotation3` = 0.942642 WHERE `id` = 23299;
UPDATE `gameobject` SET `position_x` = -4845.31,`position_y` = -1247.75,`position_z` = 506.022,`orientation` = -0.994838,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 171748;
UPDATE `gameobject` SET `position_x` = -876.186,`position_y` = -3901.82,`position_z` = 143.1,`orientation` = 1.27409,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 2701;
UPDATE `gameobject` SET `position_x` = -8559.69,`position_y` = 670.718,`position_z` = 97.8239,`orientation` = 0.663225,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0.325568,`rotation3` = 0.945519 WHERE `id` = 2102;
UPDATE `gameobject` SET `position_x` = -8709.44,`position_y` = 516.479,`position_z` = 107.884,`orientation` = 2.24275,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0.900698,`rotation3` = 0.434446 WHERE `id` = 25347;
UPDATE `gameobject` SET `position_x` = -569.5,`position_y` = 42.2739,`position_z` = 49.8843,`orientation` = -1.37881,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 1736;
UPDATE `gameobject` SET `position_x` = -4621.22,`position_y` = -1063.72,`position_z` = 510.227,`orientation` = 3.01942,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 142874;
UPDATE `gameobject` SET `position_x` = -8730.09,`position_y` = 500.051,`position_z` = 107.884,`orientation` = 2.24275,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0.900698,`rotation3` = 0.434446 WHERE `id` = 25346;
UPDATE `gameobject` SET `position_x` = -1553.61,`position_y` = -2490.54,`position_z` = 55.0079,`orientation` = 1.69297,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 2673;
UPDATE `gameobject` SET `position_x` = -8773.94,`position_y` = 612.495,`position_z` = 97.9492,`orientation` = 3.927,`rotation0` = 0,`rotation1` = 0,`rotation2` = -0.923879,`rotation3` = 0.382686 WHERE `id` = 2100;
UPDATE `gameobject` SET `position_x` = -247.622,`position_y` = -990.052,`position_z` = 17.2348,`orientation` = -0.226892,`rotation0` = 0.10287,`rotation1` = -0.0204544,`rotation2` = -0.111671,`rotation3` = 0.988195 WHERE `id` = 19556;
UPDATE `gameobject` SET `position_x` = 342.817,`position_y` = 1249.18,`position_z` = 80.7382,`orientation` = -1.8675,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 1688;
UPDATE `gameobject` SET `position_x` = 3327.59,`position_y` = -4203.74,`position_z` = 160.015,`orientation` = 3.07178,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 177747;
UPDATE `gameobject` SET `position_x` = -4898.03,`position_y` = -2722.11,`position_z` = 329.891,`orientation` = -2.56563,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 304;
UPDATE `gameobject` SET `position_x` = 1689.29,`position_y` = -1361.82,`position_z` = 70.1216,`orientation` = 1.85005,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 176988;
UPDATE `gameobject` SET `position_x` = -11490.5,`position_y` = -945.307,`position_z` = 29.399,`orientation` = 2.46091,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 288;
UPDATE `gameobject` SET `position_x` = -4887.03,`position_y` = -954.818,`position_z` = 510.13,`orientation` = 1.84132,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 171704;
UPDATE `gameobject` SET `position_x` = -8546.43,`position_y` = 516.729,`position_z` = 111.292,`orientation` = 3.81354,`rotation0` = 0,`rotation1` = 0,`rotation2` = -0.944089,`rotation3` = 0.329691 WHERE `id` = 126046;
UPDATE `gameobject` SET `position_x` = -7070.47,`position_y` = -3756.78,`position_z` = 8.57002,`orientation` = -0.095995,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 151977;
UPDATE `gameobject` SET `position_x` = -6276.06,`position_y` = -1557.95,`position_z` = -231.97,`orientation` = -3.03687,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 164955;
UPDATE `gameobject` SET `position_x` = -8980.3,`position_y` = 823.3,`position_z` = 113,`orientation` = 2.286,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 23296;
UPDATE `gameobject` SET `position_x` = -14353.5,`position_y` = 414.426,`position_z` = 41.6233,`orientation` = 1.95477,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 175948;
UPDATE `gameobject` SET `position_x` = -8822.23,`position_y` = 673.828,`position_z` = 98.4551,`orientation` = 0.471238,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0.233445,`rotation3` = 0.97237 WHERE `id` = 2101;
UPDATE `gameobject` SET `position_x` = -4675.36,`position_y` = -940.242,`position_z` = 504.033,`orientation` = 0.689404,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 32383;
UPDATE `gameobject` SET `position_x` = -725.769,`position_y` = -590.125,`position_z` = 24.1805,`orientation` = 3.14159,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 175933;
UPDATE `gameobject` SET `position_x` = 317.67,`position_y` = -4671.1,`position_z` = 16.1196,`orientation` = 2.97579,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 18076;
UPDATE `gameobject` SET `position_x` = -8508.36,`position_y` = 659.893,`position_z` = 99.9641,`orientation` = 0.60214,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0.296542,`rotation3` = 0.95502 WHERE `id` = 2131;
UPDATE `gameobject` SET `position_x` = 262.882,`position_y` = -2758.3,`position_z` = 122.553,`orientation` = 1.63188,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 142036;
UPDATE `gameobject` SET `position_x` = 639.812,`position_y` = 1290.94,`position_z` = 86.0389,`orientation` = 2.19039,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 1678;
UPDATE `gameobject` SET `position_x` = 5433.33,`position_y` = -666.653,`position_z` = 348.089,`orientation` = 1.65806,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 174713;
UPDATE `gameobject` SET `position_x` = -4468.35,`position_y` = -2898.64,`position_z` = 21.7621,`orientation` = -0.10472,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 19906;
UPDATE `gameobject` SET `position_x` = -1456.39,`position_y` = -2432.93,`position_z` = 59.1948,`orientation` = -2.87979,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 2685;
UPDATE `gameobject` SET `position_x` = 5111.2,`position_y` = -534.145,`position_z` = 296.677,`orientation` = 2.16421,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 176225;
UPDATE `gameobject` SET `position_x` = -8875.49,`position_y` = 754.33,`position_z` = 95.8672,`orientation` = 0.750491,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0.366501,`rotation3` = 0.930418 WHERE `id` = 2181;
UPDATE `gameobject` SET `position_x` = -1322.17,`position_y` = -1848.47,`position_z` = 63.3045,`orientation` = -0.375246,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 2678;
UPDATE `gameobject` SET `position_x` = -9247.36,`position_y` = -2151.6,`position_z` = 63.9334,`orientation` = 3.14159,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 47;
UPDATE `gameobject` SET `position_x` = -6116.46,`position_y` = -3299.53,`position_z` = 257.655,`orientation` = 2.87107,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 178833;
UPDATE `gameobject` SET `position_x` = -8843.62,`position_y` = 922.388,`position_z` = 101.183,`orientation` = 3.63901,`rotation0` = 0,`rotation1` = 0,`rotation2` = -0.969231,`rotation3` = 0.246154 WHERE `id` = 2128;
UPDATE `gameobject` SET `position_x` = 3398.7,`position_y` = -4998.99,`position_z` = 167.667,`orientation` = 2.3911,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 175488;
UPDATE `gameobject` SET `position_x` = -10957,`position_y` = 1563.67,`position_z` = 45.6177,`orientation` = -2.46091,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 3643;
UPDATE `gameobject` SET `position_x` = -5004.72,`position_y` = -1012.77,`position_z` = 510.462,`orientation` = -0.392699,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 143322;
UPDATE `gameobject` SET `position_x` = 1474.84,`position_y` = 364.133,`position_z` = -57.9933,`orientation` = -0.724311,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 36397;
UPDATE `gameobject` SET `position_x` = -11226.3,`position_y` = -1755.59,`position_z` = 4.38246,`orientation` = 1.59698,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 177048;
UPDATE `gameobject` SET `position_x` = -9500.56,`position_y` = 66.0789,`position_z` = 56.5629,`orientation` = 2.87979,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 95;
UPDATE `gameobject` SET `position_x` = -8578.51,`position_y` = 537.055,`position_z` = 101.237,`orientation` = 0.488691,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0.241921,`rotation3` = 0.970296 WHERE `id` = 2129;
UPDATE `gameobject` SET `position_x` = -8737.55,`position_y` = 704.929,`position_z` = 98.6947,`orientation` = 2.2602,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0.904454,`rotation3` = 0.426571 WHERE `id` = 2182;
UPDATE `gameobject` SET `position_x` = -8339.61,`position_y` = -2935.07,`position_z` = 8.62471,`orientation` = -2.12234,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 175491;
UPDATE `gameobject` SET `position_x` = -87.7195,`position_y` = -4274.56,`position_z` = 65.9037,`orientation` = -1.48353,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 178087;
UPDATE `gameobject` SET `position_x` = -11098.2,`position_y` = -1990.84,`position_z` = 49.4968,`orientation` = -2.46964,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 176578;
UPDATE `gameobject` SET `position_x` = -738.663,`position_y` = -621.415,`position_z` = 18.6241,`orientation` = 3.14159,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 1767;
UPDATE `gameobject` SET `position_x` = -9430.91,`position_y` = 62.5356,`position_z` = 56.7788,`orientation` = 3.14159,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 89;
UPDATE `gameobject` SET `position_x` = -2391.69,`position_y` = -1890.73,`position_z` = 95.5103,`orientation` = -2.04203,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 175786;
UPDATE `gameobject` SET `position_x` = -3098.4,`position_y` = 2765.83,`position_z` = 71.9319,`orientation` = 3.06305,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 142185;
UPDATE `gameobject` SET `position_x` = -1533.44,`position_y` = -2692.78,`position_z` = 91.2894,`orientation` = 2.91617,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 6906;
UPDATE `gameobject` SET `position_x` = -347.299,`position_y` = 1762.85,`position_z` = 138.371,`orientation` = 2.25148,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 176581;
UPDATE `gameobject` SET `position_x` = -2386.13,`position_y` = -390.918,`position_z` = -3.39068,`orientation` = 2.15548,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 15069;
UPDATE `gameobject` SET `position_x` = -11115.5,`position_y` = -512.672,`position_z` = 32.6047,`orientation` = 1.78098,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 59;
UPDATE `gameobject` SET `position_x` = -4173,`position_y` = -2137.15,`position_z` = 84.565,`orientation` = 0.628319,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 3644;
UPDATE `gameobject` SET `position_x` = -8735.72,`position_y` = 704.753,`position_z` = 98.0946,`orientation` = 3.831,`rotation0` = 0,`rotation1` = 0,`rotation2` = -0.941176,`rotation3` = 0.337918 WHERE `id` = 2113;
UPDATE `gameobject` SET `position_x` = -8723.86,`position_y` = 517.514,`position_z` = 96.5355,`orientation` = 0.637045,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0.313164,`rotation3` = 0.949699 WHERE `id` = 2115;
UPDATE `gameobject` SET `position_x` = -8508.7,`position_y` = 658.082,`position_z` = 100.564,`orientation` = 2.17293,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0.884987,`rotation3` = 0.465616 WHERE `id` = 103796;
UPDATE `gameobject` SET `position_x` = 1944.04,`position_y` = -1619.52,`position_z` = 65.8237,`orientation` = -2.33874,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 175924;
UPDATE `gameobject` SET `position_x` = -8828.86,`position_y` = 614.995,`position_z` = 93.5619,`orientation` = 3.81354,`rotation0` = 0,`rotation1` = 0,`rotation2` = -0.944088,`rotation3` = 0.329691 WHERE `id` = 2112;
UPDATE `gameobject` SET `position_x` = -3367.55,`position_y` = -3031.16,`position_z` = 33.4034,`orientation` = 1.90241,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 21084;
UPDATE `gameobject` SET `position_x` = 191.081,`position_y` = 2884.41,`position_z` = 2.96727,`orientation` = 1.6057,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 177786;
UPDATE `gameobject` SET `position_x` = 263.339,`position_y` = -267.679,`position_z` = 143.757,`orientation` = 1.44862,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 19876;
UPDATE `gameobject` SET `position_x` = -11096.3,`position_y` = -1540.47,`position_z` = 27.9916,`orientation` = 1.59698,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 177252;
UPDATE `gameobject` SET `position_x` = -8538.78,`position_y` = 681.123,`position_z` = 97.7989,`orientation` = 2.2602,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0.904454,`rotation3` = 0.426571 WHERE `id` = 2133;
UPDATE `gameobject` SET `position_x` = -8825.22,`position_y` = 959.159,`position_z` = 99.847,`orientation` = 5.4018,`rotation0` = 0,`rotation1` = 0,`rotation2` = -0.426568,`rotation3` = 0.904455 WHERE `id` = 24720;
UPDATE `gameobject` SET `position_x` = -8828.66,`position_y` = 616.824,`position_z` = 94.162,`orientation` = 5.38434,`rotation0` = 0,`rotation1` = 0,`rotation2` = -0.434444,`rotation3` = 0.900699 WHERE `id` = 2110;
UPDATE `gameobject` SET `position_x` = -9499.41,`position_y` = 66.8215,`position_z` = 56.012,`orientation` = -1.83259,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 91;
UPDATE `gameobject` SET `position_x` = -8825.4,`position_y` = 957.326,`position_z` = 99.247,`orientation` = 3.831,`rotation0` = 0,`rotation1` = 0,`rotation2` = -0.941176,`rotation3` = 0.337918 WHERE `id` = 103794;
UPDATE `gameobject` SET `position_x` = 1292.71,`position_y` = 1078.12,`position_z` = 53.1458,`orientation` = 0.733039,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 1676;
UPDATE `gameobject` SET `position_x` = -3367.02,`position_y` = -3031.36,`position_z` = 34.2687,`orientation` = 0.331614,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 21082;
UPDATE `gameobject` SET `position_x` = -10515.2,`position_y` = 1598.61,`position_z` = 44.0296,`orientation` = -1.50337,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 36;
UPDATE `gameobject` SET `position_x` = -8752.45,`position_y` = 551.904,`position_z` = 96.9932,`orientation` = 0.916297,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0.442288,`rotation3` = 0.896873 WHERE `id` = 2111;
UPDATE `gameobject` SET `position_x` = -8704.93,`position_y` = 865.779,`position_z` = 96.7633,`orientation` = 3.831,`rotation0` = 0,`rotation1` = 0,`rotation2` = -0.941176,`rotation3` = 0.337918 WHERE `id` = 2179;
UPDATE `gameobject` SET `position_x` = -7078.33,`position_y` = -3800.17,`position_z` = 8.55443,`orientation` = 1.7017,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 151982;
UPDATE `gameobject` SET `position_x` = -8843.1,`position_y` = 924.154,`position_z` = 101.783,`orientation` = 5.20981,`rotation0` = 0,`rotation1` = 0,`rotation2` = -0.511293,`rotation3` = 0.859407 WHERE `id` = 24721;
UPDATE `gameobject` SET `position_x` = -10123.2,`position_y` = 1058.27,`position_z` = 36.2985,`orientation` = -3.01069,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 21701;
UPDATE `gameobject` SET `position_x` = 263.437,`position_y` = -267.687,`position_z` = 145.032,`orientation` = 3.10669,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 1770;
UPDATE `gameobject` SET `position_x` = -7944.63,`position_y` = -2639.22,`position_z` = 218.211,`orientation` = 1.90241,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 160840;
UPDATE `gameobject` SET `position_x` = 1569.9,`position_y` = 267.807,`position_z` = -30.3544,`orientation` = -0.794124,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 58597;
UPDATE `gameobject` SET `position_x` = -2822.12,`position_y` = -3416.87,`position_z` = 34.1319,`orientation` = 1.40499,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 21075;
UPDATE `gameobject` SET `position_x` = -8839.24,`position_y` = 730.369,`position_z` = 97.2851,`orientation` = 5.22726,`rotation0` = 0,`rotation1` = 0,`rotation2` = -0.503774,`rotation3` = 0.863836 WHERE `id` = 2134;
UPDATE `gameobject` SET `position_x` = -9430.87,`position_y` = 64.5112,`position_z` = 56.7852,`orientation` = 0,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 90;
UPDATE `gameobject` SET `position_x` = -8845.38,`position_y` = 922.911,`position_z` = 101.783,`orientation` = 2.06821,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0.859406,`rotation3` = 0.511293 WHERE `id` = 2178;
UPDATE `gameobject` SET `position_x` = 351.649,`position_y` = -4854.58,`position_z` = 10.4196,`orientation` = 3.12414,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 31580;
UPDATE `gameobject` SET `position_x` = -11065.5,`position_y` = -1505.48,`position_z` = 27.9916,`orientation` = 1.59698,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 177254;
UPDATE `gameobject` SET `position_x` = -87.3667,`position_y` = -4274.53,`position_z` = 65.9519,`orientation` = 0,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 178089;
UPDATE `gameobject` SET `position_x` = -166.441,`position_y` = -342.88,`position_z` = 53.4926,`orientation` = -2.54818,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 1769;
UPDATE `gameobject` SET `position_x` = -753.649,`position_y` = -149.057,`position_z` = -29.6249,`orientation` = 3.14159,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 2909;
UPDATE `gameobject` SET `position_x` = -8841.02,`position_y` = 730.861,`position_z` = 96.6851,`orientation` = 0.514871,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0.254602,`rotation3` = 0.967046 WHERE `id` = 103793;
UPDATE `gameobject` SET `position_x` = -8711.52,`position_y` = 723.934,`position_z` = 97.0882,`orientation` = 3.831,`rotation0` = 0,`rotation1` = 0,`rotation2` = -0.941176,`rotation3` = 0.337918 WHERE `id` = 28032;
UPDATE `gameobject` SET `position_x` = -8750.62,`position_y` = 552.144,`position_z` = 97.5932,`orientation` = 5.62869,`rotation0` = 0,`rotation1` = 0,`rotation2` = -0.321439,`rotation3` = 0.94693 WHERE `id` = 2116;
UPDATE `gameobject` SET `position_x` = -2803.89,`position_y` = 2666.9,`position_z` = 73.4469,`orientation` = 3.14159,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 142187;
UPDATE `gameobject` SET `position_x` = -8276.58,`position_y` = -3025.49,`position_z` = 8.62509,`orientation` = 3.14159,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 175492;
UPDATE `gameobject` SET `position_x` = -8750.38,`position_y` = 550.318,`position_z` = 96.9932,`orientation` = 4.05789,`rotation0` = 0,`rotation1` = 0,`rotation2` = -0.896873,`rotation3` = 0.442289 WHERE `id` = 2119;
UPDATE `gameobject` SET `position_x` = -1033.96,`position_y` = -276.572,`position_z` = 161.18,`orientation` = -2.67908,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 177207;
UPDATE `gameobject` SET `position_x` = -3990,`position_y` = -3814.18,`position_z` = 34.4486,`orientation` = 2.99324,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 174728;
UPDATE `gameobject` SET `position_x` = -8873.72,`position_y` = 752.425,`position_z` = 96.1492,`orientation` = 3.89209,`rotation0` = 0,`rotation1` = 0,`rotation2` = -0.930417,`rotation3` = 0.366502 WHERE `id` = 2176;
UPDATE `gameobject` SET `position_x` = -7005.99,`position_y` = -1305.4,`position_z` = 259.5,`orientation` = 0.069813,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 149030;
UPDATE `gameobject` SET `position_x` = -8798.77,`position_y` = 580.371,`position_z` = 96.7434,`orientation` = 5.38434,`rotation0` = 0,`rotation1` = 0,`rotation2` = -0.434444,`rotation3` = 0.900699 WHERE `id` = 2190;
UPDATE `gameobject` SET `position_x` = -8839.73,`position_y` = 728.595,`position_z` = 97.0075,`orientation` = 3.65647,`rotation0` = 0,`rotation1` = 0,`rotation2` = -0.967046,`rotation3` = 0.254602 WHERE `id` = 2122;
UPDATE `gameobject` SET `position_x` = -1959.36,`position_y` = -2804.66,`position_z` = 80.9563,`orientation` = 3.08923,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 103773;
UPDATE `gameobject` SET `position_x` = -8579.05,`position_y` = 535.295,`position_z` = 101.838,`orientation` = 2.05948,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0.857166,`rotation3` = 0.51504 WHERE `id` = 2189;
UPDATE `gameobject` SET `position_x` = -8506.89,`position_y` = 657.747,`position_z` = 99.9641,`orientation` = 3.74374,`rotation0` = 0,`rotation1` = 0,`rotation2` = -0.955019,`rotation3` = 0.296545 WHERE `id` = 28030;
UPDATE `gameobject` SET `position_x` = 1981.64,`position_y` = 249.839,`position_z` = 36.9705,`orientation` = -1.0472,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 165558;
UPDATE `gameobject` SET `position_x` = -8711.34,`position_y` = 725.766,`position_z` = 97.6882,`orientation` = 5.4018,`rotation0` = 0,`rotation1` = 0,`rotation2` = -0.426568,`rotation3` = 0.904455 WHERE `id` = 2175;
UPDATE `gameobject` SET `position_x` = -8536.95,`position_y` = 680.946,`position_z` = 97.1988,`orientation` = 3.831,`rotation0` = 0,`rotation1` = 0,`rotation2` = -0.941176,`rotation3` = 0.337918 WHERE `id` = 28031;
UPDATE `gameobject` SET `position_x` = -8798.77,`position_y` = 580.371,`position_z` = 95.4652,`orientation` = 5.38434,`rotation0` = 0,`rotation1` = 0,`rotation2` = -0.434444,`rotation3` = 0.900699 WHERE `id` = 2123;
UPDATE `gameobject` SET `position_x` = -4710.98,`position_y` = -941.688,`position_z` = 504.887,`orientation` = 0.959931,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 171770;
UPDATE `gameobject` SET `position_x` = -8735.54,`position_y` = 706.585,`position_z` = 98.6947,`orientation` = 5.4018,`rotation0` = 0,`rotation1` = 0,`rotation2` = -0.426568,`rotation3` = 0.904455 WHERE `id` = 2173;
UPDATE `gameobject` SET `position_x` = -9360.51,`position_y` = 543.767,`position_z` = 48.4284,`orientation` = 1.51031,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 174794;
UPDATE `gameobject` SET `position_x` = -138.325,`position_y` = 1182.32,`position_z` = 62.4436,`orientation` = 1.5708,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 1699;
UPDATE `gameobject` SET `position_x` = -3825,`position_y` = -4730.16,`position_z` = -25.7113,`orientation` = 0.375246,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 20925;
UPDATE `gameobject` SET `position_x` = -1044.14,`position_y` = -3683.34,`position_z` = 26.778,`orientation` = -1.42244,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 143399;
UPDATE `gameobject` SET `position_x` = 5001.34,`position_y` = 34.4409,`position_z` = 50.7119,`orientation` = 2.58309,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 176634;
UPDATE `gameobject` SET `position_x` = -8727.88,`position_y` = 894.59,`position_z` = 100.563,`orientation` = 0.689404,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0.337916,`rotation3` = 0.941176 WHERE `id` = 24719;
UPDATE `gameobject` SET `position_x` = -8576.75,`position_y` = 536.517,`position_z` = 101.838,`orientation` = 5.20108,`rotation0` = 0,`rotation1` = 0,`rotation2` = -0.515037,`rotation3` = 0.857168 WHERE `id` = 28029;
UPDATE `gameobject` SET `position_x` = -8722.32,`position_y` = 515.434,`position_z` = 96.7327,`orientation` = 3.77864,`rotation0` = 0,`rotation1` = 0,`rotation2` = -0.949698,`rotation3` = 0.313166 WHERE `id` = 2136;
UPDATE `gameobject` SET `position_x` = -8713.17,`position_y` = 725.943,`position_z` = 97.0882,`orientation` = 0.689404,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0.337916,`rotation3` = 0.941176 WHERE `id` = 24717;
UPDATE `gameobject` SET `position_x` = -8706.76,`position_y` = 865.956,`position_z` = 97.3634,`orientation` = 2.2602,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0.904454,`rotation3` = 0.426571 WHERE `id` = 2191;
UPDATE `gameobject` SET `position_x` = 2052.75,`position_y` = -4806.18,`position_z` = 22.4538,`orientation` = -1.43117,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 173066;
UPDATE `gameobject` SET `position_x` = -4871.01,`position_y` = -885.149,`position_z` = 505.421,`orientation` = -1.38754,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 143253;
UPDATE `gameobject` SET `position_x` = -8615.96,`position_y` = 521.972,`position_z` = 103.077,`orientation` = 5.48906,`rotation0` = 0,`rotation1` = 0,`rotation2` = -0.38671,`rotation3` = 0.922201 WHERE `id` = 28028;
UPDATE `gameobject` SET `position_x` = -8617.8,`position_y` = 521.988,`position_z` = 102.477,`orientation` = 0.776672,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0.378649,`rotation3` = 0.92554 WHERE `id` = 2125;
UPDATE `gameobject` SET `position_x` = 217.68,`position_y` = -2715.69,`position_z` = 121.68,`orientation` = 2.74017,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 144072;
UPDATE `gameobject` SET `position_x` = -8722.04,`position_y` = 517.242,`position_z` = 96.743,`orientation` = 5.34943,`rotation0` = 0,`rotation1` = 0,`rotation2` = -0.450098,`rotation3` = 0.892979 WHERE `id` = 28027;
UPDATE `gameobject` SET `position_x` = -6850.78,`position_y` = -1538.73,`position_z` = 240.864,`orientation` = -0.552729,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 50982;
UPDATE `gameobject` SET `position_x` = -8805.35,`position_y` = 339.796,`position_z` = 95.0986,`orientation` = -1.69297,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 124374;
UPDATE `gameobject` SET `position_x` = -9797.29,`position_y` = 1594.66,`position_z` = 39.695,`orientation` = 3.07701,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 34;
UPDATE `gameobject` SET `position_x` = -8538.6,`position_y` = 682.955,`position_z` = 97.1988,`orientation` = 0.689404,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0.337916,`rotation3` = 0.941176 WHERE `id` = 2140;
UPDATE `gameobject` SET `position_x` = -424.917,`position_y` = -2590.89,`position_z` = 97.0383,`orientation` = -1.94604,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 4166;
UPDATE `gameobject` SET `position_x` = -4799.36,`position_y` = -1107.18,`position_z` = 498.819,`orientation` = 2.2602,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 171715;
UPDATE `gameobject` SET `position_x` = -8728.06,`position_y` = 892.757,`position_z` = 101.163,`orientation` = 2.2602,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0.904454,`rotation3` = 0.426571 WHERE `id` = 2141;
UPDATE `gameobject` SET `position_x` = -1035.12,`position_y` = -304.509,`position_z` = 160.785,`orientation` = 2.38238,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 177208;
UPDATE `gameobject` SET `position_x` = -11062.1,`position_y` = -1635.61,`position_z` = 27.9916,`orientation` = 1.59698,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 177245;
UPDATE `gameobject` SET `position_x` = -8942.29,`position_y` = 1006.78,`position_z` = 122.047,`orientation` = -0.933752,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 17272;
UPDATE `gameobject` SET `position_x` = 602.769,`position_y` = 327.7,`position_z` = 44.4997,`orientation` = 0.05236,`rotation0` = 0.177768,`rotation1` = 0.00894928,`rotation2` = 0.0249825,`rotation3` = 0.983715 WHERE `id` = 19567;
UPDATE `gameobject` SET `position_x` = -8873.65,`position_y` = 754.266,`position_z` = 96.4673,`orientation` = 5.46288,`rotation0` = 0,`rotation1` = 0,`rotation2` = -0.398749,`rotation3` = 0.91706 WHERE `id` = 24715;
UPDATE `gameobject` SET `position_x` = -7564.58,`position_y` = -4754.61,`position_z` = 8.99353,`orientation` = -2.26893,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 50935;
UPDATE `gameobject` SET `position_x` = 979.335,`position_y` = -1822.82,`position_z` = 80.4872,`orientation` = 0.28798,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 2082;
UPDATE `gameobject` SET `position_x` = -8737.38,`position_y` = 706.762,`position_z` = 98.0946,`orientation` = 0.689404,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0.337916,`rotation3` = 0.941176 WHERE `id` = 2127;
UPDATE `gameobject` SET `position_x` = -8726.22,`position_y` = 892.581,`position_z` = 100.563,`orientation` = 3.831,`rotation0` = 0,`rotation1` = 0,`rotation2` = -0.941176,`rotation3` = 0.337918 WHERE `id` = 2186;
UPDATE `gameobject` SET `position_x` = -8713.35,`position_y` = 724.11,`position_z` = 97.6882,`orientation` = 2.2602,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0.904454,`rotation3` = 0.426571 WHERE `id` = 2187;
UPDATE `gameobject` SET `position_x` = -4811.68,`position_y` = -1252.72,`position_z` = 503.011,`orientation` = -2.46091,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 144162;
UPDATE `gameobject` SET `position_x` = -6174.8,`position_y` = -1077.27,`position_z` = -202.574,`orientation` = -1.06465,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 174682;
UPDATE `gameobject` SET `position_x` = -9500.54,`position_y` = 66.0703,`position_z` = 56.0072,`orientation` = 2.87979,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 96;
UPDATE `gameobject` SET `position_x` = -8827.23,`position_y` = 957.502,`position_z` = 99.847,`orientation` = 2.2602,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0.904454,`rotation3` = 0.426571 WHERE `id` = 2171;
UPDATE `gameobject` SET `position_x` = 4283.19,`position_y` = -6294.65,`position_z` = 96.5188,`orientation` = 0.279253,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 151286;
UPDATE `gameobject` SET `position_x` = -8617.82,`position_y` = 520.146,`position_z` = 103.077,`orientation` = 2.34746,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0.9222,`rotation3` = 0.386713 WHERE `id` = 2143;
UPDATE `gameobject` SET `position_x` = 1643.31,`position_y` = 338.249,`position_z` = -55.7215,`orientation` = 1.09956,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 58620;
UPDATE `gameobject` SET `position_x` = -5507.55,`position_y` = -2050.3,`position_z` = 399.042,`orientation` = 0,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 1566;
UPDATE `gameobject` SET `position_x` = -4395.25,`position_y` = -13643.5,`position_z` = 33.24,`orientation` = 0.766564,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 181433;
UPDATE `gameobject` SET `position_x` = -5458.62,`position_y` = -2457.55,`position_z` = 89.2801,`orientation` = 0.331613,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 176115;
UPDATE `gameobject` SET `position_x` = -793.299,`position_y` = -2135.61,`position_z` = 92.3452,`orientation` = 2.98451,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 178884;
UPDATE `gameobject` SET `position_x` = -1762.31,`position_y` = -1515.68,`position_z` = 90.6093,`orientation` = 2.87979,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 2718;
UPDATE `gameobject` SET `position_x` = -9366.48,`position_y` = -2472.26,`position_z` = 17.0271,`orientation` = -2.28118,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 32;
UPDATE `gameobject` SET `position_x` = 603.942,`position_y` = 326.386,`position_z` = 47.2019,`orientation` = -3.01069,`rotation0` = 0.00513077,`rotation1` = -0.0782909,`rotation2` = -0.994782,`rotation3` = 0.0652079 WHERE `id` = 19563;
UPDATE `gameobject` SET `position_x` = -11031.2,`position_y` = -1600.16,`position_z` = 27.9784,`orientation` = 1.59698,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 177248;
UPDATE `gameobject` SET `position_x` = 5633.83,`position_y` = 166.257,`position_z` = 34.0374,`orientation` = 0.872665,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 16394;
UPDATE `gameobject` SET `position_x` = -6553.37,`position_y` = -3503.3,`position_z` = 293.974,`orientation` = 3.08923,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 144181;
UPDATE `gameobject` SET `position_x` = -11063,`position_y` = -1600.99,`position_z` = 27.9784,`orientation` = 1.59698,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 177249;
UPDATE `gameobject` SET `position_x` = 6542.94,`position_y` = 434.286,`position_z` = 7.54909,`orientation` = 2.17294,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 92490;
UPDATE `gameobject` SET `position_x` = -1152.54,`position_y` = 2895.45,`position_z` = 202.403,`orientation` = 0.67949,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 138497;
UPDATE `gameobject` SET `position_x` = -1502.47,`position_y` = -2707.26,`position_z` = 92.8061,`orientation` = 2.59433,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 6907;
UPDATE `gameobject` SET `position_x` = -4344.74,`position_y` = -3312.62,`position_z` = 34.4343,`orientation` = 2.44346,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 19904;
UPDATE `gameobject` SET `position_x` = -5064.78,`position_y` = -2121.73,`position_z` = 404.416,`orientation` = -2.11185,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 2059;
UPDATE `gameobject` SET `position_x` = -6239.47,`position_y` = 315.57,`position_z` = 383.198,`orientation` = 1.5708,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 1572;
UPDATE `gameobject` SET `position_x` = 602.858,`position_y` = 327.266,`position_z` = 45.5181,`orientation` = 0.095993,`rotation0` = 0.118016,`rotation1` = -0.00734425,`rotation2` = 0.0491772,`rotation3` = 0.991766 WHERE `id` = 19565;
UPDATE `gameobject` SET `position_x` = 6783.92,`position_y` = -4677.42,`position_z` = 723.884,`orientation` = -2.89725,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 179125;
UPDATE `gameobject` SET `position_x` = -4374.19,`position_y` = -1953.61,`position_z` = 89.6649,`orientation` = 2.71399,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 178824;
UPDATE `gameobject` SET `position_x` = -8810.5,`position_y` = 798.038,`position_z` = 98.1829,`orientation` = -3.0456,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 179595;
UPDATE `gameobject` SET `position_x` = -7002.62,`position_y` = -1118.75,`position_z` = 258.785,`orientation` = -2.35619,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 149025;
UPDATE `gameobject` SET `position_x` = -3583.81,`position_y` = -4305.52,`position_z` = 5.9923,`orientation` = -1.00356,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 21054;
UPDATE `gameobject` SET `position_x` = -1152.08,`position_y` = 2707.2,`position_z` = 111.114,`orientation` = 1.02974,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 177706;
UPDATE `gameobject` SET `position_x` = -6278.5,`position_y` = -3743.92,`position_z` = 243.805,`orientation` = -3.01942,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 2867;
UPDATE `gameobject` SET `position_x` = 2048.72,`position_y` = -4812.21,`position_z` = 22.4314,`orientation` = -2.54818,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 173064;
UPDATE `gameobject` SET `position_x` = -11093.8,`position_y` = -1635.39,`position_z` = 27.9784,`orientation` = 1.59698,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 177246;
UPDATE `gameobject` SET `position_x` = -942.842,`position_y` = -3116.75,`position_z` = 48.4206,`orientation` = 3.14159,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 138492;
UPDATE `gameobject` SET `position_x` = -2176.38,`position_y` = -410.315,`position_z` = -4.77444,`orientation` = -3.05433,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 74439;
UPDATE `gameobject` SET `position_x` = -11097.2,`position_y` = -1506.31,`position_z` = 27.9916,`orientation` = 1.59698,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 177253;
UPDATE `gameobject` SET `position_x` = 1464.4,`position_y` = -4691.85,`position_z` = 6.53162,`orientation` = 0.331613,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 58595;
UPDATE `gameobject` SET `position_x` = -11206.9,`position_y` = -1733.73,`position_z` = 4.38246,`orientation` = 1.59698,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 177047;
UPDATE `gameobject` SET `position_x` = 1581.75,`position_y` = 219.832,`position_z` = -56.0906,`orientation` = 0.767946,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 36073;
UPDATE `gameobject` SET `position_x` = -782.757,`position_y` = -4903.25,`position_z` = 19.52,`orientation` = -2.58309,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 18077;
UPDATE `gameobject` SET `position_x` = -11033.7,`position_y` = -1504.65,`position_z` = 27.9916,`orientation` = 1.59698,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 177255;
UPDATE `gameobject` SET `position_x` = 1776.04,`position_y` = -4277.56,`position_z` = 7.77433,`orientation` = 2.69653,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 173163;
UPDATE `gameobject` SET `position_x` = -5594.03,`position_y` = -489.786,`position_z` = 397.693,`orientation` = 1.5708,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 309;
UPDATE `gameobject` SET `position_x` = -7919.95,`position_y` = -2603.77,`position_z` = 223.346,`orientation` = -2.44346,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 160445;
UPDATE `gameobject` SET `position_x` = -11038,`position_y` = -1999.86,`position_z` = 92.9915,`orientation` = 2.24275,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 176694;
UPDATE `gameobject` SET `position_x` = 1655.01,`position_y` = 239.622,`position_z` = -59.6427,`orientation` = 3.13287,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 36071;
UPDATE `gameobject` SET `position_x` = -2085.13,`position_y` = -3748.74,`position_z` = 3.57427,`orientation` = 0.942478,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 48516;
UPDATE `gameobject` SET `position_x` = -876.553,`position_y` = -520.646,`position_z` = 12.5021,`orientation` = -1.54462,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 41195;
UPDATE `gameobject` SET `position_x` = -8295.8,`position_y` = -2957.03,`position_z` = 8.68778,`orientation` = 1.85226,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 175490;
UPDATE `gameobject` SET `position_x` = 6704.02,`position_y` = -4707.17,`position_z` = 721.478,`orientation` = 0.60204,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 175811;
UPDATE `gameobject` SET `position_x` = -5647.73,`position_y` = -94.7585,`position_z` = 418.112,`orientation` = 1.98968,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 272;
UPDATE `gameobject` SET `position_x` = -2820.73,`position_y` = -3596.14,`position_z` = 31.2977,`orientation` = -2.53073,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 20939;
UPDATE `gameobject` SET `position_x` = 2085.81,`position_y` = -4769.67,`position_z` = 23.2689,`orientation` = 2.73918,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 177011;
UPDATE `gameobject` SET `position_x` = -311.159,`position_y` = 1752.08,`position_z` = 139.436,`orientation` = -0.541054,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 3894;
UPDATE `gameobject` SET `position_x` = 633.123,`position_y` = 359.458,`position_z` = 50.9136,`orientation` = -3.08923,`rotation0` = -0.142918,`rotation1` = -0.137157,`rotation2` = -0.979124,`rotation3` = 0.0455896 WHERE `id` = 19571;
UPDATE `gameobject` SET `position_x` = -9247.39,`position_y` = -2145.58,`position_z` = 63.9334,`orientation` = 3.14159,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 1726;
UPDATE `gameobject` SET `position_x` = -4889.76,`position_y` = -2281.96,`position_z` = -70.5115,`orientation` = -0.279253,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 20807;
UPDATE `gameobject` SET `position_x` = -4.31662,`position_y` = -2806.49,`position_z` = 125.207,`orientation` = 1.58825,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 144068;
UPDATE `gameobject` SET `position_x` = -9496.07,`position_y` = -1189.87,`position_z` = 50.7038,`orientation` = -0.139626,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 178526;
UPDATE `gameobject` SET `position_x` = -4941.19,`position_y` = -4029.23,`position_z` = 301.126,`orientation` = -2.99337,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 18344;
UPDATE `gameobject` SET `position_x` = -373.597,`position_y` = -771.243,`position_z` = 54.0235,`orientation` = 2.59181,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 1784;
UPDATE `gameobject` SET `position_x` = 602.785,`position_y` = 327.066,`position_z` = 44.9758,`orientation` = 0.052359,`rotation0` = 0.0824308,`rotation1` = 0.0152073,`rotation2` = 0.0250006,`rotation3` = 0.996167 WHERE `id` = 19566;
UPDATE `gameobject` SET `position_x` = 971.939,`position_y` = 704.891,`position_z` = 85.0009,`orientation` = -1.52716,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 112888;
UPDATE `gameobject` SET `position_x` = -11066.1,`position_y` = -1988.07,`position_z` = 231.519,`orientation` = 2.59181,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 176577;
UPDATE `gameobject` SET `position_x` = 1620.57,`position_y` = -4305.25,`position_z` = 3.06882,`orientation` = -2.54818,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 173107;
UPDATE `gameobject` SET `position_x` = -1669.83,`position_y` = 1956.22,`position_z` = 61.4355,`orientation` = -0.226893,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 177398;
UPDATE `gameobject` SET `position_x` = -7826.9,`position_y` = -1851.92,`position_z` = 130.939,`orientation` = 1.1781,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 169294;
UPDATE `gameobject` SET `position_x` = -4725.75,`position_y` = -1090.37,`position_z` = 505.937,`orientation` = -2.93215,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 150087;
UPDATE `gameobject` SET `position_x` = 1804.02,`position_y` = -363.637,`position_z` = 32.4961,`orientation` = -0.916299,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 146080;
UPDATE `gameobject` SET `position_x` = 1813.94,`position_y` = -2657.88,`position_z` = 52.9887,`orientation` = 0.733038,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 20724;
UPDATE `gameobject` SET `position_x` = 292.01,`position_y` = -4769.12,`position_z` = 11.5029,`orientation` = 2.80125,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 31579;
UPDATE `gameobject` SET `position_x` = -5357.88,`position_y` = -528.19,`position_z` = 391.211,`orientation` = 0.724311,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 313;
UPDATE `gameobject` SET `position_x` = 342.674,`position_y` = 1249.23,`position_z` = 80.7299,`orientation` = 1.27409,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 1690;
UPDATE `gameobject` SET `position_x` = 1597.25,`position_y` = 240.212,`position_z` = 60.732,`orientation` = -0.008727,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 175659;
UPDATE `gameobject` SET `position_x` = -22.4965,`position_y` = 1354.5,`position_z` = 59.6505,`orientation` = 3.14159,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 1627;
UPDATE `gameobject` SET `position_x` = 1556.88,`position_y` = -3284.6,`position_z` = 86.2749,`orientation` = -0.10472,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 177239;
UPDATE `gameobject` SET `position_x` = -11094.7,`position_y` = -1601.54,`position_z` = 27.9916,`orientation` = 1.59698,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 177251;
UPDATE `gameobject` SET `position_x` = -10651.6,`position_y` = 1106.91,`position_z` = 33.6065,`orientation` = 2.34747,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 130668;
UPDATE `gameobject` SET `position_x` = -6031.73,`position_y` = -229.231,`position_z` = 414.397,`orientation` = 2.79253,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 176557;
UPDATE `gameobject` SET `position_x` = -679.388,`position_y` = 39.5997,`position_z` = 47.5202,`orientation` = -3.0456,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 1771;
UPDATE `gameobject` SET `position_x` = 603.019,`position_y` = 325.876,`position_z` = 46.7247,`orientation` = 1.67552,`rotation0` = 0.0818667,`rotation1` = 0.0844469,`rotation2` = 0.73833,`rotation3` = 0.664105 WHERE `id` = 19564;
UPDATE `gameobject` SET `position_x` = -3367.53,`position_y` = -3031.18,`position_z` = 34.2382,`orientation` = 1.90241,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 21083;
UPDATE `gameobject` SET `position_x` = 6410.85,`position_y` = 467.36,`position_z` = 8.01106,`orientation` = 4.41467,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 174795;
UPDATE `gameobject` SET `position_x` = -1030.41,`position_y` = -291.593,`position_z` = 162.301,`orientation` = -3.02815,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 177204;
UPDATE `gameobject` SET `position_x` = 3140.33,`position_y` = -3411,`position_z` = 141.125,`orientation` = 0.279252,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 176968;
UPDATE `gameobject` SET `position_x` = 633.265,`position_y` = 359.896,`position_z` = 51.3748,`orientation` = -3.08923,`rotation0` = -0.145749,`rotation1` = -0.0685225,`rotation2` = -0.986307,`rotation3` = 0.0354996 WHERE `id` = 19570;
UPDATE `gameobject` SET `position_x` = 1127.89,`position_y` = -2387.34,`position_z` = 59.1675,`orientation` = 1.41372,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 176745;
UPDATE `gameobject` SET `position_x` = 787.844,`position_y` = -1821.5,`position_z` = 91.5556,`orientation` = 0.095993,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 20738;
UPDATE `gameobject` SET `position_x` = -9463.14,`position_y` = -2.22515,`position_z` = 63.8205,`orientation` = 1.43117,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 1560;
UPDATE `gameobject` SET `position_x` = 1385.33,`position_y` = 341.708,`position_z` = -66.0074,`orientation` = 0.471239,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 103600;
UPDATE `gameobject` SET `position_x` = -4926.93,`position_y` = -987.719,`position_z` = 506.647,`orientation` = 2.46964,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 143324;
UPDATE `gameobject` SET `position_x` = -6025.74,`position_y` = -1021.09,`position_z` = -216.825,`orientation` = -0.733038,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 164838;
UPDATE `gameobject` SET `position_x` = -941.947,`position_y` = -3116.2,`position_z` = 51.0945,`orientation` = -1.51844,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 2722;
UPDATE `gameobject` SET `position_x` = 1774.65,`position_y` = 80.8117,`position_z` = -55.9975,`orientation` = 2.34747,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 58612;
UPDATE `gameobject` SET `position_x` = -1774.85,`position_y` = 1975.78,`position_z` = 61.1707,`orientation` = 0.122173,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 177399;
UPDATE `gameobject` SET `position_x` = 1814.23,`position_y` = -2657.59,`position_z` = 54.4145,`orientation` = 0.750492,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 20725;
UPDATE `gameobject` SET `position_x` = 1938.05,`position_y` = -2339.55,`position_z` = 92.7695,`orientation` = 1.85005,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 178146;
UPDATE `gameobject` SET `position_x` = 92.5894,`position_y` = -56.8869,`position_z` = 19.968,`orientation` = 2.36492,`rotation0` = 0.019279,`rotation1` = 0.0815744,`rotation2` = 0.921872,`rotation3` = 0.37832 WHERE `id` = 19561;
UPDATE `gameobject` SET `position_x` = -7590.69,`position_y` = -1139.77,`position_z` = 260.681,`orientation` = -2.76635,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 179584;
UPDATE `gameobject` SET `position_x` = 1595.68,`position_y` = 382.005,`position_z` = -57.3161,`orientation` = -0.061087,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 36072;
UPDATE `gameobject` SET `position_x` = -5356.59,`position_y` = -529.636,`position_z` = 391.713,`orientation` = -2.41728,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 311;
UPDATE `gameobject` SET `position_x` = -2027.09,`position_y` = -3258,`position_z` = 92.0934,`orientation` = 2.50455,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 147557;
UPDATE `gameobject` SET `position_x` = 284.731,`position_y` = -2674.58,`position_z` = 119.856,`orientation` = -2.79253,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 144073;
UPDATE `gameobject` SET `position_x` = -1381.95,`position_y` = 2918.69,`position_z` = 73.1218,`orientation` = -0.715509,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 178386;
UPDATE `gameobject` SET `position_x` = -1457.65,`position_y` = -3958.54,`position_z` = 0.242073,`orientation` = 1.62316,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 123462;
UPDATE `gameobject` SET `position_x` = -4730.98,`position_y` = -3539.81,`position_z` = 302.685,`orientation` = 3.14159,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 257;
UPDATE `gameobject` SET `position_x` = -248.933,`position_y` = -992.051,`position_z` = 15.8189,`orientation` = -1.22173,`rotation0` = -0.0879645,`rotation1` = -0.103015,`rotation2` = -0.569735,`rotation3` = 0.810588 WHERE `id` = 19585;
UPDATE `gameobject` SET `position_x` = -7454.23,`position_y` = -2196.28,`position_z` = 165.176,`orientation` = -1.53589,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 175248;
UPDATE `gameobject` SET `position_x` = 7260.43,`position_y` = -417.558,`position_z` = 26.7562,`orientation` = 2.81871,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 17184;
UPDATE `gameobject` SET `position_x` = 3372.45,`position_y` = -3379.63,`position_z` = 144.855,`orientation` = 3.03687,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 178831;
UPDATE `gameobject` SET `position_x` = -373.44,`position_y` = 1757.53,`position_z` = 139.446,`orientation` = -1.213,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 3911;
UPDATE `gameobject` SET `position_x` = 1735.62,`position_y` = 240.519,`position_z` = -57.3161,`orientation` = -1.63188,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 113574;
UPDATE `gameobject` SET `position_x` = -5041.03,`position_y` = -3337.81,`position_z` = 299.247,`orientation` = -2.84489,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 104564;
UPDATE `gameobject` SET `position_x` = -43.0674,`position_y` = -2465.5,`position_z` = 119.377,`orientation` = -1.57952,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 144067;
UPDATE `gameobject` SET `position_x` = -1823.93,`position_y` = -237.873,`position_z` = -10.3693,`orientation` = 3.14159,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 2911;
UPDATE `gameobject` SET `position_x` = 2021.61,`position_y` = -4688.13,`position_z` = 25.1779,`orientation` = 2.42601,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 173063;
UPDATE `gameobject` SET `position_x` = -1053.76,`position_y` = -3670.66,`position_z` = 23.8998,`orientation` = 1.40499,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 143398;
UPDATE `gameobject` SET `position_x` = -4672.83,`position_y` = -900.158,`position_z` = 506.812,`orientation` = -2.28638,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 143256;
UPDATE `gameobject` SET `position_x` = -1865.29,`position_y` = 1990.25,`position_z` = 62.8822,`orientation` = -1.64061,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 177400;
UPDATE `gameobject` SET `position_x` = -4862.73,`position_y` = -1148.93,`position_z` = 506.687,`orientation` = 0.418879,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 143336;
UPDATE `gameobject` SET `position_x` = -5004.07,`position_y` = -2108.19,`position_z` = 83.1568,`orientation` = 2.82743,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 175944;
UPDATE `gameobject` SET `position_x` = 1641.27,`position_y` = 349.046,`position_z` = -58.439,`orientation` = -1.97222,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 58618;
UPDATE `gameobject` SET `position_x` = 455.836,`position_y` = -628.784,`position_z` = 167.56,`orientation` = -0.18326,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 2025;
UPDATE `gameobject` SET `position_x` = -6914.24,`position_y` = -1440.12,`position_z` = 257.255,`orientation` = 1.95477,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 149031;
UPDATE `gameobject` SET `position_x` = 2057.71,`position_y` = -4798.63,`position_z` = 22.5034,`orientation` = 0.802851,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 173065;
UPDATE `gameobject` SET `position_x` = 342.674,`position_y` = 1249.23,`position_z` = 80.2299,`orientation` = 1.27409,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 1691;
UPDATE `gameobject` SET `position_x` = -4973.72,`position_y` = -1003.04,`position_z` = 510.542,`orientation` = 2.618,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 143321;
UPDATE `gameobject` SET `position_x` = 1597.51,`position_y` = -5303.04,`position_z` = 75.8948,`orientation` = -0.479965,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 179765;
UPDATE `gameobject` SET `position_x` = 1600.52,`position_y` = -5304.45,`position_z` = 75.8948,`orientation` = 2.69653,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 179764;
UPDATE `gameobject` SET `position_x` = -8794.49,`position_y` = 329.951,`position_z` = 109.518,`orientation` = -1.66679,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 176232;
UPDATE `gameobject` SET `position_x` = -8796.7,`position_y` = 327.336,`position_z` = 103.09,`orientation` = 0.235619,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 176240;
UPDATE `gameobject` SET `position_x` = -8796.4,`position_y` = 328.243,`position_z` = 109.518,`orientation` = -0.043633,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 176233;
UPDATE `gameobject` SET `position_x` = -8792.65,`position_y` = 327.983,`position_z` = 109.518,`orientation` = 3.09796,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 176234;
UPDATE `gameobject` SET `position_x` = -8792.92,`position_y` = 325.964,`position_z` = 109.518,`orientation` = 3.09796,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 176235;
UPDATE `gameobject` SET `position_x` = -8796.45,`position_y` = 326.165,`position_z` = 109.518,`orientation` = -0.043633,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 176236;
UPDATE `gameobject` SET `position_x` = -8794.93,`position_y` = 324.44,`position_z` = 109.518,`orientation` = 0.593412,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 176237;
UPDATE `gameobject` SET `position_x` = -8794.14,`position_y` = 331.237,`position_z` = 103.09,`orientation` = -1.31772,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 176238;
UPDATE `gameobject` SET `position_x` = -8796.24,`position_y` = 329.781,`position_z` = 103.09,`orientation` = -0.253074,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 176239;
UPDATE `gameobject` SET `position_x` = -8794.77,`position_y` = 325.704,`position_z` = 103.09,`orientation` = 1.27409,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 176241;
UPDATE `gameobject` SET `position_x` = -510.215,`position_y` = 107.248,`position_z` = 58.1639,`orientation` = -0.139627,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 174955;
UPDATE `gameobject` SET `position_x` = -509.305,`position_y` = 106.239,`position_z` = 58.1639,`orientation` = 1.51844,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 174954;
UPDATE `gameobject` SET `position_x` = -3826.81,`position_y` = -838.984,`position_z` = 10.1327,`orientation` = 0.872664,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 177506;
UPDATE `gameobject` SET `position_x` = -3813.1,`position_y` = -834.635,`position_z` = 9.47274,`orientation` = 2.22529,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 177507;
UPDATE `gameobject` SET `position_x` = -3815.57,`position_y` = -837.297,`position_z` = 16.9455,`orientation` = 1.213,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 177511;
UPDATE `gameobject` SET `position_x` = -3815.41,`position_y` = -819.03,`position_z` = 16.9455,`orientation` = -1.68424,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 177510;
UPDATE `gameobject` SET `position_x` = -3812.25,`position_y` = -824.192,`position_z` = 9.50318,`orientation` = 2.44346,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 177508;
UPDATE `gameobject` SET `position_x` = -3819,`position_y` = -818.967,`position_z` = 16.9455,`orientation` = -1.46608,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 177509;
UPDATE `gameobject` SET `position_x` = -4955.28,`position_y` = -1013.97,`position_z` = 503.875,`orientation` = -2.53945,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 171584;
UPDATE `gameobject` SET `position_x` = -4955.04,`position_y` = -1016.11,`position_z` = 503.875,`orientation` = 2.522,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 171586;
UPDATE `gameobject` SET `position_x` = -4804.58,`position_y` = -1186.27,`position_z` = 512.487,`orientation` = -1.54462,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 171604;
UPDATE `gameobject` SET `position_x` = -4804.75,`position_y` = -1189.88,`position_z` = 512.487,`orientation` = 1.55334,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 171606;
UPDATE `gameobject` SET `position_x` = -4806.2,`position_y` = -1187.97,`position_z` = 512.487,`orientation` = 0.000001,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 171607;
UPDATE `gameobject` SET `position_x` = -5017.16,`position_y` = -990.12,`position_z` = 503.888,`orientation` = -0.968657,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 171610;
UPDATE `gameobject` SET `position_x` = -14468.9,`position_y` = 480.276,`position_z` = 20.3892,`orientation` = 2.15545,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 148905;
UPDATE `gameobject` SET `position_x` = -3802.36,`position_y` = -823.886,`position_z` = 10.0753,`orientation` = 3.13286,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 177505;
UPDATE `gameobject` SET `position_x` = -4976.83,`position_y` = -3489.17,`position_z` = 305.475,`orientation` = -0.314159,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 104575;
UPDATE `gameobject` SET `position_x` = -8957.04,`position_y` = -432.748,`position_z` = 64.7194,`orientation` = -3.05433,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 83763;
UPDATE `gameobject` SET `position_x` = -6631.63,`position_y` = -1225.39,`position_z` = 210.617,`orientation` = 0.698132,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 179826;
UPDATE `gameobject` SET `position_x` = 7134.26,`position_y` = 345.874,`position_z` = -41.9849,`orientation` = -2.89725,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 175166;
UPDATE `gameobject` SET `position_x` = -8830.35,`position_y` = 985.121,`position_z` = 98.8379,`orientation` = -2.82743,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 1561;
UPDATE `gameobject` SET `position_x` = -9549.08,`position_y` = -1439.21,`position_z` = 62.2936,`orientation` = 2.25148,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 1562;
UPDATE `gameobject` SET `position_x` = -10672.2,`position_y` = 1748.32,`position_z` = 40.5583,`orientation` = -0.959931,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 1166;
UPDATE `gameobject` SET `position_x` = -760.941,`position_y` = -3791.81,`position_z` = 233.529,`orientation` = 0,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 175890;
UPDATE `gameobject` SET `position_x` = -760.949,`position_y` = -3792.02,`position_z` = 233.946,`orientation` = -1.8326,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 175889;
UPDATE `gameobject` SET `position_x` = -2381.19,`position_y` = 250.003,`position_z` = 52.6689,`orientation` = -1.92396,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 180056;
UPDATE `gameobject` SET `position_x` = 2849.58,`position_y` = -4406.56,`position_z` = 87.1056,`orientation` = 2.58309,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 176973;
UPDATE `gameobject` SET `position_x` = 3140.27,`position_y` = -3411.11,`position_z` = 141.12,`orientation` = 1.85005,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 176969;
UPDATE `gameobject` SET `position_x` = 3565.31,`position_y` = -5382.17,`position_z` = 107.714,`orientation` = -3.08923,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 176356;
UPDATE `gameobject` SET `position_x` = -4975.6,`position_y` = 346.066,`position_z` = 23.0333,`orientation` = 1.42244,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 164953;
UPDATE `gameobject` SET `position_x` = -4427.5,`position_y` = 1412.92,`position_z` = 132.459,`orientation` = -2.60054,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 178826;
UPDATE `gameobject` SET `position_x` = -10167.9,`position_y` = 2317.99,`position_z` = -49.5797,`orientation` = 0.228092,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 177791;
UPDATE `gameobject` SET `position_x` = 968.684,`position_y` = -1826.15,`position_z` = 77.0133,`orientation` = -2.94088,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 1323;
UPDATE `gameobject` SET `position_x` = -7244.06,`position_y` = 335.095,`position_z` = 46.3382,`orientation` = -0.767945,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 179565;
UPDATE `gameobject` SET `position_x` = -9148.63,`position_y` = -4079.77,`position_z` = -45.4797,`orientation` = -2.40855,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 144053;
UPDATE `gameobject` SET `position_x` = -4885.06,`position_y` = -3968.84,`position_z` = 297.924,`orientation` = -3.14159,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 92420;
UPDATE `gameobject` SET `position_x` = -4925.59,`position_y` = -2344.58,`position_z` = -49.1021,`orientation` = -1.3439,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 92423;
UPDATE `gameobject` SET `position_x` = 9753.64,`position_y` = 1589.44,`position_z` = 1300.41,`orientation` = -2.54818,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 2739;
UPDATE `gameobject` SET `position_x` = 9882,`position_y` = 1490.07,`position_z` = 1278.75,`orientation` = -0.628319,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 2740;
UPDATE `gameobject` SET `position_x` = 9772.44,`position_y` = 1553.88,`position_z` = 1300.45,`orientation` = -0.383972,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 2742;
UPDATE `gameobject` SET `position_x` = 9712.18,`position_y` = 1538.49,`position_z` = 1255.21,`orientation` = 2.05949,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 2741;
UPDATE `gameobject` SET `position_x` = -2161.57,`position_y` = -1696.34,`position_z` = -35.108,`orientation` = -1.93731,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 2707;
UPDATE `gameobject` SET `position_x` = -2175.47,`position_y` = -1708.77,`position_z` = -40.3075,`orientation` = -1.67552,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 2709;
UPDATE `gameobject` SET `position_x` = 1738.88,`position_y` = -1184.93,`position_z` = 59.2689,`orientation` = 2.36492,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 176361;
UPDATE `gameobject` SET `position_x` = -6201.66,`position_y` = -3057.53,`position_z` = 212.239,`orientation` = 2.00618,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 126260;
UPDATE `gameobject` SET `position_x` = 1870.43,`position_y` = -1771.57,`position_z` = 61.328,`orientation` = 3.14159,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 20806;
UPDATE `gameobject` SET `position_x` = 2415.62,`position_y` = 1785.69,`position_z` = 393.665,`orientation` = -0.680679,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 19595;
UPDATE `gameobject` SET `position_x` = 2466.91,`position_y` = 1880.6,`position_z` = 363.948,`orientation` = -2.84489,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 19598;
UPDATE `gameobject` SET `position_x` = 2562.67,`position_y` = 1947.02,`position_z` = 347.03,`orientation` = 2.16421,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 19599;
UPDATE `gameobject` SET `position_x` = 2546.77,`position_y` = 1998.05,`position_z` = 347.693,`orientation` = 2.35619,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 19596;
UPDATE `gameobject` SET `position_x` = 2400.82,`position_y` = 1802.94,`position_z` = 360.375,`orientation` = -1.16937,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 19597;
UPDATE `gameobject` SET `position_x` = -4079.74,`position_y` = -2355.42,`position_z` = 108.909,`orientation` = -1.15192,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 3646;
UPDATE `gameobject` SET `position_x` = -14287.1,`position_y` = 534.159,`position_z` = 8.92822,`orientation` = -2.61799,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 178204;
UPDATE `gameobject` SET `position_x` = -2246.43,`position_y` = -2623.17,`position_z` = 77.6971,`orientation` = -0.855212,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 2704;
UPDATE `gameobject` SET `position_x` = 7172.07,`position_y` = -6615.57,`position_z` = 63.6575,`orientation` = 2.98451,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 181239;
UPDATE `gameobject` SET `position_x` = 4841.22,`position_y` = -380.88,`position_z` = 349.549,`orientation` = 1.06465,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 176184;
UPDATE `gameobject` SET `position_x` = -4223.8,`position_y` = -3068.66,`position_z` = 8.36556,`orientation` = 3.14159,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 2084;
UPDATE `gameobject` SET `position_x` = 866.425,`position_y` = 1231.33,`position_z` = 52.6032,`orientation` = -0.802851,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 1571;
UPDATE `gameobject` SET `position_x` = 9696.8,`position_y` = -7336.11,`position_z` = 15.6421,`orientation` = -2.49334,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 182328;
UPDATE `gameobject` SET `position_x` = 9720.77,`position_y` = -7137.62,`position_z` = 19.7011,`orientation` = -0.000043,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 182318;
UPDATE `gameobject` SET `position_x` = -3789.79,`position_y` = -11716.2,`position_z` = -106.404,`orientation` = -2.97747,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 183861;
UPDATE `gameobject` SET `position_x` = 9521.19,`position_y` = -6860.13,`position_z` = 18.7219,`orientation` = 1.65806,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 180918;
UPDATE `gameobject` SET `position_x` = 8852.47,`position_y` = -6273.27,`position_z` = 7.36228,`orientation` = 1.40277,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 181572;
UPDATE `gameobject` SET `position_x` = 10093,`position_y` = -6218.32,`position_z` = 16.6676,`orientation` = 2.54818,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 180510;
UPDATE `gameobject` SET `position_x` = 10405.8,`position_y` = -5946.01,`position_z` = 42.5082,`orientation` = -2.30383,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 180516;
UPDATE `gameobject` SET `position_x` = -4038.02,`position_y` = -13768.3,`position_z` = 75.0398,`orientation` = -3.0456,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 184076;
UPDATE `gameobject` SET `position_x` = -4595.62,`position_y` = -12885.6,`position_z` = 8.0855,`orientation` = 1.20428,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 181674;
UPDATE `gameobject` SET `position_x` = -4630.08,`position_y` = -12925.3,`position_z` = 9.627,`orientation` = -2.35619,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 181675;
UPDATE `gameobject` SET `position_x` = 7581.42,`position_y` = -7667.07,`position_z` = 151.66,`orientation` = 2.51327,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 181153;
UPDATE `gameobject` SET `position_x` = 6833.69,`position_y` = -7203.04,`position_z` = 27.7762,`orientation` = 3.14159,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 181359;
UPDATE `gameobject` SET `position_x` = 7682.55,`position_y` = -6390.58,`position_z` = 20.6766,`orientation` = 0.925024,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 181133;
UPDATE `gameobject` SET `position_x` = 7714.6,`position_y` = -5705.83,`position_z` = 5.04456,`orientation` = 5.56066,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 181139;
UPDATE `gameobject` SET `position_x` = 7769.91,`position_y` = -5627.93,`position_z` = 18.3952,`orientation` = -1.02974,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 181140;
UPDATE `gameobject` SET `position_x` = -2928.18,`position_y` = 3415.43,`position_z` = 1.89408,`orientation` = 0.820305,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 182549;
UPDATE `gameobject` SET `position_x` = 10223.9,`position_y` = -6344.17,`position_z` = 30.8408,`orientation` = 2.04204,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 180512;
UPDATE `gameobject` SET `position_x` = 10294.9,`position_y` = -6030.45,`position_z` = 28.4427,`orientation` = -2.21657,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 180511;
UPDATE `gameobject` SET `position_x` = -47.878,`position_y` = -4897.72,`position_z` = 20.0918,`orientation` = 2.70526,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 142127;
UPDATE `gameobject` SET `position_x` = -2309.82,`position_y` = -11265.8,`position_z` = 36.37,`orientation` = 3.10665,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0.999847,`rotation3` = 0.0174693 WHERE `id` = 182532;
UPDATE `gameobject` SET `position_x` = -8340.24,`position_y` = 413.397,`position_z` = 124.49,`orientation` = 2.89435,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0.992368,`rotation3` = 0.123309 WHERE `id` = 180665;
UPDATE `gameobject` SET `position_x` = -846.582,`position_y` = -3268.04,`position_z` = 78.024,`orientation` = 3.14159,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 2691;
UPDATE `gameobject` SET `position_x` = -855.908,`position_y` = -1783.29,`position_z` = 39.6135,`orientation` = 3.14159,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 2689;
UPDATE `gameobject` SET `position_x` = -1056.98,`position_y` = -4596.39,`position_z` = 25.8219,`orientation` = -1.02974,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 3189;
UPDATE `gameobject` SET `position_x` = -917.836,`position_y` = -4482.29,`position_z` = 29.5817,`orientation` = -2.60054,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 3190;
UPDATE `gameobject` SET `position_x` = -9900.72,`position_y` = -3701.58,`position_z` = 22.5485,`orientation` = -3.02815,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 28024;
UPDATE `gameobject` SET `position_x` = 1576.2,`position_y` = -3270.77,`position_z` = 87.885,`orientation` = -0.122173,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 177675;
UPDATE `gameobject` SET `position_x` = 324.017,`position_y` = -2238.79,`position_z` = 212.078,`orientation` = 2.16421,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 3525;
UPDATE `gameobject` SET `position_x` = 4975.15,`position_y` = -443.583,`position_z` = 316.032,`orientation` = -1.92859,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 176158;
UPDATE `gameobject` SET `position_x` = 841.212,`position_y` = -2676.38,`position_z` = 92.6111,`orientation` = 0.340338,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 61935;
UPDATE `gameobject` SET `position_x` = 831.215,`position_y` = -2679.75,`position_z` = 91.667,`orientation` = 2.93215,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 4072;
UPDATE `gameobject` SET `position_x` = 841.276,`position_y` = -2686.75,`position_z` = 93.0556,`orientation` = -0.628318,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 61936;
UPDATE `gameobject` SET `position_x` = -9898.3,`position_y` = -3724.76,`position_z` = 21.9428,`orientation` = 2.28638,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 37118;
UPDATE `gameobject` SET `position_x` = 5091.5,`position_y` = -470.309,`position_z` = 298.159,`orientation` = -1.92859,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 176160;
UPDATE `gameobject` SET `position_x` = 5017.8,`position_y` = -456.184,`position_z` = 321.928,`orientation` = -0.925024,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 176161;
UPDATE `gameobject` SET `position_x` = 5113.6,`position_y` = -524.67,`position_z` = 296.59,`orientation` = -1.92859,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 176159;
UPDATE `gameobject` SET `position_x` = -11184.4,`position_y` = -2834.53,`position_z` = 116.978,`orientation` = -2.25147,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 153359;
UPDATE `gameobject` SET `position_x` = 3543.91,`position_y` = -5148.91,`position_z` = 82.9136,`orientation` = 1.58825,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 149481;
UPDATE `gameobject` SET `position_x` = 3642.44,`position_y` = -5283.04,`position_z` = 90.2832,`orientation` = 3.14159,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 149480;
UPDATE `gameobject` SET `position_x` = 3465.71,`position_y` = -5272.91,`position_z` = 89.2001,`orientation` = 3.14159,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 149482;
UPDATE `gameobject` SET `position_x` = 3172.75,`position_y` = -5426.29,`position_z` = 90.5842,`orientation` = 1.55334,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 149483;
UPDATE `gameobject` SET `position_x` = -9243.42,`position_y` = -2213.92,`position_z` = 67.6241,`orientation` = 3.14159,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 60;
UPDATE `gameobject` SET `position_x` = 2.79373,`position_y` = 432.367,`position_z` = 104.308,`orientation` = -1.6057,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 178145;
UPDATE `gameobject` SET `position_x` = 1796.55,`position_y` = -5422.54,`position_z` = 83.4887,`orientation` = 1.98968,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 182063;
UPDATE `gameobject` SET `position_x` = -972.458,`position_y` = 2100.09,`position_z` = 22.5301,`orientation` = -1.36136,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 182796;
UPDATE `gameobject` SET `position_x` = -802.435,`position_y` = 2694.56,`position_z` = 104.833,`orientation` = -0.483135,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 181369;
UPDATE `gameobject` SET `position_x` = 9006.21,`position_y` = -6671.24,`position_z` = 6.81106,`orientation` = 1.79769,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 181110;
UPDATE `gameobject` SET `position_x` = -9430.34,`position_y` = -1409.66,`position_z` = 46.662,`orientation` = -2.24495,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 180025;
UPDATE `gameobject` SET `position_x` = 7880.24,`position_y` = -7911.19,`position_z` = 182.803,`orientation` = -2.74017,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 181150;
UPDATE `gameobject` SET `position_x` = 1560.32,`position_y` = 6542.76,`position_z` = 3.09942,`orientation` = 2.70526,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 185164;
UPDATE `gameobject` SET `position_x` = -5318.97,`position_y` = 433.019,`position_z` = 13.0373,`orientation` = -0.802851,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 164954;
UPDATE `gameobject` SET `position_x` = -3107.88,`position_y` = -12559,`position_z` = -2.07062,`orientation` = 1.39626,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 181748;
UPDATE `gameobject` SET `position_x` = 3312.35,`position_y` = -1438.02,`position_z` = 176.314,`orientation` = 0.506145,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 19022;
UPDATE `gameobject` SET `position_x` = 7217.95,`position_y` = -6415.17,`position_z` = 59.1653,`orientation` = 0.017453,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 181238;
UPDATE `gameobject` SET `position_x` = -1508.4,`position_y` = 2701.06,`position_z` = -62.4106,`orientation` = 0.20944,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 182804;
UPDATE `gameobject` SET `position_x` = -1347.77,`position_y` = 5931.45,`position_z` = 11.7515,`orientation` = 4.96198,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 182122;
UPDATE `gameobject` SET `position_x` = -1212.81,`position_y` = -12446.4,`position_z` = 94.7029,`orientation` = 5.65487,`rotation0` = 0,`rotation1` = 0,`rotation2` = -0.309016,`rotation3` = 0.951057 WHERE `id` = 181988;
UPDATE `gameobject` SET `position_x` = -605.046,`position_y` = 3989.05,`position_z` = 32.1581,`orientation` = 1.90241,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 181581;
UPDATE `gameobject` SET `position_x` = -585.153,`position_y` = 3779.95,`position_z` = 31.6018,`orientation` = -2.00713,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 181580;
UPDATE `gameobject` SET `position_x` = -5027.12,`position_y` = -10966,`position_z` = 20.562,`orientation` = 1.2391,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 181672;
UPDATE `gameobject` SET `position_x` = -769.767,`position_y` = 3673.83,`position_z` = 30.2643,`orientation` = -2.58309,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 181579;
UPDATE `gameobject` SET `position_x` = -3556.41,`position_y` = 4943.07,`position_z` = -101.119,`orientation` = 3.14159,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 183294;
UPDATE `gameobject` SET `position_x` = -1731.41,`position_y` = 4423.99,`position_z` = 5.62048,`orientation` = -0.226893,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 182565;
UPDATE `gameobject` SET `position_x` = -1596.28,`position_y` = 4347.72,`position_z` = 37.8059,`orientation` = -0.226893,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 182563;
UPDATE `gameobject` SET `position_x` = -1522.39,`position_y` = 4485.69,`position_z` = 35.0197,`orientation` = -3.00197,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 182566;
UPDATE `gameobject` SET `position_x` = 1461.95,`position_y` = -3586.53,`position_z` = 87.7845,`orientation` = 2.54818,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 177544;
UPDATE `gameobject` SET `position_x` = -870.957,`position_y` = 4397.7,`position_z` = 71.8005,`orientation` = -2.94961,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 184478;
UPDATE `gameobject` SET `position_x` = -595.403,`position_y` = 4091.24,`position_z` = 91.8737,`orientation` = 2.00713,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 181638;
UPDATE `gameobject` SET `position_x` = -698.794,`position_y` = 2749.85,`position_z` = 94.122,`orientation` = 3.26455,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 185302;
UPDATE `gameobject` SET `position_x` = -428.5,`position_y` = -3452.4,`position_z` = 92.3,`orientation` = 0,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 164644;
UPDATE `gameobject` SET `position_x` = -1838.02,`position_y` = -12070.7,`position_z` = 32.0699,`orientation` = 5.35816,`rotation0` = 0,`rotation1` = 0,`rotation2` = -0.446198,`rotation3` = 0.894935 WHERE `id` = 181758;
UPDATE `gameobject` SET `position_x` = -2843.11,`position_y` = 5350,`position_z` = -30.4386,`orientation` = 2.88625,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 185226;
UPDATE `gameobject` SET `position_x` = -2860.85,`position_y` = 5482.5,`position_z` = -30.1893,`orientation` = 5.72153,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 185225;
UPDATE `gameobject` SET `position_x` = -2679.23,`position_y` = 5403.16,`position_z` = -36.469,`orientation` = 2.88231,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 185224;
UPDATE `gameobject` SET `position_x` = -2300.86,`position_y` = -11266.4,`position_z` = 35.7,`orientation` = 3.05441,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0.99905,`rotation3` = 0.0435775 WHERE `id` = 182212;
UPDATE `gameobject` SET `position_x` = -4547.8,`position_y` = 1018.71,`position_z` = 10.0703,`orientation` = -2.38237,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 184738;
UPDATE `gameobject` SET `position_x` = -298.617,`position_y` = 2401.31,`position_z` = 45.9132,`orientation` = 2.89725,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 183122;
UPDATE `gameobject` SET `position_x` = -1918.86,`position_y` = 5332.32,`position_z` = -12.4281,`orientation` = -0.820305,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 183435;
UPDATE `gameobject` SET `position_x` = -1993.32,`position_y` = 4563.82,`position_z` = 9.5339,`orientation` = -1.37881,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 184477;
UPDATE `gameobject` SET `position_x` = -3609.84,`position_y` = 4051.85,`position_z` = 111.999,`orientation` = -1.50098,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 185219;
UPDATE `gameobject` SET `position_x` = -3511.7,`position_y` = 4088.58,`position_z` = 92.8825,`orientation` = 1.72788,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 185217;
UPDATE `gameobject` SET `position_x` = -3419.71,`position_y` = 4103.8,`position_z` = 62.6395,`orientation` = -1.23918,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 185216;
UPDATE `gameobject` SET `position_x` = -2079.83,`position_y` = 4167.33,`position_z` = 7.42882,`orientation` = 0.401426,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 182542;
UPDATE `gameobject` SET `position_x` = -2667.7,`position_y` = 4423.86,`position_z` = 37.0813,`orientation` = 0.436332,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 184685;
UPDATE `gameobject` SET `position_x` = -3491.6,`position_y` = 4025.17,`position_z` = 113.117,`orientation` = -0.244346,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 185218;
UPDATE `gameobject` SET `position_x` = 1027.27,`position_y` = 8475.37,`position_z` = 58.6016,`orientation` = -2.98451,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 182166;
UPDATE `gameobject` SET `position_x` = -1972.11,`position_y` = -10581,`position_z` = 178.216,`orientation` = -2.69204,`rotation0` = 0,`rotation1` = 0,`rotation2` = -0.974844,`rotation3` = 0.222888 WHERE `id` = 181991;
UPDATE `gameobject` SET `position_x` = -2572.24,`position_y` = -11972.6,`position_z` = 24.9425,`orientation` = -1.37881,`rotation0` = 0,`rotation1` = 0,`rotation2` = -0.636078,`rotation3` = 0.771625 WHERE `id` = 181779;
UPDATE `gameobject` SET `position_x` = -11111.1,`position_y` = -2004.48,`position_z` = 49.3827,`orientation` = -2.46964,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 184164;
UPDATE `gameobject` SET `position_x` = -4576.67,`position_y` = 1610.02,`position_z` = 175.586,`orientation` = 0.994838,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 185128;
UPDATE `gameobject` SET `position_x` = 3599.83,`position_y` = 4958.24,`position_z` = 267.815,`orientation` = 0.226893,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 185124;
UPDATE `gameobject` SET `position_x` = 3672.17,`position_y` = 4962.03,`position_z` = 266.285,`orientation` = 2.6529,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 185147;
UPDATE `gameobject` SET `position_x` = 3740.23,`position_y` = 4962.22,`position_z` = 276.698,`orientation` = 0.349066,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 185148;
UPDATE `gameobject` SET `position_x` = 2760.88,`position_y` = 3203.82,`position_z` = 153.994,`orientation` = -0.558505,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 184143;
UPDATE `gameobject` SET `position_x` = 526.484,`position_y` = 2800.36,`position_z` = 217.015,`orientation` = -3.00197,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 182935;
UPDATE `gameobject` SET `position_x` = 530.613,`position_y` = 2799.08,`position_z` = 212.646,`orientation` = -2.79253,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 185190;
UPDATE `gameobject` SET `position_x` = -2345.22,`position_y` = 3234.89,`position_z` = -3.37428,`orientation` = -0.610866,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 184725;
UPDATE `gameobject` SET `position_x` = 3605.76,`position_y` = 7186.07,`position_z` = 138.901,`orientation` = 2.30383,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 185234;
UPDATE `gameobject` SET `position_x` = -4195.12,`position_y` = 383.601,`position_z` = 117.927,`orientation` = 2.44346,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 185156;
UPDATE `gameobject` SET `position_x` = 2898.92,`position_y` = 4759.29,`position_z` = 277.408,`orientation` = -0.102108,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 185198;
UPDATE `gameobject` SET `position_x` = 2942.3,`position_y` = 4752.28,`position_z` = 285.553,`orientation` = -0.102108,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 185197;
UPDATE `gameobject` SET `position_x` = 2834.39,`position_y` = 4856.67,`position_z` = 277.632,`orientation` = -0.102108,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 185196;
UPDATE `gameobject` SET `position_x` = 2923.37,`position_y` = 4840.36,`position_z` = 278.546,`orientation` = -0.102108,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 185195;
UPDATE `gameobject` SET `position_x` = 2965.75,`position_y` = 4835.25,`position_z` = 277.949,`orientation` = -0.102108,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 185193;
UPDATE `gameobject` SET `position_x` = 3740.79,`position_y` = 5367.05,`position_z` = -8.12109,`orientation` = 0.069813,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 185309;
UPDATE `gameobject` SET `position_x` = 1739.04,`position_y` = -3300.72,`position_z` = 97.7257,`orientation` = 2.42601,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 177806;
UPDATE `gameobject` SET `position_x` = 1867.17,`position_y` = -3300.52,`position_z` = 124.795,`orientation` = 1.64061,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 177805;
UPDATE `gameobject` SET `position_x` = 1865.05,`position_y` = -3236.6,`position_z` = 125.542,`orientation` = 2.25148,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 177804;
UPDATE `gameobject` SET `position_x` = 2692.74,`position_y` = -1956.57,`position_z` = 107.239,`orientation` = 1.09956,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 181629;
UPDATE `gameobject` SET `position_x` = 2239.64,`position_y` = 2389.67,`position_z` = 112.138,`orientation` = 0.733037,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 183268;
UPDATE `gameobject` SET `position_x` = 1030.49,`position_y` = 8248.48,`position_z` = 57.6407,`orientation` = 1.55334,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 182184;
UPDATE `gameobject` SET `position_x` = 9588.94,`position_y` = -7246.05,`position_z` = 27.0602,`orientation` = 2.35045,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 182836;
UPDATE `gameobject` SET `position_x` = -3883.02,`position_y` = 3041.3,`position_z` = 358.136,`orientation` = -1.32645,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 185954;
UPDATE `gameobject` SET `position_x` = -3361.9,`position_y` = 5142.19,`position_z` = -9.00132,`orientation` = 1.5708,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 184999;
UPDATE `gameobject` SET `position_x` = 2298.52,`position_y` = 6666.22,`position_z` = 17.6983,`orientation` = 2.26893,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 184726;
UPDATE `gameobject` SET `position_x` = 3913.18,`position_y` = 2083.83,`position_z` = 139.657,`orientation` = -2.00713,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 184075;
UPDATE `gameobject` SET `position_x` = 2726.61,`position_y` = 6610.85,`position_z` = 23.7437,`orientation` = -0.523599,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 184728;
UPDATE `gameobject` SET `position_x` = 1470.2,`position_y` = 6561.75,`position_z` = -10.3653,`orientation` = 0.663225,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 184744;
UPDATE `gameobject` SET `position_x` = 2680.37,`position_y` = 5542.47,`position_z` = -2.88405,`orientation` = 0.506145,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 185152;
UPDATE `gameobject` SET `position_x` = -2425.42,`position_y` = 6906.78,`position_z` = 12.2871,`orientation` = -2.00713,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 183147;
UPDATE `gameobject` SET `position_x` = -2475.29,`position_y` = 6106.4,`position_z` = 91.9832,`orientation` = 1.98095,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0.836286,`rotation3` = 0.548294 WHERE `id` = 182262;
UPDATE `gameobject` SET `position_x` = -2533.19,`position_y` = 6168.61,`position_z` = 59.9391,`orientation` = 2.8187,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0.986996,`rotation3` = 0.160747 WHERE `id` = 182264;
UPDATE `gameobject` SET `position_x` = -6493.8,`position_y` = -1162.98,`position_z` = 309.189,`orientation` = 2.79253,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 179827;
UPDATE `gameobject` SET `position_x` = -560.658,`position_y` = -4619.69,`position_z` = 10.1144,`orientation` = 2.18166,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 179913;
UPDATE `gameobject` SET `position_x` = -3461.17,`position_y` = 2778.33,`position_z` = 107.658,`orientation` = -1.72788,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 184859;
UPDATE `gameobject` SET `position_x` = 2216.23,`position_y` = 2379.13,`position_z` = 103.6,`orientation` = 1.44862,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 184433;
UPDATE `gameobject` SET `position_x` = 3412.24,`position_y` = 2794.63,`position_z` = 148.412,`orientation` = 3.00197,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 184589;
UPDATE `gameobject` SET `position_x` = -4033.24,`position_y` = 1345.66,`position_z` = 152.989,`orientation` = 3.14159,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 178224;
UPDATE `gameobject` SET `position_x` = -6335.34,`position_y` = -3115.09,`position_z` = 299.723,`orientation` = 0.907571,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 181627;
UPDATE `gameobject` SET `position_x` = -6374.57,`position_y` = -3101.54,`position_z` = 299.723,`orientation` = -2.98451,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 181628;
UPDATE `gameobject` SET `position_x` = -8170.22,`position_y` = -5077.53,`position_z` = 16.0034,`orientation` = 4.33427,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 164724;
UPDATE `gameobject` SET `position_x` = -369.673,`position_y` = -3005.33,`position_z` = 111.792,`orientation` = 3.01942,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 181643;
UPDATE `gameobject` SET `position_x` = -4930.64,`position_y` = -3422.01,`position_z` = 304.467,`orientation` = -1.309,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 104574;
UPDATE `gameobject` SET `position_x` = -3776.35,`position_y` = -11536.8,`position_z` = -134.702,`orientation` = 2.14436,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 183874;
UPDATE `gameobject` SET `position_x` = -3890.46,`position_y` = -11509.2,`position_z` = -136.461,`orientation` = -1.25902,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 183875;
UPDATE `gameobject` SET `position_x` = -4060,`position_y` = -11542.1,`position_z` = -138.577,`orientation` = -0.735451,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 183893;
UPDATE `gameobject` SET `position_x` = -4069,`position_y` = -11364,`position_z` = -139.421,`orientation` = -2.48072,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 183890;
UPDATE `gameobject` SET `position_x` = -4072.03,`position_y` = -11629.8,`position_z` = -138.621,`orientation` = 2.66793,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 183865;
UPDATE `gameobject` SET `position_x` = -4082.9,`position_y` = -11735.8,`position_z` = -139.347,`orientation` = 2.1022,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 183864;
UPDATE `gameobject` SET `position_x` = -4137.34,`position_y` = -11740.9,`position_z` = -136.82,`orientation` = 1.9738,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 183870;
UPDATE `gameobject` SET `position_x` = -4251.66,`position_y` = -11793.2,`position_z` = -133.343,`orientation` = -2.41205,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 183869;
UPDATE `gameobject` SET `position_x` = -4259.88,`position_y` = -11761.5,`position_z` = -133.164,`orientation` = 0.760292,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 183868;
UPDATE `gameobject` SET `position_x` = -4217.45,`position_y` = -11835.3,`position_z` = -133.101,`orientation` = 1.61474,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 183871;
UPDATE `gameobject` SET `position_x` = -4205.33,`position_y` = -11687.1,`position_z` = -143.254,`orientation` = -2.60705,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 183862;
UPDATE `gameobject` SET `position_x` = -4245.1,`position_y` = -11645.6,`position_z` = -142.188,`orientation` = 2.23245,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 183863;
UPDATE `gameobject` SET `position_x` = -4219.77,`position_y` = -11579.2,`position_z` = -126.175,`orientation` = 2.66793,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 183866;
UPDATE `gameobject` SET `position_x` = -3968.52,`position_y` = -11712.8,`position_z` = -139.467,`orientation` = -2.34134,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 183855;
UPDATE `gameobject` SET `position_x` = -3929.09,`position_y` = -11606.3,`position_z` = -138.606,`orientation` = 1.45789,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 183860;
UPDATE `gameobject` SET `position_x` = -6847.41,`position_y` = 748.786,`position_z` = 42.5384,`orientation` = 0.610865,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 180448;
UPDATE `gameobject` SET `position_x` = 48.7021,`position_y` = -2092.3,`position_z` = 111.45,`orientation` = -2.05949,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 181649;
UPDATE `gameobject` SET `position_x` = -6386.89,`position_y` = -1984.05,`position_z` = 246.73,`orientation` = -1.27409,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 175704;
UPDATE `gameobject` SET `position_x` = -1841.19,`position_y` = 6387.27,`position_z` = 52.85,`orientation` = 0,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 182141;
UPDATE `gameobject` SET `position_x` = -2311.09,`position_y` = 3080.38,`position_z` = 158.385,`orientation` = 3.7856,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 182546;
UPDATE `gameobject` SET `position_x` = -11809.9,`position_y` = 1367.05,`position_z` = 0.503483,`orientation` = -1.93731,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 180367;
UPDATE `gameobject` SET `position_x` = -8028.91,`position_y` = 1538.62,`position_z` = 2.6094,`orientation` = -0.139626,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 180633;
UPDATE `gameobject` SET `position_x` = -1424.78,`position_y` = -11416,`position_z` = 69.1895,`orientation` = 0.611388,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 185056;
UPDATE `gameobject` SET `position_x` = 55.5777,`position_y` = 5480.74,`position_z` = 25.4448,`orientation` = -0.759217,`rotation0` = 0,`rotation1` = 0,`rotation2` = -0.370557,`rotation3` = 0.92881 WHERE `id` = 182348;
UPDATE `gameobject` SET `position_x` = 1600.31,`position_y` = -3241.3,`position_z` = 66.8294,`orientation` = 2.16421,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 177667;
UPDATE `gameobject` SET `position_x` = 6599.87,`position_y` = -1266.64,`position_z` = 448.412,`orientation` = 1.97222,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 174597;
UPDATE `gameobject` SET `position_x` = 10099.4,`position_y` = -6622.77,`position_z` = 4.10381,`orientation` = 4.28121,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 182052;
UPDATE `gameobject` SET `position_x` = -2843.53,`position_y` = 2783.17,`position_z` = 94.3958,`orientation` = 2.96706,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 144054;
UPDATE `gameobject` SET `position_x` = 2960.45,`position_y` = 4870.89,`position_z` = 278.011,`orientation` = 2.17107,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 185165;
UPDATE `gameobject` SET `position_x` = -1669.49,`position_y` = -12070.2,`position_z` = 19.7257,`orientation` = -0.855211,`rotation0` = 0,`rotation1` = 0,`rotation2` = -0.414693,`rotation3` = 0.909961 WHERE `id` = 181756;
UPDATE `gameobject` SET `position_x` = -2090.6,`position_y` = -11300,`position_z` = 63.3391,`orientation` = 3.60734,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 182032;
UPDATE `gameobject` SET `position_x` = -1358.54,`position_y` = 7214.71,`position_z` = 33.8052,`orientation` = 0.610865,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 182392;
UPDATE `gameobject` SET `position_x` = -2564.28,`position_y` = 7275.51,`position_z` = 15.4789,`orientation` = -1.65806,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 182393;
UPDATE `gameobject` SET `position_x` = 2558.36,`position_y` = 2121.36,`position_z` = 99.492,`orientation` = -2.40855,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 184300;
UPDATE `gameobject` SET `position_x` = 3973.69,`position_y` = 2374.2,`position_z` = 112.823,`orientation` = 1.20428,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 184560;
UPDATE `gameobject` SET `position_x` = -4616.86,`position_y` = 1399.09,`position_z` = 143.892,`orientation` = 0.15708,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 185126;
UPDATE `gameobject` SET `position_x` = -8080.96,`position_y` = 985.235,`position_z` = 48.2963,`orientation` = 0.907571,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 180435;
UPDATE `gameobject` SET `position_x` = 2810.26,`position_y` = -7295.31,`position_z` = -12.4336,`orientation` = -3.10669,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 179551;
UPDATE `gameobject` SET `position_x` = -8323.09,`position_y` = 726.438,`position_z` = -68.781,`orientation` = 0.802851,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 180453;
UPDATE `gameobject` SET `position_x` = -6579.91,`position_y` = 765.67,`position_z` = -49.3908,`orientation` = 2.42601,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 180454;
UPDATE `gameobject` SET `position_x` = -7410.13,`position_y` = 1239.35,`position_z` = -80.2098,`orientation` = -0.087267,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 180455;
UPDATE `gameobject` SET `position_x` = 6292.07,`position_y` = -588.73,`position_z` = 467.669,`orientation` = 1.09956,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 174602;
UPDATE `gameobject` SET `position_x` = 5266.67,`position_y` = -333.332,`position_z` = 325.469,`orientation` = 2.23402,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 174603;
UPDATE `gameobject` SET `position_x` = 5133.34,`position_y` = -333.352,`position_z` = 354.553,`orientation` = -1.41372,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 174598;
UPDATE `gameobject` SET `position_x` = 4966.66,`position_y` = -666.679,`position_z` = 295.082,`orientation` = -2.70526,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 174712;
UPDATE `gameobject` SET `position_x` = 6866.66,`position_y` = -1566.67,`position_z` = 496.312,`orientation` = -1.23918,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 174599;
UPDATE `gameobject` SET `position_x` = 6366.68,`position_y` = -1666.65,`position_z` = 480.265,`orientation` = -1.13446,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 174600;
UPDATE `gameobject` SET `position_x` = 6433.33,`position_y` = -966.665,`position_z` = 422.408,`orientation` = 2.05949,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 174601;
UPDATE `gameobject` SET `position_x` = 6400,`position_y` = -699.992,`position_z` = 477.424,`orientation` = 2.60054,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 174606;
UPDATE `gameobject` SET `position_x` = 5333.33,`position_y` = -833.325,`position_z` = 342.732,`orientation` = 0.628319,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 174607;
UPDATE `gameobject` SET `position_x` = 6599.99,`position_y` = -800.007,`position_z` = 479.249,`orientation` = 2.14675,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 174608;
UPDATE `gameobject` SET `position_x` = 4824.34,`position_y` = -316.803,`position_z` = 358.791,`orientation` = -2.21657,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 174686;
UPDATE `gameobject` SET `position_x` = 4233.32,`position_y` = -1133.32,`position_z` = 322.629,`orientation` = 1.64061,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 171942;
UPDATE `gameobject` SET `position_x` = 3866.65,`position_y` = -1000.02,`position_z` = 244.199,`orientation` = 0.942478,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 171939;
UPDATE `gameobject` SET `position_x` = 4866.69,`position_y` = -600.011,`position_z` = 307.548,`orientation` = 0.645772,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 174604;
UPDATE `gameobject` SET `position_x` = 4757.87,`position_y` = -460.486,`position_z` = 337.843,`orientation` = 0.226893,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 174708;
UPDATE `gameobject` SET `position_x` = -356.968,`position_y` = 2706.36,`position_z` = 31.7072,`orientation` = -1.74533,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 185122;
UPDATE `gameobject` SET `position_x` = 3168.89,`position_y` = -1211.61,`position_z` = 216.959,`orientation` = 1.0472,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 19027;
UPDATE `gameobject` SET `position_x` = 3461.31,`position_y` = -118.269,`position_z` = 3.70502,`orientation` = 1.0472,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 93192;
UPDATE `gameobject` SET `position_x` = 6874.13,`position_y` = -520.885,`position_z` = 39.8104,`orientation` = -2.03331,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 175330;
UPDATE `gameobject` SET `position_x` = 6807.43,`position_y` = -376.349,`position_z` = 39.962,`orientation` = -1.39626,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 175331;
UPDATE `gameobject` SET `position_x` = 6870.7,`position_y` = -453.286,`position_z` = 39.9917,`orientation` = -3.0456,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 175329;
UPDATE `gameobject` SET `position_x` = 2482.07,`position_y` = -2141.97,`position_z` = 201.52,`orientation` = 3.14159,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 19901;
UPDATE `gameobject` SET `position_x` = 2793.46,`position_y` = -2994.22,`position_z` = 153.594,`orientation` = 2.33874,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 181681;
UPDATE `gameobject` SET `position_x` = -9794.49,`position_y` = 2107.64,`position_z` = 12.304,`orientation` = -1.93499,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 33;
UPDATE `gameobject` SET `position_x` = 232.146,`position_y` = -849.549,`position_z` = 147.566,`orientation` = 1.9984,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 1740;
UPDATE `gameobject` SET `position_x` = 4566.1,`position_y` = 419.451,`position_z` = 34.9651,`orientation` = -1.76278,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 12144;
UPDATE `gameobject` SET `position_x` = 1878.8,`position_y` = -1568.91,`position_z` = 58.9335,`orientation` = 3.14159,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 177289;
UPDATE `gameobject` SET `position_x` = 6878.81,`position_y` = -655.543,`position_z` = 84.4626,`orientation` = 3.95544,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 19463;
UPDATE `gameobject` SET `position_x` = 1690.47,`position_y` = -2272.56,`position_z` = 58.9362,`orientation` = -2.71399,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 176392;
UPDATE `gameobject` SET `position_x` = 1485.84,`position_y` = -1863.15,`position_z` = 58.4416,`orientation` = 3.14159,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 176393;
UPDATE `gameobject` SET `position_x` = -445.851,`position_y` = -1486.69,`position_z` = 92.085,`orientation` = 0,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 1722;
UPDATE `gameobject` SET `position_x` = -3012.46,`position_y` = 3965.02,`position_z` = 3.10579,`orientation` = 1.4106,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 112092;
UPDATE `gameobject` SET `position_x` = -3013.88,`position_y` = 3967.14,`position_z` = 3.11044,`orientation` = -0.235619,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 112095;
UPDATE `gameobject` SET `position_x` = -3009.87,`position_y` = 3974.77,`position_z` = 3.11044,`orientation` = 1.42244,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 112096;
UPDATE `gameobject` SET `position_x` = -3011.78,`position_y` = 3976.75,`position_z` = 3.11044,`orientation` = -0.235619,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 112097;
UPDATE `gameobject` SET `position_x` = -3007.42,`position_y` = 3976.06,`position_z` = 3.11044,`orientation` = 3.03687,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 112098;
UPDATE `gameobject` SET `position_x` = -3011.98,`position_y` = 3968.33,`position_z` = 3.11044,`orientation` = -1.7366,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 112100;
UPDATE `gameobject` SET `position_x` = -3008.91,`position_y` = 3968.01,`position_z` = 3.11044,`orientation` = -1.8675,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 112115;
UPDATE `gameobject` SET `position_x` = -3007.72,`position_y` = 3966.05,`position_z` = 3.11044,`orientation` = 3.03687,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 112123;
UPDATE `gameobject` SET `position_x` = -3009.54,`position_y` = 3964.69,`position_z` = 3.11044,`orientation` = 1.3439,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 112128;
UPDATE `gameobject` SET `position_x` = -3009.33,`position_y` = 3977.98,`position_z` = 3.11044,`orientation` = -1.7366,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 112129;
UPDATE `gameobject` SET `position_x` = -43.8073,`position_y` = -2480.73,`position_z` = 118.917,`orientation` = 3.14159,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 142706;
UPDATE `gameobject` SET `position_x` = -38.7292,`position_y` = -2468.43,`position_z` = 121.504,`orientation` = -3.14159,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 142707;
UPDATE `gameobject` SET `position_x` = 4133.31,`position_y` = -700.016,`position_z` = 283.633,`orientation` = 2.25148,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 164881;
UPDATE `gameobject` SET `position_x` = -12130.5,`position_y` = 958.994,`position_z` = 4.87148,`orientation` = -1.25664,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 181636;
UPDATE `gameobject` SET `position_x` = 7075.84,`position_y` = 437.263,`position_z` = -21.348,`orientation` = -2.35619,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 175165;
UPDATE `gameobject` SET `position_x` = 1689.41,`position_y` = -1361.88,`position_z` = 70.1315,`orientation` = -2.85361,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 176987;
UPDATE `gameobject` SET `position_x` = -7662.91,`position_y` = -1218.73,`position_z` = 287.788,`orientation` = -0.436333,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 179879;
UPDATE `gameobject` SET `position_x` = -11141.2,`position_y` = -1151.89,`position_z` = 43.4364,`orientation` = 0.191986,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 19030;
UPDATE `gameobject` SET `position_x` = -490.591,`position_y` = 115.354,`position_z` = 61.5263,`orientation` = -0.139626,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 1761;
UPDATE `gameobject` SET `position_x` = -2533.11,`position_y` = 6307.24,`position_z` = 14.5637,`orientation` = 0.923964,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 181387;
UPDATE `gameobject` SET `position_x` = -2068.93,`position_y` = 6729.63,`position_z` = 13.1791,`orientation` = -3.06305,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 183195;
UPDATE `gameobject` SET `position_x` = -1378.8,`position_y` = 8548.43,`position_z` = 15.2863,`orientation` = -1.0472,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 183243;
UPDATE `gameobject` SET `position_x` = -970.813,`position_y` = 2172,`position_z` = 17.5428,`orientation` = -2.33874,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 184717;
UPDATE `gameobject` SET `position_x` = -970.813,`position_y` = 2172,`position_z` = 17.5428,`orientation` = -2.33874,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 184721;
UPDATE `gameobject` SET `position_x` = 3725.26,`position_y` = -3994.23,`position_z` = 95.9451,`orientation` = 1.85005,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 185566;
UPDATE `gameobject` SET `position_x` = -3577.5,`position_y` = 744.441,`position_z` = -9.56735,`orientation` = 1.54268,`rotation0` = -0.340269,`rotation1` = -0.588305,`rotation2` = 0.376304,`rotation3` = 0.629691 WHERE `id` = 185081;
UPDATE `gameobject` SET `position_x` = -4514.99,`position_y` = -848.971,`position_z` = -41.7934,`orientation` = -1.72788,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 181825;
UPDATE `gameobject` SET `position_x` = -1919.48,`position_y` = 5744.72,`position_z` = 136.495,`orientation` = -0.07952,`rotation0` = 0,`rotation1` = 0,`rotation2` = -0.0397495,`rotation3` = 0.99921 WHERE `id` = 186113;
UPDATE `gameobject` SET `position_x` = 9748.92,`position_y` = -7075.64,`position_z` = 16.7537,`orientation` = -1.85005,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 184803;
UPDATE `gameobject` SET `position_x` = 1946.22,`position_y` = 7377.41,`position_z` = 364.47,`orientation` = 3.15033,`rotation0` = 0,`rotation1` = 0,`rotation2` = -0.999991,`rotation3` = 0.00436732 WHERE `id` = 185834;
UPDATE `gameobject` SET `position_x` = 1946.29,`position_y` = 7374.66,`position_z` = 364.526,`orientation` = 3.15033,`rotation0` = 0,`rotation1` = 0,`rotation2` = -0.999991,`rotation3` = 0.00436732 WHERE `id` = 185765;
UPDATE `gameobject` SET `position_x` = 1946.29,`position_y` = 7374.66,`position_z` = 364.526,`orientation` = 3.15033,`rotation0` = 0,`rotation1` = 0,`rotation2` = -0.999991,`rotation3` = 0.00436732 WHERE `id` = 185766;
UPDATE `gameobject` SET `position_x` = 2085.71,`position_y` = 7140.31,`position_z` = 364.771,`orientation` = 3.13286,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0.999991,`rotation3` = 0.00436732 WHERE `id` = 185826;
UPDATE `gameobject` SET `position_x` = 2085.69,`position_y` = 7137.58,`position_z` = 364.827,`orientation` = 3.13286,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0.999991,`rotation3` = 0.00436732 WHERE `id` = 185743;
UPDATE `gameobject` SET `position_x` = 2084.82,`position_y` = 7107.33,`position_z` = 364.827,`orientation` = 3.12412,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0.999962,`rotation3` = 0.00873464 WHERE `id` = 185747;
UPDATE `gameobject` SET `position_x` = 2087.61,`position_y` = 7107.17,`position_z` = 364.771,`orientation` = 3.12412,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0.999962,`rotation3` = 0.00873464 WHERE `id` = 185829;
UPDATE `gameobject` SET `position_x` = 2516.29,`position_y` = 7048.12,`position_z` = 368.01,`orientation` = 3.15033,`rotation0` = 0,`rotation1` = 0,`rotation2` = -0.999991,`rotation3` = 0.00436732 WHERE `id` = 185729;
UPDATE `gameobject` SET `position_x` = 1911.71,`position_y` = 7344.85,`position_z` = 364.526,`orientation` = 3.14159,`rotation0` = 0,`rotation1` = 0,`rotation2` = -1,`rotation3` = 0 WHERE `id` = 185757;
UPDATE `gameobject` SET `position_x` = 1911.61,`position_y` = 7374.96,`position_z` = 364.526,`orientation` = 3.14159,`rotation0` = 0,`rotation1` = 0,`rotation2` = -1,`rotation3` = 0 WHERE `id` = 185763;
UPDATE `gameobject` SET `position_x` = 2516.18,`position_y` = 7017.04,`position_z` = 368.01,`orientation` = 3.11539,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0.999914,`rotation3` = 0.013102 WHERE `id` = 185733;
UPDATE `gameobject` SET `position_x` = 2550.14,`position_y` = 7017.23,`position_z` = 368.01,`orientation` = 3.15033,`rotation0` = 0,`rotation1` = 0,`rotation2` = -0.999991,`rotation3` = 0.00436732 WHERE `id` = 185800;
UPDATE `gameobject` SET `position_x` = 2550.06,`position_y` = 7047.95,`position_z` = 368.01,`orientation` = 3.15033,`rotation0` = 0,`rotation1` = 0,`rotation2` = -0.999991,`rotation3` = 0.00436732 WHERE `id` = 185724;
UPDATE `gameobject` SET `position_x` = 2533.53,`position_y` = 7043.83,`position_z` = 367.955,`orientation` = 3.12412,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0.999962,`rotation3` = 0.00873464 WHERE `id` = 185793;
UPDATE `gameobject` SET `position_x` = 4026.61,`position_y` = 5320.29,`position_z` = 269.787,`orientation` = 3.12412,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0.999962,`rotation3` = 0.00873464 WHERE `id` = 185689;
UPDATE `gameobject` SET `position_x` = 4026.63,`position_y` = 5320.25,`position_z` = 269.787,`orientation` = 3.12412,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0.999962,`rotation3` = 0.00873464 WHERE `id` = 185691;
UPDATE `gameobject` SET `position_x` = 4003.41,`position_y` = 5354.48,`position_z` = 269.953,`orientation` = 3.12412,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0.999962,`rotation3` = 0.00873464 WHERE `id` = 185679;
UPDATE `gameobject` SET `position_x` = 4029.83,`position_y` = 5354.29,`position_z` = 269.683,`orientation` = 3.15033,`rotation0` = 0,`rotation1` = 0,`rotation2` = -0.999991,`rotation3` = 0.00436732 WHERE `id` = 185644;
UPDATE `gameobject` SET `position_x` = 3889.41,`position_y` = 5120.84,`position_z` = 270.091,`orientation` = 3.15906,`rotation0` = 0,`rotation1` = 0,`rotation2` = -0.999962,`rotation3` = 0.00873464 WHERE `id` = 185670;
UPDATE `gameobject` SET `position_x` = 4050.02,`position_y` = 5577.72,`position_z` = 267.276,`orientation` = 3.12412,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0.999962,`rotation3` = 0.00873464 WHERE `id` = 185855;
UPDATE `gameobject` SET `position_x` = 4079.42,`position_y` = 5604.19,`position_z` = 267.332,`orientation` = 3.15033,`rotation0` = 0,`rotation1` = 0,`rotation2` = -0.999991,`rotation3` = 0.00436732 WHERE `id` = 185608;
UPDATE `gameobject` SET `position_x` = 4079.38,`position_y` = 5606.9,`position_z` = 267.277,`orientation` = 3.11539,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0.999914,`rotation3` = 0.013102 WHERE `id` = 185611;
UPDATE `gameobject` SET `position_x` = 4079.44,`position_y` = 5604.18,`position_z` = 267.332,`orientation` = 3.15906,`rotation0` = 0,`rotation1` = 0,`rotation2` = -0.999962,`rotation3` = 0.00873464 WHERE `id` = 185612;
UPDATE `gameobject` SET `position_x` = 4079.44,`position_y` = 5604.17,`position_z` = 267.332,`orientation` = 3.15906,`rotation0` = 0,`rotation1` = 0,`rotation2` = -0.999962,`rotation3` = 0.00873464 WHERE `id` = 185610;
UPDATE `gameobject` SET `position_x` = 4079.42,`position_y` = 5604.18,`position_z` = 267.332,`orientation` = 3.15906,`rotation0` = 0,`rotation1` = 0,`rotation2` = -0.999962,`rotation3` = 0.00873464 WHERE `id` = 185614;
UPDATE `gameobject` SET `position_x` = 4050.03,`position_y` = 5606.96,`position_z` = 267.276,`orientation` = 3.13286,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0.999991,`rotation3` = 0.00436732 WHERE `id` = 185619;
UPDATE `gameobject` SET `position_x` = -8745.53,`position_y` = 653.098,`position_z` = 105.104,`orientation` = -2.59181,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 24500;
UPDATE `gameobject` SET `position_x` = -310.372,`position_y` = 3087.27,`position_z` = -4.18958,`orientation` = 1.38937,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 184129;
UPDATE `gameobject` SET `position_x` = 6513.71,`position_y` = 484.541,`position_z` = 6.24165,`orientation` = -3.14159,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 103687;
UPDATE `gameobject` SET `position_x` = 2482.02,`position_y` = -2141.87,`position_z` = 201.552,`orientation` = -3.07178,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 19879;
UPDATE `gameobject` SET `position_x` = -7197.65,`position_y` = -2423.59,`position_z` = -220.456,`orientation` = 2.96706,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 169217;
UPDATE `gameobject` SET `position_x` = 234.683,`position_y` = -2127.22,`position_z` = 119.316,`orientation` = 5.56797,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 179912;
UPDATE `gameobject` SET `position_x` = -4512.71,`position_y` = -781.802,`position_z` = -42.6385,`orientation` = 2.58301,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 181632;
UPDATE `gameobject` SET `position_x` = 2253.68,`position_y` = -7221.79,`position_z` = 10.1571,`orientation` = 3.14159,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 150086;
UPDATE `gameobject` SET `position_x` = -2453.24,`position_y` = -3153.89,`position_z` = 35.8593,`orientation` = 1.97643,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 186299;
UPDATE `gameobject` SET `position_x` = -6664.46,`position_y` = -2177.26,`position_z` = 246.588,`orientation` = -2.2253,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 164868;
UPDATE `gameobject` SET `position_x` = 1315.13,`position_y` = 6689.44,`position_z` = -18.3601,`orientation` = 1.914,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 184729;
UPDATE `gameobject` SET `position_x` = -1964.4,`position_y` = 6514.34,`position_z` = 18.0574,`orientation` = 1.16937,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 183262;
UPDATE `gameobject` SET `position_x` = -1996.32,`position_y` = -11893.2,`position_z` = 51.1047,`orientation` = 6.21337,`rotation0` = 0,`rotation1` = 0,`rotation2` = -0.0348988,`rotation3` = 0.999391 WHERE `id` = 181895;
UPDATE `gameobject` SET `position_x` = -1393.85,`position_y` = -1102.71,`position_z` = 39.3095,`orientation` = -0.785398,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 181062;
UPDATE `gameobject` SET `position_x` = 3150.38,`position_y` = -1200.59,`position_z` = 216.604,`orientation` = 0.959931,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 19025;
UPDATE `gameobject` SET `position_x` = -1944.12,`position_y` = -12883.1,`position_z` = 85.9014,`orientation` = 0.660134,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0.324106,`rotation3` = 0.946021 WHERE `id` = 181964;
UPDATE `gameobject` SET `position_x` = -6724.44,`position_y` = -4723.01,`position_z` = 22.8234,`orientation` = -1.45735,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 177226;
UPDATE `gameobject` SET `position_x` = 408.8,`position_y` = -4826.95,`position_z` = 10.575,`orientation` = 2.86234,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 179910;
UPDATE `gameobject` SET `position_x` = 12895.3,`position_y` = -7300.82,`position_z` = 65.6166,`orientation` = 6.24828,`rotation0` = 0,`rotation1` = 0,`rotation2` = -0.0174513,`rotation3` = 0.999848 WHERE `id` = 188171;
UPDATE `gameobject` SET `position_x` = 2861.24,`position_y` = 1544.99,`position_z` = 252.083,`orientation` = 0.733038,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 184219;
UPDATE `gameobject` SET `position_x` = 67.9898,`position_y` = 3211.89,`position_z` = 32.9351,`orientation` = 1.78023,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0.777145,`rotation3` = 0.629321 WHERE `id` = 183343;
UPDATE `gameobject` SET `position_x` = -9569.68,`position_y` = -13.0052,`position_z` = 63.4714,`orientation` = -1.36136,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 180515;
UPDATE `gameobject` SET `position_x` = -2662.02,`position_y` = 2059.37,`position_z` = 116.422,`orientation` = 3.80482,`rotation0` = 0,`rotation1` = 0,`rotation2` = -0.945518,`rotation3` = 0.325568 WHERE `id` = 184947;
UPDATE `gameobject` SET `position_x` = -2044.3,`position_y` = -11877.7,`position_z` = 46.5865,`orientation` = 1.37881,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0.636078,`rotation3` = 0.771625 WHERE `id` = 181889;
UPDATE `gameobject` SET `position_x` = 811.194,`position_y` = 6872.57,`position_z` = -66.931,`orientation` = 0,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 1 WHERE `id` = 184566;
UPDATE `gameobject` SET `position_x` = -4193.53,`position_y` = 2005.66,`position_z` = 59.19,`orientation` = 0,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 184750;
UPDATE `gameobject` SET `position_x` = 8206.85,`position_y` = -6335.76,`position_z` = 64.5,`orientation` = 0,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 181260;
UPDATE `gameobject` SET `position_x` = -1920.1,`position_y` = 6361.28,`position_z` = 56.02,`orientation` = 0,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 182142;
UPDATE `gameobject` SET `position_x` = -1972.53,`position_y` = 6276.58,`position_z` = 56.88,`orientation` = 0,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 182143;
UPDATE `gameobject` SET `position_x` = -1444.17,`position_y` = 8431.12,`position_z` = -0.029802,`orientation` = 3.42958,`rotation0` = 0,`rotation1` = 0,`rotation2` = -0.989651,`rotation3` = 0.143497 WHERE `id` = 181450;
UPDATE `gameobject` SET `position_x` = -2524.64,`position_y` = -11143.4,`position_z` = 16.698,`orientation` = 0.355989,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0.177056,`rotation3` = 0.984201 WHERE `id` = 185041;
UPDATE `gameobject` SET `position_x` = -2672.7,`position_y` = 2690.24,`position_z` = 102.417,`orientation` = 2.56563,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 185061;
UPDATE `gameobject` SET `position_x` = -3728.71,`position_y` = 464.655,`position_z` = 104.201,`orientation` = 3.11529,`rotation0` = 0.00855398,`rotation1` = -0.0132017,`rotation2` = 0.999788,`rotation3` = 0.0132625 WHERE `id` = 185129;
UPDATE `gameobject` SET `position_x` = -3695.99,`position_y` = 360.271,`position_z` = 91.091,`orientation` = 2.87979,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0.991445,`rotation3` = 0.130528 WHERE `id` = 185132;
UPDATE `gameobject` SET `position_x` = -4243.95,`position_y` = -11710.8,`position_z` = -144.245,`orientation` = 1.45489,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0.664964,`rotation3` = 0.746876 WHERE `id` = 183793;
UPDATE `gameobject` SET `position_x` = -4232.68,`position_y` = -11716.6,`position_z` = -143.808,`orientation` = 0.145849,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0.0728599,`rotation3` = 0.997342 WHERE `id` = 183878;
UPDATE `gameobject` SET `position_x` = -8939.37,`position_y` = 963.451,`position_z` = 117.423,`orientation` = -0.689405,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 24467;
UPDATE `gameobject` SET `position_x` = -8934.69,`position_y` = 955.004,`position_z` = 117.235,`orientation` = 1.27409,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 24611;
UPDATE `gameobject` SET `position_x` = -8939.01,`position_y` = 958.188,`position_z` = 117.188,`orientation` = 0.462513,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 24466;
UPDATE `gameobject` SET `position_x` = -8853.95,`position_y` = 1082.02,`position_z` = 95.211,`orientation` = 4.95674,`rotation0` = 0,`rotation1` = 0,`rotation2` = -0.615662,`rotation3` = 0.788011 WHERE `id` = 147828;
UPDATE `gameobject` SET `position_x` = -8648.9,`position_y` = 815.856,`position_z` = 96.8789,`orientation` = 2.24275,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 24465;
UPDATE `gameobject` SET `position_x` = -8629.15,`position_y` = 836.187,`position_z` = 96.9638,`orientation` = 0.671952,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 24460;
UPDATE `gameobject` SET `position_x` = -8620.5,`position_y` = 843.236,`position_z` = 96.9638,`orientation` = 0.671952,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 24463;
UPDATE `gameobject` SET `position_x` = -8626.67,`position_y` = 838.404,`position_z` = 96.9638,`orientation` = -2.46964,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 24462;
UPDATE `gameobject` SET `position_x` = -8618.52,`position_y` = 844.432,`position_z` = 96.9638,`orientation` = -2.46964,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 24464;
UPDATE `gameobject` SET `position_x` = -8394.1,`position_y` = 486.91,`position_z` = 123.756,`orientation` = -2.46964,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 24416;
UPDATE `gameobject` SET `position_x` = -8397.02,`position_y` = 490.58,`position_z` = 123.756,`orientation` = -2.46964,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 24415;
UPDATE `gameobject` SET `position_x` = -8398.78,`position_y` = 445.466,`position_z` = 123.816,`orientation` = 2.24275,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 24414;
UPDATE `gameobject` SET `position_x` = -8425.62,`position_y` = 461.838,`position_z` = 123.802,`orientation` = 0.671952,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 24409;
UPDATE `gameobject` SET `position_x` = -8402.45,`position_y` = 442.547,`position_z` = 123.816,`orientation` = 2.24275,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 24412;
UPDATE `gameobject` SET `position_x` = -8428.54,`position_y` = 465.508,`position_z` = 123.802,`orientation` = 0.671952,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 24408;
UPDATE `gameobject` SET `position_x` = -8414.05,`position_y` = 447.286,`position_z` = 123.802,`orientation` = 0.671952,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 24410;
UPDATE `gameobject` SET `position_x` = -8405.34,`position_y` = 491.696,`position_z` = 123.756,`orientation` = -0.898844,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 24417;
UPDATE `gameobject` SET `position_x` = -8409.29,`position_y` = 488.551,`position_z` = 123.756,`orientation` = -0.898844,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 24452;
UPDATE `gameobject` SET `position_x` = -8410.9,`position_y` = 443.332,`position_z` = 123.802,`orientation` = 0.671952,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 24411;
UPDATE `gameobject` SET `position_x` = -10174.2,`position_y` = 2388.69,`position_z` = -139.4,`orientation` = 4.78638,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0.68047,`rotation3` = -0.732776 WHERE `id` = 177844;
UPDATE `gameobject` SET `position_x` = 1495.13,`position_y` = -4382.21,`position_z` = 24.2448,`orientation` = 1.3149,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 177018;
UPDATE `gameobject` SET `position_x` = 1537.42,`position_y` = -4377.83,`position_z` = 16.7027,`orientation` = 0.785399,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 173199;
UPDATE `gameobject` SET `position_x` = -9983.32,`position_y` = -3665.64,`position_z` = 20.1015,`orientation` = -0.20944,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 181624;
UPDATE `gameobject` SET `position_x` = -196.931,`position_y` = 5559.67,`position_z` = 26.7097,`orientation` = -2.91469,`rotation0` = 0,`rotation1` = 0,`rotation2` = -0.993571,`rotation3` = 0.113208 WHERE `id` = 182292;
UPDATE `gameobject` SET `position_x` = -364.502,`position_y` = 3081.91,`position_z` = -14.7253,`orientation` = 1.84872,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 184127;
UPDATE `gameobject` SET `position_x` = -3073.97,`position_y` = 4943.09,`position_z` = -102.055,`orientation` = 0,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 184182;
UPDATE `gameobject` SET `position_x` = -3362,`position_y` = 5230.92,`position_z` = -102.056,`orientation` = 1.5708,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 184186;
UPDATE `gameobject` SET `position_x` = 818.386,`position_y` = 6947.67,`position_z` = -79.147,`orientation` = 1.5708,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 184209;
UPDATE `gameobject` SET `position_x` = 740.112,`position_y` = 7014.18,`position_z` = -70.4291,`orientation` = 0,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 184211;
UPDATE `gameobject` SET `position_x` = 3312.75,`position_y` = 1330.01,`position_z` = 505.652,`orientation` = 1.94604,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 184221;
UPDATE `gameobject` SET `position_x` = -3649.94,`position_y` = 4943.07,`position_z` = -102.091,`orientation` = 3.14159,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 184188;
UPDATE `gameobject` SET `position_x` = -305.563,`position_y` = 3167.28,`position_z` = 31.0006,`orientation` = 2.15924,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 184132;
UPDATE `gameobject` SET `position_x` = -310.372,`position_y` = 3087.27,`position_z` = -4.18958,`orientation` = 1.38937,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 184130;
UPDATE `gameobject` SET `position_x` = 7853.95,`position_y` = -2212.3,`position_z` = 472.397,`orientation` = 0,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 15885;
UPDATE `gameobject` SET `position_x` = 818.386,`position_y` = 6947.67,`position_z` = -79.147,`orientation` = 1.5708,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 184208;
UPDATE `gameobject` SET `position_x` = 740.112,`position_y` = 7014.18,`position_z` = -70.4291,`orientation` = 0,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 184210;
UPDATE `gameobject` SET `position_x` = 3917.04,`position_y` = 5120.81,`position_z` = 270.093,`orientation` = 3.11539,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0.999914,`rotation3` = 0.013102 WHERE `id` = 185657;
UPDATE `gameobject` SET `position_x` = 3812.86,`position_y` = 5933.5,`position_z` = 266.636,`orientation` = 4.67748,`rotation0` = 0,`rotation1` = 0,`rotation2` = -0.719339,`rotation3` = 0.694659 WHERE `id` = 185959;
UPDATE `gameobject` SET `position_x` = 2708.33,`position_y` = 7267.17,`position_z` = 368.585,`orientation` = 3.15033,`rotation0` = 0,`rotation1` = 0,`rotation2` = -0.999991,`rotation3` = 0.00436732 WHERE `id` = 185780;
UPDATE `gameobject` SET `position_x` = -3073.97,`position_y` = 4943.09,`position_z` = -102.055,`orientation` = 0,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 184181;
UPDATE `gameobject` SET `position_x` = 2861.24,`position_y` = 1544.99,`position_z` = 252.083,`orientation` = 0.733038,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 184220;
UPDATE `gameobject` SET `position_x` = -3362,`position_y` = 5230.92,`position_z` = -102.056,`orientation` = 1.5708,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 184185;
UPDATE `gameobject` SET `position_x` = -2764.68,`position_y` = 2623.21,`position_z` = 70.4204,`orientation` = 2.33578,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 144569;
UPDATE `gameobject` SET `position_x` = 5968.89,`position_y` = -1212.05,`position_z` = 379.832,`orientation` = 0.129598,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 165760;
UPDATE `gameobject` SET `position_x` = -17.6295,`position_y` = 3803.27,`position_z` = 94.1429,`orientation` = 0,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 181630;
UPDATE `gameobject` SET `position_x` = -2294.54,`position_y` = 1378.29,`position_z` = 63.6,`orientation` = 0,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 177748;
UPDATE `gameobject` SET `position_x` = -1614.85,`position_y` = 5328.13,`position_z` = -40.296,`orientation` = 5.1749,`rotation0` = 0,`rotation1` = 0,`rotation2` = -0.526214,`rotation3` = 0.850352 WHERE `id` = 187370;
UPDATE `gameobject` SET `position_x` = -2142.48,`position_y` = 5152.83,`position_z` = -16.0924,`orientation` = -2.33001,`rotation0` = 0,`rotation1` = 0,`rotation2` = -0.918791,`rotation3` = 0.394745 WHERE `id` = 186031;
UPDATE `gameobject` SET `position_x` = -1883.88,`position_y` = 5436.72,`position_z` = -12.7662,`orientation` = -0.322882,`rotation0` = 0,`rotation1` = 0,`rotation2` = -0.160741,`rotation3` = 0.986997 WHERE `id` = 185967;
UPDATE `gameobject` SET `position_x` = -3649.94,`position_y` = 4943.07,`position_z` = -102.091,`orientation` = 3.14159,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 184187;
UPDATE `gameobject` SET `position_x` = -8088.27,`position_y` = -5274.9,`position_z` = 0.8,`orientation` = 1.79952,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 180719;
UPDATE `gameobject` SET `position_x` = -943,`position_y` = -3117,`position_z` = 47.421,`orientation` = 3.142,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 2705;
UPDATE `gameobject` SET `position_x` = 2449.43,`position_y` = -1662.39,`position_z` = 104.37,`orientation` = 2.18166,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 177491;
UPDATE `gameobject` SET `position_x` = -9552.76,`position_y` = -719.371,`position_z` = 99.9786,`orientation` = 2.3911,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0,`rotation3` = 0 WHERE `id` = 19548;
UPDATE `gameobject` SET `position_x` = 3892.83,`position_y` = 5083.41,`position_z` = 270.149,`orientation` = 3.12412,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0.999962,`rotation3` = 0.00873464 WHERE `id` = 185704;
UPDATE `gameobject` SET `position_x` = 3919.82,`position_y` = 5083.26,`position_z` = 270.149,`orientation` = 3.1678,`rotation0` = 0,`rotation1` = 0,`rotation2` = -0.999914,`rotation3` = 0.013102 WHERE `id` = 185696;
UPDATE `gameobject` SET `position_x` = 3919.95,`position_y` = 5120.73,`position_z` = 270.149,`orientation` = 3.11539,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0.999914,`rotation3` = 0.013102 WHERE `id` = 185694;
UPDATE `gameobject` SET `position_x` = 3919.97,`position_y` = 5120.73,`position_z` = 270.149,`orientation` = 3.11539,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0.999914,`rotation3` = 0.013102 WHERE `id` = 185695;
UPDATE `gameobject` SET `position_x` = 3919.95,`position_y` = 5120.77,`position_z` = 270.149,`orientation` = 3.11539,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0.999914,`rotation3` = 0.013102 WHERE `id` = 185693;
UPDATE `gameobject` SET `position_x` = 3919.85,`position_y` = 5083.25,`position_z` = 270.149,`orientation` = 3.1678,`rotation0` = 0,`rotation1` = 0,`rotation2` = -0.999914,`rotation3` = 0.013102 WHERE `id` = 185699;
UPDATE `gameobject` SET `position_x` = 3919.83,`position_y` = 5083.29,`position_z` = 270.149,`orientation` = 3.1678,`rotation0` = 0,`rotation1` = 0,`rotation2` = -0.999914,`rotation3` = 0.013102 WHERE `id` = 185697;
UPDATE `gameobject` SET `position_x` = 3892.85,`position_y` = 5083.41,`position_z` = 270.149,`orientation` = 3.12412,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0.999962,`rotation3` = 0.00873464 WHERE `id` = 185707;
UPDATE `gameobject` SET `position_x` = 3892.84,`position_y` = 5083.45,`position_z` = 270.149,`orientation` = 3.12412,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0.999962,`rotation3` = 0.00873464 WHERE `id` = 185705;
UPDATE `gameobject` SET `position_x` = 1911.71,`position_y` = 7344.85,`position_z` = 364.526,`orientation` = 3.14159,`rotation0` = 0,`rotation1` = 0,`rotation2` = -1,`rotation3` = 0 WHERE `id` = 185756;
UPDATE `gameobject` SET `position_x` = 1911.61,`position_y` = 7374.96,`position_z` = 364.526,`orientation` = 3.14159,`rotation0` = 0,`rotation1` = 0,`rotation2` = -1,`rotation3` = 0 WHERE `id` = 185762;
UPDATE `gameobject` SET `position_x` = 41.1672,`position_y` = -426.866,`position_z` = 44.6828,`orientation` = 2.7838,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0.984041,`rotation3` = 0.177944 WHERE `id` = 28048;
UPDATE `gameobject` SET `position_x` = 39.0988,`position_y` = -425.746,`position_z` = 44.688,`orientation` = -0.619592,`rotation0` = 0,`rotation1` = 0,`rotation2` = -0.304864,`rotation3` = 0.952396 WHERE `id` = 28049;
UPDATE `gameobject` SET `position_x` = 25.758,`position_y` = -425.837,`position_z` = 47.6369,`orientation` = -1.98095,`rotation0` = 0,`rotation1` = 0,`rotation2` = -0.836286,`rotation3` = 0.548293 WHERE `id` = 28606;
UPDATE `gameobject` SET `position_x` = 27.6786,`position_y` = -427.69,`position_z` = 47.6369,`orientation` = -2.67908,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0.973379,`rotation3` = -0.2292 WHERE `id` = 28607;
UPDATE `gameobject` SET `position_x` = 25.2482,`position_y` = -433.104,`position_z` = 47.6369,`orientation` = 2.38237,`rotation0` = 0,`rotation1` = 0,`rotation2` = 0.92881,`rotation3` = 0.370557 WHERE `id` = 28605;
UPDATE `gameobject` SET `position_x` = 1810.09,`position_y` = 673.184,`position_z` = 14.2178,`orientation` = 1.49916,`rotation0` = -0.000269803,`rotation1` = 0.0379082,`rotation2` = 0.680317,`rotation3` = 0.731937 WHERE `id` = 92426;
UPDATE `gameobject` SET `position_x` = -8781.13,`position_y` = 424.761,`position_z` = 106.629,`orientation` = -0.890117,`rotation0` = 0,`rotation1` = 0,`rotation2` = -0.430511,`rotation3` = 0.902586 WHERE `id` = 179706;

DELETE FROM `gameobject` WHERE `map` = 451;
DELETE FROM `gameobject` WHERE `id` in (SELECT entry FROM `gameobject_template` WHERE `name` LIKE 'Anvil');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(175, 2574, 0, 1, 1, -14378.6, 364.394, 23.9437, 3.14159, 0, 0, 1, 0.00000126759, 900, 900, 100, 1),
(490, 51703, 0, 1, 1, -8093.27, -1528.69, 134.047, -2.92343, 0, 0, -0.994057, 0.108865, 900, 900, 100, 1),
(655, 51702, 0, 1, 1, -8106.03, -1523.98, 133.778, -0.706857, 0, 0, -0.346116, 0.938192, 900, 900, 100, 1),
(702, 147786, 0, 1, 1, -5608.21, -549.719, 392.986, 1.62315, 0, 0, 0.725372, 0.688357, 900, 900, 100, 1),
(710, 147787, 0, 1, 1, -5607.99, -529.146, 399.649, 1.09956, 0, 0, 0.5225, 0.852639, 900, 900, 100, 1),
(780, 1748, 0, 1, 1, -5581.04, -429.563, 397.325, -1.14319, 0, 0, -0.540974, 0.841039, 900, 900, 100, 1),
(841, 19874, 0, 1, 1, -5577.35, -429.406, 397.27, -1.88496, 0, 0, -0.809018, 0.587783, 900, 900, 100, 1),
(1013, 32571, 0, 1, 1, -5583.51, -432.11, 397.326, 2.35619, 0, 0, 0.923879, 0.382686, 900, 900, 100, 1),
(1268, 32574, 0, 1, 1, -5574.81, -432.109, 397.326, 0.7854, 0, 0, 0.382684, 0.923879, 900, 900, 100, 1),
(1679, 32580, 0, 1, 1, -5570.31, -424.385, 397.326, -0.174532, 0, 0, -0.0871553, 0.996195, 900, 900, 100, 1),
(1684, 32581, 0, 1, 1, -5573.68, -422.414, 397.326, -0.959931, 0, 0, -0.461749, 0.887011, 900, 900, 100, 1),
(1881, 32570, 0, 1, 1, -5584.55, -422.7, 397.326, -0.130899, 0, 0, -0.0654028, 0.997859, 900, 900, 100, 1),
(2034, 32578, 0, 1, 1, -5588.48, -424.54, 397.326, 2.87979, 0, 0, 0.991445, 0.130528, 900, 900, 100, 1),
(2457, 32849, 0, 1, 1, -6103.49, 382.031, 395.523, -2.87979, 0, 0, -0.991445, 0.130528, 900, 900, 100, 1),
(2601, 32850, 0, 1, 1, -6098.49, 390.634, 395.523, 1.8326, 0, 0, 0.793355, 0.60876, 900, 900, 100, 1),
(2662, 32848, 0, 1, 1, -6098.5, 377.484, 395.523, -1.8326, 0, 0, -0.793355, 0.60876, 900, 900, 100, 1),
(3056, 32851, 0, 1, 1, -6103.5, 386.091, 395.523, 2.87979, 0, 0, 0.991445, 0.130528, 900, 900, 100, 1),
(3113, 32852, 0, 1, 1, -6101.91, 388.449, 395.523, 2.35619, 0, 0, 0.923879, 0.382686, 900, 900, 100, 1),
(3252, 32847, 0, 1, 1, -6101.89, 379.642, 395.523, -2.35619, 0, 0, -0.923879, 0.382686, 900, 900, 100, 1),
(3730, 104555, 1, 1, 1, -812.912, -4940.97, 20.6516, -2.6529, -0.0232878, -0.0147963, -0.969871, 0.242053, 900, 900, 100, 1),
(3865, 175743, 1, 1, 1, 2104.76, -4831.93, 24.1761, -0.244347, 0, 0, -0.12187, 0.992546, 900, 900, 100, 1),
(4108, 175744, 1, 1, 1, 2099.77, -4835.06, 24.1761, -1.59698, 0, 0, -0.716303, 0.697789, 900, 900, 100, 1),
(4136, 171713, 0, 1, 1, -4789.21, -1128.66, 498.881, -1.82387, 0, 0, -0.79069, 0.612217, 900, 900, 100, 1),
(4187, 171714, 0, 1, 1, -4792.54, -1127.9, 498.881, -1.82387, 0, 0, -0.79069, 0.612217, 900, 900, 100, 1),
(4258, 1744, 530, 1, 1, -4232.57, -11716.7, -143.727, 1.42607, 0, 0, 0.654132, 0.75638, 900, 900, 100, 1),
(4473, 1744, 530, 1, 1, -4242.87, -11710.2, -144.114, 0.0503179, 0, 0, 0.0251563, 0.999684, 900, 900, 100, 1),
(4729, 179862, 0, 1, 1, -6524.34, -1185.85, 309.219, -3.0805, 0, 0, -0.999534, 0.0305361, 900, 900, 100, 1),
(5776, 152032, 0, 1, 1, -6831.79, -1226.23, 240.031, 2.19911, 0, 0, 0.891005, 0.453993, 900, 900, 100, 1),
(5975, 173094, 1, 1, 1, 2056.67, -4836.1, 24.522, -1.43117, 0, 0, -0.656059, 0.75471, 900, 900, 100, 1),
(6406, 186631, 1, 1, 1, -3148.2, -2855.86, 34.1331, -0.34034, 0, 0, -0.16935, 0.985556, 900, 900, 100, 1),
(6430, 186232, 1, 1, 1, -4607.26, -3210.81, 34.8695, -1.54462, 0, 0, -0.697792, 0.716301, 900, 900, 100, 1),
(6455, 4089, 1, 1, 1, -3800.78, -4368.29, 16.7859, 0.689406, 0, 0, 0.337917, 0.941176, 900, 900, 100, 1),
(6828, 123244, 1, 1, 1, -3788.06, -4365.35, 16.7859, -2.67035, 0, 0, -0.972369, 0.233447, 900, 900, 100, 1),
(7003, 4088, 1, 1, 1, -3796.44, -4364.35, 16.7859, -1.3439, 0, 0, -0.622513, 0.782609, 900, 900, 100, 1),
(7364, 4087, 1, 1, 1, -3789.3, -4375.33, 16.7859, 2.1293, 0, 0, 0.874619, 0.48481, 900, 900, 100, 1),
(7379, 142077, 0, 1, 1, -12041.5, -1009.65, 49.3967, 1.94604, 0, 0, 0.826589, 0.562806, 900, 900, 100, 1),
(7439, 173065, 1, 1, 1, 2057.71, -4798.63, 22.5034, 0.802851, 0, 0, 0.390731, 0.920505, 900, 900, 100, 1),
(7569, 173066, 1, 1, 1, 2052.75, -4806.18, 22.4538, -1.43117, 0, 0, -0.656059, 0.75471, 900, 900, 100, 1),
(7782, 51702, 0, 1, 1, -12355.2, 144.025, 4.50734, 0.34034, 0, 0, 0.16935, 0.985556, 900, 900, 100, 1),
(7857, 51703, 0, 1, 1, -12344.8, 152.724, 4.77653, -1.87623, 0, 0, -0.806445, 0.591309, 900, 900, 100, 1),
(7871, 32595, 0, 1, 1, -5509.44, -1282.58, 402.546, -0.829032, 0, 0, -0.402747, 0.915311, 900, 900, 100, 1),
(7976, 181596, 0, 1, 1, -6670.07, -2152.7, 244.135, 3.09796, 0, 0, 0.999762, 0.0218146, 900, 900, 100, 1),
(8473, 34034, 0, 1, 1, -5493.69, -2423.16, 406.331, 1.09083, 0, 0, 0.518773, 0.854912, 900, 900, 100, 1),
(8541, 34035, 0, 1, 1, -5490.91, -2426.32, 406.331, 2.09439, 0, 0, 0.866024, 0.500002, 900, 900, 100, 1),
(9036, 34037, 0, 1, 1, -5493.21, -2424.1, 406.331, 0.785398, 0, 0, 0.382683, 0.92388, 900, 900, 100, 1),
(9340, 34038, 0, 1, 1, -5492.45, -2424.57, 406.331, 1.22173, 0, 0, 0.573576, 0.819152, 900, 900, 100, 1),
(9417, 147044, 0, 1, 1, -5489.71, -2427.42, 406.331, -0.567232, 0, 0, -0.279829, 0.96005, 900, 900, 100, 1),
(9487, 147045, 0, 1, 1, -5489.56, -2426.45, 406.331, -0.218166, 0, 0, -0.108867, 0.994056, 900, 900, 100, 1),
(9515, 147043, 0, 1, 1, -5491.79, -2425.4, 406.331, 0.523598, 0, 0, 0.258819, 0.965926, 900, 900, 100, 1),
(9570, 34033, 0, 1, 1, -5205.87, -2356.05, 398.834, -1.97222, 0, 0, -0.833885, 0.551938, 900, 900, 100, 1),
(9630, 147046, 0, 1, 1, -5210.72, -2352.58, 398.834, 2.87107, 0, 0, 0.990866, 0.134849, 900, 900, 100, 1),
(9797, 147047, 0, 1, 1, -5207.5, -2352.56, 399.828, -1.66679, 0, 0, -0.740218, 0.672367, 900, 900, 100, 1),
(9874, 147049, 0, 1, 1, -5209.39, -2352.78, 398.834, -1.09956, 0, 0, -0.5225, 0.852639, 900, 900, 100, 1),
(9886, 147048, 0, 1, 1, -5210.53, -2351.62, 398.834, 2.522, 0, 0, 0.952396, 0.304865, 900, 900, 100, 1),
(9945, 34036, 0, 1, 1, -5210.78, -2355.46, 398.834, 2.9147, 0, 0, 0.993572, 0.113203, 900, 900, 100, 1),
(10467, 34032, 0, 1, 1, -5208.5, -2351.77, 399.828, -2.40856, 0, 0, -0.933581, 0.358365, 900, 900, 100, 1),
(10524, 169966, 0, 1, 1, -14381.7, 374.043, 23.9088, 0.122173, 0, 0, 0.0610485, 0.998135, 900, 900, 100, 1),
(11020, 61035, 0, 1, 1, -6370.07, -3130.66, 283.878, -0.113446, 0, 0, -0.0566926, 0.998392, 900, 900, 100, 1),
(11318, 61036, 0, 1, 1, -6372.34, -3128.85, 283.879, -1.46608, 0, 0, -0.669132, 0.743144, 900, 900, 100, 1),
(11460, 144132, 0, 1, 1, -5344.32, -2945.06, 323.339, 3.09796, 0, 0, 0.999762, 0.0218146, 900, 900, 100, 1),
(11463, 147036, 0, 1, 1, -4810.08, -2681.62, 333.999, 2.53945, 0, 0, 0.955019, 0.296544, 900, 900, 100, 1),
(11588, 147037, 0, 1, 1, -4806.6, -2679.24, 333.999, -2.74017, 0, 0, -0.979925, 0.199366, 900, 900, 100, 1),
(11818, 147038, 0, 1, 1, -4809.08, -2681.26, 333.999, 2.23402, 0, 0, 0.898794, 0.438372, 900, 900, 100, 1),
(11921, 147039, 0, 1, 1, -4808.53, -2680.56, 333.999, 2.67035, 0, 0, 0.972369, 0.233447, 900, 900, 100, 1),
(12002, 147041, 0, 1, 1, -4805.37, -2678.18, 333.999, 0.881391, 0, 0, 0.426569, 0.904455, 900, 900, 100, 1),
(12081, 147042, 0, 1, 1, -4806.31, -2677.92, 333.999, 1.23046, 0, 0, 0.577146, 0.816641, 900, 900, 100, 1),
(12095, 147040, 0, 1, 1, -4807.63, -2680, 333.999, 1.97222, 0, 0, 0.833885, 0.551938, 900, 900, 100, 1),
(12168, 32596, 0, 1, 1, -5281.09, -2967.8, 338.404, -1.09083, 0, 0, -0.518773, 0.854912, 900, 900, 100, 1),
(12231, 32596, 0, 1, 1, -5316.71, -2983.54, 321.787, -1.88496, 0, 0, -0.809018, 0.587783, 900, 900, 100, 1),
(12404, 34031, 0, 1, 1, -5856.64, -2646.11, 308.974, 2.67035, 0, 0, 0.972369, 0.233447, 900, 900, 100, 1),
(12541, 34026, 0, 1, 1, -5855.47, -2642.44, 308.974, 2.27765, 0, 0, 0.908142, 0.418662, 900, 900, 100, 1),
(12733, 34025, 0, 1, 1, -5855.89, -2643.32, 308.974, 2.62672, 0, 0, 0.967046, 0.254602, 900, 900, 100, 1),
(12830, 34027, 0, 1, 1, -5852.75, -2644.09, 309.968, -1.91114, 0, 0, -0.816643, 0.577143, 900, 900, 100, 1),
(12861, 34028, 0, 1, 1, -5854.64, -2643.84, 308.974, -1.3439, 0, 0, -0.622513, 0.782609, 900, 900, 100, 1),
(12918, 34030, 0, 1, 1, -5852.02, -2647.87, 308.974, -2.21657, 0, 0, -0.894935, 0.446197, 900, 900, 100, 1),
(13078, 34029, 0, 1, 1, -5853.54, -2643.08, 309.968, -2.6529, 0, 0, -0.970296, 0.241922, 900, 900, 100, 1),
(13081, 147279, 0, 1, 1, -5398.94, -2956.49, 314.836, 2.00713, 0, 0, 0.843392, 0.537299, 900, 900, 100, 1),
(13177, 147792, 0, 1, 1, -5375.58, -2960, 322.055, -2.79253, 0, 0, -0.984808, 0.173647, 900, 900, 100, 1),
(13336, 147793, 0, 1, 1, -5385.35, -2972.03, 322.055, 2.96706, 0, 0, 0.996195, 0.0871556, 900, 900, 100, 1),
(13355, 51702, 1, 1, 1, 379.891, -4710.68, 16.0609, 2.13803, 0, 0, 0.876727, 0.480988, 900, 900, 100, 1),
(13394, 51703, 1, 1, 1, 369.064, -4702.45, 16.3301, -0.078539, 0, 0, -0.0392594, 0.999229, 900, 900, 100, 1),
(13544, 153460, 0, 1, 1, -10896, -3187.26, 49.8529, 2.15099, 0, 0, 0.879826, 0.475297, 900, 900, 100, 1),
(13598, 20739, 1, 1, 1, 785.534, -1821.2, 91.667, 2.60927, 0, 0, 0.964788, 0.26303, 900, 900, 100, 1),
(13602, 146441, 1, 1, 1, -1990.47, -3611.05, 23.5673, 2.3911, 0, 0, 0.930417, 0.366502, 900, 900, 100, 1),
(13728, 147282, 0, 1, 1, -10944.5, -3461.83, 66.7624, -2.91853, 0, 0, -0.993787, 0.1113, 900, 900, 100, 1),
(13747, 147283, 0, 1, 1, -10951.6, -3450.37, 66.7624, -1.47863, 0, 0, -0.673782, 0.73893, 900, 900, 100, 1),
(13792, 146441, 0, 1, 1, -10950.2, -3463.4, 66.7624, 1.33134, 0, 0, 0.617586, 0.786503, 900, 900, 100, 1),
(13960, 147284, 0, 1, 1, -10957.2, -3458.73, 66.7624, 0.004894, 0, 0, 0.002447, 0.999997, 900, 900, 100, 1),
(14001, 4087, 530, 1, 1, -2976.77, 4021.28, 3.57197, 1.5708, 0, 0, 0.707108, 0.707106, 900, 900, 100, 1),
(14278, 4088, 530, 1, 1, -2977.01, 4034.38, 3.57197, -1.90241, 0, 0, -0.814116, 0.580702, 900, 900, 100, 1),
(14293, 4089, 530, 1, 1, -2982.78, 4033.33, 3.57197, 0.1309, 0, 0, 0.0654033, 0.997859, 900, 900, 100, 1),
(14558, 138316, 1, 1, 1, -2287.63, -1934.92, 95.7939, -1.76278, 0, 0, -0.771624, 0.636079, 900, 900, 100, 1),
(14599, 147282, 1, 1, 1, -1989.08, -3605.36, 23.5673, -1.85878, 0, 0, -0.801255, 0.598323, 900, 900, 100, 1),
(14600, 147283, 1, 1, 1, -2002.54, -3605.94, 23.5673, -0.418879, 0, 0, -0.207912, 0.978148, 900, 900, 100, 1),
(14683, 147284, 1, 1, 1, -1997.98, -3614.91, 23.5673, 1.06465, 0, 0, 0.507538, 0.861629, 900, 900, 100, 1),
(14726, 61035, 1, 1, 1, -4081.48, -2355.21, 108.897, -2.13803, 0, 0, -0.876727, 0.480988, 900, 900, 100, 1),
(14868, 61036, 1, 1, 1, -4078.86, -2353.97, 108.898, 2.79253, 0, 0, 0.984808, 0.173647, 900, 900, 100, 1),
(15074, 2010, 0, 1, 1, -3790.27, -870.139, 11.5658, 1.68424, 0, 0, 0.746056, 0.665883, 900, 900, 100, 1),
(15254, 23302, 0, 1, 1, -8421, 616.391, 95.455, -1, 0, 0, -0.479426, 0.877583, 900, 900, 100, 1),
(15345, 23303, 0, 1, 1, -8425, 614.482, 95.245, 1.998, 0, 0, 0.84093, 0.541143, 900, 900, 100, 1),
(15548, 3187, 0, 1, 1, -10618.6, -1153.71, 26.9249, -2.11185, 0, 0, -0.870356, 0.492423, 900, 900, 100, 1),
(15906, 20689, 0, 1, 1, -10357, -1251.07, 35.3004, -2.17294, 0, 0, -0.884989, 0.465612, 900, 900, 100, 1),
(15907, 92419, 0, 1, 1, -10331.6, 381.956, 59.6922, -1.80642, 0, 0, -0.785318, 0.619092, 900, 900, 100, 1),
(15965, 175383, 0, 1, 1, -2369.44, -2512.04, 75.344, 0.287978, 0, 0, 0.143492, 0.989652, 900, 900, 100, 1),
(16019, 32582, 0, 1, 1, -2607.76, -2280.84, 86.0163, 2.32129, 0, 0, 0.91706, 0.398748, 900, 900, 100, 1),
(16090, 32584, 0, 1, 1, -2604.61, -2279.17, 86.0163, 1.79769, 0, 0, 0.782608, 0.622514, 900, 900, 100, 1),
(16150, 32585, 0, 1, 1, -2599.06, -2281.14, 86.0163, 0.750493, 0, 0, 0.366502, 0.930417, 900, 900, 100, 1),
(16292, 32583, 0, 1, 1, -2602.08, -2279.25, 86.0163, 1.27409, 0, 0, 0.594823, 0.803857, 900, 900, 100, 1),
(16296, 123244, 0, 1, 1, -3792.28, -859.011, 11.5958, -1.82387, 0, 0, -0.79069, 0.612217, 900, 900, 100, 1),
(16337, 4088, 0, 1, 1, -3798.59, -864.625, 11.5958, -0.497419, 0, 0, -0.246153, 0.969231, 900, 900, 100, 1),
(16362, 4087, 0, 1, 1, -3785.63, -866.553, 11.5958, 2.97579, 0, 0, 0.996566, 0.0828064, 900, 900, 100, 1),
(16425, 4089, 0, 1, 1, -3798.51, -870.488, 11.5958, 1.53589, 0, 0, 0.694658, 0.71934, 900, 900, 100, 1),
(16794, 51702, 530, 1, 1, 158.005, 2794.85, 113.575, -0.069813, 0, 0, -0.0348994, 0.999391, 900, 900, 100, 1),
(16802, 51703, 530, 1, 1, 171.06, 2798.66, 113.844, -2.28638, 0, 0, -0.909961, 0.414694, 900, 900, 100, 1),
(16823, 51704, 530, 1, 1, -906.096, 1963.42, 68.8995, -0.191985, 0, 0, -0.0958451, 0.995396, 900, 900, 100, 1),
(16858, 51704, 530, 1, 1, -4170.51, 425.303, 33.3215, -0.061086, 0, 0, -0.0305383, 0.999534, 900, 900, 100, 1),
(17032, 51705, 530, 1, 1, -4157.49, 429.226, 33.5907, -2.27765, 0, 0, -0.908142, 0.418662, 900, 900, 100, 1),
(17049, 51705, 530, 1, 1, -892.674, 1965.61, 69.1687, -2.40855, 0, 0, -0.93358, 0.35837, 900, 900, 100, 1),
(17051, 175078, 0, 1, 1, -4202.59, -2367.58, 202.821, 2.11185, 0, 0, 0.870356, 0.492423, 900, 900, 100, 1),
(17096, 21678, 1, 1, 1, -1067.05, -3530.39, 64.2743, -0.523599, 0, 0, -0.258819, 0.965926, 900, 900, 100, 1),
(17100, 38493, 0, 1, 1, -10593.5, -1165.65, 30.0574, 1.67552, 0, 0, 0.743146, 0.669129, 900, 900, 100, 1),
(19114, 38494, 0, 1, 1, -10600.7, -1154.29, 30.0574, 0.235619, 0, 0, 0.117537, 0.993068, 900, 900, 100, 1),
(19385, 38495, 0, 1, 1, -10595.1, -1152.65, 30.0574, -1.79769, 0, 0, -0.782608, 0.622514, 900, 900, 100, 1),
(19386, 38492, 0, 1, 1, -10588, -1157.23, 30.0574, -3.12414, 0, 0, -0.999962, 0.0087262, 900, 900, 100, 1),
(19554, 123244, 530, 1, 1, -2970.43, 4029.08, 3.57197, 3.05433, 0, 0, 0.999048, 0.0436174, 900, 900, 100, 1),
(19840, 51948, 1, 1, 1, -425.696, -3163.75, 212.72, 2.45219, 0, 0, 0.941176, 0.337916, 900, 900, 100, 1),
(19841, 169968, 1, 1, 1, -925.451, -3690.82, 8.12508, 2.30383, 0, 0, 0.913544, 0.406739, 900, 900, 100, 1),
(19844, 51702, 1, 1, 1, -339.171, -2573.65, 97.6919, 1.28282, 0, 0, 0.598326, 0.801253, 900, 900, 100, 1),
(20360, 51703, 1, 1, 1, -340.065, -2560.08, 97.9611, -0.93375, 0, 0, -0.450098, 0.892979, 900, 900, 100, 1),
(20393, 2726, 0, 1, 1, -933.51, -3480.52, 51.3067, 3.14159, 0, 0, 1, 0.00000126759, 900, 900, 100, 1),
(20395, 2729, 0, 1, 1, -1256.3, -2549.68, 21.5346, 3.14159, 0, 0, -1, 0, 900, 900, 100, 1),
(20396, 146441, 530, 1, 1, -720.194, 2600.86, 91.009, 0.061087, 0, 0, 0.0305388, 0.999534, 900, 900, 100, 1),
(20513, 147282, 530, 1, 1, -717.021, 2595.93, 91.009, 2.0944, 0, 0, 0.866027, 0.499998, 900, 900, 100, 1),
(22963, 147283, 530, 1, 1, -708.181, 2606.09, 91.009, -2.74889, 0, 0, -0.980784, 0.195095, 900, 900, 100, 1),
(23320, 147284, 530, 1, 1, -717.819, 2608.96, 91.009, -1.26536, 0, 0, -0.591308, 0.806446, 900, 900, 100, 1),
(23755, 2572, 0, 1, 1, -563.705, 38.6448, 49.8843, 3.14159, 0, 0, 1, 0.00000126759, 900, 900, 100, 1),
(26733, 1796, 0, 1, 1, -551.634, -1434.63, 52.4438, 2.90597, 0, 0, 0.993068, 0.117539, 900, 900, 100, 1),
(31006, 1897, 0, 1, 1, -821.989, -572.153, 15.2804, 2.37365, 0, 0, 0.927184, 0.374606, 900, 900, 100, 1),
(36631, 141839, 1, 1, 1, -7197.15, -3764.29, 8.78143, 2.99324, 0, 0, 0.99725, 0.0741083, 900, 900, 100, 1),
(36632, 141840, 1, 1, 1, -7387.53, -4726.64, 9.14903, -2.86234, 0, 0, -0.990268, 0.139173, 900, 900, 100, 1),
(36712, 184616, 0, 1, 1, -158.691, -863.998, 56.6498, 0.680678, 0, 0, 0.333807, 0.942642, 900, 900, 100, 1),
(38585, 50468, 1, 1, 1, -1240.23, 112.188, 129.654, -2.82743, 0, 0, -0.987688, 0.156436, 900, 900, 100, 1),
(38586, 123244, 0, 1, 1, -565.529, 41.4896, 49.882, 3.08923, 0, 0, 0.999657, 0.0261783, 900, 900, 100, 1),
(38738, 4088, 0, 1, 1, -572.288, 46.5525, 49.882, -1.8675, 0, 0, -0.803856, 0.594824, 900, 900, 100, 1),
(40346, 4087, 0, 1, 1, -571.593, 33.4672, 49.882, 1.6057, 0, 0, 0.719339, 0.694659, 900, 900, 100, 1),
(42080, 4089, 0, 1, 1, -578.017, 45.307, 49.882, 0.165807, 0, 0, 0.0828086, 0.996565, 900, 900, 100, 1),
(42100, 61035, 0, 1, 1, -1296.74, -1220.18, 22.9453, 2.84489, 0, 0, 0.989016, 0.147808, 900, 900, 100, 1),
(42290, 61036, 0, 1, 1, -1294.84, -1222.38, 22.9462, 1.49226, 0, 0, 0.678802, 0.734321, 900, 900, 100, 1),
(42356, 182055, 530, 1, 1, -1938.49, -11915.1, 47.9809, -2.99324, 0, 0, -0.99725, 0.0741083, 900, 900, 100, 1),
(42411, 3222, 1, 1, 1, -1890.66, -1092.59, 89.2807, -2.99324, 0, 0, -0.99725, 0.0741083, 900, 900, 100, 1),
(42414, 183795, 530, 1, 1, 250.932, 6032.98, 131.604, -2.32129, 0, 0, -0.91706, 0.398748, 900, 900, 100, 1),
(42616, 181715, 530, 1, 1, -4728.26, -12384.4, 11.121, -2.09969, 0, 0, -0.867346, 0.497706, 900, 900, 100, 1),
(42624, 181989, 530, 1, 1, 8676.33, -6603.03, 70.1999, -1.64061, 0, 0, -0.731354, 0.681998, 900, 900, 100, 1),
(42640, 182118, 530, 1, 1, -2651.67, 4445.03, 36.7783, 1.03847, 0, 0, 0.496216, 0.868199, 900, 900, 100, 1),
(42656, 182279, 530, 1, 1, -4178.97, -12438.3, 43.0709, 2.75762, 0, 0, 0.981627, 0.190809, 900, 900, 100, 1),
(42756, 182315, 530, 1, 1, 9856.96, -7362.63, 18.5888, -2.91392, 0, 0, -0.993528, 0.113591, 900, 900, 100, 1),
(43046, 182316, 530, 1, 1, 9843.8, -7362.65, 18.5888, 2.93688, 0, 0, 0.994766, 0.102178, 900, 900, 100, 1),
(43190, 182317, 530, 1, 1, 9823.79, -7326.86, 26.2467, -1.08133, 0, 0, -0.514706, 0.857367, 900, 900, 100, 1),
(43846, 182861, 530, 1, 1, 174.38, 4301.74, 117.146, 1.6057, 0, 0, 0.719339, 0.694659, 900, 900, 100, 1),
(43858, 182862, 530, 1, 1, -4061.61, 2256.02, 94.8144, 1.37008, 0, 0, 0.632704, 0.774394, 900, 900, 100, 1),
(43863, 182863, 530, 1, 1, -4063.61, 2253.92, 94.8154, 0.017454, 0, 0, 0.00872689, 0.999962, 900, 900, 100, 1),
(44071, 182967, 530, 1, 1, -3932.37, 1982.19, 100.417, 2.56564, 0, 0, 0.958821, 0.284012, 900, 900, 100, 1),
(44072, 182968, 530, 1, 1, -3928.96, 1984.65, 100.417, -2.71399, 0, 0, -0.977231, 0.212176, 900, 900, 100, 1),
(46126, 182969, 530, 1, 1, -3931.39, 1982.57, 100.417, 2.2602, 0, 0, 0.904455, 0.426569, 900, 900, 100, 1),
(46128, 182970, 530, 1, 1, -3930.86, 1983.28, 100.417, 2.69653, 0, 0, 0.975342, 0.220699, 900, 900, 100, 1),
(46326, 182971, 530, 1, 1, -3929.97, 1983.87, 100.417, 1.9984, 0, 0, 0.841038, 0.540975, 900, 900, 100, 1),
(46356, 182972, 530, 1, 1, -3927.75, 1985.74, 100.417, 0.907572, 0, 0, 0.438371, 0.898794, 900, 900, 100, 1),
(46663, 182973, 530, 1, 1, -3928.7, 1985.98, 100.417, 1.25664, 0, 0, 0.587786, 0.809016, 900, 900, 100, 1),
(46795, 183031, 530, 1, 1, -4079.21, 2190.14, 107.499, -0.427606, 0, 0, -0.212178, 0.977231, 900, 900, 100, 1),
(46998, 183034, 530, 1, 1, -4099.77, 2189.47, 100.836, 0.095992, 0, 0, 0.0479776, 0.998848, 900, 900, 100, 1),
(47000, 183120, 530, 1, 1, 219.644, 7859.36, 23.9409, -2.10312, 0, 0, -0.868198, 0.496217, 900, 900, 100, 1),
(47043, 183149, 530, 1, 1, -1333.94, 7199.66, 33.9296, 2.81871, 0, 0, 0.986997, 0.160741, 900, 900, 100, 1),
(47046, 183218, 530, 1, 1, -2521.93, 7356.1, 8.78113, -0.613911, 0, 0, -0.302158, 0.953258, 900, 900, 100, 1),
(47088, 183346, 530, 1, 1, 322.075, 7839.27, 22.0447, -1.18682, 0, 0, -0.559191, 0.829039, 900, 900, 100, 1),
(47176, 183348, 530, 1, 1, 187.669, 2680.69, 88.6317, 0.31987, 0, 0, 0.159254, 0.987238, 900, 900, 100, 1),
(47281, 183483, 530, 1, 1, 2325.5, 6058.73, 142.23, 2.37365, 0, 0, 0.927184, 0.374606, 900, 900, 100, 1),
(47349, 183761, 530, 1, 1, 9850.04, -7374.71, 18.5888, 2.93688, 0, 0, 0.994766, 0.102178, 900, 900, 100, 1),
(47403, 183783, 530, 1, 1, -2246.05, 6218.75, 43.8917, 2.10814, 0, 0, 0.869441, 0.494037, 900, 900, 100, 1),
(47752, 184004, 530, 1, 1, 3612.59, 7134.57, 140.407, 2.7838, 0, 0, 0.984041, 0.177944, 900, 900, 100, 1),
(47761, 184285, 530, 1, 1, -3958.71, 2202.45, 101.77, 3.47321, 0, 0, -0.986285, 0.16505, 900, 900, 100, 1),
(47785, 184313, 530, 1, 1, 2536.14, 6519.14, 3.3592, 0.712928, 0, 0, 0.348963, 0.937137, 900, 900, 100, 1),
(47787, 184558, 530, 1, 1, -1841.04, 5225.31, -38.0905, -1.10828, 0, 0, -0.526212, 0.850353, 900, 900, 100, 1),
(47788, 184559, 530, 1, 1, -1847.52, 5229.31, -38.0905, -3.11541, 0, 0, -0.999914, 0.013102, 900, 900, 100, 1),
(47789, 4089, 0, 1, 1, -9459.47, 102.285, 58.3415, -0.750491, 0, 0, -0.366501, 0.930418, 900, 900, 100, 1),
(47859, 4087, 0, 1, 1, -9464.95, 89.9806, 58.3415, 0.689405, 0, 0, 0.337917, 0.941176, 900, 900, 100, 1),
(47861, 123244, 0, 1, 1, -9454.9, 90.0535, 58.3415, 2.17293, 0, 0, 0.884987, 0.465617, 900, 900, 100, 1),
(47862, 4088, 0, 1, 1, -9455, 98.4979, 58.3415, -2.7838, 0, 0, -0.98404, 0.177946, 900, 900, 100, 1),
(47863, 181885, 530, 1, 1, 7596.07, -6906.27, 94.1236, -0.829032, 0, 0, -0.402747, 0.915311, 900, 900, 100, 1),
(47910, 185602, 530, 1, 1, 2320.79, 7255.67, 365.5, 1.79769, 0, 0, 0.782607, 0.622516, 900, 900, 100, 1),
(47993, 173065, 530, 1, 1, -3101.91, 2596.63, 62.9606, 0.680679, 0, 0, 0.333807, 0.942641, 900, 900, 100, 1),
(47995, 186140, 530, 1, 1, 4145.2, 3066.21, 336.649, -3.05433, 0, 0, -0.999048, 0.0436193, 900, 900, 100, 1),
(48001, 51706, 0, 1, 1, -10404, -3257.64, 22.1459, -1.12574, 0, 0, -0.533616, 0.845727, 900, 900, 100, 1),
(48002, 51707, 0, 1, 1, -10394.2, -3267.13, 22.4151, 2.94088, 0, 0, 0.994969, 0.100188, 900, 900, 100, 1),
(48134, 184686, 530, 1, 1, -2397.66, 2891.95, -55.9305, 5.2247, 0, 0, -0.504878, 0.863191, 900, 900, 100, 1),
(48136, 17191, 1, 1, 1, -1978.85, 443.599, 133.59, 2.49582, 0, 0, 0.948324, 0.317305, 900, 900, 100, 1),
(48574, 175145, 1, 1, 1, 200.77, 1175.62, 167.999, -2.30383, 0, 0, -0.913544, 0.406739, 900, 900, 100, 1),
(48844, 182269, 530, 1, 1, -196.621, 5486.17, 21.8878, 1.41372, 0, 0, 0.649449, 0.760405, 900, 900, 100, 1),
(49794, 186137, 530, 1, 1, 2962.07, 1797.98, 139.01, 1.72788, 0, 0, 0.760407, 0.649446, 900, 900, 100, 1),
(49795, 21701, 0, 1, 1, -10123.2, 1058.27, 36.2985, -3.01069, 0, 0, -0.997859, 0.0654046, 900, 900, 100, 1),
(49802, 130666, 0, 1, 1, -10267.1, 1393.97, 39.5082, -2.46964, 0, 0, -0.944089, 0.329691, 900, 900, 100, 1),
(49976, 130667, 0, 1, 1, -10650.1, 1104.9, 33.6293, 2.79253, 0, 0, 0.984808, 0.173647, 900, 900, 100, 1),
(50016, 175852, 1, 1, 1, -1698.94, 3083.72, 32.5628, 2.16421, 0, 0, 0.882948, 0.469471, 900, 900, 100, 1),
(50034, 51704, 1, 1, 1, -1891.89, 626.389, 109.575, -1.9984, 0, 0, -0.841038, 0.540975, 900, 900, 100, 1),
(50035, 51705, 1, 1, 1, -1892.89, 612.827, 109.845, 2.06821, 0, 0, 0.859405, 0.511295, 900, 900, 100, 1),
(50036, 186142, 530, 1, 1, 3067.91, 3675.48, 142.316, -0.479966, 0, 0, -0.237686, 0.971342, 900, 900, 100, 1),
(50177, 38493, 0, 1, 1, -350.577, 1504.99, 18.8068, -0.497419, 0, 0, -0.246153, 0.969231, 900, 900, 100, 1),
(50178, 38494, 0, 1, 1, -337.114, 1504.51, 18.8068, -1.93731, 0, 0, -0.824125, 0.566409, 900, 900, 100, 1),
(50511, 38495, 0, 1, 1, -338.949, 1498.94, 18.8068, 2.31256, 0, 0, 0.915311, 0.402747, 900, 900, 100, 1),
(50512, 38492, 0, 1, 1, -346.742, 1495.69, 18.8068, 0.98611, 0, 0, 0.473319, 0.880891, 900, 900, 100, 1),
(51173, 2014, 0, 1, 1, -9256.97, -2232.04, 63.9334, 1.6057, 0, 0, 0.719339, 0.694659, 900, 900, 100, 1),
(51608, 1744, 0, 1, 1, 2038.58, 147.191, 34.2486, -3.14159, 0, 0, -1, 0.00000126759, 900, 900, 100, 1),
(51804, 38493, 0, 1, 1, 2230.62, 307.257, 36.7193, 1.53589, 0, 0, 0.694658, 0.71934, 900, 900, 100, 1),
(51805, 38494, 0, 1, 1, 2225.04, 319.516, 36.7193, 0.095993, 0, 0, 0.0479781, 0.998848, 900, 900, 100, 1),
(51968, 38495, 0, 1, 1, 2230.84, 320.359, 36.7193, -1.93732, 0, 0, -0.824127, 0.566404, 900, 900, 100, 1),
(52033, 38492, 0, 1, 1, 2237.23, 314.837, 36.7193, 3.01942, 0, 0, 0.998135, 0.0610484, 900, 900, 100, 1),
(52245, 113753, 0, 1, 1, 1693.92, 281.951, -62.5492, 1.64934, 0, 0, 0.734324, 0.678799, 900, 900, 100, 1),
(52297, 77813, 0, 1, 1, 1681.83, 286.665, -62.5492, 0.165807, 0, 0, 0.0828086, 0.996565, 900, 900, 100, 1),
(52299, 40303, 0, 1, 1, 1395.34, 140.091, -62.5492, 0.733038, 0, 0, 0.358368, 0.93358, 900, 900, 100, 1),
(52300, 148957, 0, 1, 1, 2974.16, -1495.55, 147.04, 0.698132, 0, 0, 0.34202, 0.939693, 900, 900, 100, 1),
(52510, 148958, 0, 1, 1, 2979.53, -1483.19, 147.04, -0.741765, 0, 0, -0.362438, 0.932008, 900, 900, 100, 1),
(52547, 148959, 0, 1, 1, 2984.04, -1486.94, 147.04, -2.77507, 0, 0, -0.983255, 0.182237, 900, 900, 100, 1),
(52852, 148956, 0, 1, 1, 2984.21, -1495.39, 147.04, 2.18166, 0, 0, 0.88701, 0.461749, 900, 900, 100, 1),
(52904, 181131, 0, 1, 1, 2264.12, -5316.56, 81.9278, 1.90375, 0, 0, 0.814505, 0.580157, 900, 900, 100, 1),
(52915, 148957, 0, 1, 1, 1548.43, -5393.59, 80.0324, 1.50971, 0, 0, 0.685183, 0.728371, 900, 900, 100, 1),
(53179, 148958, 0, 1, 1, 1543.17, -5381.19, 80.0324, 0.069813, 0, 0, 0.0348994, 0.999391, 900, 900, 100, 1),
(55977, 148959, 0, 1, 1, 1548.99, -5380.5, 80.0324, -1.9635, 0, 0, -0.831471, 0.555568, 900, 900, 100, 1),
(55985, 148956, 0, 1, 1, 1555.23, -5386.18, 80.0324, 2.99324, 0, 0, 0.99725, 0.0741083, 900, 900, 100, 1),
(65694, 179887, 0, 1, 1, -588.373, -4547.32, 9.1969, 2.38238, 0, 0, 0.928811, 0.370555, 900, 900, 100, 1),
(65705, 61035, 0, 1, 1, 333.847, -2117.36, 104.606, -0.776671, 0, 0, -0.378648, 0.925541, 900, 900, 100, 1),
(65877, 61036, 0, 1, 1, 333.177, -2114.54, 104.607, -2.1293, 0, 0, -0.874619, 0.48481, 900, 900, 100, 1),
(65892, 32582, 0, 1, 1, 208.33, -1963.2, 140.199, 2.34747, 0, 0, 0.922201, 0.38671, 900, 900, 100, 1),
(65893, 32584, 0, 1, 1, 211.431, -1961.45, 140.199, 1.82387, 0, 0, 0.79069, 0.612217, 900, 900, 100, 1),
(65894, 32591, 0, 1, 1, 221.599, -1955.59, 140.199, -0.183259, 0, 0, -0.0915013, 0.995805, 900, 900, 100, 1),
(65895, 32592, 0, 1, 1, 207.378, -1953.78, 140.199, -0.139626, 0, 0, -0.0697563, 0.997564, 900, 900, 100, 1),
(65896, 32590, 0, 1, 1, 226.315, -1961.5, 140.199, 1.64934, 0, 0, 0.734324, 0.678799, 900, 900, 100, 1),
(65897, 32585, 0, 1, 1, 217.035, -1963.27, 140.199, 0.776673, 0, 0, 0.378649, 0.92554, 900, 900, 100, 1),
(65901, 32593, 0, 1, 1, 218.245, -1953.59, 140.199, -0.968657, 0, 0, -0.465614, 0.884988, 900, 900, 100, 1),
(66153, 32583, 0, 1, 1, 213.966, -1961.46, 140.199, 1.30027, 0, 0, 0.605294, 0.796002, 900, 900, 100, 1),
(66154, 32594, 0, 1, 1, 203.43, -1955.59, 140.199, 2.87107, 0, 0, 0.990866, 0.134849, 900, 900, 100, 1),
(66155, 147036, 0, 1, 1, 265.565, -2216.69, 125.171, 2.60927, 0, 0, 0.964788, 0.26303, 900, 900, 100, 1),
(66156, 147037, 0, 1, 1, 268.864, -2214.08, 125.171, -2.67036, 0, 0, -0.972371, 0.233442, 900, 900, 100, 1),
(66157, 147038, 0, 1, 1, 266.53, -2216.26, 125.171, 2.30383, 0, 0, 0.913544, 0.406739, 900, 900, 100, 1),
(66197, 147039, 0, 1, 1, 267.031, -2215.53, 125.171, 2.74017, 0, 0, 0.979925, 0.199366, 900, 900, 100, 1),
(66198, 147041, 0, 1, 1, 270.023, -2212.94, 125.171, 0.951205, 0, 0, 0.457874, 0.889017, 900, 900, 100, 1),
(66422, 147042, 0, 1, 1, 269.066, -2212.74, 125.171, 1.30027, 0, 0, 0.605294, 0.796002, 900, 900, 100, 1),
(66514, 147040, 0, 1, 1, 267.894, -2214.91, 125.171, 2.04203, 0, 0, 0.852639, 0.522501, 900, 900, 100, 1),
(66672, 176508, 1, 1, 1, 990.191, 1006.01, 104.824, 2.62672, 0, 0, 0.967046, 0.254602, 900, 900, 100, 1),
(66711, 51702, 1, 1, 1, 2546.37, -3393.64, 104.434, 1.76278, 0, 0, 0.771624, 0.636079, 900, 900, 100, 1),
(66861, 51703, 1, 1, 1, 2539.31, -3382.01, 104.703, -0.453785, 0, 0, -0.224951, 0.97437, 900, 900, 100, 1),
(66866, 92489, 1, 1, 1, 6546.06, 438.621, 7.62833, 1.64061, 0, 0, 0.731354, 0.681998, 900, 900, 100, 1),
(66867, 179864, 1, 1, 1, 6697.86, -4642.63, 721.055, -2.6529, 0, 0, -0.970295, 0.241925, 900, 900, 100, 1),
(67243, 180914, 1, 1, 1, -6859.37, 749.026, 42.5261, 0.253073, 0, 0, 0.126199, 0.992005, 900, 900, 100, 1),
(67244, 191504, 0, 1, 449, 2466.24, -5659.79, 420.589, 2.46964, 0, 0, 0.944089, 0.329691, 900, 900, 100, 1),
(67245, 191506, 0, 1, 449, 2428.09, -5648.83, 420.632, -0.154183, 0, 0, -0.0770149, 0.99703, 900, 900, 100, 1),
(67462, 191507, 0, 1, 449, 2429.86, -5639.13, 420.674, -0.241448, 0, 0, -0.120431, 0.992722, 900, 900, 100, 1),
(67463, 191503, 0, 1, 449, 2471.9, -5651.71, 420.614, 2.55691, 0, 0, 0.957571, 0.288197, 900, 900, 100, 1),
(67464, 183878, 530, 1, 1, -4232.68, -11716.6, -143.808, 0.145849, 0, 0, 0.0728599, 0.997342, 900, 900, 100, 1),
(67465, 183793, 530, 1, 1, -4243.95, -11710.8, -144.245, 1.45489, 0, 0, 0.664964, 0.746876, 900, 900, 100, 1),
(67466, 51705, 530, 1, 1, -5110.28, 626.765, 87.131, 3.33215, 0, 0, -0.995464, 0.0951356, 900, 900, 100, 1),
(67467, 51704, 530, 1, 1, -5122.91, 631.819, 86.9003, 5.54871, 0, 0, -0.359037, 0.933323, 900, 900, 100, 1),
(67468, 34034, 0, 1, 1, -4570.28, -1716.59, 510.347, 3.49067, 0, 0, -0.984807, 0.173652, 900, 900, 100, 1),
(67485, 34035, 0, 1, 1, -4570.2, -1712.38, 510.347, 4.49422, 0, 0, -0.779884, 0.625924, 900, 900, 100, 1),
(67488, 34037, 0, 1, 1, -4570, -1715.57, 510.347, 3.18527, 0, 0, -0.999762, 0.0218352, 900, 900, 100, 1),
(67512, 34038, 0, 1, 1, -4570.25, -1714.72, 510.347, 3.62156, 0, 0, -0.971342, 0.237686, 900, 900, 100, 1),
(67539, 147043, 0, 1, 1, -4570.18, -1713.66, 510.347, 2.92342, 0, 0, 0.994056, 0.108872, 900, 900, 100, 1),
(67583, 147044, 0, 1, 1, -4570.34, -1710.76, 510.347, 1.83259, 0, 0, 0.793353, 0.608762, 900, 900, 100, 1),
(67669, 147045, 0, 1, 1, -4571.1, -1711.38, 510.347, 2.18166, 0, 0, 0.887011, 0.461749, 900, 900, 100, 1),
(67671, 186557, 571, 1, 1, 2425.51, -5075.06, 272.402, 1.25664, 0, 0, 0.587785, 0.809017, 900, 900, 100, 1),
(67771, 192019, 571, 1, 1, 1951.52, -6191.11, 24.0483, 0.157078, 0, 0, 0.0784583, 0.996917, 900, 900, 100, 1),
(67981, 192021, 571, 1, 1, 1951.46, -6196.25, 23.6867, -2.94959, 0, 0, -0.995395, 0.0958539, 900, 900, 100, 1),
(68016, 192022, 571, 1, 1, 1952.68, -6196.28, 23.7447, 2.38237, 0, 0, 0.928809, 0.370559, 900, 900, 100, 1),
(68149, 191001, 571, 1, 1, 2942.59, -345.929, 114.655, 2.00713, 0, 0, 0.843392, 0.537299, 900, 900, 100, 1),
(68323, 191002, 571, 1, 1, 2932.66, -344.341, 114.655, 0.523598, 0, 0, 0.258819, 0.965926, 900, 900, 100, 1),
(68336, 191003, 571, 1, 1, 2940.09, -333.11, 114.655, -0.916297, 0, 0, -0.442288, 0.896873, 900, 900, 100, 1),
(68592, 191004, 571, 1, 1, 2943.88, -337.584, 114.655, -2.94959, 0, 0, -0.995395, 0.0958539, 900, 900, 100, 1),
(68593, 190496, 571, 1, 1, 7796, -2953.44, 1257.73, 2.93214, 0, 0, 0.994521, 0.104535, 900, 900, 100, 1),
(69227, 188453, 571, 1, 1, 3312.17, -2338.18, 111.023, -1.37881, -0.00747776, 0.00981712, -0.636003, 0.771587, 900, 900, 100, 1),
(69296, 190766, 571, 1, 1, 5242.53, 4493.23, -84.3435, -2.38925, 0, 0, -0.930078, 0.367362, 900, 900, 100, 1),
(69414, 190525, 571, 1, 1, 6645.19, -205.514, 951.685, -2.94088, 0, 0, -0.994968, 0.100189, 900, 900, 100, 1),
(69415, 192830, 571, 1, 1, 5623.16, 4578.08, -137.623, -1.50098, 0, 0, -0.681997, 0.731355, 900, 900, 100, 1),
(69656, 192832, 571, 1, 1, 5618.6, 4572.68, -137.459, 2.96704, 0, 0, 0.996194, 0.0871655, 900, 900, 100, 1),
(69816, 186434, 571, 1, 1, 1398.51, -3200.39, 160.809, -2.54818, 0, 0, -0.956305, 0.292372, 900, 900, 100, 1),
(70175, 192582, 571, 1, 1, 7980.6, 7.1632, 961.549, -0.421481, 0, 0, -0.209184, 0.977876, 900, 900, 100, 1),
(70673, 192584, 571, 1, 1, 7738.26, 68.9618, 1009.32, -1.66187, 0, 0, -0.738562, 0.674186, 900, 900, 100, 1),
(70768, 188249, 571, 1, 1, 4541.85, -4247.87, 170.492, 0.479964, 0, 0, 0.237685, 0.971342, 900, 900, 100, 1),
(70839, 188258, 571, 1, 1, 3832.23, -4538.68, 209.504, 1.66679, -0.0203118, -0.0571537, 0.737972, 0.6721, 900, 900, 100, 1),
(70874, 192628, 571, 1, 1, 5906.17, 676.038, 643.435, 0.837757, 0, 0, 0.406736, 0.913546, 900, 900, 100, 1),
(70875, 186485, 571, 1, 1, 542.96, -5002.02, 10.193, 2.522, 0, 0, 0.952395, 0.304865, 900, 900, 100, 1),
(70887, 192629, 571, 1, 1, 5909.94, 680.167, 643.44, -2.30383, 0, 0, -0.913545, 0.406738, 900, 900, 100, 1),
(70958, 187258, 571, 1, 1, 2335.43, 5265.62, 7.60401, -0.93375, 0, 0, -0.450098, 0.892979, 900, 900, 100, 1),
(71148, 187259, 571, 1, 1, 2338.26, 5262.83, 7.59954, -0.610865, 0, 0, -0.300706, 0.953717, 900, 900, 100, 1),
(71213, 194488, 571, 1, 1, 8548.61, 937.323, 547.293, -2.44346, 0, 0, -0.939692, 0.34202, 900, 900, 100, 1),
(71268, 188606, 571, 1, 1, 2754.9, 859.911, 6.62226, -0.445058, 0, 0, -0.220697, 0.975342, 900, 900, 100, 1),
(71269, 188357, 571, 1, 1, 3822.45, 1561.66, 86.6579, 3.09792, 0, 0, 0.999762, 0.0218346, 900, 900, 100, 1),
(71270, 188622, 571, 1, 1, 3423.05, -2761.23, 198.827, 2.72271, 0, 0, 0.978148, 0.207912, 900, 900, 100, 1),
(71736, 188623, 571, 1, 1, 3420.66, -2759.24, 199.238, 1.54462, 0, 0, 0.697791, 0.716301, 900, 900, 100, 1),
(72027, 191640, 571, 1, 1, 42.0845, 14.6072, 10.6555, 5.76976, 0, 0, 0.253902, -0.96723, 900, 900, 100, 1),
(72049, 188652, 571, 1, 1, 4137.44, 5286.22, 24.858, 2.70526, 0, 0, 0.976295, 0.216442, 900, 900, 100, 1),
(102712, 188397, 571, 1, 1, 3208.21, -633.846, 160.129, 1.9635, 0, 0, 0.831471, 0.555568, 900, 900, 100, 1),
(15319, 51702, 571, 1, 1, 5035.84, 1247.16, 231.365, 2.92342, 0, 0, 0.994056, 0.10887, 900, 900, 100, 1),
(17871, 51703, 571, 1, 1, 5022.37, 1245.32, 231.635, 0.706858, 0, 0, 0.346117, 0.938191, 900, 900, 100, 1),
(17872, 190456, 571, 1, 1, 5410.47, -2655.21, 303.954, 2.08701, 0, 0, 0.864173, 0.503195, 900, 900, 100, 1),
(17873, 187387, 571, 1, 1, 3077.1, 4824.17, 1.1587, -1.59698, 0, 0, -0.716302, 0.69779, 900, 900, 100, 1),
(17874, 192063, 571, 1, 195, 6201.53, -7.69965, 409.965, 2.02458, 0, 0, 0.848047, 0.529921, 900, 900, 100, 1),
(17878, 191635, 571, 1, 1, 2755.66, 6192.71, 83.268, -0.035677, 0, 0, -0.0178376, 0.999841, 900, 900, 100, 1),
(17880, 191636, 571, 1, 1, 2758.81, 6180.85, 83.268, 0.356613, 0, 0, 0.177363, 0.984145, 900, 900, 100, 1),
(17883, 191637, 571, 1, 1, 2758.3, 6207.43, 83.268, -0.095711, 0, 0, -0.0478372, 0.998855, 900, 900, 100, 1),
(17885, 191638, 571, 1, 1, 2822.51, 6109.72, 83.268, 1.16732, 0, 0, 0.551082, 0.834451, 900, 900, 100, 1),
(17888, 191639, 571, 1, 1, 2847.71, 6105.04, 83.268, 1.58064, 0, 0, 0.710578, 0.703618, 900, 900, 100, 1),
(18251, 186651, 571, 1, 1, 417.153, -4651.75, 246.882, -2.22529, 0, 0, -0.896873, 0.442289, 900, 900, 100, 1),
(18261, 186652, 571, 1, 1, 418.611, -4650.07, 246.903, 0.061085, 0, 0, 0.0305376, 0.999534, 900, 900, 100, 1),
(18263, 188683, 571, 1, 1, 3687, -742.351, 213.453, -1.57952, -0.00752497, -0.0114594, -0.710091, 0.703977, 900, 900, 100, 1),
(18265, 188684, 571, 1, 1, 3692.61, -740.03, 213.461, -2.51327, 0, 0, -0.951056, 0.309017, 900, 900, 100, 1),
(18267, 193125, 571, 1, 1, 5293.28, 2932.33, 409.065, -2.49582, 0, 0, -0.948323, 0.317306, 900, 900, 100, 1),
(1101, 51702, 530, 1, 1, -3088.4, 2598.12, 62.6914, 2.89724, 0, 0, 0.992546, 0.12187, 900, 900, 100, 1),
(1129, 194127, 571, 1, 1, 6099.22, -1077.97, 404.227, 2.94897, 0.0418429, 0.0310535, 0.994143, 0.094686, 900, 900, 100, 1);

UPDATE creature_template SET MinLevel = 70, MaxLevel = 70 WHERE entry = 17458;

UPDATE creature_template SET MinLevel = 17, MaxLevel = 17 WHERE entry = 2673;
UPDATE creature_template SET MinLevel = 37, MaxLevel = 37 WHERE entry = 2674;
UPDATE creature_template SET MinLevel = 55, MaxLevel = 55 WHERE entry = 12426;

UPDATE creature_template SET MinLevel = 40, MaxLevel = 40 WHERE entry = 2678;
UPDATE creature_template SET MinLevel = 50, MaxLevel = 50 WHERE entry = 8615;
UPDATE creature_template SET MinLevel = 60, MaxLevel = 60, Expansion = 1 WHERE entry = 12473;

UPDATE creature SET position_x = 2051.842, position_y = -4794.3926, position_z = 23.494202, orientation = 5.358160972595214843 WHERE id = 11178;
UPDATE creature SET position_x = 2064.3247, position_y = -4791.981, position_z = 23.196514, orientation = 5.759586334228515625 WHERE id = 7790;
UPDATE creature SET position_x = 2055.8333, position_y = -4797.0693, position_z = 23.133238, orientation = 5.445427417755126953 WHERE id = 1383;
UPDATE creature SET position_x = 2055.533, position_y = -4802.1113, position_z = 22.693106, orientation = 5.951572895050048828 WHERE id = 11176;
UPDATE creature SET position_x = 2048.7969, position_y = -4799.8613, position_z = 23.123047, orientation = 6.003932476043701171 WHERE id = 11177;
UPDATE creature SET position_x = 2054.632, position_y = -4805.9897, position_z = 22.646452, orientation = 3.31612563133239746 WHERE id = 7230;
UPDATE creature SET position_x = 2052.2065, position_y = -4813.4585, position_z = 22.724476, orientation = 0.296705961227416992 WHERE id = 10266;
UPDATE creature SET position_x = 2055.712, position_y = -4815.8975, position_z = 23.154497, orientation = 0.48869219422340393 WHERE id = 7792;
UPDATE creature SET position_x = 2058.9688, position_y = -4835.5835, position_z = 24.661102, orientation = 3.31612563133239746 WHERE id = 3355;
UPDATE creature SET position_x = 2053.3958, position_y = -4838.875, position_z = 24.661102, orientation = 3.089232683181762695 WHERE id = 5812;
UPDATE creature SET position_x = 2049.7917, position_y = -4839.132, position_z = 24.661102, orientation = 0.174532920122146606 WHERE id = 3356;
UPDATE creature SET position_x = 2098.587, position_y = -4823.4375, position_z = 34.345425, orientation = 2.862339973449707031 WHERE id = 3360;
UPDATE creature SET position_x = 2099.2275, position_y = -4818.8457, position_z = 24.385685, orientation = 3.682644605636596679 WHERE id = 3409;
UPDATE creature SET position_x = 2097.4219, position_y = -4824.924, position_z = 24.33118, orientation = 3.473205089569091796 WHERE id = 3361;
UPDATE creature SET position_x = 2105.3315, position_y = -4829.993, position_z = 24.313433, orientation = 4.520402908325195312 WHERE id = 7231;
UPDATE creature SET position_x = 2097.4358, position_y = -4834.809, position_z = 24.346512, orientation = 0.01745329238474369 WHERE id = 4043;
UPDATE creature SET position_x = 2091.5, position_y = -4828.936, position_z = 24.417374, orientation = 0.610865235328674316 WHERE id = 11871;
UPDATE creature SET position_x = 2091.0208, position_y = -4826.4863, position_z = 24.420786, orientation = 0.261799395084381103 WHERE id = 11868;
UPDATE creature SET position_x = 2090.2656, position_y = -4824.2085, position_z = 24.432442, orientation = 0.541052043437957763 WHERE id = 2704;
UPDATE creature SET position_x = 2047.9913, position_y = -4746.009, position_z = 29.470078, orientation = 4.625122547149658203 WHERE id = 2857;
UPDATE creature SET position_x = 2045.526, position_y = -4753.8125, position_z = 29.470074, orientation = 1.117010712623596191 WHERE id = 9317;
UPDATE creature SET position_x = 2038.401, position_y = -4748.979, position_z = 29.470078, orientation = 4.276056766510009765 WHERE id = 11017;
UPDATE creature SET position_x = 2036.224, position_y = -4746.4966, position_z = 29.470078, orientation = 4.677482128143310546 WHERE id = 3412;
UPDATE creature SET position_x = 2036.6285, position_y = -4739.4863, position_z = 29.470078, orientation = 4.933484554290771484 WHERE id = 3413;
UPDATE gameobject SET position_x = 2038.606, position_y = -4729.1123, position_z = 25.702803, orientation = 2.8186984, rotation0 = 0, rotation1 = 0, rotation2 = 0.9869957, rotation3 = 0.16074672 WHERE id = 173082;
UPDATE creature SET position_x = 2025.0834, position_y = -4708.9062, position_z = 27.113403, orientation = 1.815142393112182617 WHERE id = 3358;
UPDATE creature SET position_x = 2029.908, position_y = -4706.1597, position_z = 27.113403, orientation = 3.351032257080078125 WHERE id = 3357;
UPDATE creature SET position_x = 2052.2656, position_y = -4670.936, position_z = 25.776165, orientation = 5.288347721099853515 WHERE id = 14498;
UPDATE creature SET position_x = 2000.6198, position_y = -4659.6562, position_z = 26.722319, orientation = 5.305800914764404296 WHERE id = 3332;
UPDATE creature SET position_x = 1995.4098, position_y = -4662.316, position_z = 27.117552, orientation = 1.361356854438781738 WHERE id = 3333;
UPDATE creature SET position_x = 1989.3091, position_y = -4655.9097, position_z = 27.75542, orientation = 0.157079637050628662 WHERE id = 16076;
UPDATE creature SET position_x = 1989.8317, position_y = -4656.8315, position_z = 27.66127, orientation = 0.628318548202514648 WHERE id = 16069;
UPDATE creature SET position_x = 1991.3177, position_y = -4652.349, position_z = 27.363424, orientation = 0.104719758033752441 WHERE id = 7951;
UPDATE creature SET position_x = 1992.1945, position_y = -4651.047, position_z = 27.290503, orientation = 6.143558979034423828 WHERE id = 15186;
UPDATE creature SET position_x = 2140.429, position_y = -4652.1875, position_z = 50.485786, orientation = 2.251474618911743164 WHERE id = 9988;
UPDATE creature SET position_x = 2151.3645, position_y = -4654.1353, position_z = 50.34123, orientation = 1.93731546401977539 WHERE id = 4752;
UPDATE creature SET position_x = 2159.3628, position_y = -4653.743, position_z = 49.96811, orientation = 2.809980154037475585 WHERE id = 3362;
UPDATE creature SET position_x = 2153.6494, position_y = -4657.139, position_z = 50.226173, orientation = 1.518436431884765625 WHERE id = 14539;
UPDATE creature SET position_x = 2158.7395, position_y = -4661.514, position_z = 49.926975, orientation = 2.007128715515136718 WHERE id = 5195;
UPDATE creature SET position_x = 2158.7395, position_y = -4659.6196, position_z = 49.981743, orientation = 2.251474618911743164 WHERE id = 12351;
UPDATE creature SET position_x = 2164.783, position_y = -4655.9395, position_z = 50.60522, orientation = 2.914699792861938476 WHERE id = 12353;
UPDATE creature SET position_x = 2164.7344, position_y = -4651.932, position_z = 50.816193, orientation = 3.333578824996948242 WHERE id = 356;
UPDATE creature SET position_x = 2161.6702, position_y = -4648.078, position_z = 50.590126, orientation = 4.188790321350097656 WHERE id = 14540;
UPDATE creature SET position_x = 2155.5938, position_y = -4649.1772, position_z = 50.288754, orientation = 5.305800914764404296 WHERE id = 14541;
UPDATE creature SET position_x = 2135.3264, position_y = -4610.7847, position_z = 54.613396, orientation = 4.171336650848388671 WHERE id = 10088;
UPDATE creature SET position_x = 2100.5815, position_y = -4606.962, position_z = 59.013264, orientation = 4.520402908325195312 WHERE id = 3352;
UPDATE creature SET position_x = 2107.3508, position_y = -4633.776, position_z = 58.964035, orientation = 2.111848354339599609 WHERE id = 3407;
UPDATE creature SET position_x = 2084.9653, position_y = -4623.7744, position_z = 58.90305, orientation = 0.157079637050628662 WHERE id = 3406;
UPDATE creature SET position_x = 2067.856, position_y = -4598.8784, position_z = 54.549633, orientation = 5.026548385620117187 WHERE id = 7294;
UPDATE creature SET position_x = 1953.5938, position_y = -4735.7676, position_z = 48.73747, orientation = 1.099557399749755859 WHERE id = 4485;
UPDATE creature SET position_x = 1991.2848, position_y = -4797.1494, position_z = 56.13053, orientation = 2.775073528289794921 WHERE id = 15350;
UPDATE creature SET position_x = 1980.9896, position_y = -4801.5903, position_z = 56.104973, orientation = 1.2042771577835083 WHERE id = 3353;
UPDATE creature SET position_x = 1970.9462, position_y = -4808.1665, position_z = 57.07497, orientation = 0.837758064270019531 WHERE id = 3354;
UPDATE creature SET position_x = 1987.3993, position_y = -4813.108, position_z = 57.076057, orientation = 1.623156189918518066 WHERE id = 19912;
UPDATE creature SET position_x = 1997.9271, position_y = -4807.9517, position_z = 57.07497, orientation = 2.443460941314697265 WHERE id = 3408;
UPDATE creature SET position_x = 1878.6406, position_y = -4708.125, position_z = 39.57792, orientation = 0.523598790168762207 WHERE id = 3359;
UPDATE creature SET position_x = 1914.1562, position_y = -4775.868, position_z = 36.565033, orientation = 1.117010712623596191 WHERE id = 3410;
UPDATE creature SET position_x = 1860.8976, position_y = -4561.514, position_z = 25.07035, orientation = 2.58308720588684082 WHERE id = 3365;
UPDATE creature SET position_x = 1855.8195, position_y = -4562.491, position_z = 25.07035, orientation = 2.268928050994873046 WHERE id = 3316;
UPDATE creature SET position_x = 1855.3142, position_y = -4568.118, position_z = 25.07035, orientation = 2.129301786422729492 WHERE id = 5811;
UPDATE creature SET position_x = 1849.0435, position_y = -4569.229, position_z = 25.07035, orientation = 4.729842185974121093 WHERE id = 7088;
UPDATE creature SET position_x = 1848.0122, position_y = -4564.8906, position_z = 25.070353, orientation = 1.413716673851013183 WHERE id = 3366;
UPDATE creature SET position_x = 1802.0798, position_y = -4561.5537, position_z = 23.089691, orientation = 1.518436431884765625 WHERE id = 3315;
UPDATE creature SET position_x = 1813.257, position_y = -4563.3267, position_z = 23.089691, orientation = 2.530727386474609375 WHERE id = 2855;
UPDATE creature SET position_x = 1806.8524, position_y = -4573.3247, position_z = 23.089691, orientation = 1.605702877044677734 WHERE id = 3363;
UPDATE creature SET position_x = 1794.6841, position_y = -4572.7153, position_z = 23.089691, orientation = 0.92502450942993164 WHERE id = 14726;
UPDATE creature SET position_x = 1792.6545, position_y = -4565.3926, position_z = 23.089691, orientation = 0.977384388446807861 WHERE id = 3364;
UPDATE creature SET position_x = 1780.6337, position_y = -4505.507, position_z = 27.828892, orientation = 3.769911050796508789 WHERE id = 3369;
UPDATE creature SET position_x = 1769.1649, position_y = -4485.6304, position_z = 45.730747, orientation = 1.797689080238342285 WHERE id = 3399;
UPDATE creature SET position_x = 1775.0973, position_y = -4482.9062, position_z = 45.730747, orientation = 2.181661605834960937 WHERE id = 3368;
UPDATE creature SET position_x = 1779.0851, position_y = -4488.08, position_z = 45.730747, orientation = 4.694935798645019531 WHERE id = 3400;
UPDATE creature SET position_x = 1837.2726, position_y = -4469.6475, position_z = 47.746803, orientation = 1.605702877044677734 WHERE id = 3400;
UPDATE creature SET position_x = 1839.0173, position_y = -4465.9775, position_z = 47.706245, orientation = 3.385938644409179687 WHERE id = 30706;
UPDATE creature SET position_x = 1836.7692, position_y = -4461.5903, position_z = 47.681084, orientation = 1.500983119010925292 WHERE id = 3372;
UPDATE creature SET position_x = 1843.0139, position_y = -4464.639, position_z = 47.728188, orientation = 5.672319889068603515 WHERE id = 3372;
UPDATE creature SET position_x = 1843.1146, position_y = -4468.5347, position_z = 47.7517, orientation = 0.959931075572967529 WHERE id = 3371;
UPDATE creature SET position_x = 1931.7812, position_y = -4514.993, position_z = 29.369501, orientation = 3.40339207649230957 WHERE id = 6986;
UPDATE creature SET position_x = 1928.3334, position_y = -4517.2153, position_z = 29.369501, orientation = 0.959931075572967529 WHERE id = 6987;
UPDATE creature SET position_x = 1955.099, position_y = -4459.3647, position_z = 55.004524, orientation = 2.652900457382202148 WHERE id = 8659;
UPDATE creature SET position_x = 1954.7466, position_y = -4466.788, position_z = 26.018583, orientation = 3.50811171531677246 WHERE id = 3348;
UPDATE creature SET position_x = 1966.15, position_y = -4463.1, position_z = 25.9237, orientation = 1.5708, spawntimesecsmin = 300, spawntimesecsmax = 300 WHERE id = 11046;
UPDATE creature SET position_x = 1964.8837, position_y = -4477.8403, position_z = 26.008354, orientation = 5.25344085693359375 WHERE id = 3347;
UPDATE creature SET position_x = 1918.2639, position_y = -4436.257, position_z = 24.857132, orientation = 1.989675283432006835 WHERE id = 3346;
UPDATE creature SET position_x = 1912.1823, position_y = -4436.606, position_z = 24.882315, orientation = 2.862339973449707031 WHERE id = 3345;
UPDATE creature SET position_x = 1913.2466, position_y = -4430.5435, position_z = 24.874634, orientation = 3.682644605636596679 WHERE id = 11066;
UPDATE creature SET position_x = 1904.8629, position_y = -4451.632, position_z = 53.504585, orientation = 3.682644605636596679 WHERE id = 3405;
UPDATE creature SET position_x = 1904.7604, position_y = -4460.6875, position_z = 53.504585, orientation = 2.862339973449707031 WHERE id = 3404;
UPDATE creature SET position_x = 1583.8021, position_y = -4473.3145, position_z = 8.039657, orientation = 3.700098037719726562 WHERE id = 3317;
UPDATE creature SET position_x = 1589.0209, position_y = -4469.4775, position_z = 7.9755816, orientation = 2.125526189804077148 WHERE id = 3321;
UPDATE creature SET position_x = 1593.5452, position_y = -4465.6475, position_z = 7.9779706, orientation = 2.424191236495971679 WHERE id = 3319;
UPDATE creature SET position_x = 1568, position_y = -4405.8696, position_z = 8.360646, orientation = 3.31612563133239746 WHERE id = 14392;
UPDATE creature SET position_x = 1633.9861, position_y = -4439.368, position_z = 15.743605, orientation = 2.757620096206665039 WHERE id = 6929;
UPDATE creature SET position_x = 1637.5226, position_y = -4438.0557, position_z = 15.716766, orientation = 2.076941728591918945 WHERE id = 6466;
UPDATE creature SET position_x = 1640.7153, position_y = -4442.1875, position_z = 15.716766, orientation = 2.967059612274169921 WHERE id = 5610;
UPDATE creature SET position_x = 1639.5625, position_y = -4443.738, position_z = 15.716764, orientation = 5.183627605438232421 WHERE id = 5614;
UPDATE creature SET position_x = 1638.283, position_y = -4444.9966, position_z = 15.716766, orientation = 5.585053443908691406 WHERE id = 5613;
UPDATE creature SET position_x = 1640.8264, position_y = -4446.9897, position_z = 15.716766, orientation = 1.972222089767456054 WHERE id = 5611;
UPDATE creature SET position_x = 1634.1632, position_y = -4447.1772, position_z = 15.716764, orientation = 1.640609502792358398 WHERE id = 5606;
UPDATE creature SET position_x = 1633.9445, position_y = -4445.616, position_z = 15.716766, orientation = 4.86946868896484375 WHERE id = 5609;
UPDATE creature SET position_x = 1667.6198, position_y = -4463.757, position_z = 20.374456, orientation = 1.710422635078430175 WHERE id = 8724;
UPDATE creature SET position_x = 1687.257, position_y = -4464.712, position_z = 20.374516, orientation = 2.007128715515136718 WHERE id = 8673;
UPDATE creature SET position_x = 1695.9202, position_y = -4455.5537, position_z = 20.374424, orientation = 2.007128715515136718 WHERE id = 9856;
UPDATE creature SET position_x = 1744.8993, position_y = -4317.858, position_z = 33.620445, orientation = 4.223696708679199218 WHERE id = 3323;
UPDATE creature SET position_x = 1575.8021, position_y = -4292.672, position_z = 26.266024, orientation = 4.380776405334472656 WHERE id = 3370;
UPDATE creature SET position_x = 1579.356, position_y = -4294.5, position_z = 26.331554, orientation = 3.752457857131958007 WHERE id = 5188;
UPDATE creature SET position_x = 1520.5365, position_y = -4355.585, position_z = 19.077822, orientation = 6.021385669708251953 WHERE id = 3313;
UPDATE creature SET position_x = 1522.3038, position_y = -4352.5347, position_z = 19.13167, orientation = 5.480333805084228515 WHERE id = 5817;
UPDATE creature SET position_x = 1618.9601, position_y = -4307.2847, position_z = 3.4172313, orientation = 5.410520553588867187 WHERE id = 3312;
UPDATE creature SET position_x = 1568.6545, position_y = -4386.243, position_z = 5.6224384, orientation = 3.03687286376953125 WHERE id = 5597;
UPDATE creature SET position_x = 1607.9185, position_y = -4376.4443, position_z = 9.884301, orientation = 4.066617012023925781 WHERE id = 13842;
UPDATE creature SET position_x = 1594.382, position_y = -4378.3003, position_z = 9.926887, orientation = 3.455751895904541015 WHERE id = 5603;
UPDATE creature SET position_x = 1622.9028, position_y = -4369.0645, position_z = 12.036872, orientation = 3.577924966812133789 WHERE id = 3320;
UPDATE creature SET position_x = 1627.3177, position_y = -4376.068, position_z = 12.040944, orientation = 3.438298702239990234 WHERE id = 3309;
UPDATE creature SET position_x = 1632.3872, position_y = -4381.9688, position_z = 12.027235, orientation = 3.577924966812133789 WHERE id = 3318;
UPDATE creature SET position_x = 1676.2517, position_y = -4313.4517, position_z = 61.944496, orientation = 5.25344085693359375 WHERE id = 3310;
UPDATE creature SET position_x = 1634.9028, position_y = -4265.078, position_z = 49.4597, orientation = 3.822271108627319335 WHERE id = 12796;
UPDATE creature SET position_x = 1717.783, position_y = -4200.108, position_z = 51.96369, orientation = 4.433136463165283203 WHERE id = 5910;
UPDATE creature SET position_x = 1784.441, position_y = -4205.354, position_z = 40.317265, orientation = 4.537856101989746093 WHERE id = 3342;
UPDATE creature SET position_x = 1914.6528, position_y = -4226.5835, position_z = 42.405853, orientation = 0.663225114345550537 WHERE id = 4047;
UPDATE creature SET position_x = 1920.9531, position_y = -4212.991, position_z = 42.40515, orientation = 5.410520553588867187 WHERE id = 5892;
UPDATE creature SET position_x = 1932.8785, position_y = -4211.299, position_z = 42.40515, orientation = 6.248278617858886718 WHERE id = 3403;
UPDATE creature SET position_x = 1937.842, position_y = -4222.8403, position_z = 42.40507, orientation = 3.787364482879638671 WHERE id = 13417;
UPDATE creature SET position_x = 1933.6945, position_y = -4224.8613, position_z = 42.40515, orientation = 0.05235987901687622 WHERE id = 3344;
UPDATE creature SET position_x = 1915.6719, position_y = -4170.7725, position_z = 41.232998, orientation = 0.750491559505462646 WHERE id = 16012;
UPDATE creature SET position_x = 1905.7466, position_y = -4161.3696, position_z = 41.12697, orientation = 0.48869219422340393 WHERE id = 3144;
UPDATE creature SET position_x = 1914.8351, position_y = -4123.9565, position_z = 43.303627, orientation = 5.323254108428955078 WHERE id = 17098;
UPDATE creature SET position_x = 1939.6945, position_y = -4133.328, position_z = 41.227745, orientation = 4.171336650848388671 WHERE id = 23128;
UPDATE creature SET position_x = 1891.599, position_y = -4326.7534, position_z = 23.479906, orientation = 0.261799395084381103 WHERE id = 3350;
UPDATE creature SET position_x = 1890.8993, position_y = -4322.0938, position_z = 23.479908, orientation = 4.101523876190185546 WHERE id = 3351;
UPDATE creature SET position_x = 1452.4341, position_y = -4179.8228, position_z = 44.3602, orientation = 6.056292533874511718 WHERE id = 6018;
UPDATE creature SET position_x = 1461.0156, position_y = -4181.6772, position_z = 61.644062, orientation = 2.827433347702026367 WHERE id = 5994;
UPDATE creature SET position_x = 1453.2379, position_y = -4185.646, position_z = 61.644062, orientation = 1.326450228691101074 WHERE id = 6014;
UPDATE creature SET position_x = 1482.7223, position_y = -4159.9517, position_z = 44.104027, orientation = 0.837758064270019531 WHERE id = 3373;
UPDATE creature SET position_x = 1472.481, position_y = -4224.597, position_z = 43.26931, orientation = 2.059488534927368164 WHERE id = 5883;
UPDATE creature SET position_x = 1466.8785, position_y = -4229.9204, position_z = 43.26931, orientation = 1.186823844909667968 WHERE id = 7311;
UPDATE creature SET position_x = 1468.1823, position_y = -4219.882, position_z = 43.26931, orientation = 5.951572895050048828 WHERE id = 5885;
UPDATE creature SET position_x = 1473.5521, position_y = -4218.5747, position_z = 43.269306, orientation = 3.735004663467407226 WHERE id = 5882;
UPDATE creature SET position_x = 1451.6354, position_y = -4209.347, position_z = 43.87207, orientation = 5.532693862915039062 WHERE id = 5882;
UPDATE creature SET position_x = 1474.9688, position_y = -4223.1426, position_z = 59.30409, orientation = 2.967059612274169921 WHERE id = 5958;
UPDATE creature SET position_x = 1580.0521, position_y = -4097.6772, position_z = 36.551445, orientation = 5.1836276054382324211 WHERE id = 3349;
UPDATE creature SET position_z = 53.3911 WHERE id = 5640;
UPDATE creature SET position_x = 1846.5348, position_y = -4325.6704, position_z = -15.392348, orientation = 3.804817676544189453 WHERE id = 3335;
UPDATE creature SET position_x = 1820.7726, position_y = -4300.2256, position_z = -12.087057, orientation = 4.485496044158935546 WHERE id = 5816;
UPDATE creature SET position_x = 1823.8785, position_y = -4302.5903, position_z = -12.087057, orientation = 3.787364482879638671 WHERE id = 3330;
UPDATE creature SET position_x = 1834.6598, position_y = -4362.5225, position_z = -14.555535, orientation = 2.094395160675048828 WHERE id = 3325;
UPDATE creature SET position_x = 1844.2084, position_y = -4353.6094, position_z = -14.571289, orientation = 3.31612563133239746 WHERE id = 3324;
UPDATE creature SET position_x = 1850.3073, position_y = -4357.3037, position_z = -14.571293, orientation = 5.323254108428955078 WHERE id = 5875;
UPDATE creature SET position_x = 1848.9618, position_y = -4360.432, position_z = -14.571293, orientation = 0.855211317539215087 WHERE id = 3326;
UPDATE creature SET position_x = 1836.8577, position_y = -4347.132, position_z = -14.535177, orientation = 3.333578824996948242 WHERE id = 5815;
UPDATE creature SET position_x = 1800.6649, position_y = -4374.514, position_z = -17.120588, orientation = 4.572762489318847656 WHERE id = 3216;
UPDATE creature SET position_x = 1766.7135, position_y = -4367.3594, position_z = -15.711345, orientation = 5.619960308074951171 WHERE id = 3329;
UPDATE creature SET position_x = 1805.2952, position_y = -4285.2534, position_z = 7.2008853, orientation = 3.141592741012573242 WHERE id = 3189;
UPDATE creature SET position_x = 1762.8403, position_y = -4345.059, position_z = -7.7549095, orientation = 0.453785598278045654 WHERE id = 29143;
UPDATE creature SET position_x = 1750.375, position_y = -4320.9097, position_z = 6.2213173, orientation = 0.872664630413055419 WHERE id = 3331;
UPDATE creature SET position_x = 1762.875, position_y = -4296.3784, position_z = 7.7577996, orientation = 5.410520553588867187 WHERE id = 3328;
UPDATE creature SET position_x = 1771.2101, position_y = -4284.413, position_z = 8.067481, orientation = 5.759586334228515625 WHERE id = 3401;
UPDATE creature SET position_x = 1772.9445, position_y = -4279.9272, position_z = 8.177933, orientation = 5.358160972595214843 WHERE id = 6446;
UPDATE creature SET position_x = 1778.5521, position_y = -4279.8784, position_z = 7.8189054, orientation = 4.625122547149658203 WHERE id = 3402;
UPDATE creature SET position_x = 1792.342, position_y = -4279.375, position_z = 7.5642776, orientation = 4.747295379638671875 WHERE id = 3327;
UPDATE creature SET position_x = 1811.0416, position_y = -4270.903, position_z = 7.3961387, orientation = 3.944444179534912109 WHERE id = 3334;
UPDATE creature SET position_x = 2004.1805, position_y = -4719.799, position_z = 26.526588, orientation = 0.959931075572967529 WHERE guid = 54770;
UPDATE creature SET position_x = 2131.1477, position_y = -4729.884, position_z = 50.657143, orientation = 2.600540637969970703 WHERE guid = 54750;
UPDATE creature SET position_x = 2126.4133, position_y = -4738.087, position_z = 50.676067, orientation = 2.740166902542114257 WHERE guid = 54757;
UPDATE creature SET position_x = 1963.0104, position_y = -4730.9062, position_z = 49.187786, orientation = 2.49582076072692871 WHERE guid = 54916;
UPDATE creature SET position_x = 1902.6285, position_y = -4628.7935, position_z = 34.203224, orientation = 0.593411922454833984 WHERE guid = 54926;
UPDATE creature SET position_x = 1910.2396, position_y = -4623.915, position_z = 34.203148, orientation = 3.735004663467407226 WHERE guid = 54743;
UPDATE creature SET position_x = 1913.7944, position_y = -4559.678, position_z = 34.200012, orientation = 3.717551231384277343 WHERE guid = 54762;
UPDATE creature SET position_x = 1906.2535, position_y = -4564.205, position_z = 34.202755, orientation = 0.628318548202514648 WHERE guid = 54903;
UPDATE creature SET position_x = 1889.526, position_y = -4485.0815, position_z = 21.537237, orientation = 1.448623299598693847 WHERE guid = 54909;
UPDATE creature SET position_x = 1882.1545, position_y = -4483.991, position_z = 20.865744, orientation = 2.094395160675048828 WHERE guid = 54738;
UPDATE creature SET position_x = 1829.2622, position_y = -4507.264, position_z = 21.683342, orientation = 4.956735134124755859 WHERE guid = 54759;
UPDATE creature SET position_x = 1596.6459, position_y = -4388.6665, position_z = 10.210176, orientation = 5.98647928237915039 WHERE guid = 54744;
UPDATE creature SET position_x = 1615.6354, position_y = -4376.113, position_z = 12.628747, orientation = 4.24114990234375 WHERE guid = 54754;
UPDATE creature SET position_x = 1668.5573, position_y = -4323.663, position_z = 61.556442, orientation = 5.969026088714599609 WHERE guid = 54900;
UPDATE creature SET position_x = 1620.4548, position_y = -4252.837, position_z = 47.754276, orientation = 3.700098037719726562 WHERE guid = 54755;
UPDATE creature SET position_x = 1673.1044, position_y = -4250.0337, position_z = 52.128933, orientation = 5.044001579284667968 WHERE guid = 54913;
UPDATE creature SET position_x = 1902.1389, position_y = -4275.212, position_z = 32.025604, orientation = 4.171336650848388671 WHERE guid = 54766;
UPDATE creature SET position_x = 1886.1962, position_y = -4546.6807, position_z = 28.741745, orientation = 1.099557399749755859 WHERE guid = 54748;
UPDATE creature SET position_x = 1696.0243, position_y = -4463.7065, position_z = 20.379148, orientation = 2.39110112190246582 WHERE guid = 54736;
UPDATE creature SET position_x = 1384.6163, position_y = -4358.5557, position_z = 27.325195, orientation = 4.434017181396484375 WHERE guid = 54752;
UPDATE creature SET position_x = 1603.4791, position_y = -4449.9478, position_z = 8.343441, orientation = 2.39110112190246582 WHERE guid = 54753;
UPDATE creature SET position_x = 1387.2778, position_y = -4379.8926, position_z = 27.325195, orientation = 2.049943923950195312 WHERE guid = 54910;
UPDATE creature SET position_x = 1481.7726, position_y = -4427.7915, position_z = 25.545673, orientation = 2.572782754898071289 WHERE guid = 54923;
UPDATE creature SET position_x = 1479.3854, position_y = -4406.25, position_z = 25.54567, orientation = 3.817284584045410156 WHERE guid = 54920;
UPDATE creature SET position_x = 1552.4149, position_y = -4324.7534, position_z = 22.02987, orientation = 5.515240192413330078 WHERE guid = 54769;
UPDATE creature SET position_x = 1561.7935, position_y = -4360.4966, position_z = 1.4214883, orientation = 4.852015495300292968 WHERE guid = 54760;
UPDATE creature SET position_x = 1557.7413, position_y = -4364.2466, position_z = 1.3066543, orientation = 0.226892799139022827 WHERE guid = 54928;
UPDATE creature SET position_x = 1576.2031, position_y = -4394.432, position_z = 6.7819896, orientation = 4.572762489318847656 WHERE guid = 54908;
UPDATE creature SET position_x = 1688.526, position_y = -4474.5767, position_z = 20.380627, orientation = 1.954768776893615722 WHERE guid = 54768;
UPDATE creature SET position_x = 1672.2778, position_y = -4473.1978, position_z = 20.380634, orientation = 1.448623299598693847 WHERE guid = 54758;
UPDATE creature SET position_x = 1689.9948, position_y = -4279.854, position_z = 32.357296, orientation = 4.118977069854736328 WHERE guid = 54740;
UPDATE creature SET position_x = 1628.8923, position_y = -4274.7603, position_z = 24.312424, orientation = 5.131268024444580078 WHERE guid = 54906;
UPDATE creature SET position_x = 1623.1476, position_y = -4279.637, position_z = 22.79634, orientation = 6.161012172698974609 WHERE guid = 54912;
UPDATE creature SET position_x = 1952.5278, position_y = -4368.5747, position_z = 22.88594, orientation = 3.682644605636596679 WHERE guid = 54914;
UPDATE creature SET position_x = 1950.8889, position_y = -4374.6895, position_z = 22.2699, orientation = 2.705260276794433593 WHERE guid = 54765;
UPDATE creature SET position_x = 1566.4497, position_y = -4179.1807, position_z = 41.25547, orientation = 5.427973747253417968 WHERE guid = 54741;
UPDATE creature SET position_x = 1566.2188, position_y = -4194.0728, position_z = 42.897797, orientation = 0.157079637050628662 WHERE guid = 54747;
UPDATE creature SET position_x = 1759.0295, position_y = -4301.8926, position_z = 7.243084, orientation = 5.462880611419677734 WHERE guid = 54901;
UPDATE creature SET position_x = 1775.0747, position_y = -4319.913, position_z = -7.6516075, orientation = 5.602506637573242187 WHERE guid = 54921;
UPDATE creature SET position_x = 1817.0764, position_y = -4357.137, position_z = -9.589464, orientation = 2.30383467674255371 WHERE guid = 54737;
UPDATE creature SET position_x = 1938.9497, position_y = -4130.733, position_z = 41.22026, orientation = 4.014257431030273437 WHERE guid = 86346;
UPDATE creature SET position_x = 1942.3195, position_y = -4133.684, position_z = 41.23194, orientation = 3.822271108627319335 WHERE guid = 126614;
UPDATE creature SET position_x = 1920.62, position_y = -4365.93, position_z = 22.9477, orientation = 0.296706 WHERE guid = 54922;
UPDATE creature SET position_x = 2049.3, position_y = -4629.26, position_z = 51.0382, orientation = 0.434071 WHERE guid = 54739;
UPDATE creature SET position_z = 22.7165 WHERE guid = 54911;
UPDATE creature SET position_z = 56.992 WHERE guid = 102183;
UPDATE creature SET position_z = 51.7776 WHERE guid = 54905;
UPDATE creature SET position_z = 51.7777 WHERE guid = 54756;
UPDATE creature SET position_z = 51.7777 WHERE guid = 54742;
UPDATE creature SET position_z = 51.7773 WHERE guid = 54925;
UPDATE creature SET position_z = 39.4804 WHERE guid = 54767;
UPDATE creature SET position_z = 37.9385 WHERE guid = 54927;
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(40112, 14304, 1, 1, 1, 0, 0, 1941.71, -4124.25, 43.7699, 3.90954, 300, 300, 0, 0, 0, 0, 0, 0),
(40116, 14304, 1, 1, 1, 0, 0, 1924.73, -4245.42, 42.1677, 6.24828, 300, 300, 0, 0, 0, 0, 0, 0),
(40128, 14304, 1, 1, 1, 0, 0, 1927.04, -4123.48, 43.2758, 4.45059, 300, 300, 0, 0, 0, 0, 0, 0),
(40129, 14304, 1, 1, 1, 0, 0, 1914.56, -4136.63, 40.7184, 4.69494, 300, 300, 0, 0, 0, 0, 0, 0),
(40130, 14304, 1, 1, 1, 0, 0, 1931.52, -4244.77, 42.1479, 2.98451, 300, 300, 0, 0, 0, 0, 0, 0),
(40134, 14304, 1, 1, 1, 0, 0, 1944.36, -4146.45, 41.185, 3.26377, 300, 300, 0, 0, 0, 0, 0, 0),
(53869, 14304, 1, 1, 1, 0, 0, 1919.36, -4176.05, 41.2319, 0.0523599, 300, 300, 0, 0, 0, 0, 0, 0),
(40115, 14304, 1, 1, 1, 0, 0, 1928.03, -4246.21, 41.6868, 4.75941, 300, 300, 0, 0, 0, 0, 0, 2),
(53876, 14304, 1, 1, 1, 0, 0, 1910.21, -4169.48, 41.2353, 0.837758, 300, 300, 0, 0, 0, 0, 0, 0),
(54452, 14304, 1, 1, 1, 0, 0, 1933.29, -4168.81, 41.2367, 2.37365, 300, 300, 0, 0, 0, 0, 0, 0),
(54453, 14304, 1, 1, 1, 0, 0, 1944.79, -4168.14, 43.7714, 2.3911, 300, 300, 0, 0, 0, 0, 0, 0),
(54526, 14304, 1, 1, 1, 0, 0, 1928.19, -4203.37, 42.2767, 4.69494, 300, 300, 0, 0, 0, 0, 0, 0),
(54541, 14304, 1, 1, 1, 0, 0, 1926.54, -4135.56, 40.7127, 4.7822, 300, 300, 0, 0, 0, 0, 0, 0),
(54542, 14304, 1, 1, 1, 0, 0, 1924.79, -4238.43, 42.2415, 5.20108, 300, 300, 0, 0, 0, 0, 0, 0),
(54546, 14304, 1, 1, 1, 0, 0, 1898.44, -4128.35, 43.7535, 5.51524, 300, 300, 0, 0, 0, 0, 0, 0),
(54552, 14304, 1, 1, 1, 0, 0, 1898.32, -4149.7, 41.2145, 0.10472, 300, 300, 0, 0, 0, 0, 0, 0),
(54559, 14304, 1, 1, 1, 0, 0, 1951.96, -4145.71, 43.7754, 3.22886, 300, 300, 0, 0, 0, 0, 0, 0),
(40132, 14304, 1, 1, 1, 0, 0, 1902.47, -4150.23, 40.9349, 3.21379, 300, 300, 0, 0, 0, 0, 0, 2),
(2815, 14304, 1, 1, 1, 0, 0, 1890.67, -4150.02, 43.7727, 0.0872665, 300, 300, 0, 0, 0, 0, 0, 0),
(2888, 14304, 1, 1, 1, 0, 0, 1901.27, -4171.16, 43.7904, 0.994838, 300, 300, 0, 0, 0, 0, 0, 0),
(2982, 14304, 1, 1, 1, 0, 0, 1912.25, -4124.2, 43.3439, 4.97419, 300, 300, 0, 0, 0, 0, 0, 0),
(3048, 14304, 1, 1, 1, 0, 0, 1930.46, -4238.26, 42.2433, 4.39823, 300, 300, 0, 0, 0, 0, 0, 0),
(3115, 14304, 1, 1, 1, 0, 0, 1922.2, -4204.38, 42.2973, 4.92183, 300, 300, 0, 0, 0, 0, 0, 0),
(3163, 14304, 1, 1, 1, 0, 0, 1927.48, -4175.91, 41.2322, 3.15905, 300, 300, 0, 0, 0, 0, 0, 0);
DELETE FROM creature_movement WHERE id IN (40132,40115);
INSERT INTO `creature_movement` (`Id`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`, `Comment`) VALUES
(40132, 1, 1904.29, -4149.22, 40.9247, 0, 0, 0, NULL),
(40132, 2, 1907.24, -4148.9, 40.4052, 0, 0, 0, NULL),
(40132, 3, 1935.98, -4146.76, 40.3551, 0, 0, 0, NULL),
(40132, 4, 1939.34, -4146.55, 40.8738, 0, 0, 0, NULL),
(40132, 5, 1941.56, -4146.41, 40.8738, 0, 0, 0, NULL),
(40132, 6, 1938.78, -4146.7, 40.8738, 0, 0, 0, NULL),
(40132, 7, 1936.01, -4147.02, 40.3554, 0, 0, 0, NULL),
(40132, 8, 1906.95, -4148.52, 40.4051, 0, 0, 0, NULL),
(40132, 9, 1903.65, -4148.96, 40.9223, 0, 0, 0, NULL),
(40115, 1, 1927.76, -4238.93, 41.9378, 0, 0, 0, NULL),
(40115, 2, 1927.16, -4225.79, 42.0952, 0, 0, 0, NULL),
(40115, 3, 1926.9, -4222.44, 40.9472, 0, 0, 0, NULL),
(40115, 4, 1926.17, -4214.07, 40.9472, 0, 0, 0, NULL),
(40115, 5, 1926, -4211.83, 42.0298, 0, 0, 0, NULL),
(40115, 6, 1925.04, -4201.23, 41.9278, 0, 0, 0, NULL),
(40115, 7, 1924.26, -4184.18, 41.9316, 0, 0, 0, NULL),
(40115, 8, 1923.78, -4179.16, 40.9267, 0, 0, 0, NULL),
(40115, 9, 1922.11, -4166.08, 40.9036, 0, 0, 0, NULL),
(40115, 10, 1921.89, -4163.02, 40.3834, 0, 0, 0, NULL),
(40115, 11, 1920.23, -4136.2, 40.3089, 0, 0, 0, NULL),
(40115, 12, 1922.66, -4163.07, 40.3826, 0, 0, 0, NULL),
(40115, 13, 1922.74, -4165.29, 40.9019, 0, 0, 0, NULL),
(40115, 14, 1923.38, -4179.26, 40.9256, 0, 0, 0, NULL),
(40115, 15, 1923.64, -4182.61, 41.9333, 0, 0, 0, NULL),
(40115, 16, 1925.69, -4210.79, 42.0951, 0, 0, 0, NULL),
(40115, 17, 1925.93, -4214.14, 40.9467, 0, 0, 0, NULL),
(40115, 18, 1926.58, -4223.91, 41.1487, 0, 0, 0, NULL),
(40115, 19, 1926.69, -4225.58, 42.0951, 0, 0, 0, NULL),
(40115, 20, 1927.33, -4235.07, 41.928, 0, 0, 0, NULL);

DELETE FROM `questgiver_greeting` WHERE `Entry` in (1740,1938,1952,2055,2229,2277,2500,2934,3050,3428,4454,4630,5598,5636,5675,5878,6868,7802,10428,11259,11596,14567,19936);
UPDATE `questgiver_greeting` SET `Text` = 'The Gordunni Ogres encroach upon our lands.  We send as many as are willing to face them in the desecrated ruins of Feralas. ' WHERE `Entry` = 7777 AND `Type` = 0;
INSERT INTO `questgiver_greeting` VALUES (1740, 1, 'This collection of scrolls contains various logistic and strategic information, as well as coded correspondences.', 0, 0);
INSERT INTO `questgiver_greeting` VALUES (1938, 0, 'The Kirin Tor did not heed my warnings!  The Alliance is a sham.  Arugal is a wreckless fool.', 0, 0);
INSERT INTO `questgiver_greeting` VALUES (1952, 0, 'Hello, $c.  If you''re here, then you must know that Silverpine is saturated with our enemies.  To survive, the Forsaken must drive them back!', 0, 0);
INSERT INTO `questgiver_greeting` VALUES (2055, 0, 'The Royal Apothecary Society shall heed The Dark Lady''s call to uncover the New Plague and drive Arthas and his heathen Scourge Army from the world once and for all.', 0, 0);
INSERT INTO `questgiver_greeting` VALUES (2229, 0, 'To think, the place the Warchief was born and raised lies so close.', 0, 0);
INSERT INTO `questgiver_greeting` VALUES (2277, 0, 'I have a great deal of work to do.  Are you here to aid me with my research?', 0, 0);
INSERT INTO `questgiver_greeting` VALUES (2500, 0, 'They''re out there!  I can hear them at night, laughing.  Oh, they''ll pay!  They...will...pay!!', 0, 0);
INSERT INTO `questgiver_greeting` VALUES (2934, 0, 'Knowledge is both tool and weapon to those with the will to use it.', 0, 0);
INSERT INTO `questgiver_greeting` VALUES (3050, 0, 'The tauren are sons and daughters of the Earthmother, and we show respect to all her children.  Even the beasts we slay are cherished, as their bodies give nourishment and their skins provide warmth.', 0, 0);
INSERT INTO `questgiver_greeting` VALUES (3428, 0, 'The dust of the Barrens parches my throat more and more every day, $N. But it is worth the sacrifice to remain here if it helps the Horde and the warchief.', 0, 0);
INSERT INTO `questgiver_greeting` VALUES (4454, 0, 'Aha!  Did you see that!  I think this new auto-spanner is going to do just the trick for my new influx manifold design.', 0, 0);
INSERT INTO `questgiver_greeting` VALUES (4630, 0, 'What a great day for racing! Oh, who am I kidding? Every day''s a great day for racing!', 0, 0);
INSERT INTO `questgiver_greeting` VALUES (5598, 0, 'What do you ask of me?', 0, 0);
INSERT INTO `questgiver_greeting` VALUES (5636, 0, 'What do you want? I''d be a whole lot happier up in the skies than grounded and yapping with a $r right now.$b$bGuess we can''t all get what we want.', 0, 0);
INSERT INTO `questgiver_greeting` VALUES (5675, 0, 'The summoning of beings from the chaos that lies beyond our world is essential to the mastery of the warlock arts, $N. I am glad to see the progress you have made.', 0, 0);
INSERT INTO `questgiver_greeting` VALUES (5878, 0, 'My vision has darkened, but there are many kinds of sight...', 0, 0);
INSERT INTO `questgiver_greeting` VALUES (6868, 0, 'Whatcha need, $c?  I trust that you''ve come out to this wasteland for a reason other than idle chit chat.', 0, 0);
INSERT INTO `questgiver_greeting` VALUES (7802, 0, 'So few make it this far, even fewer make it past. Do not become a statistic, $N.', 0, 0);
INSERT INTO `questgiver_greeting` VALUES (10428, 0, 'Whitereach Post started off as a small hunting camp... Now, everyone wants to set up shop and call this home.$b$b<Motega shrugs his shoulder>', 0, 0);
INSERT INTO `questgiver_greeting` VALUES (11259, 0, 'Desolace is not such a bad place, if you don''t mind the constant harassments from the centaurs.', 0, 0);
INSERT INTO `questgiver_greeting` VALUES (11596, 0, 'My business plan never accounted for housing giant kodos... maybe I should have gone into the underwater basket weaving business instead.', 0, 0);
INSERT INTO `questgiver_greeting` VALUES (14567, 0, 'These Mithril Order guys are sissies.', 0, 0);
INSERT INTO `questgiver_greeting` VALUES (19936, 0, ' ', 0, 0);
UPDATE `questgiver_greeting` SET `Text` = ' ' WHERE `Text` = '';

UPDATE quest_template SET RequiredRaces = 512 WHERE entry IN (9618);
UPDATE quest_template SET RequiredRaces = 1024 WHERE entry IN (9449, 9450, 9451);
UPDATE quest_template SET RequiredRaces = 1024 , PrevQuestId = 9280 WHERE entry IN (9287, 9288, 9289, 9290, 9291, 9421);

REPLACE INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(2021, 142702, 0, 1, 1, -42.5312, -2481.28, 119.151, 2.94086, -0.416004, 0.113211, 0.893777, 0.123641, 1800, 3600, 100, 1),
(18272, 142703, 0, 1, 1, -38.592, -2468.76, 121.659, 3.78737, 0.0935359, -0.0466347, -0.944858, 0.310355, 1800, 3600, 100, 1),
(18274, 142704, 0, 1, 1, -38.4722, -2468.8, 121.807, 5.97776, 0.290411, 0.583498, -0.276992, 0.706022, 1800, 3600, 100, 1),
(18278, 142705, 0, 1, 1, -43.7708, -2481.39, 118.982, 3.14159, 0, 0, -1, 0, 1800, 3600, 100, 1),
(66191, 142706, 0, 1, 1, -43.8073, -2480.73, 118.917, 3.14159, 0, 0, -1, 0, 1800, 3600, 100, 1),
(66192, 142707, 0, 1, 1, -38.7292, -2468.43, 121.504, 3.14255, 0.0610456, 0.00870991, -0.998096, 0.00100662, 1800, 3600, 100, 1),
(18281, 142708, 0, 1, 1, -15.0868, -2789.53, 123.974, 0.916285, 0.705321, 0.172728, -0.672002, 0.145263, 1800, 3600, 100, 1),
(18282, 142709, 0, 1, 1, -14.8472, -2789, 123.862, 4.2237, 0, 0, -0.857166, 0.51504, 1800, 3600, 100, 1),
(66193, 142710, 0, 1, 1, -14.1372, -2789.71, 123.862, 3.14159, 0, 0, -1, 0, 1800, 3600, 100, 1),
(66194, 142711, 0, 1, 1, -15.0243, -2789.39, 123.862, 3.14159, 0, 0, -1, 0, 1800, 3600, 100, 1),
(66195, 142712, 0, 1, 1, -15.9653, -2789.68, 123.862, 3.14159, 0, 0, -1, 0, 1800, 3600, 100, 1),
(66196, 142713, 0, 1, 1, -14.6562, -2460.39, 122.163, 3.14159, 0, 0, -1, 0, 1800, 3600, 100, 1),
(18285, 142714, 0, 1, 1, -15.1615, -2460.22, 122.175, 3.1417, -0.086678, -0.104131, -0.990737, 0.00916097, 1800, 3600, 100, 1);
DELETE FROM gameobject_questrelation WHERE quest = 2933;
INSERT INTO gameobject_questrelation (id, quest) VALUES (142702, 2933), (142703, 2933), (142704, 2933), (142705, 2933), (142706, 2933), (142707, 2933), (142708, 2933), (142709, 2933), (142710, 2933), (142711, 2933), (142712, 2933), (142713, 2933), (142714, 2933);
UPDATE `gameobject_template` SET `type` = '2', `flags` = '4', `data1` = '2419' WHERE `entry` IN (142708,142709,142710,142711);

UPDATE trainer_greeting SET Text = 'There is no treat finer than Barbecued Buzzard Wing.' WHERE Entry = 2818;
UPDATE trainer_greeting SET Text = '' WHERE Entry = 5164;
UPDATE trainer_greeting SET Text = '' WHERE Entry = 7230;
UPDATE trainer_greeting SET Text = '' WHERE Entry = 7231;
UPDATE trainer_greeting SET Text = '' WHERE Entry = 7232;
UPDATE trainer_greeting SET Text = '' WHERE Entry = 7406;
UPDATE trainer_greeting SET Text = '' WHERE Entry = 7866;
UPDATE trainer_greeting SET Text = '' WHERE Entry = 7867;
UPDATE trainer_greeting SET Text = '' WHERE Entry = 7868;
UPDATE trainer_greeting SET Text = '' WHERE Entry = 7869;
UPDATE trainer_greeting SET Text = '' WHERE Entry = 7870;
UPDATE trainer_greeting SET Text = '' WHERE Entry = 7871;
UPDATE trainer_greeting SET Text = '' WHERE Entry = 7944;
UPDATE trainer_greeting SET Text = '' WHERE Entry = 8126;
UPDATE trainer_greeting SET Text = '' WHERE Entry = 11146;
UPDATE trainer_greeting SET Text = '' WHERE Entry = 11177;
UPDATE trainer_greeting SET Text = '' WHERE Entry = 11178;
UPDATE trainer_greeting SET Text = 'There''s more than one way to cook a fish.' WHERE Entry = 19186;
UPDATE trainer_greeting SET Text = '' WHERE Entry = 20124;
UPDATE trainer_greeting SET Text = '' WHERE Entry = 20125;

UPDATE quest_template SET RequestItemsText = NULL WHERE entry IN (5, 109, 163, 1361, 1464, 1489, 1679, 3570);
UPDATE quest_template SET RequestItemsText = 'Yes?' WHERE entry = 219;
UPDATE quest_template SET RequestItemsText = 'Where is my powder, $N? My need grows more desperate every day.' WHERE entry = 309;
UPDATE quest_template SET RequestItemsText = 'Battle hard, $N. And do not despair, for despair is evil''s greatest weapon.' WHERE entry = 323;
UPDATE quest_template SET RequestItemsText = 'Please be brief.  There is much danger about and we cannot stand idle in conversation.' WHERE entry = 435;
UPDATE quest_template SET RequestItemsText = 'The time for talk is done. Protect Kinelory if you care about the people of Hillsbrad at all.' WHERE entry = 660;
UPDATE quest_template SET RequestItemsText = 'This is no time to talk! The goggles need to be charged with the power of the stone!' WHERE entry = 665;
UPDATE quest_template SET RequestItemsText = 'Do not delay, $N.  The Winterhoof Well''s taint must be removed!' WHERE entry = 754;
UPDATE quest_template SET RequestItemsText = 'The Thunderhorn Water Well is still tainted, $N.  Please, you must perform the ritual!' WHERE entry = 758;
UPDATE quest_template SET RequestItemsText = 'The last water well remains fetid and poisonous, $N.  You must not delay!' WHERE entry = 760;
UPDATE quest_template SET RequestItemsText = 'Have you been to the Forgotten Pools, $N?  Did you find anything?' WHERE entry = 870;
UPDATE quest_template SET RequestItemsText = 'The keyhole of this strongbox is filled with black resin.  It is impossible to open.' WHERE entry = 1393;
UPDATE quest_template SET Details = 'Yeah, you''re obviously not the smartest $c to come into Stormwind, but you''re about to be one of the dumbest to never leave.$b$bHave you met me friends?' WHERE entry = 1447;
UPDATE quest_template SET OfferRewardText = 'What do you want, $gladdy:missy;? Can''t you see I''ve got problems to take care of here? Who has time to stand around yapping with some $R chatterbox?$b$bThere are trolls coming out of the woodwork! Make it snappy.' WHERE entry = 1449;
UPDATE quest_template SET OfferRewardText = 'I give you one in good faith. You already proved yourself once, but me tinkin'' you should be more careful in the future.' WHERE entry = 1463;
UPDATE quest_template SET OfferRewardText = 'You were sent by Carendin? $N, then.$b$bDo not think light of me because my sight is gone. I see things that lie behind now, with clarity I had never known. What I once thought a curse, is now a boon.' WHERE entry = 1472;
UPDATE quest_template SET RequestItemsText = 'Where is Tooga?' WHERE entry = 1560;
UPDATE quest_template SET RequestItemsText = 'The only way you''ll get this mug is if you pry it from my cold, dead fingers...' WHERE entry = 1640;
UPDATE quest_template SET RequestItemsText = 'We''ll make our stand at the house!' WHERE entry = 1651;
UPDATE quest_template SET RequestItemsText = 'Time is wasting, $N.  If I were you, I''d get going...' WHERE entry = 1699;
UPDATE quest_template SET RequestItemsText = 'Have you completed your challenge?' WHERE entry = 1719;
UPDATE quest_template SET RequestItemsText = 'A surprise raid on the Scarlet Crusade''s tenuous forward position will give us a buffer of time to be able to march on Andorhal.  I trust you are here to report success!$b$bOnce this is successfully executed, we will need to work diligently and quickly.  We do not have the materiel and manpower to fight both the Scourge and the Scarlet Crusade at the same time if they do not buy our little ruse.' WHERE entry = 5096;
UPDATE quest_template SET RequestItemsText = '...' WHERE entry = 5126;
UPDATE quest_template SET OfferRewardText = 'Well, here you are, $n - the completed Skeleton Key.  I am certain as I can be that this key will allow you within the confines of the Scholomance.  There''s only one way to be absolutely sure it works, though.  Waste no time in trying it out, I say.$b$bGood luck, mighty hero.  May you continue to bring light unto the darkness!', RequestItemsText = NULL WHERE entry = 5505;
UPDATE quest_template SET OfferRewardText = 'Well, here you are, $n - the completed Skeleton Key.  I am certain as I can be that this key will allow you within the confines of the Scholomance.  There''s only one way to be absolutely sure it works, though.  Waste no time in trying it out, I say.$b$bGood luck, mighty hero.  May your victories continue to bring you fame and power as you lay waste to Scholomance!', RequestItemsText = NULL WHERE entry = 5511;
UPDATE quest_template SET OfferRewardText = 'Arbington said you''d deliver the goods, and deliver you have! A deal is a deal; let me pack the fragments into the mold for you.$b$bDid Arbington imbue them already? Excellent... otherwise, it would have been a long trip back to the Chillwind Point for you.',
RequestItemsText = 'Yeah, I know who you are, and I know why you''re here. Arbington sent word to me before you arrived. Let''s cut to deal at hand, now shall we?$b$bI''ve got a mold you can use for the skeleton key, but it will cost you - fifteen gold, up front, no negotiation. I''ll pack the skeletal fragments into the mold for you, and I''ll also teach you on how to forge the stem of the key without any knowledge of blacksmithing... all free of charge no less.$b$bWho says mercenaries don''t offer competitive deals!'
WHERE entry = 5538;
UPDATE quest_template SET OfferRewardText = 'This new insignia reflects your rank amongst the Frostwolf. Keep it on you at all times.$b$bAnd $c... Die with honor!', RequestItemsText = '<Warmaster Laggrond salutes you.>$b$bIt is your time, $N. You have done much for the Frostwolf Clan and in doing so, earned a place as not only a soldier of Frostwolf but also as a friend.$b$bWell done! Present your initiate''s insignia.' WHERE entry = 7163;
UPDATE quest_template SET RequestItemsText = 'Most do not live long enough to rise above their own mediocrity. You have proven yourself to be an exemplary soldier, $c. The time has come.$b$bPresent your insignia.' WHERE entry = 7168;
UPDATE quest_template SET RequestItemsText = 'It is good to see you again, $c. I had not expected you to return. Alas, you have proven yourself a brave and honorable soldier of the Frostwolf.$b$bYour time has come again, $N. You have earned a new ranking and as such, a new insignia denoting this rise in stature.$b$bPresent your insignia.' WHERE entry = 7164;
UPDATE quest_template SET RequestItemsText = 'The base buzzes with news of your exploits in the Field of Strife! You have struck mighty blows against our enemy - crushing their morale! For this, you have earned a rank of honor among the Stormpike.$b$bPresent your insignia.' WHERE entry = 7169;
UPDATE quest_template SET OfferRewardText = '<Warmaster Laggrond roars.>$b$bThey have already begun telling tales of your deeds, soldier. The Stormpike shakes in fear when your name is uttered. Carry on!', RequestItemsText = 'So many slain. Blood drenches the fields. Yet... You live... You have persevered. You have led our armies to many victories. For this, then, soldier, you have earned a new rank.$b$bPresent your insignia.' WHERE entry = 7165;
UPDATE quest_template SET RequestItemsText = 'I must know, $N. When you look directly into the eyes of the enemy, do you see fear? Do they now cower in your presence? They must realize that they are defeated!$b$bYou have earned reverence among the Guard. Present your insignia!' WHERE entry = 7170;
UPDATE quest_template SET RequestItemsText = 'Your radiate command and power, $c. Exalted in the eyes of Frostwolf - the enemy cowers at the mention of your name.$b$bRise, Hero of Frostwolf. Rise and be honored!$b$bPresent your insignia.' WHERE entry = 7166;
UPDATE quest_template SET OfferRewardText = 'Surely it will be you who carries the Eye of Command!', RequestItemsText = 'Before me stands an exalted hero of the Alliance.$b$b<Lieutenant Haggerdin salutes.>$b$bFew have earned such a rank among the Stormpike. I have watched the enemy fall before you. I have seen their resolve crumble in your presence. When you enter the fray, you become the beacon of hope for our forces!$b$bPresent your insignia.' WHERE entry = 7171;
UPDATE quest_template SET RequestItemsText = 'Drek''Thar sings your praises. Kalimdor is abuzz with tales of your heroics. The Warchief glows - your stalwart defense of our clan has pleased him greatly.$b$bYou have earned the Eye of Command.$b$bPresent your insignia, Commander $N.' WHERE entry = 7167;
UPDATE quest_template SET OfferRewardText = 'It is you who must lead our troops to victory, Commander! The soldiers are under your command. They will follow your direct orders. Lead them.... Crush the Frostwolf.', RequestItemsText = 'Let them hear your voice, Commander $N! Let them know fear. Show them what power the Stormpike holds in their rank!$b$bPresent your insignia.' WHERE entry = 7172;
UPDATE quest_template SET RequestItemsText = 'You have the option of offering larger quantities of the blood taken from our enemies. I will be glad to accept gallon sized offerings, $N.' WHERE entry = 7385;
UPDATE quest_template SET RequestItemsText = 'There are times which you may be entrenched in battle for days or weeks on end. During those longer periods of activity you may end up collecting large clusters of the Frostwolf''s storm crystals.$b$bThe Circle accepts such offerings, $N.' WHERE entry = 7386;

UPDATE `creature_template` SET `SpeedWalk` = (2.5 / 2.5), `SpeedRun` = (8.0 / 7.0) WHERE (`Entry` IN  ('14285', '14282'));
UPDATE `creature_template` SET `SpeedWalk` = 1 WHERE (`Entry` = 13145);
UPDATE `creature_template` SET `SpeedWalk` = (2.5 / 2.5), `SpeedRun` = (8.0 / 7.0) WHERE (`Entry` IN  ('12051', '14282'));
UPDATE `creature_template` SET `SpeedWalk` = 1 WHERE (`Entry` = 13146);

DELETE FROM `creature` WHERE `guid` = 61750 AND `id` = 17136;
UPDATE `creature` SET `id` = 0 WHERE `guid` = 60890 AND `id` = 17136;
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) VALUES (60890, 17136),(60890, 17137);

UPDATE `creature_template` SET `MechanicImmuneMask`='8388624' WHERE `entry`='9030';
UPDATE `creature_template` SET `MechanicImmuneMask`='8389648' WHERE `entry`='9032';
UPDATE `creature_template` SET `MechanicImmuneMask`='8388624' WHERE `entry`='9029';
UPDATE `creature_template` SET `MechanicImmuneMask`='8388624' WHERE `entry`='9027';
UPDATE `creature_template` SET `MechanicImmuneMask`='8388624' WHERE `entry`='9028';
UPDATE `creature_template` SET `MechanicImmuneMask`='8388624', `MaxLootGold`='737' WHERE `entry`='9437';
UPDATE `creature_template` SET `MechanicImmuneMask`='8388624', `MaxLootGold`='737', `MovementType`='0' WHERE `entry`='9438';
UPDATE `creature_template` SET `MechanicImmuneMask`='8388624', `MaxLootGold`='761' WHERE `entry`='9439';
UPDATE `creature_template` SET `MechanicImmuneMask`='8388624', `MaxLootGold`='998' WHERE `entry`='9441';
UPDATE `creature_template` SET `MechanicImmuneMask`='8388624', `MaxLootGold`='737' WHERE `entry`='9442';
UPDATE `creature_template` SET `MechanicImmuneMask`='8388624', `MaxLootGold`='761' WHERE `entry`='9443';
UPDATE `creature_template` SET `MechanicImmuneMask`='8388624', `MaxLootGold`='761' WHERE `entry`='9476';
UPDATE `creature_template` SET `MechanicImmuneMask`='76234719' WHERE `entry`='10076';

SET @GROUP_ID := 44;
SET @CREATURE_0 := 10744;
SET @CREATURE_1 := 3196;
SET @CREATURE_2 := 3200;
SET @CREATURE_3 := 3241;
SET @CREATURE_4 := 3248;
SET @CREATURE_5 := 3297;
SET @CREATURE_6 := 3332;
DELETE FROM `creature` WHERE `id` = '1364';
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `MovementType`) VALUES
(@CREATURE_0, 1364, 0, 1, -2834.9870605469, -2870.6940917969, 32.6675491333, 3.875704765319820, 300, 300, 2, 1),
(@CREATURE_1, 1364, 0, 1, -2659.9709472656, -2320.4445800781, 70.4773025513, 5.515240192413330, 300, 300, 2, 1),
(@CREATURE_2, 1364, 0, 1, -2566.2189941406, -2350.4428710938, 80.0179977417, 0.379844337701797, 300, 300, 2, 1),
(@CREATURE_3, 1364, 0, 1, -2946.4973144531, -2969.4484863281, 30.9222011566, 0.811208128929138, 300, 300, 2, 1),
(@CREATURE_4, 1364, 0, 1, -2869.6140136719, -2941.6936035156, 33.7879409790, 0.151147961616516, 300, 300, 2, 1),
(@CREATURE_5, 1364, 0, 1, -2931.105, -2973.809, 30.6708, 5.282537, 300, 300, 2, 1),
(@CREATURE_6, 1364, 0, 1, -2927.9348144531, -2959.5249023438, 31.4318408966, 4.272197723388670, 300, 300, 2, 1);
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@GROUP_ID, 'Wetlands - Balgaras the Foul (1) Wandering 000', '0', '1', '0', '0');
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(@GROUP_ID, @CREATURE_0, '0'),
(@GROUP_ID, @CREATURE_1, '1'),
(@GROUP_ID, @CREATURE_2, '2'),
(@GROUP_ID, @CREATURE_3, '3'),
(@GROUP_ID, @CREATURE_4, '4'),
(@GROUP_ID, @CREATURE_5, '5'),
(@GROUP_ID, @CREATURE_6, '6');

DELETE FROM `dbscripts_on_quest_end` WHERE id = '1705';
INSERT INTO dbscripts_on_quest_end(id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, datafloat, x, y, z, o, speed, condition_id, comments) VALUES
(1705,0,0,21,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Grimand Elmore - Set Active Object'),
(1705,0,1,29,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Grimand Elmore - Remove Quest Flags'),
(1705,0,2,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3.8048,0,0,'Grimand Elmore - Set Facing'),
(1705,0,3,0,0,0,0,0,0,0,2346,0,0,0,0,0,0,0,0,0,0,'Grimand Elmore - Say Text'),
(1705,0,4,1,173,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Grimand Elmore - Emote State Work'),
(1705,6000,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Grimand Elmore - Emotestate None'),
(1705,7000,1,36,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Grimand Elmore - Face Player'),
(1705,7000,2,1,6,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Grimand Elmore - Emote Question'),
(1705,7000,3,0,0,0,0,0,0,0,2347,0,0,0,0,0,0,0,0,0,0,'Grimand Elmore - Say Text'),
(1705,7000,4,21,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Grimand Elmore - Remove Active Object'),
(1705,7000,5,29,2,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Grimand Elmore - Add Quest Flags');
UPDATE `quest_template` SET `CompleteScript`='1705' WHERE `entry`='1705';

UPDATE `creature` SET `position_x` = -4812.48,`position_y` = -1250.62,`position_z` = 502.014,`orientation` = 4.62512,`spawntimesecsmin` = 540,`spawntimesecsmax` = 540 WHERE `guid` = 9541;
DELETE FROM `dbscripts_on_quest_end` WHERE id = '1708';
INSERT INTO dbscripts_on_quest_end(id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, datafloat, x, y, z, o, speed, condition_id, comments) VALUES
(1708,0,0,21,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Klockmort Spannerspan - Set Active Object'),
(1708,0,1,29,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Klockmort Spannerspan - Remove Quest Flags'),
(1708,0,2,3,0,0,0,0,0,0,0,0,0,0,0,-4814.891,-1250.5156,501.92575,0,0,0,'Klockmort Spannerspan - Move'),
(1708,1000,0,1,173,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Klockmort Spannerspan - Emote State'),
(1708,1000,1,0,0,0,0,0,0,0,2344,0,0,0,0,0,0,0,0,0,0,'Klockmort Spannerspan - Say Text'),
(1708,7000,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Klockmort Spannerspan - Emote State'),
(1708,8000,0,36,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Klockmort Spannerspan - Face Player'),
(1708,8000,1,1,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Klockmort Spannerspan - Emote Cheer'),
(1708,8000,2,0,0,0,0,0,0,0,2345,0,0,0,0,0,0,0,0,0,0,'Klockmort Spannerspan - Say Text'),
(1708,11000,0,3,0,0,0,0,0,0,0,0,0,0,0,-4812.478,-1250.6177,501.94717,4.62512,0,0,'Klockmort Spannerspan - Move'),
(1708,14000,0,21,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Klockmort Spannerspan - Remove Active Object'),
(1708,14000,1,29,2,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Klockmort Spannerspan - Add Quest Flags');
UPDATE `quest_template` SET `CompleteScript`='1708' WHERE `entry`='1708';

DELETE FROM `dbscripts_on_quest_end` WHERE id = '1710';
INSERT INTO dbscripts_on_quest_end(id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, datafloat, x, y, z, o, speed, condition_id, comments) VALUES
(1710,0,0,21,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Mathiel - Set Active Object'),
(1710,0,1,29,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Mathiel - Remove Quest Flags'),
(1710,0,2,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3.45575,0,0,'Mathiel - Set Facing'),
(1710,0,3,0,0,0,0,0,0,0,2348,0,0,0,0,0,0,0,0,0,0,'Mathiel - Say Text'),
(1710,0,4,1,173,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Mathiel - Emote State Work'),
(1710,6000,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Mathiel - Emotestate None'),
(1710,7000,1,36,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Mathiel - Face Player'),
(1710,7000,2,1,6,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Mathiel - Emote Question'),
(1710,7000,3,0,0,0,0,0,0,0,2349,0,0,0,0,0,0,0,0,0,0,'Mathiel - Say Text'),
(1710,7000,4,21,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Mathiel - Remove Active Object'),
(1710,7000,5,29,2,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Mathiel - Add Quest Flags');
UPDATE `quest_template` SET `CompleteScript`='1710' WHERE `entry`='1710';

UPDATE `creature` SET `position_x` = '6427.71', `position_y` = '497.148', `position_z` = '8.10494', `orientation` = '4.74729', `spawntimesecsmin` = '300', `spawntimesecsmax` = '300' WHERE `guid` =44228;
DELETE FROM `dbscripts_on_quest_start` WHERE id = '947';
INSERT INTO dbscripts_on_quest_start(id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, datafloat, x, y, z, o, speed, condition_id, comments) VALUES
(947,0,0,36,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Barithras Moonshade - Face Player'),
(947,0,1,1,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Barithras Moonshade - Emote Bow'),
(947,0,2,0,0,0,0,0,0,0,1211,0,0,0,0,0,0,0,0,0,0,'Barithras Moonshade - Say Text'),
(947,3000,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,5.131268,0,0,'Barithras Moonshade - Set Orientation'),
(947,3000,1,1,25,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Barithras Moonshade - Emote Point'),
(947,3000,2,0,0,0,0,0,0,0,1210,0,0,0,0,0,0,0,0,0,0,'Barithras Moonshade - Say Text'),
(947,10000,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4.747295,0,0,'Barithras Moonshade - Set Orientation'),
(947,30000,0,31,3616,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Cave Mushrooms - Spam Prevention');
UPDATE `quest_template` SET `StartScript`='947' WHERE `entry`='947';
DELETE FROM conditions WHERE condition_entry IN (2420, 2421, 2422);
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `flags`, `comments`) VALUES 
('2420', '8', '949', '0', '1', 'Quest ID 949 not rewarded'),
('2421', '8', '950', '0', '1', 'Quest ID 950 not rewarded');
DELETE FROM `dbscripts_on_quest_end` WHERE id = '960';
INSERT INTO dbscripts_on_quest_end(id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, datafloat, x, y, z, o, speed, condition_id, comments) VALUES
(960,0,0,0,0,0,0,0,0,0,1219,0,0,0,0,0,0,0,0,0,0,'Onu is meditating - Say Text'),
(960,20000,0,31,3616,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Onu is meditating - Spam Prevention');
UPDATE `quest_template` SET `RequiredCondition`='2420', `PrevQuestId`='944', `SpecialFlags`='1', `CompleteScript`='960', `OfferRewardText`='I am meditating on your task, $N.  Meditating on reasons why the Twilight\'s Hammer and naga are here.$B$BWhen you are ready, use the phial of scrying to create a scrying bowl.  Then, contact me through the bowl.$B$BIf you have lost your phial of scrying, then here is another.' WHERE `entry`='960';
DELETE FROM creature_questrelation WHERE id = '3616' AND quest = '960';
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES ('3616', '960');
DELETE FROM creature_involvedrelation WHERE id = '3616' AND quest = '960';
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES ('3616', '960');
UPDATE `creature` SET `position_x` = '5002.01', `position_y` = '88.8183', `position_z` = '52.7788', `orientation` = '1.74533', `spawntimesecsmin` = '300', `spawntimesecsmax` = '300' WHERE `guid` =43139;
DELETE FROM `dbscripts_on_quest_end` WHERE id = '961';
INSERT INTO dbscripts_on_quest_end(id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, datafloat, x, y, z, o, speed, condition_id, comments) VALUES
(961,0,0,0,0,0,0,0,0,0,1219,0,0,0,0,0,0,0,0,0,0,'Onu is meditating - Say Text'),
(961,20000,0,31,3616,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Onu is meditating - Spam Prevention');
UPDATE `quest_template` SET `RequiredCondition`='2421', `PrevQuestId`='949', `SpecialFlags`='1', `CompleteScript`='961' WHERE `entry`='961';
UPDATE `quest_template` SET `RequiredRaces` = '1101' WHERE `entry` =960;

UPDATE `creature` SET `position_x` = '-5497.94', `position_y` = '-455.835', `orientation` = '5.63683', `spawntimesecsmin` = '180', `spawntimesecsmax` = '180' WHERE `guid` =8624;
DELETE FROM `dbscripts_on_quest_end` WHERE id = '412';
INSERT INTO dbscripts_on_quest_end(id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, datafloat, x, y, z, o, speed, condition_id, comments) VALUES
(412,0,1,21,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Razzle Sprysprocket - Set Active'),
(412,0,2,29,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Razzle Sprysprocket - Remove QuestFlags'),
(412,0,3,29,2,0,0,1268,5,0,0,0,0,0,0,0,0,0,0,0,0,'Ozzie Togglevolt - Remove QuestFlags'),
(412,0,4,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Razzle Sprysprocket - Emote Talk'),
(412,0,5,0,0,0,0,0,0,0,1883,0,0,0,0,0,0,0,0,0,0,'Razzle Sprysprocket - Say Text'),
(412,0,6,20,3,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Razzle Sprysprocket - Change Movement');
DELETE FROM `dbscripts_on_creature_movement` WHERE id IN (126901, 126902, 126903);
INSERT INTO dbscripts_on_creature_movement(id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, datafloat, x, y, z, o, speed, condition_id, comments) VALUES
(126901,1000,0,1,69,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Razzle Sprysprocket - Add EmoteState'),
(126901,9000,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Razzle Sprysprocket - Remove EmoteState'),
(126901,9000,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Razzle Sprysprocket - Emote Talk'),
(126901,9000,2,0,0,0,0,0,0,0,1884,0,0,0,0,0,0,0,0,0,0,'Razzle Sprysprocket - Say Text'),
(126902,1000,0,1,69,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Razzle Sprysprocket - Add EmoteState'),
(126902,1000,1,0,0,0,0,0,0,0,1885,0,0,0,0,0,0,0,0,0,0,'Razzle Sprysprocket - Say Text'),
(126902,4000,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Razzle Sprysprocket - Remove EmoteState'),
(126902,4000,1,13,0,0,0,26449,15,9,0,0,0,0,0,0,0,0,0,0,0,'Razzle Sprysprocket - Activate Gameobject'),
(126902,5000,0,45,5568,0,0,5568,15,7,0,0,0,0,0,0,0,0,0,0,0,'Captured Leper Gnome - Start Relay Script'),
(126903,0,0,20,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Razzle Sprysprocket - Change Movement'),
(126903,2000,0,29,2,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Razzle Sprysprocket - Add QuestFlags'),
(126903,2000,1,29,2,1,0,1268,5,0,0,0,0,0,0,0,0,0,0,0,0,'Ozzie Togglevolt - Add QuestFlags'),
(126903,2000,3,0,0,0,0,1268,15,0,1887,1888,1889,1890,0,0,0,0,0,0,0,'Ozzie Togglevolt - Say RND Text'),
(126903,4000,2,0,0,0,0,0,0,0,1891,1892,1893,1894,0,0,0,0,0,0,0,'Razzle Sprysprocket - Say RND Text'),
(126903,4000,3,21,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Razzle Sprysprocket - Remove Active');
UPDATE `creature` SET `position_x` = '-5498.29', `position_y` = '-457.874', `position_z` = '395.644', `orientation` = '0.10472', `spawntimesecsmin` = '180', `spawntimesecsmax` = '180' WHERE `guid` =8623;
DELETE FROM `dbscripts_on_relay` WHERE id = 5568;
INSERT INTO dbscripts_on_relay(id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, datafloat, x, y, z, o, speed, condition_id, comments) VALUES
(5568,1000,0,21,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Captured Leper Gnome - Set Active'),
(5568,1000,0,0,0,0,0,0,0,0,1886,0,0,0,0,0,0,0,0,0,0,'Captured Leper Gnome - Say Text'),
(5568,19000,0,15,7344,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Captured Leper Gnome - Cast Spell'),
(5568,20000,0,25,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Captured Leper Gnome - Set Run'),
(5568,27000,0,20,2,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Captured Leper Gnome - Change Movement');
UPDATE `quest_template` SET `CompleteScript`='412' WHERE `entry`='412';
SET @PATH := 1269;
DELETE FROM creature_movement_template WHERE `Entry` = @PATH;
INSERT INTO `creature_movement_template` (`Entry`, `PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES 
(@PATH,1,1,-5496.711,-455.32004,395.43747,0.81,10000,126901),
(@PATH,1,2,-5499.78,-454.44302,395.43747,1.137,6000,126902),
(@PATH,1,3,-5497.935,-455.8348,395.3923,100,1000,126903);
UPDATE `creature` SET `position_x` = '-5490.56', `position_y` = '-454.01', `position_z` = '398.021', `orientation` = '3.78736', `spawntimesecsmin` = '5', `spawntimesecsmax` = '5' WHERE `guid` =8636;
SET @PATH := 5568;
DELETE FROM creature_movement_template WHERE `Entry` = @PATH;
INSERT INTO `creature_movement_template` (`Entry`, `PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`, `Comment`) VALUES 
(@PATH,1,1,-5492.2705,-455.6094,395.84845,100,0,0,'Custom - Pathfinding issue'),
(@PATH,1,2,-5493.5205,-456.8594,395.84845,100,0,0,'Custom - Pathfinding issue'),
(@PATH,1,3,-5493.5205,-458.1094,395.84845,100,0,0,'Custom - Pathfinding issue'),
(@PATH,1,4,-5493.0205,-459.3594,395.84845,100,0,0,'Custom - Pathfinding issue'),
(@PATH,1,5,-5493.0205,-460.8594,395.59845,100,0,0,'Custom - Pathfinding issue'),
(@PATH,1,6,-5494.5205,-461.6094,395.59845,100,0,0,'Custom - Pathfinding issue'),
(@PATH,1,7,-5496.2705,-460.3594,395.59845,100,0,0,'Custom - Pathfinding issue'),
(@PATH,1,8,-5496.7705,-458.6094,395.84845,100,0,0,'Custom - Pathfinding issue'),
(@PATH,1,9,-5497.2705,-457.1094,395.84845,100,0,0,'Custom - Pathfinding issue'),
(@PATH,1,10,-5496.0205,-455.6094,395.84845,100,0,0,'Custom - Pathfinding issue'),
(@PATH,1,11,-5494.5205,-455.3594,395.84845,100,0,0,'Custom - Pathfinding issue'),
(@PATH,1,12,-5493.0205,-455.6094,395.84845,100,0,0,'Custom - Pathfinding issue'),
(@PATH,1,13,-5491.5205,-457.8594,395.84845,100,0,0,'Custom - Pathfinding issue'),
(@PATH,1,14,-5490.2705,-458.3594,395.84845,100,0,0,'Custom - Pathfinding issue'),
(@PATH,1,15,-5487.5205,-459.3594,395.84845,100,0,0,'Custom - Pathfinding issue'),
(@PATH,1,16,-5485.2705,-460.1094,397.09845,100,0,0,'Custom - Pathfinding issue'),
(@PATH,1,17,-5482.7705,-460.3594,398.09845,100,0,0,'Custom - Pathfinding issue'),
(@PATH,1,18,-5481.2705,-461.1094,398.59845,100,0,0,'Custom - Pathfinding issue'),
(@PATH,1,20,-5473.5205, -463.8594,398.34845,100,0,0,'Custom - Pathfinding issue'),
(@PATH,1,21,-5469.482,-466.7084,397.67603,100,0,0,''),
(@PATH,1,22,-5455.209,-465.07974,398.12848,100,0,0,''),
(@PATH,1,23,-5445.134,-448.56778,396.6922,100,0,0,''),
(@PATH,1,24,-5446.2266,-440.6647,396.50348,100,0,0,''),
(@PATH,1,25,-5452.378,-427.95706,399.07904,100,0,0,''),
(@PATH,1,26,-5458.4814,-423.00104,399.98138,100,1000,1,'');

UPDATE `creature_template` SET `SchoolImmuneMask`='16' WHERE `entry`='15989';
UPDATE `creature_template` SET `MeleeBaseAttackTime`='3500' WHERE `entry`='16061';
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `entry`='16157';
UPDATE `creature_template` SET `MinLootGold`='6500', `MaxLootGold`='6800' WHERE `entry`='16194';
UPDATE `creature_template` SET `MinLootGold`='6500', `MaxLootGold`='6800' WHERE `entry`='16215';
UPDATE `creature_template` SET `MinLootGold`='6500', `MaxLootGold`='6800' WHERE `entry`='16216';
UPDATE `creature_template` SET `MechanicImmuneMask`='8388625' WHERE `entry`='16290';
UPDATE `creature_template` SET `MinLootGold`='6500', `MaxLootGold`='6800' WHERE `entry`='16446';
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='16448';
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `MinLootGold`='6500', `MaxLootGold`='10432' WHERE `entry`='16449';
UPDATE `creature_template` SET `MechanicImmuneMask`='1' WHERE `entry`='16698';
UPDATE `creature_template` SET `SchoolImmuneMask` = 32 WHERE `entry` = 16243;
UPDATE `creature_template` SET `MinLevel`='61', `MaxLevel`='61', `Faction` = '14', `MeleeBaseAttackTime`='1800', `MechanicImmuneMask`='1', `MinLootGold`='6051', `MaxLootGold`='7906', `LootId`='16243', `SchoolImmuneMask` = 16 WHERE `entry`='16783';
UPDATE `creature_template` SET `MinLevel`='61', `MaxLevel`='61', `Faction` = '14', `MeleeBaseAttackTime`='1800', `MechanicImmuneMask`='1', `MinLootGold`='6051', `MaxLootGold`='7906', `LootId`='16243', `SchoolImmuneMask` = 4 WHERE `entry`='16784';
UPDATE `creature_template` SET `MinLevel`='61', `MaxLevel`='61', `Faction` = '14', `MeleeBaseAttackTime`='1800', `MechanicImmuneMask`='1', `MinLootGold`='6051', `MaxLootGold`='7906', `LootId`='16243', `SchoolImmuneMask` = 8 WHERE `entry`='16785';
UPDATE `creature_template` SET `MechanicImmuneMask`='1' WHERE `entry`='17055';

UPDATE `creature_template` SET `NpcFlags` = '2', `GossipMenuId` = '0' WHERE `Entry` =2055;

UPDATE quest_template SET RequiredCondition=2895 WHERE entry=8728;
INSERT INTO conditions (`condition_entry`, `type`, `value1`, `value2`, `value3`, `value4`, `flags`, `comments`) VALUES
(2377, 8, 8578, 0, 0, 0, 0, 'Quest ID 8578 Rewarded'), (2422, 8, 8587, 0, 0, 0, 0, 'Quest ID 8587 Rewarded'), (2894, 8, 8620, 0, 0, 0, 0, 'Quest ID 8620 Rewarded'), (2895, -1, 2894, 2422, 2377, 0, 0,'3 quests rewarded');
UPDATE quest_template SET RequiredCondition=2899 WHERE entry=8742;
INSERT INTO conditions (`condition_entry`, `type`, `value1`, `value2`, `value3`, `value4`, `flags`, `comments`) VALUES
(2896, 8, 8730, 0, 0, 0, 0, 'Quest ID 8730 Rewarded'), (2897, 8, 8741, 0, 0, 0, 0, 'Quest ID 8741 Rewarded'), (2898, 8, 8729, 0, 0, 0, 0, 'Quest ID 8729 Rewarded'), (2899, -1, 2898, 2897, 2896, 0, 0,'3 quests rewarded');
UPDATE `quest_template` SET `NextQuestId` = '8728' WHERE `entry` IN (8587,8620);
UPDATE `quest_template` SET `PrevQuestId` = '0' WHERE `entry` =8742;
UPDATE `quest_template` SET `NextQuestId` = '8742' WHERE `entry` =8729;
UPDATE quest_template SET ExclusiveGroup = 0 WHERE entry IN (8729,8730,8741);
UPDATE `quest_template` SET `RequiredSkill` = '185', `RequiredSkillValue` = '1' WHERE `entry` =555;
UPDATE `quest_template` SET `NextQuestId` = '0' WHERE `entry` =8286;

DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE `id` BETWEEN 14230 AND 14237);
DELETE FROM creature_movement WHERE id IN (SELECT guid FROM creature WHERE `id` BETWEEN 14230 AND 14237);
DELETE FROM `creature` WHERE `id` BETWEEN 14230 AND 14237;
INSERT INTO `creature` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `MovementType`) VALUES
(131500, 14230, 1, -2357.19, -4077.67, 6.78764, 1.16663, 18000, 28800, 10, 1),
(131499, 14230, 1, -2703.59, -4255.08, 7.4448, 5.11574, 18000, 28800, 10, 1),
(131498, 14230, 1, -2587.64, -4014.07, 7.02476, 2.52975, 18000, 28800, 10, 1),
(131497, 14230, 1, -2979.75, -4331.81, 10.9415, 0.964388, 18000, 28800, 10, 1),
(29668, 14231, 1, -2703.8, -3123.47, 38.1372, 2.73824, 18000, 28800, 10, 1),
(3686, 14231, 1, -2700.64, -3052.18, 38.183, 2.62899, 18000, 28800, 10, 1),
(3747, 14231, 1, -2608.36, -3011.72, 29.4168, 0.0195422, 18000, 28800, 10, 1),
(3754, 14231, 1, -2769.55, -3040.72, 34.8546, 1.80725, 18000, 28800, 10, 1),
(3761, 14231, 1, -2750.74, -3075.69, 29.9532, 2.21352, 18000, 28800, 10, 1),
(3763, 14231, 1, -2740.71, -3018.02, 37.1624, 2.27421, 18000, 28800, 10, 1),
(3776, 14231, 1, -2740.71, -3018.02, 37.1624, 2.27421, 18000, 28800, 10, 1),
(3821, 14231, 1, -2639.03, -3026.1, 27.8827, 2.20688, 18000, 28800, 10, 1),
(3826, 14231, 1, -2800.88, -3121.34, 28.9155, 2.29019, 18000, 28800, 10, 1),
(29636, 14231, 1, -2608.36, -3011.72, 29.4168, 0.0195422, 18000, 28800, 10, 1),
(3617, 14232, 1, -2600.31, -3454.6, 33.139, 2.46374, 18000, 28800, 10, 1),
(3624, 14232, 1, -2709.5, -3530.38, 34.4606, 5.1551, 18000, 28800, 10, 1),
(52885, 14232, 1, -2660.32, -3491.51, 33.5401, 2.60921, 18000, 28800, 10, 1),
(3653, 14232, 1, -2592.01, -3498.18, 33.5195, 3.04692, 18000, 28800, 10, 1),
(3670, 14232, 1, -2714.64, -3489.85, 34.85, 4.46, 18000, 28800, 10, 1),
(131503, 14233, 1, -3969.57, -3182.07, 28.8974, 3.08685, 37800, 57600, 10, 1),
(131501, 14233, 1, -4040.93, -3557.63, 28.5225, 5.65789, 37800, 57600, 10, 1),
(131502, 14233, 1, -3795.77, -2958.63, 28.6474, 5.12267, 37800, 57600, 10, 1),
(131504, 14233, 1, -3779.78, -3273.46, 28.6474, 0.340187, 37800, 57600, 10, 1),
(52886, 14233, 1, -4453.28, -3973.02, 29.4314, 2.39624, 37800, 57600, 10, 1),
(3590, 14234, 1, -4376.98, -3878.91, 48.3463, 3.21946, 43200, 86400, 5, 1),
(26749, 14234, 1, -4219.99, -3708.12, 59.9719, 2.94094, 43200, 86400, 5, 1),
(3583, 14235, 1, -4100.05, -3683.57, 44.854, 2.56508, 75600, 115200, 5, 1),
(3582, 14235, 1, -3926.89, -3745.08, 37.6384, 6.21675, 75600, 115200, 5, 1),
(3554, 14235, 1, -3814.24, -3650.64, 37.9552, 3.72094, 75600, 115200, 5, 1),
(52887, 14235, 1, -3985.36, -3723.25, 41.8631, 4.24192, 75600, 115200, 5, 1),
(3459, 14235, 1, -4042.09, -3753.6, 43.2492, 6.26622, 75600, 115200, 5, 1),
(3390, 14236, 1, -4183.3, -3912.85, -8.54785, 1.52582, 75600, 115200, 7, 1),
(3395, 14236, 1, -4201.15, -3973.48, -13.3196, 5.33559, 75600, 115200, 7, 1),
(3434, 14236, 1, -4282.74, -3923.41, -5.72519, 4.98676, 75600, 115200, 7, 1),
(26844, 14236, 1, -4190, -4011, -9, 4.337, 75600, 115200, 7, 1),
(3440, 14236, 1, -4250.64, -3849.09, -6.71606, 5.12114, 75600, 115200, 7, 1),
(3347, 14237, 1, -4207.99, -2911.04, 44.9497, 2.051, 172800, 259200, 10, 1),
(52888, 14237, 1, -4240.73, -2866.63, 37.1291, 5.23007, 172800, 259200, 10, 1),
(131505, 14237, 1, -4240.14, -3028.64, 44.0589, 4.23654, 172800, 259200, 10, 1),
(131506, 14237, 1, -4513.47, -2809.81, 34.1713, 1.66829, 172800, 259200, 10, 1),
(3388, 14237, 1, -4408.82, -2861.63, 28.7375, 2.12787, 172800, 259200, 10, 1);
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (90, 1, 'Drogoth the Roamer (14231)'), (86, 1, 'Dart (14232)'), (87, 1, 'Hayoc (14234)'), (88, 1, 'The Rot (14235)'), (89, 1, 'Lord Angler (14236)');
DELETE FROM `pool_creature` WHERE `guid` = 52888;
DELETE FROM `pool_creature` WHERE `guid` = 131505;
DELETE FROM `pool_creature` WHERE `guid` = 131506;
DELETE FROM `pool_creature` WHERE `guid` = 52886;
DELETE FROM `pool_creature` WHERE `guid` = 131501;
DELETE FROM `pool_creature` WHERE `guid` = 131502;
DELETE FROM `pool_creature` WHERE `guid` = 131503;
DELETE FROM `pool_creature` WHERE `guid` = 131504;
DELETE FROM `pool_creature` WHERE `guid` = 29636;
DELETE FROM `pool_creature` WHERE `guid` = 131497;
DELETE FROM `pool_creature` WHERE `guid` = 131498;
DELETE FROM `pool_creature` WHERE `guid` = 131499;
DELETE FROM `pool_creature` WHERE `guid` = 131500;
INSERT INTO `pool_creature_template` (`id`, `pool_entry`, `chance`, `description`) VALUES (14230, 1322, 0, 'Burgle Eye (14230)'), (14231, 90, 0, 'Drogoth the Roamer (14231)'), (14232, 86, 0, 'Dart (14232)'), (14233, 1323, 0, 'Ripscale (14233)'), (14234, 87, 0, 'Hayoc (14234)'), (14235, 88, 0, 'The Rot (14235)'), (14236, 89, 0, 'Lord Angler (14236)'), (14237, 1324, 0, 'Oozeworm (14237)'); 

UPDATE `creature_template` SET `ExtraFlags` = `ExtraFlags`|1048576 WHERE `entry` = 33713;
INSERT INTO `creature` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `MovementType`) VALUES
(3874, 33713, 530, 7545.6572265625, -5920.77978515625, -0.69005990028381347, 0.996847927570343017, 300, 300, 15, 1),
(3885, 33713, 530, 7838.9990234375, -5945.794921875, 0.828611254692077636, 2.134981155395507812, 300, 300, 15, 1),
(3895, 33713, 530, 7732.0205078125, -5882.666015625, -1.42281794548034667, 0.408314764499664306, 300, 300, 15, 1),
(3917, 33713, 530, 7351.49951171875, -5735.94921875, 0.915730893611907958, 1.754583358764648437, 300, 300, 15, 1),
(3967, 33713, 530, 6896.83544921875, -5773.91015625, -2.44362306594848632, 3.549305915832519531, 300, 300, 15, 1),
(4018, 33713, 530, 6858.54638671875, -5746.30859375, -3.81381726264953613, 3.057477951049804687, 300, 300, 15, 1),
(4039, 33713, 530, 7604.7021484375, -5901.18115234375, 1.38016366958618164, 3.26176309585571289, 300, 300, 15, 1),
(4045, 33713, 530, 7173.72, -5696.39, -4.92298, 4.90194, 300, 300, 15, 1);

UPDATE `creature_template` SET `ExtraFlags` = `ExtraFlags`|1048576 WHERE `entry` = 33710;
REPLACE INTO `creature` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `MovementType`) VALUES
(21259, 33710, 530, 8419.0322265625, -7680.81982421875, 139.274932861328125, 5.162060737609863281, 300, 300, 20, 1),
(20647, 33710, 530, 8464.189453125, -7756.95654296875, 140.45269775390625, 2.86248779296875, 300, 300, 20, 1),
(21258, 33710, 530, 8384.7392578125, -7747.66357421875, 130.657928466796875, 4.596644401550292968, 300, 300, 20, 1),
(21274, 33710, 530, 8424.330078125, -7773.04541015625, 144.5685882568359375, 2.515667915344238281, 300, 300, 20, 1),
(21257, 33710, 530, 8506.970703125, -7793.060546875, 139.6413726806640625, 1.385115504264831542, 300, 300, 20, 1),
(4085, 33710, 530, 8376.548828125, -7775.1962890625, 139.297576904296875, 1.546271443367004394, 300, 300, 20, 1),
(4086, 33710, 530, 8590.4453125, -7792.09033203125, 140.48553466796875, 4.168963909149169921, 300, 300, 20, 1),
(4101, 33710, 530, 8586.94921875, -7770.6923828125, 136.357391357421875, 2.528781414031982421, 300, 300, 20, 1),
(4148, 33710, 530, 8596.357421875, -7718.61669921875, 138.638824462890625, 6.205604076385498046, 300, 300, 20, 1),
(4152, 33710, 530, 8517.71875, -7712.3447265625, 144.969329833984375, 5.685832500457763671, 300, 300, 20, 1),
(4162, 33710, 530, 8548.8525390625, -7755.58837890625, 119.035003662109375, 1.030188441276550292, 300, 300, 20, 1);

UPDATE `creature_template` SET `ExtraFlags` = `ExtraFlags`|1048576 WHERE `entry` = 33711;

INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES (33711, 22570, -25, 0, 1, 1, 0, 'Plagued Blood Sample');

UPDATE creature_template SET MinLevel=70,MaxLevel=80,UnitClass=2 WHERE entry=15438;
UPDATE `creature_template` SET `MinLevelHealth` = '5589', `MaxLevelHealth` = '7373', `MinLevelMana` = '3155', `MaxLevelMana` = '3994', `Armor` = '6708' WHERE `Entry` =15438;
UPDATE `creature_template` SET `Faction` = '1629' WHERE `Entry` IN (15438,15352);

INSERT INTO worldstate_name(Id, Name) VALUES
(1778,'Arathi Basin - Occupied Bases Horde'),
(1779,'Arathi Basin - Occupied Bases Alliance'),
(1776,'Arathi Basin - Resources Alliance'),
(1777,'Arathi Basin - Resources Horde'),
(1780,'Arathi Basin - Resources Max'),
(1955,'Arathi Basin - Close to Victory warning threshold'),
(1842,'Arathi Basin - Stable Neutral'),
(1843,'Arathi Basin - Gold Mine Neutral'),
(1844,'Arathi Basin - Lumber Mill Neutral'),
(1845,'Arathi Basin - Farm Neutral'),
(1846,'Arathi Basin - Blacksmith Neutral'),
(1767,'Arathi Basin - Stable Alliance'),
(1768,'Arathi Basin - Stable Horde'),
(1769,'Arathi Basin - Stable contested Alliance'),
(1770,'Arathi Basin - Stable contested Horde'),
(1772,'Arathi Basin - Farm Alliance'),
(1773,'Arathi Basin - Farm Horde'),
(1774,'Arathi Basin - Farm contested Alliance'),
(1775,'Arathi Basin - Farm contested Horde'),
(1782,'Arathi Basin - Blacksmith Alliance'),
(1783,'Arathi Basin - Blacksmith Horde'),
(1784,'Arathi Basin - Blacksmith contested Alliance'),
(1785,'Arathi Basin - Blacksmith contested Horde'),
(1792,'Arathi Basin - Lumber Mill Alliance'),
(1793,'Arathi Basin - Lumber Mill Horde'),
(1794,'Arathi Basin - Lumber Mill contested Alliance'),
(1795,'Arathi Basin - Lumber Mill contested Horde'),
(1787,'Arathi Basin - Gold Mine Alliance'),
(1788,'Arathi Basin - Gold Mine Horde'),
(1789,'Arathi Basin - Gold Mine contested Alliance'),
(1790,'Arathi Basin - Gold Mine contested Horde');

INSERT INTO worldstate_name(Id, Name) VALUES
(1545,'Warsong Gulch - Picked up flag state Alliance'),
(1546,'Warsong Gulch - Picked up flag state Horde'),
(1581,'Warsong Gulch - Captures Alliance'),
(1582,'Warsong Gulch - Captures Horde'),
(1601,'Warsong Gulch - Captures Max'),
(2338,'Warsong Gulch - Horde HUD enabled'),
(2339,'Warsong Gulch - Alliance HUD enabled'),
(4247,'Warsong Gulch - Time enabled'),
(4248,'Warsong Gulch - Time remaining');

INSERT INTO worldstate_name(Id, Name) VALUES
(2749,'Eye of the Storm - Resources Alliance'),
(2750,'Eye of the Storm - Resources Horde'),
(2752,'Eye of the Storm - Towers Alliance'),
(2753,'Eye of the Storm - Towers Horde'),
(2718,'Eye of the Storm - Point Slider Display'),
(2757,'Eye of the Storm - Flag Ready'),
(2769,'Eye of the Storm - Flag state Alliance'),
(2770,'Eye of the Storm - Flag state Horde'),
(2723,'Eye of the Storm - Blood Elf Tower Alliance'),
(2724,'Eye of the Storm - Blood Elf Tower Horde'),
(2722,'Eye of the Storm - Blood Elf Tower Neutral'),
(2730,'Eye of the Storm - Mage Tower Alliance'),
(2729,'Eye of the Storm - Mage Tower Horde'),
(2728,'Eye of the Storm - Mage Tower Neutral'),
(2726,'Eye of the Storm - Fel Reaver Ruins Alliance'),
(2727,'Eye of the Storm - Fel Reaver Ruins Horde'),
(2725,'Eye of the Storm - Fel Reaver Ruins Neutral'),
(2732,'Eye of the Storm - Draenei Ruins Alliance'),
(2733,'Eye of the Storm - Draenei Ruins Horde'),
(2731,'Eye of the Storm - Draenei Ruins Neutral');

DELETE FROM achievement_criteria_requirement WHERE type=17;
INSERT INTO conditions(condition_entry, type, value1, value2, value3, value4, flags, comments) VALUES
('20400', '42', '1776', '0', '0', '0', '0', ''),
('20401', '42', '1777', '0', '0', '0', '0', ''),
('20402', '42', '1776', '0', '1600', '0', '0', ''),
('20403', '42', '1777', '0', '1600', '0', '0', ''),
('20404', '-2', '20400', '20401', '0', '0', '0', ''),
('20405', '-2', '20402', '20403', '0', '0', '0', ''),
('20406', '-1', '20404', '20405', '0', '0', '0', '');
INSERT INTO conditions(condition_entry, type, value1, value2, value3, value4, flags, comments) VALUES
('20407', '42', '1776', '2', '1590', '0', '0', ''),
('20408', '42', '1777', '2', '1590', '0', '0', ''),
('20409', '-1', '20407', '20408', '0', '0', '0', '');
INSERT INTO conditions(condition_entry, type, value1, value2, value3, value4, flags, comments) VALUES
('20410', '42', '2749', '0', '0', '0', '0', ''),
('20411', '42', '2750', '0', '0', '0', '0', ''),
('20412', '42', '2749', '0', '1600', '0', '0', ''),
('20413', '42', '2750', '0', '1600', '0', '0', ''),
('20414', '-2', '20410', '20411', '0', '0', '0', ''),
('20415', '-2', '20412', '20413', '0', '0', '0', ''),
('20416', '-1', '20414', '20415', '0', '0', '0', '');
INSERT INTO conditions(condition_entry, type, value1, value2, value3, value4, flags, comments) VALUES
('20417', '42', '1581', '0', '0', '0', '0', ''),
('20418', '42', '1582', '0', '0', '0', '0', ''),
('20419', '42', '1581', '0', '3', '0', '0', ''),
('20420', '42', '1582', '0', '3', '0', '0', ''),
('20421', '-2', '20417', '20418', '0', '0', '0', ''),
('20422', '-2', '20419', '20420', '0', '0', '0', ''),
('20423', '-1', '20421', '20422', '0', '0', '0', '');
INSERT INTO achievement_criteria_requirement(criteria_id, type, value1, value2) VALUES
(611,25,20406,0),
(1235,25,20409,0),
(1238,25,20416,0),
(1236,25,20423,0),
(1824,22,0,0);

UPDATE gossip_menu_option SET action_script_id = 985201 WHERE menu_id = 9852 AND Id = 3;
DELETE FROM dbscripts_on_gossip WHERE id = 985200;
DELETE FROM dbscripts_on_gossip WHERE id = 985201;
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(985201,0,15,55568,0,0,0,0,0,0,0,0,0,0,0,0,0,'cast: Summon Gymer (Force)');
UPDATE creature_template SET MinLevel = 80, MaxLevel = 80, SpeedRun=28/7, SpeedWalk=7/2.5 WHERE entry = 29884;
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 29884);
DELETE FROM creature_template_addon WHERE entry = 29884;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES (29884,0,0,1,0,0,0,55461);
DELETE FROM spell_target_position WHERE id=55431;
INSERT INTO spell_target_position (id, target_map, target_position_x, target_position_y, target_position_z, target_orientation) VALUES (55431,571,5799.29,-1597.31,237.2533,5.043737);
DELETE FROM dbscripts_on_spell WHERE id IN (55639,55649,55516);
INSERT INTO dbscripts_on_spell (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(55639,0,0,0,0,0,0,0,0,30652,0,0,0,0,0,0,0,'Gymer - say at 50% HP'),
(55649,0,0,0,0,0,0,0,0,30653,0,0,0,0,0,0,0,'Gymer - say at 15% HP'),
(55516,0,15,43671,0,0,0,0,2,0,0,0,0,0,0,0,0,'Gymer - Cast Ride Vehicle'),
(55516,1000,15,55424,0,0,0,0,0,0,0,0,0,0,0,0,0,'Gymer - Cast Grabbed');
DELETE FROM `dbscript_random_templates` WHERE `id`=20289;
INSERT INTO `dbscript_random_templates` (`id`, `type`, `target_id`, `chance`, `comments`) VALUES
(20289, 0, 30595, 0, 'Gymer - Random Texts'),
(20289, 0, 30596, 0, 'Gymer - Random Texts'),
(20289, 0, 30597, 0, 'Gymer - Random Texts'),
(20289, 0, 30598, 0, 'Gymer - Random Texts');
DELETE FROM vehicle_seat_addon WHERE SeatEntry=2172;
INSERT INTO vehicle_seat_addon(SeatEntry, SeatOrientation, ExitParamX, ExitParamY, ExitParamZ, ExitParamO, ExitParamValue) VALUES (2172,0,40,0,0,0,1);
DELETE FROM spell_script_target WHERE entry = 55571;
INSERT INTO spell_script_target VALUES (55571,1,29897,0), (55571,1,29893,0), (55571,1,29892,0);
DELETE FROM dbscripts_on_relay WHERE id IN (20609);
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20609,1,34,2900,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(20609,100,14,55430,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'');
DELETE FROM conditions WHERE condition_entry = 2900;
INSERT INTO conditions (condition_entry, type, value1, value2,value3,value4) VALUES (2900, 4, 66, 0,0,0);

UPDATE `dbscripts_on_creature_movement` SET `data_flags` = 8, `dataint` = 0 WHERE `id` = 1763502 AND `command` = 20;

DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id IN (29889,29890,29894,29891,29892,29887,29893,29897,29872,29871,29939));
DELETE FROM creature_movement WHERE id IN (SELECT guid FROM creature WHERE id IN (29889,29890,29894,29891,29892,29887,29893,29897,29872,29871,29939));
DELETE FROM creature WHERE id IN (29889,29890,29894,29891,29892,29887,29893,29897,29872,29871,29939);
DELETE FROM dbscripts_on_creature_movement WHERE id = 650;
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES
(49879,29889,571,1,256,0,0,5593.09,-1417.48,227.348,2.14314,60,60,10,0,0,0,0,1),
(49880,29889,571,1,256,0,0,5558.78,-1519.53,238.436,2.90263,60,60,10,0,0,0,0,1),
(49881,29889,571,1,256,0,0,5603.85,-1593.56,235.266,3.71159,60,60,10,0,0,0,0,1),
(49882,29889,571,1,256,0,0,5694.36,-1621.03,233.48,5.32166,60,60,10,0,0,0,0,1),
(49883,29889,571,1,256,0,0,5703.95,-1262.71,234.153,4.50486,60,60,10,0,0,0,0,1),
(49884,29889,571,1,256,0,0,5518.77,-1593.1,242.396,2.4141,60,60,10,0,0,0,0,1),
(49885,29889,571,1,256,0,0,5677.52,-1333.71,230.763,2.49671,60,60,10,0,0,0,0,1),
(49886,29889,571,1,256,0,0,5787.76,-1354.04,229.994,5.51295,60,60,10,0,0,0,0,1),
(49887,29889,571,1,256,0,0,5857.22,-1423.64,231.516,0.190067,60,60,10,0,0,0,0,1),
(49888,29889,571,1,256,0,0,5516.44,-1549.8,240.719,6.23614,60,60,10,0,0,0,0,1),
(49889,29889,571,1,256,0,0,5603.15,-1745.05,238.946,4.08567,60,60,10,0,0,0,0,1),
(49890,29889,571,1,256,0,0,5756.63,-1322.06,232.531,3.07922,60,60,10,0,0,0,0,1),
(49891,29889,571,1,256,0,0,5576.39,-1268.68,234.997,5.96231,60,60,10,0,0,0,0,1),
(49892,29889,571,1,256,0,0,5821.99,-1385.2,231.793,4.83745,60,60,10,0,0,0,0,1),
(49893,29889,571,1,256,0,0,5807.21,-1492.73,229.279,3.98741,60,60,10,0,0,0,0,1),
(49894,29889,571,1,256,0,0,5607.47,-1488.3,230.069,4.67876,60,60,10,0,0,0,0,1),
(49895,29889,571,1,256,0,0,5574.04,-1373.48,234.88,2.12841,60,60,10,0,0,0,0,1),
(49896,29889,571,1,256,0,0,5652.45,-1281.1,232.348,0.012161,60,60,10,0,0,0,0,1),
(49897,29889,571,1,256,0,0,5615.41,-1338.07,234.457,1.77269,60,60,10,0,0,0,0,1),
(49898,29889,571,1,256,0,0,5552.92,-1446.73,237.599,4.62728,60,60,10,0,0,0,0,1),
(49899,29889,571,1,256,0,0,5505.35,-1473.35,243.777,5.30032,60,60,10,0,0,0,0,1),
(49900,29890,571,1,256,0,0,5772.54,-1299.39,234.192,5.67548,60,60,0,0,0,0,0,2),
(49901,29890,571,1,256,0,0,5884.77,-1516.75,230.416,1.17886,60,60,0,0,0,0,0,2),
(49902,29890,571,1,256,0,0,5497.04,-1564.8,237.227,4.9126,60,60,0,0,0,0,0,2),
(49903,29890,571,1,256,0,0,5641.15,-1265.71,233.305,2.81335,60,60,0,0,0,0,0,2),
(49904,29890,571,1,256,0,0,5749.67,-1477.73,234.06,5.06145,60,60,0,0,0,0,0,0),
(49905,29890,571,1,256,0,0,5809.19,-1568.95,234.643,4.36332,60,60,0,0,0,0,0,2),
(49906,29890,571,1,256,0,0,5611.7,-1555.18,231.167,1.94246,60,60,0,0,0,0,0,2),
(49907,0,571,1,256,0,0,5836.49,-1609.71,234.575,2.67035,60,60,0,0,0,0,0,2),
(118572,29894,571,1,256,0,0,5782.84,-1573.29,252.595,3.97306,60,60,0,0,0,0,0,3),
(118573,29894,571,1,256,0,0,5693.22,-1486.51,258.92,5.63416,60,60,0,0,0,0,0,3),
(118574,29894,571,1,256,0,0,5700.9,-1467,263.974,3.02271,60,60,0,0,0,0,0,3),
(118565,29891,571,1,256,0,0,5799.75,-1633.16,236.158,1.55334,60,60,0,0,0,0,0,2),
(118566,29891,571,1,256,0,0,5722.55,-1485.94,234.305,1.03322,60,60,0,0,0,0,0,2),
(118567,29891,571,1,256,0,0,5701.86,-1437.31,234.493,0.383972,60,60,0,0,0,0,0,2),
(118568,29891,571,1,256,0,0,5716.87,-1431.72,234.515,3.47321,60,60,0,0,0,0,0,2),
(118561,29892,571,1,256,0,0,5911.76,-1593.39,229.344,2.35619,60,60,0,0,0,0,0,0),
(118562,29892,571,1,256,0,0,5819.24,-1744.66,233.939,4.11898,60,60,0,0,0,0,0,0),
(118563,29892,571,1,256,0,0,5997.03,-1871.24,249.685,5.5676,60,60,0,0,0,0,0,0),
(118564,29892,571,1,256,0,0,5816.05,-1426.83,231.788,0.977384,60,60,0,0,0,0,0,0),
(118550,29892,571,1,256,0,0,5674.91,-1556.49,232.003,4.20624,60,60,0,0,0,0,0,0),
(118552,29892,571,1,256,0,0,5633.34,-1375.87,234.362,2.47837,60,60,0,0,0,0,0,0),
(118555,29892,571,1,256,0,0,5744.05,-1372.97,229.38,0.942478,60,60,0,0,0,0,0,0),
(118557,29892,571,1,256,0,0,5754.57,-1540.35,231.891,5.60251,60,60,0,0,0,0,0,0),
(118558,29892,571,1,256,0,0,5619.89,-1532.4,232.694,3.71755,60,60,0,0,0,0,0,0),
(118559,29892,571,1,256,0,0,5572.34,-1453.62,242.183,3.66519,60,60,0,0,0,0,0,0),
(118560,29892,571,1,256,0,0,5899.78,-1659.04,234.512,3.17,60,60,0,0,0,0,0,0),
(118569,29892,571,1,256,0,0,5966.1,-1622.59,230.971,0.733038,60,60,0,0,0,0,0,0),
(118570,29892,571,1,256,0,0,6005.46,-1787.25,237.168,0.733038,60,60,0,0,0,0,0,0),
(118571,29892,571,1,256,0,0,5955.1,-1715.93,230.495,4.57276,60,60,0,0,0,0,0,0),
(118543,29892,571,1,256,0,0,5868.89,-1702.36,236.834,0.96,60,60,0,0,0,0,0,0),
(118544,29892,571,1,256,0,0,5869.98,-1824.33,249.903,2.35619,60,60,0,0,0,0,0,0),
(118545,0,571,1,256,0,0,5769.09,-1604.95,234.239,0.244346,60,60,0,0,0,0,0,2),
(118546,0,571,1,256,0,0,5799.75,-1633.16,236.158,1.55334,60,60,0,0,0,0,0,2),
(118547,0,571,1,256,0,0,5782.73,-1567.05,233.834,5.13127,60,60,0,0,0,0,0,2),
(118548,29887,571,1,256,0,0,6125.892,-1976.432,236.7671,3.490659,60,60,0,0,0,0,0,0),
(118549,29887,571,1,256,0,0,6094.913,-1999.617,235.3306,3.298672,60,60,0,0,0,0,0,0),
(54236,29887,571,1,256,0,0,6095.831,-1956.243,234.9085,3.909538,60,60,0,0,0,0,0,0),
(54237,29887,571,1,256,0,0,6079.081,-1979.87,233.2735,2.80998,60,60,0,0,0,0,0,0),
(54239,29887,571,1,256,0,0,6124.873,-2074.937,234.8453,3.815086,60,60,0,0,0,0,0,0),
(54240,29887,571,1,256,0,0,6115.678,-2046.837,234.2767,2.6529,60,60,0,0,0,0,0,0),
(54241,29887,571,1,256,0,0,6109.089,-2086.751,234.324,2.268928,60,60,0,0,0,0,0,0),
(54242,29887,571,1,256,0,0,6089.869,-2127.341,238.6702,4.732711,60,60,0,0,0,0,0,0),
(54243,29887,571,1,256,0,0,6090.599,-2028.502,235.0878,2.740167,60,60,0,0,0,0,0,0),
(54244,29887,571,1,256,0,0,6238.445,-2054.021,234.7703,2.897247,60,60,0,0,0,0,0,0),
(54245,29887,571,1,256,0,0,6209.397,-2052.243,235.1479,0.122173,60,60,0,0,0,0,0,0),
(54246,29887,571,1,256,0,0,6153.763,-2087.365,235.6443,2.513274,60,60,0,0,0,0,0,0),
(54247,29887,571,1,256,0,0,6192.76,-2093.658,235.2955,2.617994,60,60,0,0,0,0,0,0),
(54248,29887,571,1,256,0,0,6159.897,-1938.422,235.4328,3.665191,60,60,0,0,0,0,0,0),
(54249,29887,571,1,256,0,0,6209.451,-1939.861,235.2643,3.525565,60,60,0,0,0,0,0,0),
(54250,29887,571,1,256,0,0,6240.618,-1979.466,235.851,3.281219,60,60,0,0,0,0,0,0),
(54251,29887,571,1,256,0,0,6246.895,-2106.486,238.1666,3.112057,60,60,0,0,0,0,0,0),
(54252,29887,571,1,256,0,0,5599.204,-2137.05,237.6081,3.863754,60,60,10,0,0,0,0,1),
(54253,29887,571,1,256,0,0,5640.113,-2195.775,234.9898,3.397421,60,60,10,0,0,0,0,1),
(54254,29887,571,1,256,0,0,5673.685,-2208.768,238.2557,2.8837,60,60,10,0,0,0,0,1),
(54255,29887,571,1,256,0,0,5585.138,-2182.406,236.3322,4.338769,60,60,10,0,0,0,0,1),
(54256,29887,571,1,256,0,0,5557.141,-2137.786,241.4211,5.362672,60,60,10,0,0,0,0,1),
(54257,29887,571,1,256,0,0,5652.425,-2236.58,237.8889,2.237425,60,60,10,0,0,0,0,1),
(54258,29887,571,1,256,0,0,5549.167,-2125.551,240.6078,4.296391,60,60,10,0,0,0,0,1),
(54259,29887,571,1,256,0,0,5633.27,-2176.77,237.116,2.79417,60,60,10,0,0,0,0,1),
(54260,29887,571,1,256,0,0,5607.35,-2218.35,236.188,0.390844,60,60,10,0,0,0,0,1),
(54261,29887,571,1,256,0,0,6081.205,-2122.072,237.9202,4.448981,60,60,0,0,0,0,0,0),
(54262,29887,571,1,256,0,0,6079.081,-1979.87,233.2735,2.80998,60,60,0,0,0,0,0,0),
(54263,29887,571,1,256,0,0,6113.35,-2016.13,233.336,2.90235,60,60,0,0,0,0,0,0),
(54264,29893,571,1,256,0,0,5792.17,-2033.02,249.027,2.51436,60,60,15,0,0,0,0,1),
(54265,29893,571,1,256,0,0,5634.09,-1674.85,250.732,1.44103,60,60,15,0,0,0,0,1),
(54266,29893,571,1,256,0,0,5603.43,-1949.01,252.326,0.108703,60,60,15,0,0,0,0,1),
(54267,29893,571,1,256,0,0,5659.06,-1999.57,254.244,1.04795,60,60,15,0,0,0,0,1),
(54268,29893,571,1,256,0,0,5597.02,-1639.48,253.519,4.81042,60,60,15,0,0,0,0,1),
(54269,29893,571,1,256,0,0,5656.89,-1890.77,252.484,6.03882,60,60,15,0,0,0,0,1),
(54270,29893,571,1,256,0,0,5524.78,-2118.44,247.614,4.04672,60,60,15,0,0,0,0,1),
(54271,29893,571,1,256,0,0,5779.88,-2165.09,249.554,3.28294,60,60,15,0,0,0,0,1),
(54272,29893,571,1,256,0,0,5696.14,-2132.75,246.073,0.583684,60,60,15,0,0,0,0,1),
(54273,29893,571,1,256,0,0,5637.88,-2263.12,244.455,3.8067,60,60,15,0,0,0,0,1),
(54274,29893,571,1,256,0,0,5532.74,-1931.53,251.063,5.20409,60,60,15,0,0,0,0,1),
(54275,29893,571,1,256,0,0,5626.09,-2212.5,243.211,5.71222,60,60,15,0,0,0,0,1),
(54276,29893,571,1,256,0,0,5690.3,-2203.39,246.999,6.23287,60,60,15,0,0,0,0,1),
(54277,29893,571,1,256,0,0,5766.66,-2228.07,248.994,3.70314,60,60,15,0,0,0,0,1),
(54278,29893,571,1,256,0,0,5917.96,-1745.37,247.479,1.75403,60,60,15,0,0,0,0,1),
(54279,29893,571,1,256,0,0,5598.8,-2152.74,245.413,5.40163,60,60,15,0,0,0,0,1),
(54280,29893,571,1,256,0,0,5570.13,-1988.61,248.123,4.89494,60,60,15,0,0,0,0,1),
(54281,29893,571,1,256,0,0,5808.27,-1954.31,247.82,1.17655,60,60,15,0,0,0,0,1),
(54282,29893,571,1,256,0,0,5616.83,-2047.34,250.149,2.04945,60,60,15,0,0,0,0,1),
(54283,29893,571,1,256,0,0,5546.11,-2086.89,250.504,4.21615,60,60,15,0,0,0,0,1),
(54284,29893,571,1,256,0,0,5905.98,-1661.12,240.979,4.02717,60,60,15,0,0,0,0,1),
(54285,29893,571,1,256,0,0,5750.18,-1862.3,254.382,5.72258,60,60,15,0,0,0,0,1),
(54286,29893,571,1,256,0,0,5701.83,-1920.41,253.197,3.25694,60,60,15,0,0,0,0,1),
(54287,29893,571,1,256,0,0,5522.76,-1733.83,258.208,2.42092,60,60,15,0,0,0,0,1),
(54288,29893,571,1,256,0,0,5755.15,-1737.57,237.761,3.72279,60,60,15,0,0,0,0,1),
(54289,29893,571,1,256,0,0,5797.62,-1838.74,250.833,5.08664,60,60,15,0,0,0,0,1),
(54290,29893,571,1,256,0,0,5840.9,-1806.82,245.091,3.25101,60,60,15,0,0,0,0,1),
(54291,29893,571,1,256,0,0,5614.24,-1848.47,247.657,1.73093,60,60,15,0,0,0,0,1),
(54292,29893,571,1,256,0,0,5680.47,-1839.64,251.013,4.41621,60,60,15,0,0,0,0,1),
(54293,29893,571,1,256,0,0,5633.81,-1785.43,234.443,0.890802,60,60,15,0,0,0,0,1),
(54294,29893,571,1,256,0,0,5891.75,-1920.3,247.544,2.67603,60,60,15,0,0,0,0,1),
(54295,29893,571,1,256,0,0,5678.69,-1692.35,251.9,4.04414,60,60,15,0,0,0,0,1),
(54296,29893,571,1,256,0,0,5601.89,-1747.98,239.328,3.69491,60,60,15,0,0,0,0,1),
(54297,29893,571,1,256,0,0,5608.13,-1710.57,248.975,3.9165,60,60,15,0,0,0,0,1),
(54298,29893,571,1,256,0,0,5856.85,-1695.53,244.965,4.06662,60,60,15,0,0,0,0,1),
(54299,29893,571,1,256,0,0,5513.56,-1668.46,253.34,2.48689,60,60,15,0,0,0,0,1),
(127884,29893,571,1,256,0,0,5497.51,-1783.32,247.818,5.79127,60,60,15,0,0,0,0,1),
(127885,29893,571,1,256,0,0,5753.67,-1789.06,245.511,6.27171,60,60,15,0,0,0,0,1),
(127886,29893,571,1,256,0,0,5738.96,-2090.81,249.516,4.02465,60,60,15,0,0,0,0,1),
(127887,29893,571,1,256,0,0,5702.04,-2040.17,249.699,5.35323,60,60,15,0,0,0,0,1),
(127888,29893,571,1,256,0,0,5569.66,-1790.9,246.691,5.49165,60,60,15,0,0,0,0,1),
(127889,29897,571,1,256,0,0,5707.53,-1735.78,240.835,5.3766,60,60,10,0,0,0,0,1),
(127890,29897,571,1,256,0,0,5802.61,-1738.93,235.307,1.04673,60,60,10,0,0,0,0,1),
(127891,29897,571,1,256,0,0,5743.89,-1750.82,238.069,0.0997658,60,60,10,0,0,0,0,1),
(127892,29897,571,1,256,0,0,5811.02,-1784.27,236.274,6.14646,60,60,10,0,0,0,0,1),
(127893,29897,571,1,256,0,0,5723.42,-1775.12,236.489,5.16294,60,60,10,0,0,0,0,1),
(127894,29897,571,1,256,0,0,5617.18,-1743.66,236.465,1.51411,60,60,10,0,0,0,0,1),
(127895,29897,571,1,256,0,0,5658.38,-1772.41,237.676,0.746743,60,60,10,0,0,0,0,1),
(127896,29897,571,1,256,0,0,5725.42,-1795.13,238.324,1.44547,60,60,10,0,0,0,0,1),
(127897,29897,571,1,256,0,0,5752.34,-1822.75,243.095,3.69409,60,60,10,0,0,0,0,1),
(127898,29897,571,1,256,0,0,5631.08,-1832.93,241.618,4.10406,60,60,10,0,0,0,0,1),
(127899,29897,571,1,256,0,0,5675.36,-1866.32,245.769,5.62431,60,60,10,0,0,0,0,1),
(127900,29897,571,1,256,0,0,5752.9,-1941.65,237.372,2.94232,60,60,10,0,0,0,0,1),
(127901,29897,571,1,256,0,0,5711.7,-1913.19,240.955,4.7798,60,60,10,0,0,0,0,1),
(127902,29897,571,1,256,0,0,5714.51,-1834.89,243.729,4.74168,60,60,10,0,0,0,0,1),
(127903,29897,571,1,256,0,0,5887.18,-1943.81,238.134,4.85575,60,60,10,0,0,0,0,1),
(127904,29897,571,1,256,0,0,5741.38,-1872.99,244.209,0.401142,60,60,10,0,0,0,0,1),
(127905,29897,571,1,256,0,0,5688.27,-1919.82,241.664,0,60,60,10,0,0,0,0,1),
(127906,29897,571,1,256,0,0,5747.06,-1921.35,236.79,3.0084,60,60,10,0,0,0,0,1),
(127907,29897,571,1,256,0,0,5639.41,-1862.27,239.266,2.10084,60,60,10,0,0,0,0,1),
(127908,29897,571,1,256,0,0,5805.13,-1845.92,236.439,0.0756208,60,60,10,0,0,0,0,1),
(127909,29897,571,1,256,0,0,5754.5,-1886.36,241.926,5.51368,60,60,10,0,0,0,0,1),
(127910,29897,571,1,256,0,0,5652.04,-1905.11,236.838,0.166838,60,60,10,0,0,0,0,1),
(127911,29897,571,1,256,0,0,5729.05,-1962.74,242.979,2.99266,60,60,10,0,0,0,0,1),
(127912,29897,571,1,256,0,0,5619.46,-1948.46,241.808,0.24853,60,60,10,0,0,0,0,1),
(127913,29897,571,1,256,0,0,5657.36,-1964.91,245.461,4.68017,60,60,10,0,0,0,0,1),
(127915,29897,571,1,256,0,0,5600.15,-1903.55,235.416,6.00387,60,60,10,0,0,0,0,1),
(127916,29897,571,1,256,0,0,5750.57,-2014.91,236.201,0.182733,60,60,10,0,0,0,0,1),
(127917,29897,571,1,256,0,0,5777.2,-1984.62,237.23,2.65667,60,60,10,0,0,0,0,1),
(127918,29897,571,1,256,0,0,5845.27,-2017.67,239.041,5.73856,60,60,10,0,0,0,0,1),
(127924,29897,571,1,256,0,0,5740.72,-1985.11,239.033,2.7085,60,60,10,0,0,0,0,1),
(127925,29897,571,1,256,0,0,5619.69,-1888.08,237.569,4.62633,60,60,10,0,0,0,0,1),
(127926,29897,571,1,256,0,0,5789.48,-2040.91,240.464,6.2804,60,60,10,0,0,0,0,1),
(127927,29897,571,1,256,0,0,5584.42,-1932.25,239.35,5.79507,60,60,10,0,0,0,0,1),
(127928,29897,571,1,256,0,0,5570.12,-1788.76,236.363,5.6025,60,60,10,0,0,0,0,1),
(127929,29897,571,1,256,0,0,5783.54,-2017.36,235.189,1.87132,60,60,10,0,0,0,0,1),
(127930,29897,571,1,256,0,0,5813.15,-1804.3,239.044,0,60,60,10,0,0,0,0,1),
(127931,29897,571,1,256,0,0,5639.41,-1919.56,236.519,0,60,60,10,0,0,0,0,1),
(127932,29897,571,1,256,0,0,5577.3,-1959.28,241.303,0.166754,60,60,10,0,0,0,0,1),
(127933,29897,571,1,256,0,0,5722.54,-1994.29,242.964,4.99164,60,60,10,0,0,0,0,1),
(127934,29897,571,1,256,0,0,5713.38,-1944.09,245.148,2.63114,60,60,10,0,0,0,0,1),
(127935,29897,571,1,256,0,0,5778.57,-1791.26,236.318,0,60,60,10,0,0,0,0,1),
(127936,29897,571,1,256,0,0,5660.25,-1989.29,244.184,0,60,60,10,0,0,0,0,1),
(127937,29897,571,1,256,0,0,5619.46,-1981.38,240.553,4.24115,60,60,10,0,0,0,0,1),
(127938,29897,571,1,256,0,0,5726.31,-2022.6,238.693,0,60,60,10,0,0,0,0,1),
(127939,29897,571,1,256,0,0,5538.75,-1995.68,245.513,0,60,60,10,0,0,0,0,1),
(127940,29897,571,1,256,0,0,5623.26,-1783.38,236.269,0,60,60,10,0,0,0,0,1),
(127941,29897,571,1,256,0,0,5792.12,-2099.84,248.811,2.54383,60,60,10,0,0,0,0,1),
(127942,29897,571,1,256,0,0,5760.03,-2092.61,242.538,6.0607,60,60,10,0,0,0,0,1),
(127943,29897,571,1,256,0,0,5572.8,-2010.37,237.766,6.25656,60,60,10,0,0,0,0,1),
(127944,29897,571,1,256,0,0,5753.76,-2183.82,235.927,4.80057,60,60,10,0,0,0,0,1),
(127945,29897,571,1,256,0,0,5547.12,-2048.7,239.094,4.73105,60,60,10,0,0,0,0,1),
(127946,29897,571,1,256,0,0,5772.91,-2157.78,239.958,6.18148,60,60,10,0,0,0,0,1),
(127947,29897,571,1,256,0,0,5645.84,-2041.79,239.863,0,60,60,10,0,0,0,0,1),
(127948,29897,571,1,256,0,0,5577.91,-2059.74,243.41,5.77277,60,60,10,0,0,0,0,1),
(127949,29897,571,1,256,0,0,5590.9,-2043.84,241.144,4.51289,60,60,10,0,0,0,0,1),
(127950,29897,571,1,256,0,0,5613.07,-2026.21,244.432,0.395189,60,60,10,0,0,0,0,1),
(127951,29897,571,1,256,0,0,5678.43,-2121.45,235.266,4.8997,60,60,10,0,0,0,0,1),
(127952,29897,571,1,256,0,0,5452.19,-2082.96,248.347,0.525479,60,60,10,0,0,0,0,1),
(127953,29897,571,1,256,0,0,5786.24,-1851.96,237.279,0,60,60,10,0,0,0,0,1),
(127954,29897,571,1,256,0,0,5763.16,-1963.01,237.2,0,60,60,10,0,0,0,0,1),
(127955,29897,571,1,256,0,0,5691.89,-1774.57,240.754,1.13275,60,60,10,0,0,0,0,1),
(127956,29897,571,1,256,0,0,5624.19,-1723,237.565,3.21141,60,60,10,0,0,0,0,1),
(127957,29897,571,1,256,0,0,5625.55,-1756.74,236.703,1.02087,60,60,10,0,0,0,0,1),
(127958,29897,571,1,256,0,0,5698.07,-1800.65,243.466,4.16838,60,60,10,0,0,0,0,1),
(127959,29897,571,1,256,0,0,5671.16,-1757.48,241.689,5.58475,60,60,10,0,0,0,0,1),
(127960,29897,571,1,256,0,0,5717.55,-1859.33,244.341,4.65807,60,60,10,0,0,0,0,1),
(127961,29897,571,1,256,0,0,5686.11,-1841.56,241.616,4.09782,60,60,10,0,0,0,0,1),
(127962,29897,571,1,256,0,0,5514.21,-2092.03,240.781,5.04528,60,60,10,0,0,0,0,1),
(127963,29897,571,1,256,0,0,5620.38,-2067.06,240.247,2.54323,60,60,10,0,0,0,0,1),
(127964,29897,571,1,256,0,0,5511.3,-1991.97,245.386,0.278836,60,60,10,0,0,0,0,1),
(127965,29897,571,1,256,0,0,5670.17,-2088.12,238.11,1.77932,60,60,10,0,0,0,0,1),
(127966,29897,571,1,256,0,0,5653.69,-2062.03,239.451,1.66367,60,60,10,0,0,0,0,1),
(127967,29897,571,1,256,0,0,5661.98,-2017.09,244.826,1.56006,60,60,10,0,0,0,0,1),
(127968,29897,571,1,256,0,0,5592.4,-1993.83,239.657,5.54406,60,60,10,0,0,0,0,1),
(127969,29897,571,1,256,0,0,5742.58,-2228.58,240.386,2.18166,60,60,10,0,0,0,0,1),
(127970,29897,571,1,256,0,0,5754.04,-2159.18,237.127,5.98648,60,60,10,0,0,0,0,1),
(127971,29897,571,1,256,0,0,5496.69,-2069.24,240.842,0,60,60,10,0,0,0,0,1),
(127972,29897,571,1,256,0,0,5603.24,-2076.07,242.788,0,60,60,10,0,0,0,0,1),
(127973,29897,571,1,256,0,0,5767.46,-1937.8,238.063,0,60,60,10,0,0,0,0,1),
(127974,29897,571,1,256,0,0,5853.37,-1930.58,237.853,4.6518,60,60,10,0,0,0,0,1),
(127975,29897,571,1,256,0,0,5861.02,-1952.53,239.166,2.88397,60,60,10,0,0,0,0,1),
(127976,29897,571,1,256,0,0,5885.71,-1960.19,237.004,6.14973,60,60,10,0,0,0,0,1),
(127977,29897,571,1,256,0,0,5822.51,-1898.36,234.169,1.27129,60,60,10,0,0,0,0,1),
(127978,29897,571,1,256,0,0,5820.09,-1963.29,238.274,0,60,60,10,0,0,0,0,1),
(127979,29897,571,1,256,0,0,5797.12,-1897.61,238.63,0.726642,60,60,10,0,0,0,0,1),
(127980,29897,571,1,256,0,0,5826.17,-1873.62,236.245,4.60961,60,60,10,0,0,0,0,1),
(127981,29897,571,1,256,0,0,5773.8,-1705.85,235.111,1.30546,60,60,10,0,0,0,0,1),
(127982,29897,571,1,256,0,0,5705.64,-1693.08,241.228,1.72173,60,60,10,0,0,0,0,1),
(127983,29897,571,1,256,0,0,5607.46,-1802.37,237.163,5.50734,60,60,10,0,0,0,0,1),
(127984,29897,571,1,256,0,0,5791.58,-1954.13,237.877,0.154851,60,60,10,0,0,0,0,1),
(127985,29897,571,1,256,0,0,5827.21,-2011.92,237.32,4.54916,60,60,10,0,0,0,0,1),
(127986,29897,571,1,256,0,0,5870.79,-2053.62,237.58,4.96542,60,60,10,0,0,0,0,1),
(127987,29897,571,1,256,0,0,5849.39,-2089.56,243.226,3.45353,60,60,10,0,0,0,0,1),
(127988,29897,571,1,256,0,0,5719.28,-2125.24,239.204,3.92005,60,60,10,0,0,0,0,1),
(127989,29897,571,1,256,0,0,5623.13,-2124.52,236.228,1.61883,60,60,10,0,0,0,0,1),
(4173,29872,571,1,256,0,0,6096.626,-2004.539,265.2037,4.64488,240,240,0,0,0,0,0,3),
(4179,29821,571,1,256,0,0,5543.867,-2221.511,235.4021,0.6283185,300,300,0,0,0,0,0,0),
(88511,29939,571,1,256,0,0,5715.978,-1471.326,233.7377,5.707227,120,120,0,0,0,0,0,0),
(88510,29939,571,1,256,0,0,5639.524,-1765.044,236.6941,2.962588,120,120,0,0,0,0,0,2),
(88503,29939,571,1,256,0,0,5546.167,-1869.288,238.3516,2.426008,120,120,0,0,0,0,0,0),
(88502,29939,571,1,256,0,0,5645.932,-1925.377,237.4632,0.1884097,120,120,0,0,0,0,0,0),
(4275,29939,571,1,256,0,0,6124.494,-1968.366,235.7988,3.803017,120,120,0,0,0,0,0,2),
(4280,29939,571,1,256,0,0,5793.679,-2095.737,249.0007,5.235988,120,120,0,0,0,0,0,0),
(4323,29939,571,1,256,0,0,5521.792,-2245.884,236.2022,3.036873,120,120,0,0,0,0,0,0),
(4333,29939,571,1,256,0,0,5505.981,-2078.141,240.9521,2.356194,120,120,0,0,0,0,0,0),
(4359,29939,571,1,256,0,0,6175.099,-2017.251,245.3769,1.099557,120,120,0,0,0,0,0,0),
(4385,29939,571,1,256,0,0,5859.725,-1694.146,236.3931,0.4006573,120,120,0,0,0,0,0,2);
UPDATE creature SET spawndist = 0, MovementType = 3 WHERE guid IN (88510,4275,4385);
DELETE FROM creature_movement WHERE id IN (88510,4275,4385);
INSERT INTO creature_movement (Id,Point,PositionX,PositionY,PositionZ,Orientation,Waittime,Scriptid) VALUES
(88510,1,5612.808,-1742.693,238.0777,100,0,0),
(88510,2,5602.04,-1769.429,240.173,100,0,0),
(88510,3,5602.8,-1790.812,237.048,100,0,0),
(88510,4,5609.884,-1822.889,241.3477,100,0,0),
(88510,5,5612.414,-1847.967,241.3753,100,0,0),
(88510,6,5615.579,-1870.077,237.8179,100,0,0),
(88510,7,5614.115,-1894.045,237.8179,100,0,0),
(88510,8,5608.979,-1913.112,236.5679,100,0,0),
(88510,9,5596.051,-1935.495,241.6555,100,0,0),
(88510,10,5587.249,-1965.734,242.2805,100,0,0),
(88510,11,5561.988,-1996.988,238.9518,100,0,0),
(88510,12,5561.799,-2028.688,238.7284,100,0,0),
(88510,13,5580.809,-2054.431,243.5945,100,0,0),
(88510,14,5603.391,-2061.405,242.0394,100,0,0),
(88510,15,5630.419,-2039.547,242.87,100,0,0),
(88510,16,5669.189,-2012.549,245.8577,100,0,0),
(88510,17,5659,-1989.325,245.1788,100,0,0),
(88510,18,5644.088,-1966.659,244.14,100,0,0),
(88510,19,5627.726,-1950.742,243.0379,100,0,0),
(88510,20,5633.54,-1904.085,237.7132,100,0,0),
(88510,21,5654.02,-1874.68,244.467,100,0,0),
(88510,22,5679.061,-1841.264,241.7607,100,0,0),
(88510,23,5690.812,-1841.202,242.8915,100,0,0),
(88510,24,5714.968,-1815.526,243.9285,100,0,0),
(88510,25,5699.06,-1793.03,243.501,100,0,0),
(88510,26,5663.57,-1775.3,240.737,100,0,0),
(88510,27,5639.524,-1765.044,236.6941,100,0,0),
(4275,1,6095.938,-1971.2,235.7852,100,0,0),
(4275,2,6080.698,-2017.281,236.7626,100,0,0),
(4275,3,6091.481,-2051.637,237.3553,100,0,0),
(4275,4,6114.737,-2072.24,234.7087,100,0,0),
(4275,5,6134.733,-2085.285,236.1154,100,0,0),
(4275,6,6172.619,-2088.904,236.8682,100,0,0),
(4275,7,6210.14,-2071.388,235.1996,100,0,0),
(4275,8,6238.276,-2046.512,235.3974,100,0,0),
(4275,9,6238.41,-1993.51,236.556,100,0,0),
(4275,10,6211.959,-1956.286,235.9607,100,0,0),
(4275,11,6194.851,-1948.511,236.0704,100,0,0),
(4275,12,6157.778,-1942.594,236.3708,100,0,0),
(4385,1,5884.942,-1680.638,240.6532,100,0,0),
(4385,2,5895.031,-1640.92,236.1297,100,0,0),
(4385,3,5882.573,-1612.294,238.1937,100,0,0),
(4385,4,5839.626,-1615.568,236.2941,100,0,0),
(4385,5,5803.201,-1628.357,236.8494,100,0,0),
(4385,6,5780.787,-1654.17,236.3702,100,0,0),
(4385,7,5771.9,-1696.702,236.4057,100,0,0),
(4385,8,5784.969,-1732.678,237.459,100,0,0),
(4385,9,5816.024,-1752.221,236.1816,100,0,0),
(4385,10,5828.551,-1777.309,235.245,100,0,0),
(4385,11,5843.409,-1783.251,235.5655,100,0,0),
(4385,12,5826.964,-1784.627,235.495,100,0,0),
(4385,13,5801.154,-1791.92,237.62,100,0,0),
(4385,14,5769.124,-1791.43,237.2896,100,0,0),
(4385,15,5721.732,-1781.055,237.5903,100,0,0),
(4385,16,5707.013,-1746.773,240.145,100,0,0),
(4385,17,5713.841,-1701.313,241.3097,100,0,0),
(4385,18,5754.493,-1715.682,237.747,100,0,0),
(4385,19,5800.143,-1717.215,236.5967,100,0,0),
(4385,20,5821.86,-1710.585,235.7217,100,0,0),
(4385,21,5859.725,-1694.146,236.3931,100,0,0);
UPDATE creature_template SET InhabitType = 4 WHERE entry = 29893;
DELETE FROM creature_template_addon WHERE entry IN (29892,29887,29939);
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES (29892,0,0,1,0,0,0,56035), (29887,0,0,1,0,425,0,NULL), (29939,0,0,1,0,0,0,55708);
DELETE FROM creature_addon WHERE guid IN (118544,118561,118562,118563,118564,118550,118552,118555,118557,118546,118558,118559,118560,118569,118570,118571,118543);
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES 
(118544,0,0,1,0,375,0,56035), (118561,0,0,1,0,375,0,56035), (118562,0,0,1,0,333,0,56035), (118563,0,0,1,0,375,0,56035), (118564,0,0,1,0,375,0,56035),
(118550,0,0,1,0,375,0,56035), (118552,0,0,1,0,333,0,56035), (118555,0,0,1,0,425,0,56035), (118557,0,0,1,0,375,0,56035), (118546,0,0,1,0,0,0,56035),
(118558,0,0,1,0,333,0,56035), (118559,0,0,1,0,333,0,56035), (118560,0,0,1,0,375,0,56035), (118569,0,0,1,0,333,0,56035), (118570,0,0,1,0,425,0,56035),
(118571,0,0,1,0,375,0,56035), (118543,0,0,1,0,375,0,56035);
UPDATE creature SET spawndist = 0, MovementType = 3 WHERE guid IN (118572,118574,118573);
DELETE FROM creature_movement WHERE id IN (118572,118574,118573);
INSERT INTO creature_movement (Id,Point,PositionX,PositionY,PositionZ,Orientation,Waittime,Scriptid) VALUES
(118572,1,5782.838,-1573.285,252.5946,100,0,0),
(118572,2,5775.433,-1582.086,252.067,100,0,0),
(118572,3,5770.263,-1601.32,253.317,100,0,0),
(118572,4,5790.178,-1623.702,258.067,100,0,0),
(118572,5,5823.066,-1611.223,270.1503,100,0,0),
(118572,6,5824.322,-1578.715,276.6504,100,0,0),
(118572,7,5792.899,-1569.21,287.4558,100,0,0),
(118572,8,5778.125,-1586.131,294.2891,100,0,0),
(118572,9,5776.308,-1601.823,301.4557,100,0,0),
(118572,10,5792.898,-1625.83,288.0113,100,0,0),
(118572,11,5825.843,-1614.225,278.6224,100,0,0),
(118572,12,5831.363,-1576.699,270.0114,100,0,0),
(118572,13,5791.267,-1564.013,261.3725,100,0,0),
(118574,1,5700.896,-1467.002,263.9736,100,0,0),
(118574,2,5665.086,-1462.814,266.2513,100,0,0),
(118574,3,5623.596,-1446.303,258.3903,100,0,0),
(118574,4,5612.131,-1390.983,269.9736,100,0,0),
(118574,5,5630.01,-1325.786,252.9459,100,0,0),
(118574,6,5684.276,-1301.843,263.9736,100,0,0),
(118574,7,5717.019,-1325.604,263.9736,100,0,0),
(118574,8,5730.931,-1363.826,254.0014,100,0,0),
(118574,9,5737.854,-1429.533,273.2791,100,0,0),
(118574,10,5736.421,-1453.626,267.5013,100,0,0),
(118573,1,5693.218,-1486.505,258.9202,100,0,0),
(118573,2,5718.793,-1504.892,258.9202,100,0,0),
(118573,3,5756.622,-1521.511,257.448,100,0,0),
(118573,4,5787.3,-1512.487,261.7534,100,0,0),
(118573,5,5789.332,-1478.722,264.5868,100,0,0),
(118573,6,5780.532,-1436.39,262.8369,100,0,0),
(118573,7,5757.768,-1400.858,262.4202,100,0,0),
(118573,8,5746.779,-1396.046,263.0869,100,0,0),
(118573,9,5704.235,-1402.157,258.9202,100,0,0),
(118573,10,5679.895,-1415.837,258.9202,100,0,0),
(118573,11,5678.986,-1448.672,258.9202,100,0,0);
UPDATE creature SET spawndist = 0, MovementType = 2 WHERE guid IN (49906,49900,49902,49901,49905,49903,49907,118567,118566,118565,118568,118545,118546,118547);
DELETE FROM creature_movement WHERE id IN (49906,49900,49902,49901,49905,49903,49907,118567,118566,118565,118568,118545,118546,118547);
INSERT INTO creature_movement (Id,Point,PositionX,PositionY,PositionZ,Orientation,Waittime,Scriptid) VALUES
(49906,1,5607.34,-1543.87,230.392,100,0,0),
(49906,2,5598.8,-1527.17,230.06,100,0,0),
(49906,3,5591.37,-1512.73,230.461,100,0,0),
(49906,4,5588.02,-1507.56,230.133,100,0,0),
(49906,5,5578.67,-1497.68,231.321,100,0,0),
(49906,6,5572.03,-1492.72,233.309,100,0,0),
(49906,7,5562,-1489.86,237.506,100,0,0),
(49906,8,5551.84,-1487.02,238.639,100,0,0),
(49906,9,5537.07,-1495.16,241.099,100,0,0),
(49906,10,5523.83,-1506.04,244.719,100,0,0),
(49906,11,5514.54,-1526.82,244.966,100,0,0),
(49906,12,5514.39,-1540.44,242.845,100,0,0),
(49906,13,5514.24,-1559.67,239.174,100,0,0),
(49906,14,5530.45,-1563.24,238.797,100,0,0),
(49906,15,5549.96,-1565.84,238.812,100,0,0),
(49906,16,5562.76,-1575.2,239.146,100,0,0),
(49906,17,5574.24,-1583.22,238.947,100,0,0),
(49906,18,5585.74,-1591.21,237.895,100,0,0),
(49906,19,5598.27,-1599.84,235.664,100,0,0),
(49906,20,5609.24,-1607.92,236.6,100,0,0),
(49906,21,5612.71,-1599.35,235.83,100,0,0),
(49906,22,5615.47,-1589.65,232.623,100,0,0),
(49906,23,5618.46,-1578.57,229.86,100,0,0),
(49906,24,5614.85,-1567.35,229.815,100,0,0),
(49906,25,5611.73,-1555.17,231.161,100,0,0),
(49900,1,5784.96,-1307.14,233.998,100,0,0),
(49900,2,5793.59,-1312.7,234.221,100,0,0),
(49900,3,5808.89,-1321.3,234.19,100,0,0),
(49900,4,5819.02,-1326.27,233.979,100,0,0),
(49900,5,5826.52,-1332.28,233.86,100,0,0),
(49900,6,5836,-1341.01,233.853,100,0,0),
(49900,7,5847.42,-1351.61,234.055,100,0,0),
(49900,8,5860.68,-1361.4,234.211,100,0,0),
(49900,9,5872.42,-1370.63,234.307,100,0,0),
(49900,10,5861.03,-1361.6,234.21,100,0,0),
(49900,11,5848.29,-1352.16,234.135,100,0,0),
(49900,12,5836.62,-1341.68,233.856,100,0,0),
(49900,13,5826.95,-1332.61,233.854,100,0,0),
(49900,14,5820.14,-1326.93,233.978,100,0,0),
(49900,15,5809.56,-1321.66,234.178,100,0,0),
(49900,16,5794.16,-1313.09,234.27,100,0,0),
(49900,17,5785.36,-1307.43,233.999,100,0,0),
(49900,18,5773.05,-1299.82,234.159,100,0,0),
(49900,19,5763.92,-1293.18,234.648,100,0,0),
(49900,20,5754.17,-1286.44,235.198,100,0,0),
(49900,21,5744,-1279.64,235.479,100,0,0),
(49900,22,5732.88,-1271.63,235.532,100,0,0),
(49900,23,5720.38,-1262.95,235.013,100,0,0),
(49900,24,5708.97,-1255.15,234.816,100,0,0),
(49900,25,5692.73,-1247.41,234.134,100,0,0),
(49900,26,5709.25,-1255.39,234.82,100,0,0),
(49900,27,5719.96,-1262.49,235.024,100,0,0),
(49900,28,5732.55,-1271.68,235.501,100,0,0),
(49900,29,5743.48,-1279.5,235.463,100,0,0),
(49900,30,5752.79,-1285.74,235.242,100,0,0),
(49900,31,5763.24,-1292.96,234.644,100,0,0),
(49900,32,5771.96,-1299.06,234.192,100,0,0),
(49902,1,5499.08,-1577.57,236.389,100,0,0),
(49902,2,5500.69,-1591.46,236.842,100,0,0),
(49902,3,5502.04,-1601.87,236.96,100,0,0),
(49902,4,5506.21,-1609.85,237.823,100,0,0),
(49902,5,5512.65,-1619.14,239.697,100,0,0),
(49902,6,5521.9,-1626.21,240.252,100,0,0),
(49902,7,5531.19,-1630.52,240.449,100,0,0),
(49902,8,5544.96,-1633.53,241.382,100,0,0),
(49902,9,5556.08,-1635.5,242.487,100,0,0),
(49902,10,5566.45,-1637.41,243.589,100,0,0),
(49902,11,5571.01,-1628.47,242.939,100,0,0),
(49902,12,5574.32,-1618.85,241.881,100,0,0),
(49902,13,5576.23,-1610.48,241.313,100,0,0),
(49902,14,5575.35,-1594.11,240.539,100,0,0),
(49902,15,5571.95,-1581.4,238.947,100,0,0),
(49902,16,5568.47,-1565.92,235.655,100,0,0),
(49902,17,5560.96,-1555.17,236.001,100,0,0),
(49902,18,5548.7,-1547.89,238.719,100,0,0),
(49902,19,5537.43,-1541.67,240.16,100,0,0),
(49902,20,5524.12,-1534.5,241.599,100,0,0),
(49902,21,5511.16,-1527.26,245.686,100,0,0),
(49902,22,5501.53,-1529.02,247.074,100,0,0),
(49902,23,5493.04,-1535.24,245.349,100,0,0),
(49902,24,5492.59,-1546.1,241.305,100,0,0),
(49902,25,5496.65,-1564.49,237.251,100,0,0),
(49901,1,5888.81,-1506.54,231.327,100,0,0),
(49901,2,5890.34,-1497.35,232.744,100,0,0),
(49901,3,5890.84,-1489.25,232.425,100,0,0),
(49901,4,5890.75,-1476.08,232.063,100,0,0),
(49901,5,5890.27,-1465.83,231.996,100,0,0),
(49901,6,5889.18,-1452.99,232.754,100,0,0),
(49901,7,5888.88,-1441.25,234.646,100,0,0),
(49901,8,5886.9,-1432.05,235.165,100,0,0),
(49901,9,5882.33,-1422.15,234.491,100,0,0),
(49901,10,5876.71,-1413.12,234.389,100,0,0),
(49901,11,5870.29,-1405.61,234.664,100,0,0),
(49901,12,5862.31,-1398.17,234.228,100,0,0),
(49901,13,5849.48,-1392.15,234.212,100,0,0),
(49901,14,5835.27,-1394.62,234.025,100,0,0),
(49901,15,5829.35,-1396.62,231.365,100,0,0),
(49901,16,5824.15,-1399.11,232.014,100,0,0),
(49901,17,5817.46,-1406.53,232.662,100,0,0),
(49901,18,5806.89,-1420.46,230.054,100,0,0),
(49901,19,5799.66,-1431.41,231.78,100,0,0),
(49901,20,5798.68,-1440.55,232.53,100,0,0),
(49901,21,5798.49,-1452.03,232.435,100,0,0),
(49901,22,5798.27,-1462.48,232.107,100,0,0),
(49901,23,5797.96,-1470.97,229.861,100,0,0),
(49901,24,5789.32,-1477.05,229.893,100,0,0),
(49901,25,5781.01,-1483.2,230.376,100,0,0),
(49901,26,5772.23,-1489.86,232.503,100,0,0),
(49901,27,5764.73,-1496.17,232.7,100,0,0),
(49901,28,5760.37,-1507.28,231.557,100,0,0),
(49901,29,5759.88,-1518.36,230.775,100,0,0),
(49901,30,5762.05,-1525.39,229.91,100,0,0),
(49901,31,5768.99,-1535.34,229.025,100,0,0),
(49901,32,5776.35,-1543.53,229.902,100,0,0),
(49901,33,5786.01,-1554.29,230.826,100,0,0),
(49901,34,5795.81,-1556.59,231.434,100,0,0),
(49901,35,5804.07,-1558.12,232.189,100,0,0),
(49901,36,5814.29,-1559.81,233.138,100,0,0),
(49901,37,5822.79,-1561.03,234.408,100,0,0),
(49901,38,5833.79,-1558.32,235.985,100,0,0),
(49901,39,5843.58,-1554.94,237.493,100,0,0),
(49901,40,5854.11,-1550.85,236.128,100,0,0),
(49901,41,5865.42,-1542.46,230.896,100,0,0),
(49901,42,5877.73,-1532.31,230.438,100,0,0),
(49901,43,5884.93,-1517.09,230.068,100,0,0),
(49905,1,5792.58,-1567.95,233.687,100,0,0),
(49905,2,5780.07,-1562.82,232.761,100,0,0),
(49905,3,5771.83,-1560.38,231.943,100,0,0),
(49905,4,5747.52,-1557.8,229.581,100,0,0),
(49905,5,5738.37,-1562.38,229.379,100,0,0),
(49905,6,5730.52,-1565.85,230.412,100,0,0),
(49905,7,5720.12,-1570.72,231.65,100,0,0),
(49905,8,5709.58,-1571.74,230.511,100,0,0),
(49905,9,5698.48,-1573.81,229.643,100,0,0),
(49905,10,5687.9,-1575.6,230.919,100,0,0),
(49905,11,5686.6,-1589.2,229.548,100,0,0),
(49905,12,5687.73,-1602.96,230.148,100,0,0),
(49905,13,5698.79,-1612.76,233.453,100,0,0),
(49905,14,5709.25,-1616.29,234.965,100,0,0),
(49905,15,5720.24,-1615.87,236.756,100,0,0),
(49905,16,5732.3,-1613.84,234.93,100,0,0),
(49905,17,5750.35,-1611.55,235.688,100,0,0),
(49905,18,5760.68,-1600.66,232.984,100,0,0),
(49905,19,5765.67,-1595.48,231.632,100,0,0),
(49905,20,5773.53,-1587.65,232.502,100,0,0),
(49905,21,5783.83,-1578.45,234.561,100,0,0),
(49905,22,5789.67,-1573.49,234.802,100,0,0),
(49905,23,5807.44,-1571.22,235.039,100,0,0),
(49903,1,5628.53,-1263.58,234.018,100,0,0),
(49903,2,5611.84,-1262.98,233.997,100,0,0),
(49903,3,5602.49,-1269.26,233.856,100,0,0),
(49903,4,5591.96,-1277.16,233.946,100,0,0),
(49903,5,5585.26,-1282.57,234.127,100,0,0),
(49903,6,5583.51,-1289.77,233.674,100,0,0),
(49903,7,5581.4,-1308.24,233.867,100,0,0),
(49903,8,5581.84,-1321.67,234.154,100,0,0),
(49903,9,5581.42,-1329.12,234.088,100,0,0),
(49903,10,5580.79,-1334.68,232.553,100,0,0),
(49903,11,5579.46,-1345.05,234.431,100,0,0),
(49903,12,5583.47,-1354.4,234.449,100,0,0),
(49903,13,5589.46,-1365.06,234.437,100,0,0),
(49903,14,5599.95,-1362.63,234.441,100,0,0),
(49903,15,5612.5,-1360.17,233.407,100,0,0),
(49903,16,5622.77,-1357.39,234.445,100,0,0),
(49903,17,5634.97,-1352.72,234.445,100,0,0),
(49903,18,5639.22,-1351.04,231.305,100,0,0),
(49903,19,5647.53,-1347.96,229.808,100,0,0),
(49903,20,5654.23,-1344.88,228.893,100,0,0),
(49903,21,5662.56,-1332.64,229.548,100,0,0),
(49903,22,5669.71,-1319.21,229.911,100,0,0),
(49903,23,5669.83,-1308.88,229.881,100,0,0),
(49903,24,5668.77,-1294.92,229.955,100,0,0),
(49903,25,5666.57,-1287.22,230.215,100,0,0),
(49903,26,5662.57,-1281.49,231.18,100,0,0),
(49903,27,5654.14,-1273.42,230.327,100,0,0),
(49903,28,5644.28,-1266.52,231.586,100,0,0),
(49903,29,5639.52,-1265.12,233.777,100,0,0),
(49907,1,5836.49,-1609.71,234.575,2.67035,100,11),
(49907,2,5836.49,-1609.71,234.575,2.67035,100,3),
(118567,1,5701.86,-1437.31,234.493,0.383972,100,12),
(118567,2,5701.86,-1437.31,234.493,0.383972,100,3),
(118566,1,5725.65,-1481.79,232.986,100,0,0),
(118566,2,5732.64,-1472.23,234.447,100,0,0),
(118566,3,5740.94,-1460.27,233.957,100,0,0),
(118566,4,5752.25,-1457.11,234.323,100,0,0),
(118566,5,5762.52,-1455.12,233.637,100,0,0),
(118566,6,5754.62,-1452.62,234.439,100,0,0),
(118566,7,5743.27,-1453.42,234.445,100,0,0),
(118566,8,5730.6,-1454.27,233.558,100,0,0),
(118566,9,5728.52,-1444.5,233.602,100,0,0),
(118566,10,5723.94,-1427.17,234.461,100,0,0),
(118566,11,5718.39,-1421.32,234.447,100,0,0),
(118566,12,5711.52,-1412.5,234.51,100,0,0),
(118566,13,5701.29,-1404.37,234.156,100,0,0),
(118566,14,5689.85,-1397.15,234.445,100,0,0),
(118566,15,5670.87,-1398.19,233.628,100,0,0),
(118566,16,5651.34,-1399.95,234.446,100,0,0),
(118566,17,5638.16,-1398.06,233.738,100,0,0),
(118566,18,5626.21,-1397.9,230.84,100,0,0),
(118566,19,5629.9,-1405.31,231.632,100,0,0),
(118566,20,5641.7,-1415.66,234.27,100,0,0),
(118566,21,5651.64,-1421.94,234.445,100,0,0),
(118566,22,5661.54,-1427.76,234.445,100,0,0),
(118566,23,5669.57,-1441.15,233.8,100,0,0),
(118566,24,5676.34,-1451.1,234.341,100,0,0),
(118566,25,5680.25,-1465.2,234.239,100,0,0),
(118566,26,5673.85,-1481.13,234.404,100,0,0),
(118566,27,5670.26,-1486.89,232.774,100,0,0),
(118566,28,5659.26,-1503.78,229.838,100,0,0),
(118566,29,5664.93,-1508.63,230.097,100,0,0),
(118566,30,5670.6,-1513.62,231.852,100,0,0),
(118566,31,5681.22,-1517.15,232.099,100,0,0),
(118566,32,5689.65,-1519.23,232.885,100,0,0),
(118566,33,5695.01,-1516.25,234.427,100,0,0),
(118566,34,5706.86,-1508.61,233.043,100,0,0),
(118566,35,5713.2,-1500.19,233.433,100,0,0),
(118566,36,5722.48,-1486.41,234.339,100,0,0),
(118565,1,5801.64,-1628.99,235.767,100,0,0),
(118565,2,5809.48,-1622.18,235.2,100,0,0),
(118565,3,5819.16,-1615.65,235.038,100,0,0),
(118565,4,5831.26,-1607.37,234.281,100,0,0),
(118565,5,5840.69,-1603.18,234.736,100,0,0),
(118565,6,5851.6,-1600.32,236.183,100,0,0),
(118565,7,5861.1,-1596.69,237.146,100,0,0),
(118565,8,5869.62,-1593.88,236.643,100,0,0),
(118565,9,5871.47,-1602.03,236.794,100,0,0),
(118565,10,5866.26,-1603.17,236.991,100,0,0),
(118565,11,5847.1,-1614.57,235.794,100,0,0),
(118565,12,5825.51,-1621.37,234.099,100,0,0),
(118565,13,5801.19,-1625.02,235.411,100,0,0),
(118565,14,5786.42,-1626.39,235.076,100,0,0),
(118565,15,5764.75,-1638.82,235.031,100,0,0),
(118565,16,5752.18,-1640.08,235.699,100,0,0),
(118565,17,5740.55,-1640.85,237.758,100,0,0),
(118565,18,5726.56,-1641.5,240.254,100,0,0),
(118565,19,5713.74,-1647.7,239.629,100,0,0),
(118565,20,5703.22,-1652.75,237.717,100,0,0),
(118565,21,5692.63,-1657.89,236.769,100,0,0),
(118565,22,5695.3,-1667.99,238.044,100,0,0),
(118565,23,5700.06,-1677.4,239.689,100,0,0),
(118565,24,5707.47,-1677.47,239.632,100,0,0),
(118565,25,5716.15,-1673.58,240.214,100,0,0),
(118565,26,5728.6,-1663.94,241.198,100,0,0),
(118565,27,5747.28,-1655.1,237.652,100,0,0),
(118565,28,5762.7,-1649.42,235.321,100,0,0),
(118565,29,5771.24,-1646.68,235.093,100,0,0),
(118565,30,5779.93,-1642.39,235.657,100,0,0),
(118565,31,5792.46,-1634.6,235.556,100,0,0),
(118568,1,5716.87,-1431.72,234.515,3.47321,100,12),
(118568,2,5716.87,-1431.72,234.515,3.47321,100,3),
(118545,1,5769.087,-1604.951,234.2389,0.2443461,100,11),
(118545,2,5769.087,-1604.951,234.2389,0.2443461,100,3),
(118546,1,5799.751,-1633.156,236.1579,1.553343,100,11),
(118546,2,5799.751,-1633.156,236.1579,1.553343,100,3),
(118547,1,5782.726,-1567.055,233.8343,5.131268,100,11),
(118547,2,5782.726,-1567.055,233.8343,5.131268,100,3);
DELETE FROM creature_spawn_data WHERE guid IN(118572,118574,118573);
INSERT INTO creature_spawn_data(Guid,Id) VALUES (118572, 1), (118574, 1), (118573, 1);
DELETE FROM creature_spawn_entry WHERE guid IN (118545,49907,118546,118547);
INSERT INTO creature_spawn_entry (guid,entry) VALUES (118545,29890),(118545,29891),(118545,29892), (49907,29890),(49907,29891),(49907,29892),
(118546,29890),(118546,29891),(118546,29892), (118547,29890),(118547,29891),(118547,29892);
UPDATE creature_template SET InhabitType=4, MovementType=3 WHERE Entry=29872;
DELETE FROM creature_template_addon WHERE entry IN (29872);
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES  (29872,26645,0,1,0,0,0,NULL);
DELETE FROM creature_movement_template WHERE entry IN (29872);
INSERT INTO creature_movement_template (Entry,Point,PositionX,PositionY,PositionZ,Orientation,Waittime,Scriptid) VALUES
(29872,1,6096.626,-2004.539,265.2037,4.64488,0,0),
(29872,2,6093.513,-2051.898,264.2317,100,0,0),
(29872,3,6103.236,-2080.81,264.2317,100,0,0),
(29872,4,6133.196,-2115.175,264.2317,100,0,0),
(29872,5,6173.292,-2124.875,268.4818,100,0,0),
(29872,6,6211.921,-2088.505,276.8426,100,0,0),
(29872,7,6232.632,-2050.683,282.5648,100,0,0),
(29872,8,6234.562,-1959.355,282.5648,100,0,0),
(29872,9,6187.424,-1956.362,282.5648,100,0,0),
(29872,10,6125.939,-1979.566,282.5648,100,0,0);
DELETE FROM creature_spawn_data WHERE guid IN(4173);
INSERT INTO creature_spawn_data(Guid,Id) VALUES (4173, 1);
REPLACE INTO `creature_immunities` (`entry`, `SetId`, `Type`, `Value`) VALUES (29821, 0, 0, 98), (29872, 0, 0, 98), (29895, 0, 0, 98);
UPDATE creature_template SET Detection = 150, Pursuit = 300, visibilityDistanceType=3 WHERE entry IN (29872,29897,29893,29887,29892,29891,29894,29890,29889);
UPDATE creature_template SET Pursuit = 300,visibilityDistanceType=3 WHERE entry IN (29895);
UPDATE creature_template SET Pursuit = 300 WHERE entry IN (29821);
DELETE FROM dbscripts_on_relay WHERE id BETWEEN 20606 AND 20607;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20606,0,34,20313,0,0,0,0,0x04|0x08,0,0,0,0,0,0,0,0,'Part of Vargul Runelord EAI: terminate if aura is active'),
(20606,100,15,54512,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Vargul Runelord EAI: cast Plague Shield'),
(20607,0,31,29895,200,0,0,0,0x08,0,0,0,0,0,0,0,0,'Part of Prince Navarius EAI: terminate if alive'),
(20607,100,10,29895,600000,0,0,0,0x08,0,0,0,0,5611.733,-2302.771,289.4654,1.745329,'Part of Prince Navarius EAI: summon Thrym');
DELETE FROM conditions WHERE condition_entry = 20313;
INSERT INTO conditions (condition_entry, type, value1, value2, flags) VALUES (20313, 1, 54512, 0, 3);
UPDATE creature_template SET UnitFlags = 832 WHERE entry = 29895;
DELETE FROM dbscripts_on_relay WHERE id = 20608;
INSERT INTO dbscripts_on_relay(id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, datafloat, x, y, z, o, speed, comments) VALUES
(20608,1000,0,0,0,0,0,0,0,30656,0,0,0,0,0,0,0,0,0,'Part of Thrym EAI: say'),
(20608,1010,1,53,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Thrym EAI: emote'),
(20608,7000,20,15,0,0,0,0,0,0,0,0,0,40,5610.44,-2156.43,234.759,100,50,'Part of Thrym EAI: jump'),
(20608,14000,35,5,100,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Thrym EAI: send Event 5'),
(20608,15000,0,0,0,0,0,0,0,30657,0,0,0,0,0,0,0,0,0,'Part of Thrym EAI: say'),
(20608,15010,1,25,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Thrym EAI: emote'),
(20608,16000,48,768,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Thrym EAI: unitflags removed'),
(20608,18000,35,8,100,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Thrym EAI: send Event 8');

INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(19055, 6491, 0, 1, 1, 0, 0, -12000.3, 433.889, 3.22912, 4.79716, 60, 60, 0, 0, 0, 0, 0, 0),
(19056, 6491, 0, 1, 1, 0, 0, -10838.1, -484.891, 42.7193, 1.56132, 60, 60, 0, 0, 0, 0, 0, 0),
(19078, 6491, 0, 1, 1, 0, 0, -11808, -2961.49, 7.68175, 5.90851, 60, 60, 0, 0, 0, 0, 0, 0),
(28672, 6491, 0, 1, 1, 0, 0, -9562.73, -603.599, 58.3876, 3.85078, 60, 60, 0, 0, 0, 0, 0, 0),
(49399, 6491, 0, 1, 1, 0, 0, -900.166, -1478.97, 58.3879, 1.17488, 60, 60, 0, 0, 0, 0, 0, 0),
(49400, 6491, 0, 1, 1, 0, 0, 3121.92, -4806.89, 100.915, 2.43152, 60, 60, 0, 0, 0, 0, 0, 0),
(49401, 6491, 0, 1, 1, 0, 0, 3344.26, -3227.9, 143.286, 3.51144, 60, 60, 0, 0, 0, 0, 0, 0),
(49402, 6491, 0, 1, 1, 0, 0, 2211.95, -2924.61, 108.288, 2.28229, 60, 60, 0, 0, 0, 0, 0, 0),
(49403, 6491, 0, 1, 1, 0, 0, 2658.78, -1723.77, 124.43, 6.17394, 60, 60, 0, 0, 0, 0, 0, 0),
(49404, 6491, 0, 1, 1, 0, 0, -573.443, 116.159, 54.2246, 2.29408, 60, 60, 0, 0, 0, 0, 0, 0),
(4409, 6491, 0, 1, 1, 0, 0, 577.536, -3826.78, 120.064, 6.09148, 60, 60, 0, 0, 0, 0, 0, 0),
(4463, 6491, 0, 1, 1, 0, 0, -198.557, -3043.34, 119.727, 6.11662, 60, 60, 0, 0, 0, 0, 0, 0),
(4467, 6491, 0, 1, 1, 0, 0, -3983.23, -2844.7, 12.9895, 5.62183, 60, 60, 0, 0, 0, 0, 0, 0),
(4473, 6491, 0, 1, 1, 0, 0, -5472.1, -1841.64, 400.677, 4.16102, 60, 60, 0, 0, 0, 0, 0, 0),
(4495, 6491, 0, 1, 1, 0, 0, -5326.13, -3779.15, 310.073, 3.19106, 60, 60, 0, 0, 0, 0, 0, 0),
(4502, 6491, 0, 1, 1, 0, 0, 1773.33, 768.808, 55.6853, 0.0250183, 60, 60, 0, 0, 0, 0, 0, 0),
(4522, 6491, 0, 1, 1, 0, 0, 2364.37, -5778.2, 151.368, 0.890498, 60, 60, 0, 0, 0, 0, 0, 0),
(4631, 6491, 0, 1, 1, 0, 0, 2356.65, -5663.06, 382.257, 0.586577, 60, 60, 0, 0, 0, 0, 0, 0);

DELETE FROM `creature_movement` WHERE `id` = 48639;
INSERT INTO `creature_movement` (`id`, `point`, `positionx`, `positiony`, `positionz`, `orientation`, `waittime`, `scriptid`) VALUES
(48639, 1, -9156.65, -2513.65, 115.981, 100, 45000, 5),
(48639, 2, -9145.41, -2490.14, 116.751, 100, 0, 0),
(48639, 3, -9156.75, -2454.84, 113.282, 100, 0, 0),
(48639, 4, -9161.11, -2446.5, 111.148, 100, 0, 0),
(48639, 5, -9158.61, -2434.5, 106.876, 100, 0, 0),
(48639, 6, -9164.96, -2420.6, 105.319, 100, 0, 0),
(48639, 7, -9174.89, -2403.74, 104.491, 100, 45000, 0),
(48639, 8, -9169.39, -2420.48, 106.004, 100, 0, 0),
(48639, 9, -9174.43, -2442.38, 114.408, 100, 0, 0),
(48639, 10, -9170.5, -2448.17, 116.441, 100, 0, 0),
(48639, 11, -9158.07, -2465.67, 115.888, 100, 0, 0),
(48639, 12, -9149.25, -2478.14, 115.365, 100, 0, 0),
(48639, 13, -9145.26, -2487.65, 116.262, 100, 0, 0),
(48639, 14, -9146.04, -2503.76, 117.915, 100, 0, 0),
(48639, 15, -9148.71, -2512.97, 117.126, 100, 0, 0),
(48639, 16, -9150.03, -2530.85, 112.715, 100, 0, 0),
(48639, 17, -9149.43, -2549.46, 116.085, 100, 0, 0),
(48639, 18, -9144.39, -2564.02, 116.783, 100, 45000, 0),
(48639, 19, -9138.87, -2560.73, 116.532, 100, 0, 0),
(48639, 20, -9142.3, -2532.23, 114.6, 100, 0, 0);
DELETE FROM `creature_movement` WHERE `id` = 48624;
INSERT INTO `creature_movement` (`Id`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`, `Comment`) VALUES
(48624, 1, -9110.72, -2477.35, 119.703, 4.15621, 10000, 5, NULL),
(48624, 2, -9140.41, -2451.87, 110.057, 100, 0, 0, NULL),
(48624, 3, -9112.78, -2462.78, 119.032, 100, 0, 0, NULL),
(48624, 4, -9107.47, -2472.12, 120.078, 100, 0, 0, NULL),
(48624, 5, -9110.72, -2477.35, 119.703, 100, 10000, 0, NULL),
(48624, 6, -9110.42, -2471.35, 119.578, 100, 0, 0, NULL),
(48624, 7, -9119.94, -2462.73, 117.282, 100, 0, 0, NULL),
(48624, 8, -9135.72, -2453.59, 111.182, 100, 0, 0, NULL),
(48624, 9, -9154.23, -2450.5, 110.557, 100, 0, 0, NULL),
(48624, 10, -9164.03, -2442.94, 110.932, 100, 0, 0, NULL);
DELETE FROM `creature_movement` WHERE `id` = 92300;
INSERT INTO `creature_movement` (`Id`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`, `Comment`) VALUES
(92300, 1, -9356.56, -3085.09, 164.701, 100, 0, 0, NULL),
(92300, 2, -9356.07, -3089.48, 164.701, 100, 0, 0, NULL),
(92300, 3, -9365.81, -3090.31, 161.143, 100, 0, 0, NULL),
(92300, 4, -9366.91, -3081.66, 157.909, 100, 0, 0, NULL),
(92300, 5, -9356.04, -3081.18, 153.704, 100, 0, 0, NULL),
(92300, 6, -9355.55, -3086.91, 153.704, 100, 0, 0, NULL),
(92300, 7, -9368.73, -3088.02, 149.498, 100, 0, 0, NULL),
(92300, 8, -9369.08, -3083.66, 149.497, 100, 0, 0, NULL),
(92300, 9, -9364.53, -3083.11, 149.497, 100, 0, 0, NULL),
(92300, 10, -9365.44, -3071.15, 149.497, 100, 0, 0, NULL),
(92300, 11, -9364.53, -3083.11, 149.497, 100, 0, 0, NULL),
(92300, 12, -9369.08, -3083.66, 149.497, 100, 0, 0, NULL),
(92300, 13, -9368.73, -3088.02, 149.498, 100, 0, 0, NULL),
(92300, 14, -9355.55, -3086.91, 153.704, 100, 0, 0, NULL),
(92300, 15, -9356.04, -3081.18, 153.704, 100, 0, 0, NULL),
(92300, 16, -9366.91, -3081.66, 157.909, 100, 0, 0, NULL),
(92300, 17, -9365.81, -3090.31, 161.143, 100, 0, 0, NULL),
(92300, 18, -9356.07, -3089.48, 164.701, 100, 0, 0, NULL);
DELETE FROM `creature_movement` WHERE `id` = 6225;
INSERT INTO `creature_movement` (`Id`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`, `Comment`) VALUES
(6225, 1, -8732.55, -2168.39, 159.368, 100, 0, 0, NULL),
(6225, 2, -8746.09, -2167.29, 158.661, 100, 0, 0, NULL),
(6225, 3, -8732.55, -2168.39, 159.368, 100, 0, 0, NULL),
(6225, 4, -8719.21, -2162.26, 157.949, 100, 0, 0, NULL),
(6225, 5, -8696.33, -2161.94, 157.356, 100, 0, 0, NULL),
(6225, 6, -8692.61, -2182.1, 156.592, 100, 0, 0, NULL),
(6225, 7, -8701.18, -2195.72, 154.927, 100, 0, 0, NULL),
(6225, 8, -8702.75, -2227.73, 154.622, 100, 0, 0, NULL),
(6225, 9, -8713.25, -2240.96, 154.701, 100, 0, 0, NULL),
(6225, 10, -8732.68, -2250.81, 154.349, 100, 0, 0, NULL),
(6225, 11, -8713.25, -2240.96, 154.701, 100, 0, 0, NULL),
(6225, 12, -8702.75, -2227.73, 154.622, 100, 0, 0, NULL),
(6225, 13, -8701.18, -2195.72, 154.927, 100, 0, 0, NULL),
(6225, 14, -8692.61, -2182.1, 156.592, 100, 0, 0, NULL),
(6225, 15, -8696.28, -2161.94, 157.356, 100, 0, 0, NULL),
(6225, 16, -8719.21, -2162.26, 157.949, 100, 0, 0, NULL);
DELETE FROM `creature_movement` WHERE `id` = 147247;
INSERT INTO `creature_movement` (`Id`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`, `Comment`) VALUES
(147247, 1, -9294.5, -2942.45, 163.848, 100, 0, 0, NULL),
(147247, 2, -9295.68, -2939.59, 163.847, 100, 0, 0, NULL),
(147247, 3, -9295.76, -2936.39, 163.847, 100, 0, 0, NULL),
(147247, 4, -9294.54, -2934.21, 163.847, 100, 0, 0, NULL),
(147247, 5, -9292.8, -2932.29, 163.847, 100, 0, 0, NULL),
(147247, 6, -9290.22, -2931.36, 163.847, 100, 0, 0, NULL),
(147247, 7, -9288.1, -2930.99, 163.847, 100, 0, 0, NULL),
(147247, 8, -9285.91, -2931.29, 163.847, 100, 0, 0, NULL),
(147247, 9, -9283.65, -2933, 163.847, 100, 0, 0, NULL),
(147247, 10, -9282.22, -2935.46, 163.847, 100, 0, 0, NULL),
(147247, 11, -9281.36, -2937.68, 163.847, 100, 0, 0, NULL),
(147247, 12, -9282.22, -2935.46, 163.847, 100, 0, 0, NULL),
(147247, 13, -9283.65, -2933, 163.847, 100, 0, 0, NULL),
(147247, 14, -9285.91, -2931.29, 163.847, 100, 0, 0, NULL),
(147247, 15, -9288.1, -2930.99, 163.847, 100, 0, 0, NULL),
(147247, 16, -9290.22, -2931.36, 163.847, 100, 0, 0, NULL),
(147247, 17, -9292.8, -2932.29, 163.847, 100, 0, 0, NULL),
(147247, 18, -9294.54, -2934.21, 163.847, 100, 0, 0, NULL),
(147247, 19, -9295.76, -2936.39, 163.847, 100, 0, 0, NULL),
(147247, 20, -9295.68, -2939.59, 163.847, 100, 0, 0, NULL),
(147247, 21, -9294.5, -2942.45, 163.848, 100, 0, 0, NULL),
(147247, 22, -9291.65, -2944.5, 163.847, 100, 0, 0, NULL),
(147247, 23, -9288.23, -2945.5, 163.847, 100, 0, 0, NULL),
(147247, 24, -9285.65, -2944.35, 163.847, 100, 0, 0, NULL),
(147247, 25, -9283.33, -2942.83, 163.847, 100, 0, 0, NULL),
(147247, 26, -9283.21, -2942.75, 163.847, 100, 0, 0, NULL),
(147247, 27, -9285.65, -2944.35, 163.847, 100, 0, 0, NULL),
(147247, 28, -9288.21, -2945.51, 163.847, 100, 0, 0, NULL),
(147247, 29, -9291.65, -2944.5, 163.847, 100, 0, 0, NULL);
DELETE FROM `creature_movement` WHERE `id` = 147249;
INSERT INTO `creature_movement` (`Id`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`, `Comment`) VALUES
(147249, 1, -9294.61, -2937.22, 158.264, 100, 0, 0, NULL),
(147249, 2, -9294.68, -2942.32, 157.475, 100, 0, 0, NULL),
(147249, 3, -9289.68, -2945.6, 154.855, 100, 0, 0, NULL),
(147249, 4, -9283.39, -2943.19, 152.761, 100, 0, 0, NULL),
(147249, 5, -9280.32, -2936.98, 151.553, 100, 0, 0, NULL),
(147249, 6, -9284.6, -2930.99, 148.063, 100, 0, 0, NULL),
(147249, 7, -9290.75, -2930.42, 148.002, 100, 0, 0, NULL),
(147249, 8, -9296.87, -2934.88, 143.554, 100, 0, 0, NULL),
(147249, 9, -9295.72, -2943.06, 142.408, 100, 0, 0, NULL),
(147249, 10, -9290.62, -2947.13, 139.027, 100, 0, 0, NULL),
(147249, 11, -9281.4, -2944.71, 136.643, 100, 0, 0, NULL),
(147249, 12, -9278.73, -2939.37, 134.908, 100, 0, 0, NULL),
(147249, 13, -9281.98, -2931, 132.743, 100, 0, 0, NULL),
(147249, 14, -9278.73, -2939.37, 134.908, 100, 0, 0, NULL),
(147249, 15, -9281.4, -2944.71, 136.643, 100, 0, 0, NULL),
(147249, 16, -9290.62, -2947.13, 139.027, 100, 0, 0, NULL),
(147249, 17, -9295.72, -2943.06, 142.408, 100, 0, 0, NULL),
(147249, 18, -9296.87, -2934.88, 143.554, 100, 0, 0, NULL),
(147249, 19, -9290.75, -2930.42, 148.002, 100, 0, 0, NULL),
(147249, 20, -9284.6, -2930.99, 148.063, 100, 0, 0, NULL),
(147249, 21, -9280.32, -2936.98, 151.553, 100, 0, 0, NULL),
(147249, 22, -9283.39, -2943.19, 152.761, 100, 0, 0, NULL),
(147249, 23, -9289.68, -2945.6, 154.855, 100, 0, 0, NULL),
(147249, 24, -9294.68, -2942.32, 157.475, 100, 0, 0, NULL),
(147249, 25, -9294.61, -2937.22, 158.264, 100, 0, 0, NULL),
(147249, 26, -9282.72, -2939.23, 163.847, 100, 0, 0, NULL);

UPDATE creature SET position_x = 1473.552, position_y = -4218.575, position_z = 43.26931, orientation = 3.735005 WHERE id = 5882;

DELETE FROM `spawn_group` WHERE id = 19998;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES (19998, 'Stranglethorn Vale - Cortello\'s Riddle', 1, 1, 0, 0);
DELETE FROM `spawn_group_spawn` WHERE id = 19998;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES (19998, 11799, -1), (19998, 2390, -1), (19998, 13095, -1);

UPDATE quest_template SET ExclusiveGroup = 0, NextQuestId = 0 WHERE entry IN (2761,2762,2763);
DELETE FROM conditions WHERE condition_entry BETWEEN 2901 AND 2904;
INSERT INTO conditions (condition_entry, type, value1, value2, value3, value4) VALUES
(2901, 8, 2761,0,0,0), (2902, 8, 2762,0,0,0), (2903, 8, 2763,0,0,0), (2904, -1, 2903,2902,2901,0);
UPDATE quest_template SET RequiredCondition = 2904, PrevQuestId = 0 WHERE entry = 2764;
UPDATE quest_template SET PrevQuestId = 2764, ExclusiveGroup = 0, NextQuestId = 0 WHERE entry IN (2771,2772,2773);
DELETE FROM conditions WHERE condition_entry BETWEEN 2905 AND 2908;
INSERT INTO conditions (condition_entry, type, value1, value2, value3, value4) VALUES
(2905, 8, 2771,0,0,0), (2906, 8, 2772,0,0,0), (2907, 8, 2773,0,0,0), (2908, -1, 2907,2906,2905,0);
UPDATE quest_template SET RequiredCondition = 2908 WHERE entry = 3321;
UPDATE quest_template SET PrevQuestId = 3321 WHERE entry = 2765;
UPDATE dbscripts_on_quest_start SET buddy_entry = 0, search_radius = 0, data_flags = 0x04 WHERE command = 29 AND id = 2765;

DELETE FROM spell_area WHERE spell IN(60027,60028);

UPDATE creature_template SET ExtraFlags=ExtraFlags|0x00004000 WHERE entry = 19894;

UPDATE `creature_template` SET `SchoolImmuneMask`='4' WHERE `entry`='11583';
UPDATE `creature_template` SET `MinLevel`='61', `MaxLevel`='61' WHERE `entry`='14081';
UPDATE `creature_template` SET `UnitFlags`='33555200' WHERE `entry`='16604';
UPDATE `creature_template` SET `MechanicImmuneMask`='8388624' WHERE `entry`='626';

DELETE FROM `dbscripts_on_quest_start` WHERE id = '5252';
INSERT INTO dbscripts_on_quest_start(id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, datafloat, x, y, z, o, speed, condition_id, comments) VALUES
(5252,0,0,0,0,0,0,0,0,0,6505,6506,6507,0,0,0,0,0,0,0,0,'Remorseful Highborne - Say RND Text'),
(5252,20000,0,31,10684,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Remorseful Highborne - Spam Prevention');
UPDATE `quest_template` SET `StartScript`='5252' WHERE `entry`='5252';

UPDATE quest_template SET NextQuestId = 0 WHERE entry IN (4493,4494);
UPDATE `quest_template` SET `RequiredCondition`=2913 WHERE `entry`=4496;
DELETE FROM `conditions` WHERE `condition_entry` IN (2911, 2912, 2913);
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `value3`, `value4`, `flags`, `comments`) VALUES
(2911, 8, 4493, 0, 0, 0, 0, 'Quest \'March of the Silithid\' (Alliance) is rewarded'),
(2912, 8, 4494, 0, 0, 0, 0, 'Quest \'March of the Silithid\' (Horde) is rewarded'),
(2913, -2, 2912, 2911, 0, 0, 0, 'Quest \'March of the Silithid\' (Horde or Alliance) is rewarded');

UPDATE `quest_template` SET `RequiredCondition`=2916 WHERE `entry`=4493;
UPDATE `quest_template` SET `RequiredCondition`=2919 WHERE `entry`=4494;
UPDATE quest_template SET ExclusiveGroup = 0, NextQuestId = 0 WHERE entry IN (162,4267,32,7732);
DELETE FROM `conditions` WHERE `condition_entry` BETWEEN 2914 AND 2919;
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `value3`, `value4`, `flags`, `comments`) VALUES
(2914, 8, 162, 0, 0, 0, 0, 'Quest \'Rise of the Silithid\' (Alliance) is rewarded'),
(2915, 8, 4267, 0, 0, 0, 0, 'Quest \'Rise of the Silithid\' is rewarded'),
(2916, -2, 2914, 2915, 0, 0, 0, 'Quest \'Rise of the Silithid\' (4267) or \'Rise of the Silithid\' (162) is rewarded'),
(2917, 8, 32, 0, 0, 0, 0, 'Quest \'Rise of the Silithid\' (Horde) is rewarded'),
(2918, 8, 7732, 0, 0, 0, 0, 'Quest \'Zukk\'ash Report\' is rewarded'),
(2919, -2, 2917, 2918, 0, 0, 0, 'Quest \'Rise of the Silithid\' or \'Zukk\'ash Report\' is rewarded');

UPDATE `creature_template` SET `ResistanceFire`='0', `ResistanceFrost`='0', `ResistanceNature`='0', `ResistanceShadow`='0', `ResistanceArcane`='0' WHERE `entry`='13285';
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='14241';
UPDATE `creature_template` SET `Faction`='16', `DamageSchool`='4', `MechanicImmuneMask`='1', `SchoolImmuneMask`='16' WHERE `entry`='14350';
UPDATE `creature_template` SET `MinLevel`='60', `MaxLevel`='60' WHERE `entry`='16045';

DELETE FROM `creature` WHERE `guid` IN (49405, 49407, 49409);
INSERT INTO `creature` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `curhealth`, `MovementType`) VALUES
('49405', '0', '1', '807.8574', '-2685.848', '91.75', '5.864306', '5', '5','0', '0', '2'),
('49407', '0', '1', '806.99445', '-2683.6455', '91.75', '3.647738', '5', '5','0', '0', '2'),
('49409', '0', '1', '845.2584', '-2657.833' ,'92.1316' ,'3.176499' , '5', '5','0', '0', '2');
DELETE FROM `creature_spawn_entry` WHERE `guid` IN (49405, 49407, 49409);
INSERT INTO `creature_spawn_entry` (`guid`, `entry`) VALUES ('49405', '3284'), ('49405', '3285'), ('49407', '3284'), ('49407', '3285'), ('49409', '3284'), ('49409', '3285');
DELETE FROM `spawn_group` WHERE `Id` IN (19020, 19021);
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
('19020', 'Barrens - Main Control Valve RND Spawn NPCs', '0', '2', '2909', '2'),
('19021', 'Barrens - Regulator Valve RND Spawn NPCs', '0', '2', '2920', '2');
DELETE FROM `spawn_group_formation` WHERE `Id` = '19020';
DELETE FROM `spawn_group_formation` WHERE `Id` = '19021';
DELETE FROM `spawn_group_spawn` WHERE `Id` IN (19020, 19021);
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES  ('19020', '49405', '0'), ('19020', '49407', '1'), ('19021', '49409', '1');
DELETE FROM `worldstate_name` WHERE `Id` IN (19020, 19021);
INSERT INTO `worldstate_name` (`Id`, `Name`) VALUES ('19020', 'Barrens - Main Control Valve RND Spawn NPCs'), ('19021', 'Barrens - Regulator Valve RND Spawn NPCs');
DELETE FROM `conditions` WHERE `condition_entry` IN (2909, 2920);
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `value3`, `value4`, `flags`, `comments`) VALUES
('2909', '42', '19020', '0', '1', '0', '0', 'Barrens - Main Control Valve RND Spawn NPCs'),
('2920', '42', '19021', '0', '1', '0', '0', 'Barrens - Regulator Valve RND Spawn NPCs');
DELETE FROM creature_movement WHERE `Id` IN ('49405', '49407', '49409');
INSERT INTO `creature_movement` (`Id`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `WaitTime`, `ScriptId`) VALUES
('49405','1','807.8574', '-2685.848', '91.75', '1000', '328400'),
('49405','2','827.53876', '-2679.0618', '91.791664', '5000', '328401'),
('49407','1','806.99445', '-2683.6455', '91.75', '1000', '328400'),
('49407','2','826.4972', '-2678.3015', '91.791664', '5000', '328402'),
('49409','1','845.2584','-2657.833','92.1316','1000', '328403'),
('49409','2','842.5071' ,'-2673.2441','91.791664','5000', '328402');
DELETE FROM dbscripts_on_go_template_use WHERE id IN (4072, 61935);
INSERT INTO `dbscripts_on_go_template_use` (`id`, `command`, `datalong`, `datalong2`,  `comments`) VALUES
('4072', '45', '0', '4072', 'Quest Samophlange - Main Control Valve start relay script'),
('61935', '45', '0', '61935', 'Quest Samophlange - Regulator start relay script');
DELETE FROM dbscript_random_templates WHERE id IN (4072, 61935);
INSERT INTO `dbscript_random_templates` (`id`, `type`, `target_id`, `chance`, `comments`) VALUES
('4072', '1', '4072', '80', 'Quest Samophlange - Main Control Valve RND Spawn NPCs'),
('4072', '1', '0', '20', 'Quest Samophlange - No Action'),
('61935', '1', '61935', '80', 'Quest Samophlange - Regulator Valve RND Spawn NPCs'),
('61935', '1', '0', '20', 'Quest Samophlange - No Action');
DELETE FROM dbscripts_on_relay WHERE id IN (4072, 61935);
INSERT INTO `dbscripts_on_relay` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `dataint`, `dataint2`, `comments`) VALUES
('4072', '0','0', '53', '0', '0','19020', '1', 'Main Control Valve Spawn NPCS'),
('61935', '0','0', '53', '0', '0','19021', '1', 'Regulator Valve - Spawn NPCS');
DELETE FROM dbscripts_on_creature_movement WHERE id IN ('328400', '328401', '328402');
INSERT INTO `dbscripts_on_creature_movement` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `data_flags`, `dataint`, `dataint2`, `comments`) VALUES
('328400', '0','0', '25', '1', '0', '0', '0','0', 'Quest Samophlange - Venture co - Set RUN'),
('328400', '0','0', '53', '0', '0', '0', '19020','0', 'Set Worldstate'),
('328400', '100','1', '0', '0', '0', '0', '4704','0', 'Samophlange - RND Spawn TALK'),
('328401', '1000','0', '32', '1', '0', '0', '0','0', 'Stop Waypoint'),
('328402', '1000','0', '32', '1', '0', '0', '0','0', 'Stop Waypoint'),
('328402', '2000','0', '20', '1', '3', '8', '0','0', 'Set Random Movement'),
('328403', '0','0', '25', '1', '0', '0', '0','0', 'Quest Samophlange - Venture co - Set RUN'),
('328403', '0','0', '53', '0', '0', '0', '19021','0', 'Set Worldstate'),
('328403', '100','1', '0', '0', '0', '0', '4704','0', 'Samophlange - RND Spawn TALK');

UPDATE `spell_script_target` SET `inverseEffectMask` = '6' WHERE `entry` =55083 AND `targetEntry` =29686;
INSERT INTO `spell_script_target` (`entry`, `type`, `targetEntry`, `inverseEffectMask`) VALUES ('55083', '1', '29700', '5');

DELETE FROM `questgiver_greeting` WHERE `Entry` in (1217, 1284, 1377, 3936, 4048, 4080, 5393, 5637, 5694, 5892, 5906, 6019, 7877, 27337);
INSERT INTO `questgiver_greeting` VALUES (1217, 0, 'Harumph!  As if I don''t have enough to do out here in the muck, without all these distractions!', 0, 0);
INSERT INTO `questgiver_greeting` VALUES (1284, 0, 'My blessings go to you, $c, and I pray they may guide and protect you during these times of trouble.  Be vigilant, but remain hopeful for peace, for hope is our greatest weapon against the darkness.', 0, 0);
INSERT INTO `questgiver_greeting` VALUES (1377, 0, 'Driving a Steam Tank isn''t for everyone.  It takes an iron grip and nerves of steel...lucky I have both!  How about you?  How''s your mettle?  Want to prove it to me?', 0, 0);
UPDATE `creature_template` SET `NpcFlags` = '2', `GossipMenuId` = '0' WHERE `Entry` =3936;
INSERT INTO `questgiver_greeting` VALUES (3936, 0, 'In the name of Elune, the Sentinels keep vigilant watch over all our lands, from the cobbled streets of Darnassus to the edge of Ashenvale Forest.', 2, 0);
INSERT INTO `questgiver_greeting` VALUES (4048, 0, 'You look as though you have traveled from afar, $r.', 2, 0);
INSERT INTO `questgiver_greeting` VALUES (4080, 0, 'Gaxim is so focused on trying to convince the night elves that his methods are superior that I had no choice but to focus his energies on something--so I unleashed him on the Venture Co.$B$BI remain focused on helping the Charred Vale to the northwest.', 0, 0);
INSERT INTO `questgiver_greeting` VALUES (5393, 0, 'Nethergarde keep always needs more supplies - supplies to help our mages in their research, and supplies to keep our defenders in top fighting shape.', 1, 0);
INSERT INTO `questgiver_greeting` VALUES (5637, 0, 'Pleased to meetcha, $c. Me name''s Roetten. I lead Reclaimers Incorporated.$B$BMe guild and I specialize in aquiring lost goods. We usually hire brave adventurers and send them off to finish tasks for those who aren''t able, or don''t have the time.', 2, 0);
INSERT INTO `questgiver_greeting` VALUES (5694, 0, ' ', 0, 0);
INSERT INTO `questgiver_greeting` VALUES (5892, 0, ' ', 0, 0);
INSERT INTO `questgiver_greeting` VALUES (5906, 0, 'Hello, shaman. It is good to see one of my $gbrothers:sisters; here. May I aid you somehow?', 1, 0);
INSERT INTO `questgiver_greeting` VALUES (6019, 0, ' ', 0, 0);
INSERT INTO `questgiver_greeting` VALUES (7877, 0, ' ', 0, 0);
INSERT INTO `questgiver_greeting` VALUES (27337, 0, ' ', 0, 0);

INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (328, 1919);
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (1228, 1919);
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (7315, 1698);

DELETE FROM `dbscripts_on_quest_end` WHERE id = '5087';
INSERT INTO dbscripts_on_quest_end(id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, datafloat, x, y, z, o, speed, condition_id, comments) VALUES
(5087,0,1,21,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Donova Snowden - Set Active'),
(5087,0,2,29,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Donova Snowden - Remove QuestFlags'),
(5087,0,3,20,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Donova Snowden - Start Waypoints');
UPDATE `quest_template` SET `CompleteScript`='5087' WHERE `entry`='5087';
SET @PATH := 9298;
DELETE FROM creature_movement_template WHERE `Entry` = @PATH;
INSERT INTO `creature_movement_template` (`Entry`, `PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES 
(@PATH,0,1,6393.311,-2531.2017,541.43024,100,0,0),
(@PATH,0,2,6390.147,-2529.2485,540.6507,100,1000,929800),
(@PATH,0,3,6395.5728,-2536.7476,541.6417,100,0,0),
(@PATH,0,4,6395.5728,-2536.7476,541.6417,2.426007747650146484,1000,929801);
DELETE FROM `dbscripts_on_creature_movement` WHERE id IN (929800, 929801, 1437200, 1091600);
INSERT INTO dbscripts_on_creature_movement(id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, datafloat, x, y, z, o, speed, condition_id, comments) VALUES
(929800,0,0,32,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Donova Snowden - Pause Waypoints'),
(929800,0,1,0,0,0,0,0,0,0,6231,0,0,0,0,0,0,0,0,0,0,'Donova Snowden - Say EmoteText'),
(929800,3000,0,0,0,0,0,0,0,0,6232,0,0,0,0,0,0,0,0,0,0,'Donova Snowden - Say Text'),
(929800,3000,1,10,14372,180000,1,0,0,8,1,0,0,0,0,6389.5317,-2501.9636,541.0671, 1.6231,0,2376,'Donova Snowden - Spawn Winterfall Ambusher'),
(929800,3000,2,10,14372,180000,1,0,0,8,1,0,0,0,0,6386.3447,-2501.3552,540.42206,3.52556,0,2376,'Donova Snowden - Spawn Winterfall Ambusher'),
(929800,3000,3,10,14372,180000,1,0,0,8,1,0,0,0,0,6389.5327,-2498.4856,540.7365,5.2010,0,2376,'Donova Snowden - Spawn Winterfall Ambusher'),
(929800,6000,0,0,0,0,0,0,0,0,6233,0,0,0,0,0,0,0,0,0,0,'Donova Snowden - Say Text'),
(929800,11000,0,25,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Donova Snowden - Set Run'),
(929800,12000,0,32,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Donova Snowden - Unpause Waypoints'),
(929801,0,0,20,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Donova Snowden - Remove Waypoint Movement'),
(929800,0,1,25,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Donova Snowden - Remove Run'),
(929801,2000,1,21,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Donova Snowden - Remove Active'),
(929801,2000,2,29,2,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Donova Snowden - Add QuestFlags'),
(1437200,2000,0,20,1,10,0,0,0,8,0,0,0,0,0,0,0,0,0,0,0,'Winterfall Ambusher - Start RandomMovement'),
(1091600,1000,0,18,0,0,0,10916,20,1,0,0,0,0,0,0,0,0,0,0,0,'Winterfall runner - Despawn friend'),
(1091600,1000,1,18,0,0,0,10916,20,1,0,0,0,0,0,0,0,0,0,0,0,'Winterfall runner - Despawn friend'),
(1091600,1000,2,18,0,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,'Winterfall runner - Despawn self');
UPDATE `creature_template` SET `MovementType`='2' WHERE (`Entry`='14372');
SET @PATH := 14372;
DELETE FROM creature_movement_template WHERE `Entry` = @PATH;
INSERT INTO `creature_movement_template` (`Entry`, `PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`, `Comment`) VALUES
(@PATH,1,1,6380.987,-2520.9492,538.0356,100,5000,1437200, '');
DELETE FROM conditions WHERE condition_entry = '2376';
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `flags`, `comments`) VALUES ('2376', '37', '14372', '20', '1', 'Winterfall Ambusher in Range');
UPDATE `creature` SET `position_x`='6904.6416', `position_y`='-2296.5254', `position_z`='589.17346', `orientation`='4.118977' WHERE (`guid`='94988');
UPDATE `creature` SET `position_x`='6908.5347', `position_y`='-2298.954', `position_z`='588.86053', `orientation`='3.54129' WHERE (`guid`='94990');
UPDATE `creature` SET `position_x`='6898.7153', `position_y`='-2293.98', `position_z`='587.87805', `orientation`='5.51886' WHERE (`guid`='94989');
DELETE FROM creature_movement WHERE Id = '94988';
DELETE FROM creature_linking WHERE master_guid = 94988;
UPDATE creature_template SET ExtraFlags = ExtraFlags + 4096 WHERE entry = 10916;
DELETE FROM `spawn_group` WHERE `Id` = '19004';
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES ('19004', 'Winterspring - Winterfall Runner', '0', '3', '0', '3');
DELETE FROM `spawn_group_formation` WHERE `Id` = '19004';
INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES ('19004', '4', '5', '0', '19004', '2', 'Winterspring - Winterfall Runner');
DELETE FROM `spawn_group_spawn` WHERE `Id` = '19004';
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES ('19004', '94988', '0'), ('19004', '94990', '1'), ('19004', '94989', '2');
DELETE FROM waypoint_path_name WHERE PathId = '19004';
INSERT INTO `waypoint_path_name` (`PathId`, `Name`) VALUES ('19004', 'Kalimdor - Winterspring - Winterfall Runners');
SET @PATH := 19004;
DELETE FROM waypoint_path WHERE `PathId` = @PATH;
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(@PATH,1,6883.397,-2307.2742,582.3803,100,0,0),
(@PATH,2,6860.4766,-2308.3794,579.95636,100,0,0),
(@PATH,3,6840.4126,-2307.9648,580.43805,100,0,0),
(@PATH,4,6818.5215,-2307.6135,580.9789,100,0,0),
(@PATH,5,6804.612,-2309.247,580.0708,100,0,0),
(@PATH,6,6784.8354,-2323.5396,576.488,100,0,0),
(@PATH,7,6754.5654,-2334.0676,572.16656,100,0,0),
(@PATH,8,6725.491,-2338.0579,570.0515,100,0,0),
(@PATH,9,6687.617,-2338.2476,570.35675,100,0,0),
(@PATH,10,6666.604,-2343.5479,570.6366,100,0,0),
(@PATH,11,6656.4536,-2360.2861,569.29114,100,0,0),
(@PATH,12,6625.617,-2374.327,572.4637,100,0,0),
(@PATH,13,6606.411,-2393.626,572.24335,100,0,0),
(@PATH,14,6589.174,-2401.6055,573.74,100,0,0),
(@PATH,15,6564.564,-2419.217,575.0133,100,0,0),
(@PATH,16,6538.905,-2436.4724,575.5397,100,0,0),
(@PATH,17,6517.192,-2450.7263,572.9729,100,0,0),
(@PATH,18,6516.865,-2476.7385,568.825,100,0,0),
(@PATH,19,6519.787,-2506.7476,568.15985,100,0,0),
(@PATH,20,6523.7876,-2538.1907,568.15625,100,0,0),
(@PATH,21,6525.3164,-2571.3042,567.9315,100,0,0),
(@PATH,22,6532.3286,-2609.9778,564.35657,100,0,0),
(@PATH,23,6536.6816,-2647.0208,564.99615,100,0,0),
(@PATH,24,6542.336,-2683.8499,567.55774,100,0,0),
(@PATH,25,6548.317,-2722.467,570.3727,100,0,0),
(@PATH,26,6550.4497,-2763.961,569.3126,100,0,0),
(@PATH,27,6547.611,-2788.2397,572.2039,100,0,0),
(@PATH,28,6544.617,-2815.301,578.1884,100,0,0),
(@PATH,29,6541.099,-2847.6921,585.2842,100,0,0),
(@PATH,30,6537.7686,-2888.2166,588.3924,100,0,0),
(@PATH,31,6537.942,-2926.906,589.85614,100,0,0),
(@PATH,32,6539.8555,-2964.0608,591.88007,100,0,0),
(@PATH,33,6545.69,-3002.5942,594.2931,100,0,0),
(@PATH,34,6547.881,-3035.5293,596.47046,100,0,0),
(@PATH,35,6562.4185,-3070.22,598.8057,100,0,0),
(@PATH,36,6575.7964,-3105.8694,600.9687,100,0,0),
(@PATH,37,6593.9087,-3146.255,602.7558,100,0,0),
(@PATH,38,6606.138,-3187.1528,606.1534,100,0,0),
(@PATH,39,6617.757,-3231.0496,613.23065,100,0,0),
(@PATH,40,6628.3384,-3271.527,620.97656,100,0,0),
(@PATH,41,6637.586,-3311.9265,628.39996,100,0,0),
(@PATH,42,6642.4497,-3359.452,637.30615,100,0,0),
(@PATH,43,6645.7773,-3407.3574,650.5073,100,0,0),
(@PATH,44,6644.328,-3450.009,662.3237,100,0,0),
(@PATH,45,6644.9873,-3495.0098,671.6823,100,0,0),
(@PATH,46,6646.2983,-3538.2297,678.72394,100,0,0),
(@PATH,47,6652.639,-3586.178,688.10547,100,0,0),
(@PATH,48,6656.6426,-3627.0176,694.33386,100,0,0),
(@PATH,49,6661.2827,-3652.7236,696.0284,100,0,0),
(@PATH,50,6670.4595,-3677.5547,695.3266,100,0,0),
(@PATH,51,6684.9014,-3720.9067,692.3158,100,0,0),
(@PATH,52,6697.434,-3761.659,688.47046,100,0,0),
(@PATH,53,6714.619,-3803.5798,685.5921,100,0,0),
(@PATH,54,6731.653,-3812.7708,685.0921,100,0,0),
(@PATH,55,6754.172,-3845.9563,682.05383,100,0,0),
(@PATH,56,6778.5703,-3877.2495,681.60626,100,0,0),
(@PATH,57,6797.733,-3913.7466,682.04645,100,0,0),
(@PATH,58,6809.807,-3958.8918,684.6458,100,0,0),
(@PATH,59,6821.4805,-3988.9385,687.7111,100,0,0),
(@PATH,60,6837.932,-4017.0369,688.53424,100,0,0),
(@PATH,61,6854.178,-4058.2942,689.03125,100,0,0),
(@PATH,62,6889.2524,-4093.0474,691.1778,100,0,0),
(@PATH,63,6928.76,-4123.306,692.4278,100,0,0),
(@PATH,64,6964.7744,-4138.483,695.62726,100,0,0),
(@PATH,65,7011.4004,-4147.316,697.60925,100,0,0),
(@PATH,66,7047.417,-4149.6777,700.52515,100,0,0),
(@PATH,67,7064.6587,-4188.405,703.2609,100,0,0),
(@PATH,68,7087.34,-4223.3657,695.23785,100,0,0),
(@PATH,69,7109.225,-4258.7993,680.7249,100,0,0),
(@PATH,70,7114.1626,-4297.3438,672.27106,100,0,0),
(@PATH,71,7114.651,-4334.7554,661.4651,100,0,0),
(@PATH,72,7122.7134,-4371.7075,651.27686,100,0,0),
(@PATH,73,7138.5938,-4402.044,643.7828,100,0,0),
(@PATH,74,7155.247,-4433.6426,635.5412,100,0,0),
(@PATH,75,7176.8623,-4459.873,626.74255,100,0,0),
(@PATH,76,7207.6646,-4488.7437,616.0163,100,0,0),
(@PATH,77,7247.3345,-4505.738,604.5187,100,0,0),
(@PATH,78,7278.143,-4525.275,590.0195,100,0,0),
(@PATH,79,7308.1226,-4559.305,589.8831,100,0,0),
(@PATH,80,7338.3115,-4594.8496,592.388,100,0,0),
(@PATH,81,7353.3335,-4610.618,600.96533,100,0,0),
(@PATH,82,7369.155,-4639.6587,608.93616,100,0,0),
(@PATH,83,7375.5835,-4663.561,620.7311,100,0,0),
(@PATH,84,7389.488,-4684.435,630.76666,100,0,0),
(@PATH,85,7403.2676,-4715.996,646.9597,100,0,0),
(@PATH,86,7402.701,-4714.664,646.5034,100,0,0),
(@PATH,87,7399.332,-4740.424,655.72534,100,0,0),
(@PATH,88,7353.4565,-4742.8213,661.22375,100,0,0),
(@PATH,89,7335.605,-4731.386,664.62946,100,0,0),
(@PATH,90,7305.079,-4754.4673,673.8997,100,0,0),
(@PATH,91,7284.908,-4782.4272,681.1078,100,0,0),
(@PATH,92,7247.8296,-4807.4844,686.2208,100,0,0),
(@PATH,93,7216.407,-4822.1255,693.4069,100,0,0),
(@PATH,94,7188.5166,-4856.708,698.6139,100,0,0),
(@PATH,95,7163.0396,-4866.733,698.4728,100,0,0),
(@PATH,96,7130.868,-4863.4517,696.75073,100,0,0),
(@PATH,97,7082.917,-4862.369,696.10077,100,0,0),
(@PATH,98,7052.2993,-4870.6294,696.03937,100,0,0),
(@PATH,99,7022.1196,-4886.9287,695.97424,100,0,0),
(@PATH,100,7004.4697,-4899.9243,695.72424,100,0,0),
(@PATH,101,6965.521,-4927.568,692.20795,100,0,0),
(@PATH,102,6945.8076,-4962.3,690.8763,100,0,0),
(@PATH,103,6940.607,-4999.3896,691.8817,100,0,0),
(@PATH,104,6934.691,-5032.5713,692.1778,100,0,0),
(@PATH,105,6926.44,-5044.0244,691.1906,100,0,0),
(@PATH,106,6901.048,-5056.6895,688.9554,100,0,0),
(@PATH,107,6880.2124,-5061.403,688.8325,100,0,0),
(@PATH,108,6857.0454,-5075.4688,689.83417,100,0,0),
(@PATH,109,6813.94,-5095.202,695.06555,100,0,0),
(@PATH,110,6787.3076,-5105.598,703.3073,100,0,0),
(@PATH,111,6777.7065,-5111.5415,710.1192,100,0,0),
(@PATH,112,6772.0186,-5123.901,719.5323,100,0,0),
(@PATH,113,6761.592,-5137.4907,725.945,100,0,0),
(@PATH,114,6740.9775,-5155.317,733.0837,100,0,0),
(@PATH,115,6728.4688,-5177.6196,744.28705,100,0,0),
(@PATH,116,6721.9565,-5189.743,752.1503,100,0,0),
(@PATH,117,6725.942,-5199.338,756.4035,100,0,0),
(@PATH,118,6739.176,-5203.9043,760.8345,100,0,0),
(@PATH,119,6737.143,-5214.222,764.9502,100,0,0),
(@PATH,120,6727.2466,-5223.838,772.4213,100,0,0),
(@PATH,121,6715.482,-5239.652,779.11346,100,0,0),
(@PATH,122,6720.427,-5261.178,778.58417,100,2000,1091600);

DELETE FROM `dbscripts_on_quest_end` WHERE id = '1940';
INSERT INTO dbscripts_on_quest_end(id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, datafloat, x, y, z, o, speed, condition_id, comments) VALUES
(1940,0,0,21,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Wynne Larson - Set Active'),
(1940,0,1,29,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Wynne Larson - Remove QuestFlags'),
(1940,0,2,0,0,0,0,0,0,0,2649,0,0,0,0,0,0,0,0,0,0,'Wynne Larson - Say Text'),
(1940,2000,0,20,2,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Wynne Larson - Start Movement');
UPDATE `creature` SET `position_z` = '109.63', `spawntimesecsmin` = '300', `spawntimesecsmax` = '300' WHERE `guid` =5887;
DELETE FROM `dbscripts_on_creature_movement` WHERE id IN (194001, 194002);
INSERT INTO dbscripts_on_creature_movement(id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, datafloat, x, y, z, o, speed, condition_id, comments) VALUES
(194001,0,0,1,133,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Wynne Larson - Emote State'),
(194001,3000,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Wynne Larson - Emote State'),
(194001,3000,1,0,0,0,0,0,0,0,2651,0,0,0,0,0,0,0,0,0,0,'Wynne Larson - Say Text'),
(194001,3000,2,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Wynne Larson - Emote talk'),
(194002,1000,0,1,133,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Wynne Larson - Emote State'),
(194002,1000,1,0,0,0,0,0,0,0,2650,0,0,0,0,0,0,0,0,0,0,'Wynne Larson - Say Text'),
(194002,5000,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Wynne Larson - Emote State'),
(194002,6000,0,1,71,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Wynne Larson - Emote OneShotCheerNoSheathe'),
(194002,6000,1,0,0,0,0,0,0,0,2648,0,0,0,0,0,0,0,0,0,0,'Wynne Larson - Say Text'),
(194002,7000,0,25,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Wynne Larson - Set Run'),
(194003,1000,0,25,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Wynne Larson - Set Walk'),
(194003,1000,1,20,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Wynne Larson - Change Movement'),
(194003,1000,2,21,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Wynne Larson - Remove Active'),
(194003,1000,3,29,2,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Wynne Larson - Add QuestFlags');
UPDATE `quest_template` SET `CompleteScript`='1940' WHERE `entry`='1940';
SET @PATH := 1309;
DELETE FROM creature_movement_template WHERE `Entry` = @PATH;
INSERT INTO `creature_movement_template` (`Entry`, `PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`, `Comment`) VALUES
(@PATH,1,1,-8964.726,824.7132,109.59288,100,1000,0, 'Custom - Pathfinding issue'),
(@PATH,1,2,-8964.726,824.7132,109.59288,3.857177,3000,194001, 'Custom - Pathfinding issue'),
(@PATH,1,3,-8960.203,818.88196,109.59288,100,0,0, 'Custom - Pathfinding issue'),
(@PATH,1,4,-8958.916, 816.926, 109.446,100,1000,0, 'Custom - Pathfinding issue'),
(@PATH,1,5,-8958.916, 816.926, 109.446,3.804817,10000,194002, 'Custom - Pathfinding issue'),
(@PATH,1,6,-8962.3916, 823.182, 109.446, 100, 0, 0, 'Custom - Pathfinding issue'),
(@PATH,1,7,-8963.137, 822.567, 109.445, 100, 0, 0, 'Custom - Pathfinding issue'),
(@PATH,1,8,-8963.137, 822.567, 109.445,3.700098,1000,194003, 'Custom - Pathfinding issue');

DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id IN (28750));
DELETE FROM creature_movement WHERE id IN (SELECT guid FROM creature WHERE id IN (28750));
DELETE FROM creature WHERE id IN (28750);
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(49908, 28750, 571, 1, 1, 0, 0, 6244.93, -2048.76, 235.022, 3, 300, 300, 10, 0, 0, 0, 0, 1),
(119263, 28750, 571, 1, 1, 0, 0, 6202.19, -1970.12, 461.302, 0.951309, 300, 300, 0, 0, 0, 0, 0, 2),
(49909, 28750, 571, 1, 1, 0, 0, 5957.7, -2148.92, 248.308, -2.8938, 300, 300, 10, 0, 0, 0, 0, 1),
(119265, 28750, 571, 1, 1, 0, 0, 6096.56, -2069.7, 484.782, 4.2586, 300, 300, 0, 0, 0, 0, 0, 2),
(119266, 28750, 571, 1, 1, 0, 0, 6207.23, -2055.47, 461.305, 5.46288, 300, 300, 0, 0, 0, 0, 0, 2),
(119267, 28750, 571, 1, 1, 0, 0, 6096.95, -2058.17, 484.782, 4.53786, 300, 300, 0, 0, 0, 0, 0, 2),
(119268, 28750, 571, 1, 1, 0, 0, 6102.06, -2071.46, 484.782, 3.42085, 300, 300, 0, 0, 0, 0, 0, 2),
(49910, 28750, 571, 1, 1, 0, 0, 5940.63, -2165.98, 247.959, 0.793653, 300, 300, 10, 0, 0, 0, 0, 1),
(49911, 28750, 571, 1, 1, 0, 0, 6212.96, -2055.17, 582.971, 3.09692, 300, 300, 5, 0, 0, 0, 0, 1),
(119271, 28750, 571, 1, 1, 0, 0, 6153.14, -1972.86, 461.306, 2.44346, 300, 300, 0, 0, 0, 0, 0, 2),
(119272, 28750, 571, 1, 1, 0, 0, 6103.72, -2074.08, 484.782, 4.19732, 300, 300, 0, 0, 0, 0, 0, 2),
(119264, 28750, 571, 1, 1, 0, 0, 6216.25, -1983.85, 461.309, 0.29, 300, 300, 0, 0, 0, 0, 0, 2),
(119270, 28750, 571, 1, 1, 0, 0, 6145.38, -1976.75, 461.306, 1.8, 300, 300, 0, 0, 0, 0, 0, 2),
(49912, 28750, 571, 1, 1, 0, 0, 6208.19, -2093.6, 235.749, 1.4909, 300, 300, 10, 0, 0, 0, 0, 1),
(49913, 28750, 571, 1, 1, 0, 0, 6156.01, -1988.31, 582.671, 0.985086, 300, 300, 5, 0, 0, 0, 0, 1),
(49914, 28750, 571, 1, 1, 0, 0, 6137.13, -1980.41, 582.975, 4.9101, 300, 300, 5, 0, 0, 0, 0, 1),
(49915, 28750, 571, 1, 1, 0, 0, 5936.62, -2134.89, 248.18, 1.16783, 300, 300, 10, 0, 0, 0, 0, 1),
(49916, 28750, 571, 1, 1, 0, 0, 6134.53, -2033.69, 582.824, 3.62555, 300, 300, 5, 0, 0, 0, 0, 1),
(49917, 28750, 571, 1, 1, 0, 0, 6144.46, -1958.14, 582.858, 2.08223, 300, 300, 5, 0, 0, 0, 0, 1),
(49918, 28750, 571, 1, 1, 0, 0, 6133.29, -2058.98, 582.929, 3.08743, 300, 300, 5, 0, 0, 0, 0, 1),
(49919, 28750, 571, 1, 1, 0, 0, 6117.33, -2040.37, 582.925, 3.47977, 300, 300, 5, 0, 0, 0, 0, 1),
(49920, 28750, 571, 1, 1, 0, 0, 6205.89, -1997.6, 582.687, 3.38904, 300, 300, 5, 0, 0, 0, 0, 1),
(49921, 28750, 571, 1, 1, 0, 0, 6215.05, -2069.66, 582.743, 6.10487, 300, 300, 5, 0, 0, 0, 0, 1),
(49922, 28750, 571, 1, 1, 0, 0, 6188.49, -2055.87, 582.918, 0.592097, 300, 300, 5, 0, 0, 0, 0, 1),
(49923, 28750, 571, 1, 1, 0, 0, 6150.44, -1956.5, 417.6, 4.23199, 300, 300, 5, 0, 0, 0, 0, 1),
(49924, 28750, 571, 1, 1, 0, 0, 6124.53, -1972.75, 417.544, 2.3598, 300, 300, 5, 0, 0, 0, 0, 1),
(49925, 28750, 571, 1, 1, 0, 0, 6120.17, -2082.74, 234.209, 0.124094, 300, 300, 5, 0, 0, 0, 0, 1),
(49934, 28750, 571, 1, 1, 0, 0, 6090.19, -1983.77, 233.535, 3.71415, 300, 300, 5, 0, 0, 0, 0, 1),
(49935, 28750, 571, 1, 1, 0, 0, 6109.06, -2020.29, 234.279, 1.44644, 300, 300, 5, 0, 0, 0, 0, 1),
(49936, 28750, 571, 1, 1, 0, 0, 6121.4, -1936.58, 234.529, 3.61672, 300, 300, 5, 0, 0, 0, 0, 1),
(49937, 28750, 571, 1, 1, 0, 0, 6077.75, -2043.51, 235.82, 0.276958, 300, 300, 5, 0, 0, 0, 0, 1),
(49938, 28750, 571, 1, 1, 0, 0, 6066.43, -1967.52, 235.306, 2.37277, 300, 300, 5, 0, 0, 0, 0, 1),
(49939, 28750, 571, 1, 1, 0, 0, 6192.42, -2129.48, 235.513, 4.21527, 300, 300, 5, 0, 0, 0, 0, 1),
(49940, 28750, 571, 1, 1, 0, 0, 6251.84, -2086.16, 236.568, 4.78253, 300, 300, 5, 0, 0, 0, 0, 1),
(119269, 28750, 571, 1, 1, 0, 0, 6175.34, -2017.85, 404.306, 5.18363, 300, 300, 0, 0, 0, 0, 0, 2),
(49926, 28750, 571, 1, 1, 0, 0, 6156.06, -2098.3, 235.466, 4.66945, 300, 300, 5, 0, 0, 0, 0, 1),
(49927, 28750, 571, 1, 1, 0, 0, 6126.36, -2125.8, 236.027, 4.99164, 300, 300, 0, 0, 0, 0, 0, 0),
(119273, 28750, 571, 1, 1, 0, 0, 6175.75, -2017.54, 404.236, 5.2538, 300, 300, 0, 0, 0, 0, 0, 2),
(49928, 28750, 571, 1, 1, 0, 0, 6123.23, -1974.38, 236.897, 3.80482, 300, 300, 0, 0, 0, 0, 0, 0),
(119262, 28750, 571, 1, 1, 0, 0, 6180.95, -2069.29, 461.302, 2.5, 300, 300, 0, 0, 0, 0, 0, 2),
(49929, 28750, 571, 1, 1, 0, 0, 6229.31, -1955.28, 235.353, 6.13546, 300, 300, 10, 0, 0, 0, 0, 1),
(49930, 28750, 571, 1, 1, 0, 0, 6105.38, -2104.07, 235.488, 0.45, 300, 300, 10, 0, 0, 0, 0, 1),
(49931, 28750, 571, 1, 1, 0, 0, 6156.97, -1941.54, 235.371, 4.3353, 300, 300, 10, 0, 0, 0, 0, 1),
(49932, 28750, 571, 1, 1, 0, 0, 6229.04, -1993.81, 582.818, 3.59183, 300, 300, 5, 0, 0, 0, 0, 1),
(49933, 28750, 571, 1, 1, 0, 0, 6229.91, -2019.15, 233.135, 3.12452, 300, 300, 10, 0, 0, 0, 0, 1),
(49422, 28750, 571, 1, 1, 0, 0, 5940.03, -2097.92, 248.195, 0.162522, 300, 300, 10, 0, 0, 0, 0, 1),
(49423, 28750, 571, 1, 1, 0, 0, 5959.84, -2110.09, 248.406, 5.56245, 300, 300, 10, 0, 0, 0, 0, 1),
(49424, 28750, 571, 1, 1, 0, 0, 5955.89, -2184.27, 248.284, 5.46426, 300, 300, 10, 0, 0, 0, 0, 1);
INSERT INTO `creature_movement` (`id`, `point`, `positionx`, `positiony`, `positionz`, `orientation`, `waittime`, `scriptid`) VALUES
(119267,1,6096.954,-2058.171,484.7817,100,5000,2875001),
(119267,2,6102.639,-2062.564,484.7817,100,0,0),
(119267,3,6114.107,-2064.986,484.7817,100,0,0),
(119267,4,6126.729,-2057.026,484.7817,100,0,0),
(119267,5,6134.058,-2050.583,484.7817,100,100,2875003),
(119267,6,6145.58,-2043.94,460.482,100,0,0),
(119267,7,6160.958,-2050.992,459.5475,100,0,0),
(119267,8,6195.914,-2054.68,461.2656,100,0,0),
(119267,9,6204.502,-2061.344,461.3019,100,4000,2875002),
(119267,10,6200.651,-2058.777,461.3053,100,0,0),
(119267,11,6198.137,-2050.744,460.4676,100,100,2875004),
(119267,12,6201.31,-2063.65,484.782,100,0,0),
(119267,13,6203.393,-2073.318,485.2986,100,0,0),
(119267,14,6192.946,-2089.657,484.8155,100,0,0),
(119267,15,6168.724,-2103.914,484.8969,100,0,0),
(119267,16,6149.02,-2100.704,484.8766,100,0,0),
(119267,17,6132.68,-2071.999,484.913,100,0,0),
(119267,18,6104.417,-2062.745,484.7817,100,0,0),
(119272,1,6103.717,-2074.078,484.7817,100,5000,2875001),
(119272,2,6104.233,-2073.885,484.7817,100,0,0),
(119272,3,6120.644,-2064.324,484.7817,100,0,0),
(119272,4,6133.346,-2050.999,484.7817,100,100,2875005),
(119272,5,6142.8,-2043.88,461.047,100,0,0),
(119272,6,6140.736,-2045.231,461.3025,100,0,0),
(119272,7,6135.557,-2050.103,461.308,100,0,0),
(119272,8,6135.002,-2051.003,461.3075,3.769911,4000,2875002),
(119272,9,6135.974,-2050.088,461.3077,100,0,0),
(119272,10,6143.583,-2043.72,460.8497,100,100,2875006),
(119272,11,6133.96,-2049.89,484.782,100,0,0),
(119272,12,6131.798,-2051.007,484.7817,100,0,0),
(119272,13,6119.639,-2063.725,484.7817,100,0,0),
(119268,1,6102.063,-2071.464,484.7817,3.420845,5000,2875001),
(119268,2,6105.871,-2070.168,484.7817,100,0,0),
(119268,3,6128.855,-2044.362,484.7817,100,100,2875007),
(119268,4,6145.21,-2032.92,459.595,100,0,0),
(119268,5,6135.049,-2044.34,461.3044,100,4000,2875002),
(119268,6,6135.464,-2042.909,461.3037,100,0,0),
(119268,7,6143.42,-2034.777,459.4195,100,100,2875008),
(119268,8,6129.63,-2044.65,484.782,100,0,0),
(119268,9,6125.625,-2045.859,484.7817,100,0,0),
(119268,10,6104.16,-2069.53,484.7817,100,0,0),
(119266,1,6207.229,-2055.466,461.3049,5.462881,4000,2875002),
(119266,2,6206.599,-2054.509,461.3044,100,100,2875009),
(119266,3,6208,-2058.57,484.782,100,0,0),
(119266,4,6189.805,-2089.697,484.8336,100,0,0),
(119266,5,6160.006,-2104.732,485.083,100,0,0),
(119266,6,6139.154,-2086.768,484.9025,100,0,0),
(119266,7,6132.434,-2078.024,484.7912,100,0,0),
(119266,8,6095.261,-2062.664,484.7817,100,5000,2875001),
(119266,9,6124.279,-2062.609,484.7817,100,0,0),
(119266,10,6150.968,-2100.501,484.9111,100,0,0),
(119266,11,6176.275,-2103.082,484.8475,100,0,0),
(119266,12,6212.174,-2076.243,484.7817,100,0,0),
(119266,13,6209.133,-2059.37,484.8055,100,100,2875010),
(119266,14,6203.4,-2050.4,461.301,100,0,0),
(119270,1,6145.376,-1976.752,461.3064,1.8,4000,2875002),
(119270,2,6151.593,-1987.446,460.0117,100,100,2875011),
(119270,3,6142.43,-1976.5,484.782,100,0,0),
(119270,4,6121.274,-1968.876,484.7817,100,0,0),
(119270,5,6087.102,-1999.643,485.1085,100,0,0),
(119270,6,6109.737,-2040.311,484.8922,100,0,0),
(119270,7,6101.238,-2062.686,484.7817,100,0,0),
(119270,8,6097.889,-2065.833,484.7817,2.949606,5000,2875001),
(119270,9,6102.794,-2061.792,484.7817,100,0,0),
(119270,10,6103.527,-2030.95,484.8754,100,0,0),
(119270,11,6106.448,-2034.126,484.8909,100,0,0),
(119270,12,6091.571,-1991.617,484.8744,100,0,0),
(119270,13,6131.798,-1969.818,484.7817,100,0,0),
(119270,14,6142.792,-1975.699,484.7817,100,100,2875012),
(119270,15,6149.36,-1987.29,461.106,100,0,0),
(119270,16,6147.682,-1985.624,461.2195,100,0,0),
(119264,1,6216.245,-1983.85,461.3086,0.29,4000,2875002),
(119264,2,6215.966,-1985,461.3082,100,0,0),
(119264,3,6209.135,-1989.806,461.3023,100,100,2875013),
(119264,4,6216.1,-1984.29,484.805,100,0,0),
(119264,5,6220.96,-1981.595,484.7817,100,0,0),
(119264,6,6221.505,-1958.653,484.8376,100,0,0),
(119264,7,6196.143,-1931.549,485.0707,100,0,0),
(119264,8,6165.633,-1939.432,484.8564,100,0,0),
(119264,9,6131.097,-1971.888,484.7817,100,0,0),
(119264,10,6097.321,-1986.901,484.9024,100,0,0),
(119264,11,6088.803,-2011.928,484.8889,100,0,0),
(119264,12,6106.403,-2034.999,484.8852,100,0,0),
(119264,13,6115.521,-2053.154,484.7817,100,0,0),
(119264,14,6104.145,-2073.252,484.7817,100,5000,2875001),
(119264,15,6105.924,-2070.469,484.7817,100,0,0),
(119264,16,6111.913,-2050.842,484.7817,100,0,0),
(119264,17,6109.091,-2037.07,484.9039,100,0,0),
(119264,18,6087.542,-2002.893,485.0814,100,0,0),
(119264,19,6104.542,-1981.744,484.8942,100,0,0),
(119264,20,6136.808,-1962.796,484.7817,100,0,0),
(119264,21,6177.643,-1934.396,484.8965,100,0,0),
(119264,22,6199.864,-1932.9,484.8879,100,0,0),
(119264,23,6223.991,-1967.172,484.7817,100,0,0),
(119264,24,6217.285,-1985.127,484.7817,100,100,2875014),
(119264,25,6210.92,-1988.77,461.301,100,0,0),
(119265,1,6096.561,-2069.695,484.7817,4.258604,5000,2875001),
(119265,2,6098.649,-2068.789,484.7817,100,0,0),
(119265,3,6131.748,-2069.752,484.9228,100,0,0),
(119265,4,6154.401,-2103.999,485.0734,100,0,0),
(119265,5,6177.845,-2100.021,484.8671,100,0,0),
(119265,6,6202.315,-2080.404,484.7817,100,0,0),
(119265,7,6238.914,-2055.347,484.8289,100,0,0),
(119265,8,6264.894,-2032.98,485.0973,100,0,0),
(119265,9,6240.11,-1989.695,484.7817,100,0,0),
(119265,10,6219.558,-1989.167,484.7817,100,100,2875015),
(119265,11,6216.58,-1994.89,461.301,100,0,0),
(119265,12,6217.393,-1995.394,461.3011,100,0,0),
(119265,13,6220.092,-1992.092,461.3055,100,4000,2875002),
(119265,14,6217.936,-1994.459,461.304,100,0,0),
(119265,15,6214.306,-1998.342,461.3011,100,100,2875016),
(119265,16,6220.59,-1991.16,484.782,100,0,0),
(119265,17,6224.806,-1988.395,484.7817,100,0,0),
(119265,18,6239.807,-1987.941,484.7817,100,0,0),
(119265,19,6262.548,-2016.587,484.8281,100,0,0),
(119265,20,6264.932,-2034.561,485.1096,100,0,0),
(119265,21,6237.587,-2056.088,484.825,100,0,0),
(119265,22,6197.29,-2085.351,484.8394,100,0,0),
(119265,23,6174.648,-2098.688,484.9054,100,0,0),
(119265,24,6153.57,-2105.083,485.079,100,0,0),
(119265,25,6128.51,-2071.43,484.869,100,0,0),
(119265,26,6099.242,-2068.432,484.7817,100,0,0),
(119263,1,6202.187,-1970.115,461.3024,100,10000,2875017),
(119263,2,6201.38,-1978.847,461.3046,100,0,0),
(119263,3,6209.28,-2000.035,460.0739,100,0,0),
(119263,4,6214.661,-2015.922,460.4588,100,0,0),
(119263,5,6239.679,-2017.56,461.3075,100,10000,2875017),
(119263,6,6237.306,-2016.886,461.3065,100,0,0),
(119263,7,6214.472,-2024.857,460.3615,100,0,0),
(119263,8,6197.676,-2048.26,459.8561,100,0,0),
(119263,9,6175.999,-2055.235,459.9492,100,0,0),
(119263,10,6154.833,-2065.599,461.3018,100,0,0),
(119263,11,6148.998,-2064.746,461.3022,3.926991,10000,2875017),
(119263,12,6157.799,-2050.602,459.7967,100,0,0),
(119263,13,6141.865,-2026.469,458.8951,100,0,0),
(119263,14,6153.972,-1989.413,459.0964,100,0,0),
(119263,15,6192.825,-1983.243,460.1299,100,0,0),
(119263,16,6202.187,-1970.115,461.3024,100,10000,2875017),
(119271,1,6153.143,-1972.857,461.3064,2.443461,4000,2875002),
(119271,2,6155.889,-1979.479,461.3008,100,100,2875018),
(119271,3,6148.62,-1972.31,484.782,100,0,0),
(119271,4,6147.761,-1970.542,484.7817,100,0,0),
(119271,5,6123.947,-1971.441,484.8794,100,0,0),
(119271,6,6091.209,-1992.603,484.8875,100,0,0),
(119271,7,6094.241,-2022.884,484.861,100,0,0),
(119271,8,6112.295,-2043.476,484.7817,100,0,0),
(119271,9,6096.86,-2063.195,484.7817,100,5000,2875001),
(119271,10,6101.426,-2056.165,484.7817,100,0,0),
(119271,11,6109.021,-2035.91,484.91,100,0,0),
(119271,12,6095.607,-2019.88,484.8982,100,0,0),
(119271,13,6089.913,-1998.964,485.0818,100,0,0),
(119271,14,6112.426,-1979.793,484.8416,100,0,0),
(119271,15,6122.738,-1971.012,484.8647,100,0,0),
(119271,16,6149.742,-1970.906,484.8015,100,100,2875019),
(119271,17,6157.35,-1978.18,461.301,100,0,0),
(119269,1,6175.339,-2017.852,404.3061,5.183628,5000,2875020),
(119269,2,6174.825,-2017.989,404.236,100,0,0),
(119269,3,6159.251,-2028.207,408.1678,100,0,0),
(119269,4,6147.937,-2036.359,407.5794,100,0,0),
(119269,5,6128.837,-2048.8,417.705,100,0,0),
(119269,6,6113.036,-2034.328,417.6899,100,0,0),
(119269,7,6110.188,-2012.259,417.561,100,0,0),
(119269,8,6121.923,-1981.482,417.7074,100,0,0),
(119269,9,6157.049,-1955.435,417.646,100,0,0),
(119269,10,6195.462,-1956.147,417.5861,100,0,0),
(119269,11,6220.22,-1969.142,417.5392,100,0,0),
(119269,12,6222.109,-1986.473,417.7545,100,0,0),
(119269,13,6202.199,-1999.047,407.519,100,0,0),
(119269,14,6181.367,-1996.621,408.1674,100,0,0),
(119269,15,6176.836,-2007.704,411.9513,100,0,0),
(119269,16,6175.211,-2017.723,411.9658,100,5000,2875021),
(119273,1,6175.746,-2017.538,404.236,5.253795,5000,2875020),
(119273,2,6187.132,-2035.369,408.1675,100,0,0),
(119273,3,6193.911,-2045.414,407.6693,100,0,0),
(119273,4,6206.336,-2064.349,417.7517,100,0,0),
(119273,5,6193.142,-2079.947,417.6424,100,0,0),
(119273,6,6165.127,-2083.964,417.5635,100,0,0),
(119273,7,6130.759,-2063.642,417.5378,100,0,0),
(119273,8,6110.855,-2026.194,417.5486,100,0,0),
(119273,9,6119.569,-1984.052,417.7385,100,0,0),
(119273,10,6142.086,-1970.576,417.5637,100,0,0),
(119273,11,6157.363,-1988.833,407.9571,100,0,0),
(119273,12,6177.159,-2007.708,411.4003,100,0,0),
(119273,13,6175.44,-2017.496,411.9658,100,5000,2875021),
(119262,1,6180.946,-2069.294,461.3016,100,0,0),
(119262,2,6187.383,-2053.935,460.1047,100,0,0),
(119262,3,6213.616,-2022.851,460.1382,100,0,0),
(119262,4,6223.986,-2010.038,461.3042,100,10000,2875017),
(119262,5,6222.961,-2012.53,461.3032,100,0,0),
(119262,6,6217.03,-2007.837,461.3011,100,0,0),
(119262,7,6201.745,-1990.675,459.9401,100,0,0),
(119262,8,6194.818,-1987.884,459.0783,100,0,0),
(119262,9,6168.517,-1968.149,461.3006,100,10000,2875017),
(119262,10,6164.962,-1981.309,459.8275,100,0,0),
(119262,11,6141.244,-2018.656,458.8197,100,0,0),
(119262,12,6129.486,-2024.879,461.3,100,10000,2875017),
(119262,13,6141.167,-2028.424,459.311,100,0,0),
(119262,14,6174.528,-2055.624,460.063,100,0,0),
(119262,15,6184.06,-2078.227,461.3071,100,10000,2875017);
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 2875001 AND 2875021;
INSERT INTO dbscripts_on_creature_movement(id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, datafloat, x, y, z, o, speed, comments) VALUES
(2875001,0,1,51,0,0,0,0,0x04,0,0,0,0,0,0,0,0,0,0,'emote'),
(2875001,10,25,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,0,0,'Run ON'),
(2875001,2000,15,52243,0,0,0,0,0x04,0,0,0,0,0,0,0,0,0,0,'self cast'),
(2875002,0,1,51,0,0,0,0,0x04,0,0,0,0,0,0,0,0,0,0,'emote'),
(2875002,10,25,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,0,0,'Run ON'),
(2875002,2000,14,52243,0,0,0,0,0x04,0,0,0,0,0,0,0,0,0,0,'remove aura'),
(2875003,0,20,15,0,0,0,0,0x04,0,0,0,0,10,6145.58,-2043.94,460.482,100,20,'119267 - jump down'),
(2875004,0,20,15,0,0,0,0,0x04,0,0,0,0,10,6201.31,-2063.65,484.782,100,20,'119267 - jump up'),
(2875005,0,20,15,0,0,0,0,0x04,0,0,0,0,10,6142.8,-2043.88,461.047,100,20,'119272 - jump down'),
(2875006,0,20,15,0,0,0,0,0x04,0,0,0,0,10,6133.96,-2049.89,484.782,100,20,'119272 - jump up'),
(2875007,0,20,15,0,0,0,0,0x04,0,0,0,0,10,6145.21,-2032.92,459.595,100,20,'119268 - jump down'),
(2875008,0,20,15,0,0,0,0,0x04,0,0,0,0,10,6129.63,-2044.65,484.782,100,20,'119268 - jump up'),
(2875009,0,20,15,0,0,0,0,0x04,0,0,0,0,10,6208,-2058.57,484.782,100,20,'119266 - jump up'),
(2875010,0,20,15,0,0,0,0,0x04,0,0,0,0,10,6203.4,-2050.4,461.301,100,20,'119266 - jump down'),
(2875011,0,20,15,0,0,0,0,0x04,0,0,0,0,10,6142.43,-1976.5,484.782,100,20,'119270 - jump up'),
(2875012,0,20,15,0,0,0,0,0x04,0,0,0,0,10,6149.36,-1987.29,461.106,100,20,'119270 - jump down'),
(2875013,0,20,15,0,0,0,0,0x04,0,0,0,0,10,6216.1,-1984.29,484.805,100,20,'119264 - jump up'),
(2875014,0,20,15,0,0,0,0,0x04,0,0,0,0,10,6210.92,-1988.77,461.301,100,20,'119264 - jump down'),
(2875015,0,20,15,0,0,0,0,0x04,0,0,0,0,10,6216.58,-1994.89,461.301,100,20,'119265 - jump down'),
(2875016,0,20,15,0,0,0,0,0x04,0,0,0,0,10,6220.59,-1991.16,484.782,100,20,'119265 - jump up'),
(2875017,10,25,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,0,0,'Run ON'),
(2875017,1000,1,25,0,0,0,0,0x04,0,0,0,0,0,0,0,0,0,0,'emote'),
(2875017,5000,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,0,0,'emote'),
(2875018,0,20,15,0,0,0,0,0x04,0,0,0,0,10,6148.62,-1972.31,484.782,100,20,'119271 - jump up'),
(2875019,0,20,15,0,0,0,0,0x04,0,0,0,0,10,6157.35,-1978.18,461.301,100,20,'119271 - jump down'),
(2875020,100,15,61456,0,0,0,0,0x04,0,0,0,0,0,0,0,0,0,0,'self cast'),
(2875020,2000,15,52243,0,0,0,0,0x04,0,0,0,0,0,0,0,0,0,0,'self cast'),
(2875021,100,15,61456,0,0,0,0,0x04,0,0,0,0,0,0,0,0,0,0,'self cast'),
(2875021,2000,18,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,0,0,'despawn self');
UPDATE creature_template SET MovementType = 3 WHERE entry IN (28879);
UPDATE `creature` SET `position_x` = '6177.54', `position_y` = '-2047.91', `position_z` = '426.099', `orientation` = '3.11137', `MovementType` = '3' WHERE `id` = 28879;
DELETE FROM `creature_movement` WHERE `id` IN (93663);
DELETE FROM creature_movement_template WHERE entry IN (28879);
INSERT INTO creature_movement_template (entry, pathId, point, positionx, positiony, positionz, orientation, waittime, scriptid) VALUES
(28879,0,1,6172.321,-2047.748,423.9775,100,0,0),
(28879,0,2,6159.705,-2039.765,423.9775,100,0,0),
(28879,0,3,6151.034,-2030.29,423.9775,100,0,0),
(28879,0,4,6148.249,-2012.318,427.6442,100,0,0),
(28879,0,5,6160.55,-1991.355,423.9775,100,0,0),
(28879,0,6,6184.199,-1985.717,434.6442,100,0,0),
(28879,0,7,6205.602,-1997.712,423.9775,100,0,0),
(28879,0,8,6209.002,-2021.652,426.0051,100,0,0),
(28879,0,9,6191.328,-2043.418,431.6164,100,0,0),
(28879,0,10,6172.321,-2047.748,423.9775,100,0,0),
(28879,0,11,6159.705,-2039.765,423.9775,100,0,0),
(28879,0,12,6151.034,-2030.29,423.9775,100,0,0);
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(119296, 28803, 571, 1, 1, 0, 0, 6194.73, -2078.01, 417.638, 3.67618, 300, 300, 0, 0, 0, 0, 0, 4),
(119297, 28803, 571, 1, 1, 0, 0, 6113.51, -2033, 417.731, 1.7247, 300, 300, 0, 0, 0, 0, 0, 4),
(49410, 28803, 571, 1, 1, 0, 0, 6172.17, -1954.02, 417.552, 3.29197, 300, 300, 0, 0, 0, 0, 0, 4),
(49411, 28803, 571, 1, 1, 0, 0, 6147.46, -2074.57, 417.645, 2.88627, 300, 300, 0, 0, 0, 0, 0, 4);
UPDATE creature SET MovementType = 4, spawndist = 0 WHERE guid IN (119297,49410,119296,49411);
DELETE FROM `creature_movement` WHERE `id` IN (119297,49410,119296,49411);
INSERT INTO `creature_movement` (`id`, `point`, `positionx`, `positiony`, `positionz`, `orientation`, `waittime`, `scriptid`) VALUES
(119297,1,6113.512,-2033.001,417.7308,100,0,0),
(119297,2,6109.752,-2008.77,417.5635,100,0,0),
(119297,3,6119.171,-1985.926,417.671,100,0,0),
(49410,1,6164.512,-1955.177,417.5476,100,0,0),
(49410,2,6174.948,-1953.596,417.5555,100,0,0),
(49410,3,6196.992,-1955.543,417.5923,100,0,0),
(49410,4,6215.869,-1967.486,417.5413,100,0,0),
(49410,5,6228.093,-1980.412,417.5516,100,0,0),
(49410,6,6236.967,-1995.491,417.6685,100,0,0),
(119296,1,6194.729,-2078.011,417.6379,100,0,0),
(119296,2,6217.196,-2064.708,417.5335,100,0,0),
(119296,3,6232.834,-2048.468,417.6587,100,0,0),
(119296,4,6240.251,-2020.826,417.5594,100,0,0),
(119296,5,6238.296,-2002.501,417.7483,100,0,0),
(49411,1,6144.443,-2073.784,417.665,100,0,0),
(49411,2,6129.907,-2060.738,417.5427,100,0,0),
(49411,3,6114.339,-2034.41,417.6801,100,0,0),
(49411,4,6171.715,-2080.903,417.5587,100,0,0),
(49411,5,6185.524,-2080.392,417.5478,100,0,0);
REPLACE INTO creature (guid, id, map, spawnmask, phasemask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) values
(118656,28888,571,1,1,0,0,6242.198,-2020.377,462.2179,3.228859,300,300,0,0,0,0,0,0),
(49412,28888,571,1,1,0,0,6233.554,-2008.548,462.2596,3.298672,300,300,0,0,0,0,0,0),
(49413,28888,571,1,1,0,0,6240.744,-1967.356,418.6794,3.804818,300,300,0,0,0,0,0,0),
(118657,28888,571,1,1,0,0,6257.495,-1980.1,418.6335,3.054326,300,300,0,0,0,0,0,0);
DELETE FROM creature_spawn_data WHERE guid IN(104024,104022,104038,104023,104028,104026,104027,104025);
INSERT INTO creature_spawn_data(Guid,Id) VALUES (104024, 20008),(104023, 20007),(104022, 20008),(104038, 20007),(104028, 20008),(104026, 20007),(104027, 20008),(104025, 20007);
DELETE FROM creature_spawn_data_template WHERE entry IN (20007,20008);
INSERT INTO creature_spawn_data_template (Entry, RelayId) VALUES (20007, 20610), (20008, 20611);
DELETE FROM dbscripts_on_relay WHERE id IN (20610,20611);
INSERT INTO dbscripts_on_relay(id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, datafloat, x, y, z, o, speed, comments) VALUES
(20610,10,15,52686,0,0,0,0,0x04,0,0,0,0,0,0,0,0,0,0,'self cast'),
(20611,10,15,52681,0,0,0,0,0x04,0,0,0,0,0,0,0,0,0,0,'self cast');
UPDATE `creature` SET `position_z` = '482.073' WHERE `guid` =104038;
UPDATE `creature` SET `position_z` = '482.039' WHERE `guid` =104022;
UPDATE `creature` SET `position_z` = '482.066' WHERE `guid` =104024;
UPDATE `creature` SET `position_z` = '481.928' WHERE `guid` =104023;
UPDATE `creature` SET `position_z` = '482.067' WHERE `guid` =104026;
UPDATE `creature` SET `position_z` = '482.025' WHERE `guid` =104028;
UPDATE `creature` SET `position_z` = '482.08' WHERE `guid` =104027;
UPDATE `creature` SET `position_z` = '482.066' WHERE `guid` =104025;
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id IN (28932));
DELETE FROM creature_movement WHERE id IN (SELECT guid FROM creature WHERE id IN (28932));
UPDATE creature SET MovementType = 0 WHERE id =28932;
UPDATE areatrigger_teleport SET required_level = 0, target_position_x = 6165.63, target_position_y = -2001.19, target_position_z = 408.168, target_orientation = 2.32628 WHERE id = 5051;
UPDATE `creature` SET `position_z` = '461.385' WHERE `guid` =104048;
UPDATE `creature` SET `position_z` = '461.385' WHERE `guid` =104047;
UPDATE `creature` SET `position_z` = '461.385' WHERE `guid` =104049;
UPDATE `creature` SET `position_z` = '461.385' WHERE `guid` =104046;
UPDATE `creature` SET `spawntimesecsmin` = '300', `spawntimesecsmax` = '300' WHERE `guid` =118624;
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id IN (28759));
DELETE FROM creature_movement WHERE id IN (SELECT guid FROM creature WHERE id IN (28759));
DELETE FROM creature WHERE id IN (28759);
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(103941, 28759, 571, 1, 1, 0, 0, 6133.27, -1972.97, 380.72, 4.44466, 300, 300, 15, 0, 0, 0, 0, 1),
(103942, 28759, 571, 1, 1, 0, 0, 6068.03, -2065.93, 423.075, 5.42797, 300, 300, 0, 0, 0, 0, 0, 0),
(103943, 28759, 571, 1, 1, 0, 0, 6087.86, -2067.5, 423.06, 5.42797, 300, 300, 0, 0, 0, 0, 0, 0),
(103944, 28759, 571, 1, 1, 0, 0, 6155.33, -2108.65, 371.679, 5.09518, 300, 300, 15, 0, 0, 0, 0, 1),
(103945, 28759, 571, 1, 1, 0, 0, 6016.64, -2126.46, 434.593, 5.79879, 300, 300, 15, 0, 0, 0, 0, 1),
(103946, 28759, 571, 1, 1, 0, 0, 6179.64, -2118.21, 375.507, 2.36273, 300, 300, 15, 0, 0, 0, 0, 1),
(103947, 28759, 571, 1, 1, 0, 0, 6177.6, -2011.68, 264.309, 5.81554, 300, 300, 15, 0, 0, 0, 0, 1),
(103948, 28759, 571, 1, 1, 0, 0, 6154.37, -2053.87, 272.473, 3.00251, 300, 300, 15, 0, 0, 0, 0, 1),
(103949, 28759, 571, 1, 1, 0, 0, 6163.1, -1948.44, 366.078, 5.48173, 300, 300, 15, 0, 0, 0, 0, 1),
(103950, 28759, 571, 1, 1, 0, 0, 6070.76, -2053.12, 381.682, 0.952304, 300, 300, 15, 0, 0, 0, 0, 1),
(103951, 28759, 571, 1, 1, 0, 0, 6021.27, -2206.77, 424.366, 5.35581, 300, 300, 15, 0, 0, 0, 0, 1),
(103952, 28759, 571, 1, 1, 0, 0, 6135.77, -1971.85, 362.254, 4.15964, 300, 300, 15, 0, 0, 0, 0, 1),
(103953, 28759, 571, 1, 1, 0, 0, 6104.97, -2027.86, 269.111, 0.858116, 300, 300, 15, 0, 0, 0, 0, 1),
(103954, 28759, 571, 1, 1, 0, 0, 6128.71, -1958.58, 417.762, 4.53786, 300, 300, 0, 0, 0, 0, 0, 0),
(103955, 28759, 571, 1, 1, 0, 0, 6087.93, -2080.24, 365.629, 2.4631, 300, 300, 15, 0, 0, 0, 0, 1),
(103956, 28759, 571, 1, 1, 0, 0, 6096.99, -2080.65, 422.982, 2.30383, 300, 300, 0, 0, 0, 0, 0, 0),
(103958, 28759, 571, 1, 1, 0, 0, 6222.67, -2038.58, 372.913, 2.07002, 300, 300, 15, 0, 0, 0, 0, 1),
(103959, 28759, 571, 1, 1, 0, 0, 6204.53, -2086.9, 361.237, 4.84003, 300, 300, 15, 0, 0, 0, 0, 1),
(103960, 28759, 571, 1, 1, 0, 0, 6117.75, -2049.44, 377.903, 4.91641, 300, 300, 15, 0, 0, 0, 0, 1),
(103961, 28759, 571, 1, 1, 0, 0, 6084.68, -2107.13, 377.962, 3.92506, 300, 300, 15, 0, 0, 0, 0, 1),
(103962, 28759, 571, 1, 1, 0, 0, 6091.42, -2099.09, 422.968, 2.1293, 300, 300, 0, 0, 0, 0, 0, 0),
(103963, 28759, 571, 1, 1, 0, 0, 6004.81, -2105.42, 434.441, 0.791284, 300, 300, 15, 0, 0, 0, 0, 1),
(103964, 28759, 571, 1, 1, 0, 0, 6033.73, -2142.61, 428.083, 2.12216, 300, 300, 15, 0, 0, 0, 0, 1),
(103965, 28759, 571, 1, 1, 0, 0, 6154.67, -1956.37, 380.856, 3.34216, 300, 300, 15, 0, 0, 0, 0, 1),
(103967, 28759, 571, 1, 1, 0, 0, 6035.85, -2123.16, 446.465, 0.672518, 300, 300, 15, 0, 0, 0, 0, 1),
(103968, 28759, 571, 1, 1, 0, 0, 6070.95, -2091.86, 431.679, 4.41109, 300, 300, 15, 0, 0, 0, 0, 1),
(103969, 28759, 571, 1, 1, 0, 0, 6047.74, -2073.43, 423.083, 6.14356, 300, 300, 0, 0, 0, 0, 0, 0),
(103970, 28759, 571, 1, 1, 0, 0, 6195.8, -1969.03, 265.625, 5.07095, 300, 300, 15, 0, 0, 0, 0, 1),
(103971, 28759, 571, 1, 1, 0, 0, 6076.41, -2116.4, 422.959, 1.44862, 300, 300, 0, 0, 0, 0, 0, 0),
(103972, 28759, 571, 1, 1, 0, 0, 6018.8, -2082.13, 423.077, 5.4348, 300, 300, 15, 0, 0, 0, 0, 1),
(103973, 28759, 571, 1, 1, 0, 0, 6138.4, -1952.08, 417.801, 6.16101, 300, 300, 0, 0, 0, 0, 0, 0),
(103974, 28759, 571, 1, 1, 0, 0, 6008.9, -2184.05, 453.124, 1.53562, 300, 300, 15, 0, 0, 0, 0, 1),
(103975, 28759, 571, 1, 1, 0, 0, 6111.06, -2022.33, 380.712, 4.0595, 300, 300, 15, 0, 0, 0, 0, 1),
(103976, 28759, 571, 1, 1, 0, 0, 6127.64, -2090.7, 267.271, 3.84361, 300, 300, 15, 0, 0, 0, 0, 1);
INSERT INTO `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_pvp_state`, `emote`, `moveflags`, `auras`) VALUES
(103941, 0, 50331648, 1, 0, 0, 0, NULL),
(103942, 0, 50331648, 1, 0, 429, 0, NULL),
(103943, 0, 50331648, 1, 0, 429, 0, NULL),
(103944, 0, 50331648, 1, 0, 0, 0, NULL),
(103945, 0, 50331648, 1, 0, 0, 0, NULL),
(103946, 0, 50331648, 1, 0, 0, 0, NULL),
(103947, 0, 50331648, 1, 0, 0, 0, NULL),
(103948, 0, 50331648, 1, 0, 0, 0, NULL),
(103949, 0, 50331648, 1, 0, 0, 0, NULL),
(103950, 0, 50331648, 1, 0, 0, 0, NULL),
(103951, 0, 50331648, 1, 0, 0, 0, NULL),
(103952, 0, 50331648, 1, 0, 0, 0, NULL),
(103953, 0, 50331648, 1, 0, 0, 0, NULL),
(103954, 0, 50331648, 1, 0, 429, 0, NULL),
(103955, 0, 50331648, 1, 0, 0, 0, NULL),
(103956, 0, 50331648, 1, 0, 429, 0, NULL),
(103958, 0, 50331648, 1, 0, 0, 0, NULL),
(103959, 0, 50331648, 1, 0, 0, 0, NULL),
(103960, 0, 50331648, 1, 0, 0, 0, NULL),
(103961, 0, 50331648, 1, 0, 0, 0, NULL),
(103962, 0, 50331648, 1, 0, 429, 0, NULL),
(103963, 0, 50331648, 1, 0, 0, 0, NULL),
(103964, 0, 50331648, 1, 0, 0, 0, NULL),
(103965, 0, 50331648, 1, 0, 0, 0, NULL),
(103967, 0, 50331648, 1, 0, 0, 0, NULL),
(103968, 0, 50331648, 1, 0, 0, 0, NULL),
(103969, 0, 50331648, 1, 0, 429, 0, NULL),
(103970, 0, 50331648, 1, 0, 0, 0, NULL),
(103971, 0, 50331648, 1, 0, 429, 0, NULL),
(103972, 0, 50331648, 1, 0, 0, 0, NULL),
(103973, 0, 50331648, 1, 0, 429, 0, NULL),
(103974, 0, 50331648, 1, 0, 0, 0, NULL),
(103975, 0, 50331648, 1, 0, 0, 0, NULL),
(103976, 0, 50331648, 1, 0, 0, 0, NULL);
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id IN (28843));
DELETE FROM creature_movement WHERE id IN (SELECT guid FROM creature WHERE id IN (28843));
DELETE FROM creature WHERE id IN (28843);
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(136457, 28843, 571, 1, 1, 0, 0, 6143.39, -2249.44, 235.908, 0.733605, 300, 300, 5, 0, 0, 0, 0, 1),
(119298, 28843, 571, 1, 1, 0, 0, 5887.1, -2230.32, 240.222, 3.34607, 300, 300, 5, 0, 0, 0, 0, 1),
(119299, 28843, 571, 1, 1, 0, 0, 6086.94, -2197.14, 235.066, 4.3089, 300, 300, 5, 0, 0, 0, 0, 1),
(136459, 28843, 571, 1, 1, 0, 0, 6080.48, -2252.07, 239.006, 6.19533, 300, 300, 5, 0, 0, 0, 0, 1),
(136450, 28843, 571, 1, 1, 0, 0, 6149.16, -2190.81, 241.479, 2.2217, 300, 300, 5, 0, 0, 0, 0, 1),
(136451, 28843, 571, 1, 1, 0, 0, 5883.59, -2153.87, 241.395, 1.21425, 300, 300, 5, 0, 0, 0, 0, 1),
(136456, 28843, 571, 1, 1, 0, 0, 5969.43, -2212.61, 234.997, 0.184202, 300, 300, 5, 0, 0, 0, 0, 1),
(136455, 28843, 571, 1, 1, 0, 0, 6210.26, -2145.17, 235.897, 0.241508, 300, 300, 5, 0, 0, 0, 0, 1),
(136454, 28843, 571, 1, 1, 0, 0, 6245.21, -2196.56, 235.639, 4.54138, 300, 300, 5, 0, 0, 0, 0, 1),
(136453, 28843, 571, 1, 1, 0, 0, 6285.78, -2234.23, 237.534, 2.44335, 300, 300, 5, 0, 0, 0, 0, 1),
(136452, 28843, 571, 1, 1, 0, 0, 6241.5, -2124.51, 235.734, 4.7985, 300, 300, 5, 0, 0, 0, 0, 1),
(136460, 28843, 571, 1, 1, 0, 0, 6346.9, -2234.3, 268.454, 2.65572, 300, 300, 5, 0, 0, 0, 0, 1),
(136461, 28843, 571, 1, 1, 0, 0, 6334.86, -2239.45, 265.404, 4.7283, 300, 300, 5, 0, 0, 0, 0, 1),
(136462, 28843, 571, 1, 1, 0, 0, 6210.79, -2244.91, 238.311, 6.07255, 300, 300, 5, 0, 0, 0, 0, 1),
(136463, 28843, 571, 1, 1, 0, 0, 6193.58, -2182.9, 235.417, 4.3089, 300, 300, 5, 0, 0, 0, 0, 1),
(136464, 28843, 571, 1, 1, 0, 0, 6331.59, -2233.92, 262.589, 5.91138, 300, 300, 5, 0, 0, 0, 0, 1),
(136465, 28843, 571, 1, 1, 0, 0, 6350.36, -2236.56, 271.088, 2.56476, 300, 300, 0, 0, 0, 0, 0, 0),
(136466, 28843, 571, 1, 1, 0, 0, 6314.18, -2194.45, 246.303, 2.53761, 300, 300, 5, 0, 0, 0, 0, 1),
(136447, 28843, 571, 1, 1, 0, 0, 6378.03, -2219.97, 273.53, 3.85718, 300, 300, 0, 0, 0, 0, 0, 0);
UPDATE `creature` SET `position_z` = '423.25' WHERE `guid` =104078;
UPDATE `creature` SET `position_z` = '423.266' WHERE `guid` =104079;
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id IN (28745));
DELETE FROM creature_movement WHERE id IN (SELECT guid FROM creature WHERE id IN (28745));
DELETE FROM creature WHERE id IN (28745);
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(4755, 28745, 571, 1, 1, 0, 0, 6178.21, -2159.62, 236.212, 4.508, 300, 300, 0, 0, 0, 0, 0, 0),
(4791, 28745, 571, 1, 1, 0, 0, 6230.51, -2162.48, 236.292, 3.8779, 300, 300, 0, 0, 0, 0, 0, 0),
(49416, 28745, 571, 1, 1, 0, 0, 6231.98, -2160.44, 236.292, 0.949701, 300, 300, 0, 0, 0, 0, 0, 0);

UPDATE `creature` SET `position_x` = -4925.538, `position_y` = 824.91534, `position_z` = 247.46948, `orientation` = 1.731216192245483398, `spawndist` = 3, `MovementType` = 1 WHERE `id` = 6231;
DELETE FROM `creature` WHERE `id` = 7732;
UPDATE `creature_template` SET `SpeedWalk` = (1 / 2.5), `SpeedRun` = (2 / 7) WHERE `entry` = 7732;
UPDATE `creature_template` SET `Detection` = 70 WHERE `entry` = 12397;
UPDATE `creature_template` SET `SchoolImmuneMask` = 4 WHERE `entry` IN (7044,7045,7046,7846,8976,14388,14601,11981,11983);
REPLACE INTO `creature_movement_template` (`entry`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`)
SELECT 3531 as `entry`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId` FROM `creature_movement_template` WHERE `entry` = 3530;

DELETE FROM `dbscripts_on_creature_movement` WHERE id = '725';
DELETE FROM `dbscripts_on_creature_movement` WHERE id = '727';

REPLACE INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_broadcast_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `box_broadcast_text`, `condition_id`) VALUES
(9731, 0, 0, 'I am ready to accompany you, Drakuru.', 29182, 1, 1, -1, 0, 973100, 0, 0, '', 0, 310);
DELETE FROM gossip_menu_option WHERE menu_id=9731 AND id=6;
UPDATE quest_template SET RequiredCondition = 173 WHERE entry = 12663;
UPDATE quest_template SET RequiredCondition = 195 WHERE entry = 12664;

DELETE FROM dbscripts_on_go_template_use WHERE id = 188022;
DELETE FROM dbscripts_on_go_template_use WHERE id BETWEEN 188024 AND 188044;
INSERT INTO dbscripts_on_go_template_use (id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, datafloat, x, y, z, o, speed, condition_id, comments) VALUES
(188022,100,0,31,25850,20,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'search for 25850'),
(188022,1000,0,28,0,0,0,25850,20,7,0,0,0,0,0,0,0,0,0,0,0,'STATE_STAND'),
(188022,2500,0,36,0,0,0,25850,20,3,0,0,0,0,0,0,0,0,0,0,0,'buddy face Player'),
(188022,3000,0,0,0,0,0,25850,20,7,25046,0,0,0,0,0,0,0,0,0,0,''),
(188022,3001,0,15,46200,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,'q. credit'),
(188022,5000,0,3,0,700,0,25850,20,7,0,0,0,0,0,3299.35,5363.28,41.8167,3.66393,0,0,'move'),
(188022,5001,0,18,5000,0,0,25850,20,7,0,0,0,0,0,0,0,0,0,0,0,'desp'),
(188024,100,0,31,25850,20,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'search for 25850'),
(188024,1000,0,28,0,0,0,25850,20,7,0,0,0,0,0,0,0,0,0,0,0,'STATE_STAND'),
(188024,2500,0,36,0,0,0,25850,20,3,0,0,0,0,0,0,0,0,0,0,0,'buddy face Player'),
(188024,3000,0,0,0,0,0,25850,20,7,25046,0,0,0,0,0,0,0,0,0,0,''),
(188024,3001,0,15,46200,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,'q. credit'),
(188024,5000,0,3,0,700,0,25850,20,7,0,0,0,0,0,3299.35,5363.28,41.8167,3.66393,0,0,'move'),
(188024,5001,0,18,5000,0,0,25850,20,7,0,0,0,0,0,0,0,0,0,0,0,'desp'),
(188025,100,0,31,25850,20,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'search for 25850'),
(188025,1000,0,28,0,0,0,25850,20,7,0,0,0,0,0,0,0,0,0,0,0,'STATE_STAND'),
(188025,2500,0,36,0,0,0,25850,20,3,0,0,0,0,0,0,0,0,0,0,0,'buddy face Player'),
(188025,3000,0,0,0,0,0,25850,20,7,25046,0,0,0,0,0,0,0,0,0,0,''),
(188025,3001,0,15,46200,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,'q. credit'),
(188025,5000,0,3,0,700,0,25850,20,7,0,0,0,0,0,3362.58,5456,60.0403,5.69271,0,0,'move'),
(188025,5001,0,18,5000,0,0,25850,20,7,0,0,0,0,0,0,0,0,0,0,0,'desp'),
(188026,100,0,31,25850,20,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'search for 25850'),
(188026,1000,0,28,0,0,0,25850,20,7,0,0,0,0,0,0,0,0,0,0,0,'STATE_STAND'),
(188026,2500,0,36,0,0,0,25850,20,3,0,0,0,0,0,0,0,0,0,0,0,'buddy face Player'),
(188026,3000,0,0,0,0,0,25850,20,7,25046,0,0,0,0,0,0,0,0,0,0,''),
(188026,3001,0,15,46200,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,'q. credit'),
(188026,5000,0,3,0,700,0,25850,20,7,0,0,0,0,0,3446.66,5462.18,61.6627,6.1993,0,0,'move'),
(188026,5001,0,18,5000,0,0,25850,20,7,0,0,0,0,0,0,0,0,0,0,0,'desp'),
(188027,100,0,31,25850,20,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'search for 25850'),
(188027,1000,0,28,0,0,0,25850,20,7,0,0,0,0,0,0,0,0,0,0,0,'STATE_STAND'),
(188027,2500,0,36,0,0,0,25850,20,3,0,0,0,0,0,0,0,0,0,0,0,'buddy face Player'),
(188027,3000,0,0,0,0,0,25850,20,7,25046,0,0,0,0,0,0,0,0,0,0,''),
(188027,3001,0,15,46200,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,'q. credit'),
(188027,5000,0,3,0,700,0,25850,20,7,0,0,0,0,0,3419.23,5416.17,54.9207,1.35731,0,0,'move'),
(188027,5001,0,18,5000,0,0,25850,20,7,0,0,0,0,0,0,0,0,0,0,0,'desp'),
(188028,100,0,31,25850,20,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'search for 25850'),
(188028,1000,0,28,0,0,0,25850,20,7,0,0,0,0,0,0,0,0,0,0,0,'STATE_STAND'),
(188028,2500,0,36,0,0,0,25850,20,3,0,0,0,0,0,0,0,0,0,0,0,'buddy face Player'),
(188028,3000,0,0,0,0,0,25850,20,7,25046,0,0,0,0,0,0,0,0,0,0,''),
(188028,3001,0,15,46200,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,'q. credit'),
(188028,5000,0,3,0,700,0,25850,20,7,0,0,0,0,0,3178.18,5411.58,57.057,5.59453,0,0,'move'),
(188028,5001,0,18,5000,0,0,25850,20,7,0,0,0,0,0,0,0,0,0,0,0,'desp'),
(188029,100,0,31,25850,20,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'search for 25850'),
(188029,1000,0,28,0,0,0,25850,20,7,0,0,0,0,0,0,0,0,0,0,0,'STATE_STAND'),
(188029,2500,0,36,0,0,0,25850,20,3,0,0,0,0,0,0,0,0,0,0,0,'buddy face Player'),
(188029,3000,0,0,0,0,0,25850,20,7,25046,0,0,0,0,0,0,0,0,0,0,''),
(188029,3001,0,15,46200,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,'q. credit'),
(188029,5000,0,3,0,700,0,25850,20,7,0,0,0,0,0,3309.39,5270.96,37.4582,2.87312,0,0,'move'),
(188029,5001,0,18,5000,0,0,25850,20,7,0,0,0,0,0,0,0,0,0,0,0,'desp'),
(188030,100,0,31,25850,20,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'search for 25850'),
(188030,1000,0,28,0,0,0,25850,20,7,0,0,0,0,0,0,0,0,0,0,0,'STATE_STAND'),
(188030,2500,0,36,0,0,0,25850,20,3,0,0,0,0,0,0,0,0,0,0,0,'buddy face Player'),
(188030,3000,0,0,0,0,0,25850,20,7,25046,0,0,0,0,0,0,0,0,0,0,''),
(188030,3001,0,15,46200,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,'q. credit'),
(188030,5000,0,3,0,700,0,25850,20,7,0,0,0,0,0,3454.62,5226.88,30.3313,5.59452,0,0,'move'),
(188030,5001,0,18,5000,0,0,25850,20,7,0,0,0,0,0,0,0,0,0,0,0,'desp'),
(188031,100,0,31,25850,20,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'search for 25850'),
(188031,1000,0,28,0,0,0,25850,20,7,0,0,0,0,0,0,0,0,0,0,0,'STATE_STAND'),
(188031,2500,0,36,0,0,0,25850,20,3,0,0,0,0,0,0,0,0,0,0,0,'buddy face Player'),
(188031,3000,0,0,0,0,0,25850,20,7,25046,0,0,0,0,0,0,0,0,0,0,''),
(188031,3001,0,15,46200,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,'q. credit'),
(188031,5000,0,3,0,700,0,25850,20,7,0,0,0,0,0,3473.22,5307.9,40.8232,6.09324,0,0,'move'),
(188031,5001,0,18,5000,0,0,25850,20,7,0,0,0,0,0,0,0,0,0,0,0,'desp'),
(188032,100,0,31,25850,20,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'search for 25850'),
(188032,1000,0,28,0,0,0,25850,20,7,0,0,0,0,0,0,0,0,0,0,0,'STATE_STAND'),
(188032,2500,0,36,0,0,0,25850,20,3,0,0,0,0,0,0,0,0,0,0,0,'buddy face Player'),
(188032,3000,0,0,0,0,0,25850,20,7,25046,0,0,0,0,0,0,0,0,0,0,''),
(188032,3001,0,15,46200,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,'q. credit'),
(188032,5000,0,3,0,700,0,25850,20,7,0,0,0,0,0,3497.57,5200.39,26.4596,4.26326,0,0,'move'),
(188032,5001,0,18,5000,0,0,25850,20,7,0,0,0,0,0,0,0,0,0,0,0,'desp'),
(188033,100,0,31,25850,20,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'search for 25850'),
(188033,1000,0,28,0,0,0,25850,20,7,0,0,0,0,0,0,0,0,0,0,0,'STATE_STAND'),
(188033,2500,0,36,0,0,0,25850,20,3,0,0,0,0,0,0,0,0,0,0,0,'buddy face Player'),
(188033,3000,0,0,0,0,0,25850,20,7,25046,0,0,0,0,0,0,0,0,0,0,''),
(188033,3001,0,15,46200,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,'q. credit'),
(188033,5000,0,3,0,700,0,25850,20,7,0,0,0,0,0,3580.01,5312.17,25.1742,5.73195,0,0,'move'),
(188033,5001,0,18,5000,0,0,25850,20,7,0,0,0,0,0,0,0,0,0,0,0,'desp'),
(188034,100,0,31,25850,20,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'search for 25850'),
(188034,1000,0,28,0,0,0,25850,20,7,0,0,0,0,0,0,0,0,0,0,0,'STATE_STAND'),
(188034,2500,0,36,0,0,0,25850,20,3,0,0,0,0,0,0,0,0,0,0,0,'buddy face Player'),
(188034,3000,0,0,0,0,0,25850,20,7,25046,0,0,0,0,0,0,0,0,0,0,''),
(188034,3001,0,15,46200,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,'q. credit'),
(188034,5000,0,3,0,700,0,25850,20,7,0,0,0,0,0,3584.18,5186.49,27.8103,3.12836,0,0,'move'),
(188034,5001,0,18,5000,0,0,25850,20,7,0,0,0,0,0,0,0,0,0,0,0,'desp'),
(188035,100,0,31,25850,20,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'search for 25850'),
(188035,1000,0,28,0,0,0,25850,20,7,0,0,0,0,0,0,0,0,0,0,0,'STATE_STAND'),
(188035,2500,0,36,0,0,0,25850,20,3,0,0,0,0,0,0,0,0,0,0,0,'buddy face Player'),
(188035,3000,0,0,0,0,0,25850,20,7,25046,0,0,0,0,0,0,0,0,0,0,''),
(188035,3001,0,15,46200,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,'q. credit'),
(188035,5000,0,3,0,700,0,25850,20,7,0,0,0,0,0,3612,5235.54,26.2156,3.77631,0,0,'move'),
(188035,5001,0,18,5000,0,0,25850,20,7,0,0,0,0,0,0,0,0,0,0,0,'desp'),
(188036,100,0,31,25850,20,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'search for 25850'),
(188036,1000,0,28,0,0,0,25850,20,7,0,0,0,0,0,0,0,0,0,0,0,'STATE_STAND'),
(188037,2500,0,36,0,0,0,25850,20,3,0,0,0,0,0,0,0,0,0,0,0,'buddy face Player'),
(188036,3000,0,0,0,0,0,25850,20,7,25046,0,0,0,0,0,0,0,0,0,0,''),
(188036,3001,0,15,46200,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,'q. credit'),
(188036,5000,0,3,0,700,0,25850,20,7,0,0,0,0,0,3713.86,5141.2,26.4649,6.0791,0,0,'move'),
(188036,5001,0,18,5000,0,0,25850,20,7,0,0,0,0,0,0,0,0,0,0,0,'desp'),
(188037,100,0,31,25850,20,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'search for 25850'),
(188037,1000,0,28,0,0,0,25850,20,7,0,0,0,0,0,0,0,0,0,0,0,'STATE_STAND'),
(188038,2500,0,36,0,0,0,25850,20,3,0,0,0,0,0,0,0,0,0,0,0,'buddy face Player'),
(188037,3000,0,0,0,0,0,25850,20,7,25046,0,0,0,0,0,0,0,0,0,0,''),
(188037,3001,0,15,46200,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,'q. credit'),
(188037,5000,0,3,0,700,0,25850,20,7,0,0,0,0,0,3697.41,5369.45,35.9247,1.67455,0,0,'move'),
(188037,5001,0,18,5000,0,0,25850,20,7,0,0,0,0,0,0,0,0,0,0,0,'desp'),
(188038,100,0,31,25850,20,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'search for 25850'),
(188038,1000,0,28,0,0,0,25850,20,7,0,0,0,0,0,0,0,0,0,0,0,'STATE_STAND'),
(188039,2500,0,36,0,0,0,25850,20,3,0,0,0,0,0,0,0,0,0,0,0,'buddy face Player'),
(188038,3000,0,0,0,0,0,25850,20,7,25046,0,0,0,0,0,0,0,0,0,0,''),
(188038,3001,0,15,46200,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,'q. credit'),
(188038,5000,0,3,0,700,0,25850,20,7,0,0,0,0,0,3759.02,5221.55,25.32,4.6726,0,0,'move'),
(188038,5001,0,18,5000,0,0,25850,20,7,0,0,0,0,0,0,0,0,0,0,0,'desp'),
(188039,100,0,31,25850,20,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'search for 25850'),
(188039,1000,0,28,0,0,0,25850,20,7,0,0,0,0,0,0,0,0,0,0,0,'STATE_STAND'),
(188039,2500,0,36,0,0,0,25850,20,3,0,0,0,0,0,0,0,0,0,0,0,'buddy face Player'),
(188039,3000,0,0,0,0,0,25850,20,7,25046,0,0,0,0,0,0,0,0,0,0,''),
(188039,3001,0,15,46200,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,'q. credit'),
(188039,5000,0,3,0,700,0,25850,20,7,0,0,0,0,0,3849.19,5355.75,26.2609,6.09634,0,0,'move'),
(188039,5001,0,18,5000,0,0,25850,20,7,0,0,0,0,0,0,0,0,0,0,0,'desp'),
(188040,100,0,31,25850,20,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'search for 25850'),
(188040,1000,0,28,0,0,0,25850,20,7,0,0,0,0,0,0,0,0,0,0,0,'STATE_STAND'),
(188040,2500,0,36,0,0,0,25850,20,3,0,0,0,0,0,0,0,0,0,0,0,'buddy face Player'),
(188040,3000,0,0,0,0,0,25850,20,7,25046,0,0,0,0,0,0,0,0,0,0,''),
(188040,3001,0,15,46200,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,'q. credit'),
(188040,5000,0,3,0,700,0,25850,20,7,0,0,0,0,0,3711.01,5472.49,38.0436,1.77665,0,0,'move'),
(188040,5001,0,18,5000,0,0,25850,20,7,0,0,0,0,0,0,0,0,0,0,0,'desp'),
(188041,100,0,31,25850,20,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'search for 25850'),
(188041,1000,0,28,0,0,0,25850,20,7,0,0,0,0,0,0,0,0,0,0,0,'STATE_STAND'),
(188041,2500,0,36,0,0,0,25850,20,3,0,0,0,0,0,0,0,0,0,0,0,'buddy face Player'),
(188041,3000,0,0,0,0,0,25850,20,7,25046,0,0,0,0,0,0,0,0,0,0,''),
(188041,3001,0,15,46200,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,'q. credit'),
(188041,5000,0,3,0,700,0,25850,20,7,0,0,0,0,0,3805.27,5536.42,41.6955,1.56066,0,0,'move'),
(188041,5001,0,18,5000,0,0,25850,20,7,0,0,0,0,0,0,0,0,0,0,0,'desp'),
(188042,100,0,31,25850,20,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'search for 25850'),
(188042,1000,0,28,0,0,0,25850,20,7,0,0,0,0,0,0,0,0,0,0,0,'STATE_STAND'),
(188042,2500,0,36,0,0,0,25850,20,3,0,0,0,0,0,0,0,0,0,0,0,'buddy face Player'),
(188042,3000,0,0,0,0,0,25850,20,7,25046,0,0,0,0,0,0,0,0,0,0,''),
(188042,3001,0,15,46200,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,'q. credit'),
(188042,5000,0,3,0,700,0,25850,20,7,0,0,0,0,0,3899.58,5375.65,24.2348,3.46918,0,0,'move'),
(188042,5001,0,18,5000,0,0,25850,20,7,0,0,0,0,0,0,0,0,0,0,0,'desp'),
(188043,100,0,31,25850,20,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'search for 25850'),
(188043,1000,0,28,0,0,0,25850,20,7,0,0,0,0,0,0,0,0,0,0,0,'STATE_STAND'),
(188043,2500,0,36,0,0,0,25850,20,3,0,0,0,0,0,0,0,0,0,0,0,'buddy face Player'),
(188043,3000,0,0,0,0,0,25850,20,7,25046,0,0,0,0,0,0,0,0,0,0,''),
(188043,3001,0,15,46200,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,'q. credit'),
(188043,5000,0,3,0,700,0,25850,20,7,0,0,0,0,0,4062.82,5402.11,28.7337,5.80181,0,0,'move'),
(188043,5001,0,18,5000,0,0,25850,20,7,0,0,0,0,0,0,0,0,0,0,0,'desp'),
(188044,100,0,31,25850,20,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'search for 25850'),
(188044,1000,0,28,0,0,0,25850,20,7,0,0,0,0,0,0,0,0,0,0,0,'STATE_STAND'),
(188044,2500,0,36,0,0,0,25850,20,3,0,0,0,0,0,0,0,0,0,0,0,'buddy face Player'),
(188044,3000,0,0,0,0,0,25850,20,7,25046,0,0,0,0,0,0,0,0,0,0,''),
(188044,3001,0,15,46200,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,'q. credit'),
(188044,5000,0,3,0,700,0,25850,20,7,0,0,0,0,0,4055.24,5549.79,39.9905,1.5803,0,0,'move'),
(188044,5001,0,18,5000,0,0,25850,20,7,0,0,0,0,0,0,0,0,0,0,0,'desp');
UPDATE gameobject_template SET data2 = 0 WHERE entry = 188022;
UPDATE gameobject_template SET data2 = 0 WHERE entry BETWEEN 188024 AND 188044;
DELETE FROM dbscripts_on_relay WHERE id BETWEEN 20612 AND 20633;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20612,100,11,0,0,0,188022,10,7,0,0,0,0,0,0,0,0,'Part of Trapped Mammoth Calf 25850: lock object'),
(20613,100,11,0,0,0,188024,10,7,0,0,0,0,0,0,0,0,'Part of Trapped Mammoth Calf 25850: lock object'),
(20614,100,11,0,0,0,188025,10,7,0,0,0,0,0,0,0,0,'Part of Trapped Mammoth Calf 25850: lock object'),
(20615,100,11,0,0,0,188026,10,7,0,0,0,0,0,0,0,0,'Part of Trapped Mammoth Calf 25850: lock object'),
(20616,100,11,0,0,0,188027,10,7,0,0,0,0,0,0,0,0,'Part of Trapped Mammoth Calf 25850: lock object'),
(20617,100,11,0,0,0,188028,10,7,0,0,0,0,0,0,0,0,'Part of Trapped Mammoth Calf 25850: lock object'),
(20618,100,11,0,0,0,188029,10,7,0,0,0,0,0,0,0,0,'Part of Trapped Mammoth Calf 25850: lock object'),
(20619,100,11,0,0,0,188030,10,7,0,0,0,0,0,0,0,0,'Part of Trapped Mammoth Calf 25850: lock object'),
(20620,100,11,0,0,0,188031,10,7,0,0,0,0,0,0,0,0,'Part of Trapped Mammoth Calf 25850: lock object'),
(20621,100,11,0,0,0,188032,10,7,0,0,0,0,0,0,0,0,'Part of Trapped Mammoth Calf 25850: lock object'),
(20622,100,11,0,0,0,188033,10,7,0,0,0,0,0,0,0,0,'Part of Trapped Mammoth Calf 25850: lock object'),
(20623,100,11,0,0,0,188034,10,7,0,0,0,0,0,0,0,0,'Part of Trapped Mammoth Calf 25850: lock object'),
(20624,100,11,0,0,0,188035,10,7,0,0,0,0,0,0,0,0,'Part of Trapped Mammoth Calf 25850: lock object'),
(20625,100,11,0,0,0,188036,10,7,0,0,0,0,0,0,0,0,'Part of Trapped Mammoth Calf 25850: lock object'),
(20626,100,11,0,0,0,188037,10,7,0,0,0,0,0,0,0,0,'Part of Trapped Mammoth Calf 25850: lock object'),
(20627,100,11,0,0,0,188038,10,7,0,0,0,0,0,0,0,0,'Part of Trapped Mammoth Calf 25850: lock object'),
(20628,100,11,0,0,0,188039,10,7,0,0,0,0,0,0,0,0,'Part of Trapped Mammoth Calf 25850: lock object'),
(20629,100,11,0,0,0,188040,10,7,0,0,0,0,0,0,0,0,'Part of Trapped Mammoth Calf 25850: lock object'),
(20630,100,11,0,0,0,188041,10,7,0,0,0,0,0,0,0,0,'Part of Trapped Mammoth Calf 25850: lock object'),
(20631,100,11,0,0,0,188042,10,7,0,0,0,0,0,0,0,0,'Part of Trapped Mammoth Calf 25850: lock object'),
(20632,100,11,0,0,0,188043,10,7,0,0,0,0,0,0,0,0,'Part of Trapped Mammoth Calf 25850: lock object'),
(20633,100,11,0,0,0,188044,10,7,0,0,0,0,0,0,0,0,'Part of Trapped Mammoth Calf 25850: lock object');
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(94405, 25850, 571, 1, 1, 0, 0, 3157.15, 5430.63, 56.9338, 1.35731, 120, 120, 0, 0, 0, 0, 0, 0),
(94406, 25850, 571, 1, 1, 0, 0, 3249.78, 5392.41, 48.9272, 5.41052, 120, 120, 0, 0, 0, 0, 0, 0),
(118151, 25850, 571, 1, 1, 0, 0, 3326.09, 5376.9, 43.0768, 1.51844, 120, 120, 0, 0, 0, 0, 0, 0),
(85973, 25850, 571, 1, 1, 0, 0, 3333.38, 5265.18, 35.5353, 4.46355, 120, 120, 0, 0, 0, 0, 0, 0),
(94407, 25850, 571, 1, 1, 0, 0, 3340.77, 5470.43, 59.9694, 2.47837, 120, 120, 0, 0, 0, 0, 0, 0),
(94408, 25850, 571, 1, 1, 0, 0, 3418.56, 5462.99, 64.1883, 5.68977, 120, 120, 0, 0, 0, 0, 0, 0),
(118152, 25850, 571, 1, 1, 0, 0, 3419.93, 5385.92, 48.2596, 2.54818, 120, 120, 0, 0, 0, 0, 0, 0),
(118158, 25850, 571, 1, 1, 0, 0, 3426.66, 5249.49, 35.1628, 6.02139, 120, 120, 0, 0, 0, 0, 0, 0),
(118156, 25850, 571, 1, 1, 0, 0, 3443.23, 5312.54, 40.6566, 3.7001, 120, 120, 0, 0, 0, 0, 0, 0),
(118157, 25850, 571, 1, 1, 0, 0, 3510.48, 5223.81, 31.5286, 5.16617, 120, 120, 0, 0, 0, 0, 0, 0),
(94409,  25850, 571, 1, 1, 0, 0, 3553.19, 5324.67, 31.3827, 1.25664, 120, 120, 0, 0, 0, 0, 0, 0),
(126479, 25850, 571, 1, 1, 0, 0, 3610.09, 5186.11, 28.2085, 5.044, 120, 120, 0, 0, 0, 0, 0, 0),
(118154, 25850, 571, 1, 1, 0, 0, 3636.49, 5254.08, 34.1138, 4.81711, 120, 120, 0, 0, 0, 0, 0, 0),
(126480, 25850, 571, 1, 1, 0, 0, 3690.02, 5151.66, 29.7981, 2.67035, 120, 120, 0, 0, 0, 0, 0, 0),
(118155, 25850, 571, 1, 1, 0, 0, 3700.09, 5342.13, 36.0727, 0.578173, 120, 120, 0, 0, 0, 0, 0, 0),
(94599,  25850, 571, 1, 1, 0, 0, 3715.34, 5449.55, 40.7221, 3.50811, 120, 120, 0, 0, 0, 0, 0, 0),
(126481, 25850, 571, 1, 1, 0, 0, 3758.89, 5252.69, 32.3871, 4.39823, 120, 120, 0, 0, 0, 0, 0, 0),
(118153, 25850, 571, 1, 1, 0, 0, 3805.92, 5502.85, 41.4027, 2.32129, 120, 120, 0, 0, 0, 0, 0, 0),
(126482, 25850, 571, 1, 1, 0, 0, 3824.53, 5360.57, 26.7899, 2.74017, 120, 120, 0, 0, 0, 0, 0, 0),
(126483, 25850, 571, 1, 1, 0, 0, 3926.6, 5384.66, 26.7945, 4.81711, 120, 120, 0, 0, 0, 0, 0, 0),
(126496, 25850, 571, 1, 1, 0, 0, 4037.54, 5415.36, 31.2491, 2.23402, 120, 120, 0, 0, 0, 0, 0, 0),
(126568, 25850, 571, 1, 1, 0, 0, 4056.84, 5526.18, 35.9343, 1.48353, 120, 120, 0, 0, 0, 0, 0, 0);
DELETE FROM creature_spawn_data WHERE guid IN (94406,118151,94407,94408,118156,118157,126479,126483,511914,126482,118155,118152,126480,126481,118158,85973,126496,94409,118153,118154,94599,94405);
INSERT INTO creature_spawn_data(Guid,Id) VALUES
(94406,20009),(118151,20010),(94407,20011),(94408,20012),(118156,20013),(118157,20014),(126479,20015),(126483,20016),(511914,20017),(126482,20018),(118155,20019),(118152,20020),
(126480,20021),(126481,20022),(118158,20023),(85973,20024),(126496,20025),(94409,20026),(118153,20027),(118154,20028),(94599,20029),(94405,20030);
DELETE FROM creature_spawn_data_template WHERE entry BETWEEN 20009 AND 20030;
INSERT INTO creature_spawn_data_template (Entry, RelayId) VALUES
(20009, 20612),(20010, 20613),(20011, 20614),(20012, 20615),(20013, 20621),(20014, 20622),(20015, 20624),(20016, 20632),(20017, 20620),(20018, 20631),(20019, 20629),(20020, 20616),
(20021, 20626),(20022, 20630),(20023, 20619),(20024, 20618),(20025, 20633),(20026, 20623),(20027, 20628),(20028, 20625),(20029, 20627),(20030, 20617);

UPDATE `creature_template` SET `ExtraFlags` = `ExtraFlags`|2 WHERE `entry` IN (16196,16183);
UPDATE `npc_vendor` SET `slot` = 1 WHERE `entry` = 16224 AND `item` = 5771;
UPDATE `npc_vendor` SET `slot` = 2 WHERE `entry` = 16224 AND `item` = 954;
UPDATE `npc_vendor` SET `slot` = 3 WHERE `entry` = 16224 AND `item` = 955;
UPDATE `npc_vendor` SET `slot` = 4 WHERE `entry` = 16224 AND `item` = 1180;
UPDATE `npc_vendor` SET `slot` = 5 WHERE `entry` = 16224 AND `item` = 1181;
UPDATE `npc_vendor` SET `slot` = 6 WHERE `entry` = 16224 AND `item` = 3012;
UPDATE `npc_vendor` SET `slot` = 7 WHERE `entry` = 16224 AND `item` = 3013;
UPDATE `npc_vendor` SET `slot` = 8 WHERE `entry` = 16224 AND `item` = 2770;
UPDATE `npc_vendor` SET `slot` = 9 WHERE `entry` = 16224 AND `item` = 2771;
UPDATE `npc_vendor` SET `slot` = 10 WHERE `entry` = 16224 AND `item` = 2775;
UPDATE `npc_vendor` SET `slot` = 11 WHERE `entry` = 16224 AND `item` = 765;
UPDATE `npc_vendor` SET `slot` = 12 WHERE `entry` = 16224 AND `item` = 785;
UPDATE `npc_vendor` SET `slot` = 13 WHERE `entry` = 16224 AND `item` = 2447;
UPDATE `npc_vendor` SET `slot` = 14 WHERE `entry` = 16224 AND `item` = 2449;
UPDATE `npc_vendor` SET `slot` = 15 WHERE `entry` = 16224 AND `item` = 2453;
UPDATE `npc_vendor` SET `slot` = 16 WHERE `entry` = 16224 AND `item` = 6530;
UPDATE `npc_vendor` SET `slot` = 17 WHERE `entry` = 16224 AND `item` = 2321;
UPDATE `npc_vendor` SET `slot` = 18 WHERE `entry` = 16224 AND `item` = 2605;
UPDATE `npc_vendor` SET `slot` = 19 WHERE `entry` = 16224 AND `item` = 2692;
UPDATE `npc_vendor` SET `slot` = 20 WHERE `entry` = 16224 AND `item` = 20815;
UPDATE `npc_vendor` SET `slot` = 21 WHERE `entry` = 16224 AND `item` = 20824;
UPDATE `npc_vendor` SET `slot` = 1 WHERE `entry` = 16253 AND `item` = 22647;
UPDATE `npc_vendor` SET `slot` = 2 WHERE `entry` = 16253 AND `item` = 27687;
UPDATE `npc_vendor` SET `slot` = 11 WHERE `entry` = 16528 AND `item` = 28164;
UPDATE `npc_vendor` SET `slot` = 1 WHERE `entry` = 16528 AND `item` = 22991;
UPDATE `npc_vendor` SET `slot` = 2 WHERE `entry` = 16528 AND `item` = 22992;
UPDATE `npc_vendor` SET `slot` = 3 WHERE `entry` = 16528 AND `item` = 22993;
UPDATE `npc_vendor` SET `slot` = 8 WHERE `entry` = 16528 AND `item` = 28155;
UPDATE `npc_vendor` SET `slot` = 9 WHERE `entry` = 16528 AND `item` = 28158;
UPDATE `npc_vendor` SET `slot` = 10 WHERE `entry` = 16528 AND `item` = 28162;
UPDATE `npc_vendor` SET `slot` = 4 WHERE `entry` = 16528 AND `item` = 22986;
UPDATE `npc_vendor` SET `slot` = 5 WHERE `entry` = 16528 AND `item` = 22987;
UPDATE `npc_vendor` SET `slot` = 6 WHERE `entry` = 16528 AND `item` = 22985;
UPDATE `npc_vendor` SET `slot` = 7 WHERE `entry` = 16528 AND `item` = 22990;

UPDATE `creature_template` SET `UnitFlags`='32832', `SpeedWalk` = 1 WHERE `entry`='3652';
UPDATE `creature_template` SET `MechanicImmuneMask`='0' WHERE `entry`='3655';

UPDATE `creature_loot_template` SET `mincountOrRef` = 1, `maxcount` = 1 WHERE `item` IN (2287,1179,4605);

UPDATE `creature` SET `spawndist` = 0, `MovementType` = 2, `position_x` = 7643.588, `position_y` = -6804.5483, `position_z` = 79.20106 WHERE `id` = 16197;
DELETE FROM `creature_movement` WHERE `id` = 55965;
DELETE FROM `creature_movement_template` WHERE `Entry` = 16197;
INSERT INTO `creature_movement_template` (`Entry`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(16197, 1, 7643.588, -6804.5483, 79.20106, 100, 0, 0),
(16197, 2, 7642.384, -6811.481, 78.97755, 100, 0, 0),
(16197, 3, 7642.4478, -6819.272, 79.4463, 100, 0, 0);
UPDATE `npc_vendor` SET `slot` = 6 WHERE `entry` = 16274 AND `item` = 2504;
UPDATE `npc_vendor` SET `slot` = 7 WHERE `entry` = 16274 AND `item` = 2505;
UPDATE `npc_vendor` SET `slot` = 8 WHERE `entry` = 16274 AND `item` = 2506;
UPDATE `npc_vendor` SET `slot` = 9 WHERE `entry` = 16274 AND `item` = 2507;
UPDATE `npc_vendor` SET `slot` = 3 WHERE `entry` = 16274 AND `item` = 2512;
UPDATE `npc_vendor` SET `slot` = 4 WHERE `entry` = 16274 AND `item` = 2515;
UPDATE `npc_vendor` SET `slot` = 10 WHERE `entry` = 16274 AND `item` = 3026;
UPDATE `npc_vendor` SET `slot` = 11 WHERE `entry` = 16274 AND `item` = 3027;
UPDATE `npc_vendor` SET `slot` = 5 WHERE `entry` = 16274 AND `item` = 3030;
UPDATE `npc_vendor` SET `slot` = 1 WHERE `entry` = 16274 AND `item` = 5439;
UPDATE `npc_vendor` SET `slot` = 2 WHERE `entry` = 16274 AND `item` = 11362;
UPDATE `npc_vendor` SET `slot` = 12 WHERE `entry` = 16274 AND `item` = 5441;
UPDATE `npc_vendor` SET `slot` = 12 WHERE `entry` = 16274 AND `item` = 2509;
UPDATE `npc_vendor` SET `slot` = 12 WHERE `entry` = 16274 AND `item` = 2511;
UPDATE `npc_vendor` SET `slot` = 12 WHERE `entry` = 16274 AND `item` = 2516;
UPDATE `npc_vendor` SET `slot` = 12 WHERE `entry` = 16274 AND `item` = 2519;
UPDATE `npc_vendor` SET `slot` = 12 WHERE `entry` = 16274 AND `item` = 3023;
UPDATE `npc_vendor` SET `slot` = 12 WHERE `entry` = 16274 AND `item` = 3033;
UPDATE `npc_vendor` SET `slot` = 1 WHERE `entry` = 23748 AND `item` = 8952;
UPDATE `npc_vendor` SET `slot` = 2 WHERE `entry` = 23748 AND `item` = 27854;
UPDATE `npc_vendor` SET `slot` = 3 WHERE `entry` = 23748 AND `item` = 29451;
UPDATE `npc_vendor` SET `slot` = 4 WHERE `entry` = 23748 AND `item` = 8957;
UPDATE `npc_vendor` SET `slot` = 5 WHERE `entry` = 23748 AND `item` = 27858;
UPDATE `npc_vendor` SET `slot` = 6 WHERE `entry` = 23748 AND `item` = 29452;
UPDATE `npc_vendor` SET `slot` = 7 WHERE `entry` = 23748 AND `item` = 8766;
UPDATE `npc_vendor` SET `slot` = 8 WHERE `entry` = 23748 AND `item` = 28399;
UPDATE `npc_vendor` SET `slot` = 9 WHERE `entry` = 23748 AND `item` = 27860;
UPDATE `npc_vendor` SET `slot` = 10 WHERE `entry` = 23748 AND `item` = 8948;
UPDATE `npc_vendor` SET `slot` = 11 WHERE `entry` = 23748 AND `item` = 27859;
UPDATE `npc_vendor` SET `slot` = 12 WHERE `entry` = 23748 AND `item` = 29453;
UPDATE `npc_vendor` SET `slot` = 1 WHERE `entry` = 22266 AND `item` = 32685;
UPDATE `npc_vendor` SET `slot` = 2 WHERE `entry` = 22266 AND `item` = 32686;
UPDATE `npc_vendor` SET `slot` = 3 WHERE `entry` = 22266 AND `item` = 8952;
UPDATE `npc_vendor` SET `slot` = 4 WHERE `entry` = 22266 AND `item` = 27854;
UPDATE `npc_vendor` SET `slot` = 5 WHERE `entry` = 22266 AND `item` = 29451;
UPDATE `npc_vendor` SET `slot` = 6 WHERE `entry` = 22266 AND `item` = 8957;
UPDATE `npc_vendor` SET `slot` = 7 WHERE `entry` = 22266 AND `item` = 27858;
UPDATE `npc_vendor` SET `slot` = 8 WHERE `entry` = 22266 AND `item` = 29452;
UPDATE `npc_vendor` SET `slot` = 9 WHERE `entry` = 22266 AND `item` = 8953;
UPDATE `npc_vendor` SET `slot` = 10 WHERE `entry` = 22266 AND `item` = 27856;
UPDATE `npc_vendor` SET `slot` = 11 WHERE `entry` = 22266 AND `item` = 29450;
UPDATE `npc_vendor` SET `slot` = 12 WHERE `entry` = 22266 AND `item` = 8932;
UPDATE `npc_vendor` SET `slot` = 13 WHERE `entry` = 22266 AND `item` = 27857;
UPDATE `npc_vendor` SET `slot` = 14 WHERE `entry` = 22266 AND `item` = 29448;
UPDATE `npc_vendor` SET `slot` = 15 WHERE `entry` = 22266 AND `item` = 8948;
UPDATE `npc_vendor` SET `slot` = 16 WHERE `entry` = 22266 AND `item` = 27859;
UPDATE `npc_vendor` SET `slot` = 17 WHERE `entry` = 22266 AND `item` = 29453;
UPDATE `npc_vendor` SET `slot` = 1 WHERE `entry` = 19471 AND `item` = 8953;
UPDATE `npc_vendor` SET `slot` = 2 WHERE `entry` = 19471 AND `item` = 27856;
UPDATE `npc_vendor` SET `slot` = 3 WHERE `entry` = 19471 AND `item` = 29450;
UPDATE `npc_vendor` SET `slot` = 4 WHERE `entry` = 19471 AND `item` = 8948;
UPDATE `npc_vendor` SET `slot` = 5 WHERE `entry` = 19471 AND `item` = 27859;
UPDATE `npc_vendor` SET `slot` = 6 WHERE `entry` = 19471 AND `item` = 29453;
UPDATE `npc_vendor` SET `slot` = 1 WHERE `entry` = 17656 AND `item` = 117;
UPDATE `npc_vendor` SET `slot` = 2 WHERE `entry` = 17656 AND `item` = 2287;
UPDATE `npc_vendor` SET `slot` = 3 WHERE `entry` = 17656 AND `item` = 3770;
UPDATE `npc_vendor` SET `slot` = 4 WHERE `entry` = 17656 AND `item` = 3771;
UPDATE `npc_vendor` SET `slot` = 5 WHERE `entry` = 17656 AND `item` = 4599;
UPDATE `npc_vendor` SET `slot` = 6 WHERE `entry` = 17656 AND `item` = 8952;
UPDATE `npc_vendor` SET `slot` = 7 WHERE `entry` = 17656 AND `item` = 787;
UPDATE `npc_vendor` SET `slot` = 8 WHERE `entry` = 17656 AND `item` = 4592;
UPDATE `npc_vendor` SET `slot` = 9 WHERE `entry` = 17656 AND `item` = 4593;
UPDATE `npc_vendor` SET `slot` = 10 WHERE `entry` = 17656 AND `item` = 4594;
UPDATE `npc_vendor` SET `slot` = 11 WHERE `entry` = 17656 AND `item` = 21552;
UPDATE `npc_vendor` SET `slot` = 12 WHERE `entry` = 17656 AND `item` = 8957;
UPDATE `npc_vendor` SET `slot` = 13 WHERE `entry` = 17656 AND `item` = 4604;
UPDATE `npc_vendor` SET `slot` = 14 WHERE `entry` = 17656 AND `item` = 4605;
UPDATE `npc_vendor` SET `slot` = 15 WHERE `entry` = 17656 AND `item` = 4606;
UPDATE `npc_vendor` SET `slot` = 16 WHERE `entry` = 17656 AND `item` = 4607;
UPDATE `npc_vendor` SET `slot` = 17 WHERE `entry` = 17656 AND `item` = 4608;
UPDATE `npc_vendor` SET `slot` = 18 WHERE `entry` = 17656 AND `item` = 8948;
UPDATE `npc_vendor` SET `slot` = 19 WHERE `entry` = 17656 AND `item` = 159;
UPDATE `npc_vendor` SET `slot` = 20 WHERE `entry` = 17656 AND `item` = 1179;
UPDATE `npc_vendor` SET `slot` = 21 WHERE `entry` = 17656 AND `item` = 1205;
UPDATE `npc_vendor` SET `slot` = 22 WHERE `entry` = 17656 AND `item` = 1708;
UPDATE `npc_vendor` SET `slot` = 23 WHERE `entry` = 17656 AND `item` = 1645;
UPDATE `npc_vendor` SET `slot` = 24 WHERE `entry` = 17656 AND `item` = 8766;
UPDATE `npc_vendor` SET `slot` = 1 WHERE `entry` = 18426 AND `item` = 7005;
UPDATE `npc_vendor` SET `slot` = 4 WHERE `entry` = 18426 AND `item` = 6256;
UPDATE `npc_vendor` SET `slot` = 5 WHERE `entry` = 18426 AND `item` = 6217;
UPDATE `npc_vendor` SET `slot` = 2 WHERE `entry` = 18426 AND `item` = 5956;
UPDATE `npc_vendor` SET `slot` = 3 WHERE `entry` = 18426 AND `item` = 2901;
UPDATE `npc_vendor` SET `slot` = 7 WHERE `entry` = 18426 AND `item` = 2320;
UPDATE `npc_vendor` SET `slot` = 8 WHERE `entry` = 18426 AND `item` = 2321;
UPDATE `npc_vendor` SET `slot` = 9 WHERE `entry` = 18426 AND `item` = 2678;
UPDATE `npc_vendor` SET `slot` = 10 WHERE `entry` = 18426 AND `item` = 2692;
UPDATE `npc_vendor` SET `slot` = 11 WHERE `entry` = 18426 AND `item` = 2880;
UPDATE `npc_vendor` SET `slot` = 18 WHERE `entry` = 18426 AND `item` = 2324;
UPDATE `npc_vendor` SET `slot` = 17 WHERE `entry` = 18426 AND `item` = 2604;
UPDATE `npc_vendor` SET `slot` = 16 WHERE `entry` = 18426 AND `item` = 6260;
UPDATE `npc_vendor` SET `slot` = 15 WHERE `entry` = 18426 AND `item` = 2605;
UPDATE `npc_vendor` SET `slot` = 6 WHERE `entry` = 18426 AND `item` = 3371;
UPDATE `npc_vendor` SET `slot` = 12 WHERE `entry` = 18426 AND `item` = 4289;
UPDATE `npc_vendor` SET `slot` = 13 WHERE `entry` = 18426 AND `item` = 6529;
UPDATE `npc_vendor` SET `slot` = 14 WHERE `entry` = 18426 AND `item` = 6530;
UPDATE `npc_vendor` SET `slot` = 1 WHERE `entry` IN (491,1682,2140,3481,4182,16187,16444) AND `item` = 159;
UPDATE `npc_vendor` SET `slot` = 2 WHERE `entry` IN (491,1682,2140,3481,4182,16187,16444) AND `item` = 1179;
UPDATE `npc_vendor` SET `slot` = 3 WHERE `entry` IN (491,1682,2140,3481,4182,16187,16444) AND `item` = 4496;
UPDATE `npc_vendor` SET `slot` = 4 WHERE `entry` IN (491,1682,2140,3481,4182,16187,16444) AND `item` = 4498;
UPDATE `npc_vendor` SET `slot` = 5 WHERE `entry` IN (491,1682,2140,3481,4182,16187,16444) AND `item` = 2512;
UPDATE `npc_vendor` SET `slot` = 6 WHERE `entry` IN (491,1682,2140,3481,4182,16187,16444) AND `item` = 2515;
UPDATE `npc_vendor` SET `slot` = 7 WHERE `entry` IN (491,1682,2140,3481,4182,16187,16444) AND `item` = 2516;
UPDATE `npc_vendor` SET `slot` = 8 WHERE `entry` IN (491,1682,2140,3481,4182,16187,16444) AND `item` = 2519;
UPDATE `npc_vendor` SET `slot` = 9 WHERE `entry` IN (491,1682,2140,3481,4182,16187,16444) AND `item` = 4470;
UPDATE `npc_vendor` SET `slot` = 10 WHERE `entry` IN (491,1682,2140,3481,4182,16187,16444) AND `item` = 4471;
UPDATE `npc_vendor` SET `slot` = 11 WHERE `entry` IN (491,1682,2140,3481,4182,16187,16444) AND `item` = 5042;
UPDATE `npc_vendor` SET `slot` = 12 WHERE `entry` IN (491,1682,2140,3481,4182,16187,16444) AND `item` = 25861;
UPDATE `npc_vendor` SET `slot` = 13 WHERE `entry` IN (491,1682,2140,3481,4182,16187,16444) AND `item` = 29007;
UPDATE `npc_vendor` SET `slot` = 14 WHERE `entry` IN (491,1682,2140,3481,4182,16187,16444) AND `item` = 28979;
UPDATE `npc_vendor` SET `slot` = 15 WHERE `entry` IN (491,1682,2140,3481,4182,16187,16444) AND `item` = 25872;
UPDATE `npc_vendor` SET `slot` = 1 WHERE `entry` IN (66,1250,1692,2118,3081,3168,3187,3614,4194,16224,16261,16262) AND `item` = 7005;
UPDATE `npc_vendor` SET `slot` = 2 WHERE `entry` IN (66,1250,1692,2118,3081,3168,3187,3614,4194,16224,16261,16262) AND `item` = 5956;
UPDATE `npc_vendor` SET `slot` = 3 WHERE `entry` IN (66,1250,1692,2118,3081,3168,3187,3614,4194,16224,16261,16262) AND `item` = 2901;
UPDATE `npc_vendor` SET `slot` = 4 WHERE `entry` IN (66,1250,1692,2118,3081,3168,3187,3614,4194,16224,16261,16262) AND `item` = 6256;
UPDATE `npc_vendor` SET `slot` = 5 WHERE `entry` IN (66,1250,1692,2118,3081,3168,3187,3614,4194,16224,16261,16262) AND `item` = 6217;
UPDATE `npc_vendor` SET `slot` = 6 WHERE `entry` IN (66,1250,1692,2118,3081,3168,3187,3614,4194,16224,16261,16262) AND `item` = 3371;
UPDATE `npc_vendor` SET `slot` = 7 WHERE `entry` IN (66,1250,1692,2118,3081,3168,3187,3614,4194,16224,16261,16262) AND `item` = 2320;
UPDATE `npc_vendor` SET `slot` = 8 WHERE `entry` IN (66,1250,1692,2118,3081,3168,3187,3614,4194,16224,16261,16262) AND `item` = 2321;
UPDATE `npc_vendor` SET `slot` = 9 WHERE `entry` IN (66,1250,1692,2118,3081,3168,3187,3614,4194,16224,16261,16262) AND `item` = 2678;
UPDATE `npc_vendor` SET `slot` = 10 WHERE `entry` IN (66,1250,1692,2118,3081,3168,3187,3614,4194,16224,16261,16262) AND `item` = 2692;
UPDATE `npc_vendor` SET `slot` = 11 WHERE `entry` IN (66,1250,1692,2118,3081,3168,3187,3614,4194,16224,16261,16262) AND `item` = 2880;
UPDATE `npc_vendor` SET `slot` = 12 WHERE `entry` IN (66,1250,1692,2118,3081,3168,3187,3614,4194,16224,16261,16262) AND `item` = 4289;
UPDATE `npc_vendor` SET `slot` = 13 WHERE `entry` IN (66,1250,1692,2118,3081,3168,3187,3614,4194,16224,16261,16262) AND `item` = 6529;
UPDATE `npc_vendor` SET `slot` = 14 WHERE `entry` IN (66,1250,1692,2118,3081,3168,3187,3614,4194,16224,16261,16262) AND `item` = 6530;
UPDATE `npc_vendor` SET `slot` = 15 WHERE `entry` IN (66,1250,1692,2118,3081,3168,3187,3614,4194,16224,16261,16262) AND `item` = 2605;
UPDATE `npc_vendor` SET `slot` = 16 WHERE `entry` IN (66,1250,1692,2118,3081,3168,3187,3614,4194,16224,16261,16262) AND `item` = 6260;
UPDATE `npc_vendor` SET `slot` = 17 WHERE `entry` IN (66,1250,1692,2118,3081,3168,3187,3614,4194,16224,16261,16262) AND `item` = 2604;
UPDATE `npc_vendor` SET `slot` = 18 WHERE `entry` IN (66,1250,1692,2118,3081,3168,3187,3614,4194,16224,16261,16262) AND `item` = 2324;
UPDATE `npc_vendor` SET `slot` = 1 WHERE `entry` IN (2397,2664,3027,3085,3400,4223,4265,4553,5160,5483,8307,12033,14738,16253,16677,16718,17246,19195) AND `item` = 159;
UPDATE `npc_vendor` SET `slot` = 2 WHERE `entry` IN (2397,2664,3027,3085,3400,4223,4265,4553,5160,5483,8307,12033,14738,16253,16677,16718,17246,19195) AND `item` = 30817;
UPDATE `npc_vendor` SET `slot` = 3 WHERE `entry` IN (2397,2664,3027,3085,3400,4223,4265,4553,5160,5483,8307,12033,14738,16253,16677,16718,17246,19195) AND `item` = 2678;
UPDATE `npc_vendor` SET `slot` = 4 WHERE `entry` IN (2397,2664,3027,3085,3400,4223,4265,4553,5160,5483,8307,12033,14738,16253,16677,16718,17246,19195) AND `item` = 2692;
UPDATE `npc_vendor` SET `slot` = 5 WHERE `entry` IN (2397,2664,3027,3085,3400,4223,4265,4553,5160,5483,8307,12033,14738,16253,16677,16718,17246,19195) AND `item` = 3713;
UPDATE `npc_vendor` SET `slot` = 6 WHERE `entry` IN (2397,2664,3027,3085,3400,4223,4265,4553,5160,5483,8307,12033,14738,16253,16677,16718,17246,19195) AND `item` = 21099;
UPDATE `npc_vendor` SET `slot` = 7 WHERE `entry` IN (2397,2664,3027,3085,3400,4223,4265,4553,5160,5483,8307,12033,14738,16253,16677,16718,17246,19195) AND `item` = 21219;
UPDATE `npc_vendor` SET `slot` = 1 WHERE `entry` IN (1325,1326,1457,2622,3090,3135,3334,3551,3561,3969,4585,5169,6779,16268,16683,20121) AND `item` = 5060;
UPDATE `npc_vendor` SET `slot` = 2 WHERE `entry` IN (1325,1326,1457,2622,3090,3135,3334,3551,3561,3969,4585,5169,6779,16268,16683,20121) AND `item` = 3371;
UPDATE `npc_vendor` SET `slot` = 3 WHERE `entry` IN (1325,1326,1457,2622,3090,3135,3334,3551,3561,3969,4585,5169,6779,16268,16683,20121) AND `item` = 3372;
UPDATE `npc_vendor` SET `slot` = 4 WHERE `entry` IN (1325,1326,1457,2622,3090,3135,3334,3551,3561,3969,4585,5169,6779,16268,16683,20121) AND `item` = 8925;
UPDATE `npc_vendor` SET `slot` = 5 WHERE `entry` IN (1325,1326,1457,2622,3090,3135,3334,3551,3561,3969,4585,5169,6779,16268,16683,20121) AND `item` = 5140;
UPDATE `npc_vendor` SET `slot` = 6 WHERE `entry` IN (1325,1326,1457,2622,3090,3135,3334,3551,3561,3969,4585,5169,6779,16268,16683,20121) AND `item` = 2928;
UPDATE `npc_vendor` SET `slot` = 7 WHERE `entry` IN (1325,1326,1457,2622,3090,3135,3334,3551,3561,3969,4585,5169,6779,16268,16683,20121) AND `item` = 3777;
UPDATE `npc_vendor` SET `slot` = 8 WHERE `entry` IN (1325,1326,1457,2622,3090,3135,3334,3551,3561,3969,4585,5169,6779,16268,16683,20121) AND `item` = 8924;
UPDATE `npc_vendor` SET `slot` = 9 WHERE `entry` IN (1325,1326,1457,2622,3090,3135,3334,3551,3561,3969,4585,5169,6779,16268,16683,20121) AND `item` = 2930;
UPDATE `npc_vendor` SET `slot` = 10 WHERE `entry` IN (1325,1326,1457,2622,3090,3135,3334,3551,3561,3969,4585,5169,6779,16268,16683,20121) AND `item` = 8923;
UPDATE `npc_vendor` SET `slot` = 11 WHERE `entry` IN (1325,1326,1457,2622,3090,3135,3334,3551,3561,3969,4585,5169,6779,16268,16683,20121) AND `item` = 5173;
UPDATE `npc_vendor` SET `slot` = 12 WHERE `entry` IN (1325,1326,1457,2622,3090,3135,3334,3551,3561,3969,4585,5169,6779,16268,16683,20121) AND `item` = 2931;
UPDATE `npc_vendor` SET `slot` = 1 WHERE `entry` IN (734,3934,6735,7714,16542,21145,23573) AND `item` = 159;
UPDATE `npc_vendor` SET `slot` = 2 WHERE `entry` IN (734,3934,6735,7714,16542,21145,23573) AND `item` = 1179;
UPDATE `npc_vendor` SET `slot` = 3 WHERE `entry` IN (734,3934,6735,7714,16542,21145,23573) AND `item` = 1205;
UPDATE `npc_vendor` SET `slot` = 4 WHERE `entry` IN (734,3934,6735,7714,16542,21145,23573) AND `item` = 1708;
UPDATE `npc_vendor` SET `slot` = 5 WHERE `entry` IN (734,3934,6735,7714,16542,21145,23573) AND `item` = 1645;
UPDATE `npc_vendor` SET `slot` = 6 WHERE `entry` IN (734,3934,6735,7714,16542,21145,23573) AND `item` = 8766;
UPDATE `npc_vendor` SET `slot` = 7 WHERE `entry` IN (734,3934,6735,7714,16542,21145,23573) AND `item` = 4536;
UPDATE `npc_vendor` SET `slot` = 8 WHERE `entry` IN (734,3934,6735,7714,16542,21145,23573) AND `item` = 4537;
UPDATE `npc_vendor` SET `slot` = 9 WHERE `entry` IN (734,3934,6735,7714,16542,21145,23573) AND `item` = 4538;
UPDATE `npc_vendor` SET `slot` = 10 WHERE `entry` IN (734,3934,6735,7714,16542,21145,23573) AND `item` = 4539;
UPDATE `npc_vendor` SET `slot` = 11 WHERE `entry` IN (734,3934,6735,7714,16542,21145,23573) AND `item` = 4602;
UPDATE `npc_vendor` SET `slot` = 12 WHERE `entry` IN (734,3934,6735,7714,16542,21145,23573) AND `item` = 8953;
UPDATE `npc_vendor` SET `slot` = 1 WHERE `entry` IN (1690,2844,2847,2999,3343,3356,3477,4257,4259,4597,5411,5512,6300,8161,8176,9179,14737,15176,15400,16376,16583,16670,16713,16823,17245,17655,19011,19012,19056,19342,19520,19530,19662,19879,20082,20463,22264,22476,23144,23724,26081) AND `item` = 2901;
UPDATE `npc_vendor` SET `slot` = 2 WHERE `entry` IN (1690,2844,2847,2999,3343,3356,3477,4257,4259,4597,5411,5512,6300,8161,8176,9179,14737,15176,15400,16376,16583,16670,16713,16823,17245,17655,19011,19012,19056,19342,19520,19530,19662,19879,20082,20463,22264,22476,23144,23724,26081) AND `item` = 5956;
UPDATE `npc_vendor` SET `slot` = 3 WHERE `entry` IN (1690,2844,2847,2999,3343,3356,3477,4257,4259,4597,5411,5512,6300,8161,8176,9179,14737,15176,15400,16376,16583,16670,16713,16823,17245,17655,19011,19012,19056,19342,19520,19530,19662,19879,20082,20463,22264,22476,23144,23724,26081) AND `item` = 2880;
UPDATE `npc_vendor` SET `slot` = 4 WHERE `entry` IN (1690,2844,2847,2999,3343,3356,3477,4257,4259,4597,5411,5512,6300,8161,8176,9179,14737,15176,15400,16376,16583,16670,16713,16823,17245,17655,19011,19012,19056,19342,19520,19530,19662,19879,20082,20463,22264,22476,23144,23724,26081) AND `item` = 3466;
UPDATE `npc_vendor` SET `slot` = 5 WHERE `entry` IN (1690,2844,2847,2999,3343,3356,3477,4257,4259,4597,5411,5512,6300,8161,8176,9179,14737,15176,15400,16376,16583,16670,16713,16823,17245,17655,19011,19012,19056,19342,19520,19530,19662,19879,20082,20463,22264,22476,23144,23724,26081) AND `item` = 3857;
UPDATE `npc_vendor` SET `slot` = 6 WHERE `entry` IN (1690,2844,2847,2999,3343,3356,3477,4257,4259,4597,5411,5512,6300,8161,8176,9179,14737,15176,15400,16376,16583,16670,16713,16823,17245,17655,19011,19012,19056,19342,19520,19530,19662,19879,20082,20463,22264,22476,23144,23724,26081) AND `item` = 18567;
UPDATE `npc_vendor` SET `slot` = 1 WHERE `entry` IN (958,983,1257,1275,1307,1308,1351,1463,1673,2805,3323,3335,3351,3500,3562,3700,3970,4083,4220,4562,4575,4878,5110,5151,8361,13476,14739,16015,16611,16612,16706,16757,18243,19004,19678,19718,23112,23560) AND `item` = 17034;
UPDATE `npc_vendor` SET `slot` = 2 WHERE `entry` IN (958,983,1257,1275,1307,1308,1351,1463,1673,2805,3323,3335,3351,3500,3562,3700,3970,4083,4220,4562,4575,4878,5110,5151,8361,13476,14739,16015,16611,16612,16706,16757,18243,19004,19678,19718,23112,23560) AND `item` = 17035;
UPDATE `npc_vendor` SET `slot` = 3 WHERE `entry` IN (958,983,1257,1275,1307,1308,1351,1463,1673,2805,3323,3335,3351,3500,3562,3700,3970,4083,4220,4562,4575,4878,5110,5151,8361,13476,14739,16015,16611,16612,16706,16757,18243,19004,19678,19718,23112,23560) AND `item` = 17036;
UPDATE `npc_vendor` SET `slot` = 4 WHERE `entry` IN (958,983,1257,1275,1307,1308,1351,1463,1673,2805,3323,3335,3351,3500,3562,3700,3970,4083,4220,4562,4575,4878,5110,5151,8361,13476,14739,16015,16611,16612,16706,16757,18243,19004,19678,19718,23112,23560) AND `item` = 17037;
UPDATE `npc_vendor` SET `slot` = 5 WHERE `entry` IN (958,983,1257,1275,1307,1308,1351,1463,1673,2805,3323,3335,3351,3500,3562,3700,3970,4083,4220,4562,4575,4878,5110,5151,8361,13476,14739,16015,16611,16612,16706,16757,18243,19004,19678,19718,23112,23560) AND `item` = 17038;
UPDATE `npc_vendor` SET `slot` = 6 WHERE `entry` IN (958,983,1257,1275,1307,1308,1351,1463,1673,2805,3323,3335,3351,3500,3562,3700,3970,4083,4220,4562,4575,4878,5110,5151,8361,13476,14739,16015,16611,16612,16706,16757,18243,19004,19678,19718,23112,23560) AND `item` = 22147;
UPDATE `npc_vendor` SET `slot` = 7 WHERE `entry` IN (958,983,1257,1275,1307,1308,1351,1463,1673,2805,3323,3335,3351,3500,3562,3700,3970,4083,4220,4562,4575,4878,5110,5151,8361,13476,14739,16015,16611,16612,16706,16757,18243,19004,19678,19718,23112,23560) AND `item` = 17031;
UPDATE `npc_vendor` SET `slot` = 8 WHERE `entry` IN (958,983,1257,1275,1307,1308,1351,1463,1673,2805,3323,3335,3351,3500,3562,3700,3970,4083,4220,4562,4575,4878,5110,5151,8361,13476,14739,16015,16611,16612,16706,16757,18243,19004,19678,19718,23112,23560) AND `item` = 17032;
UPDATE `npc_vendor` SET `slot` = 9 WHERE `entry` IN (958,983,1257,1275,1307,1308,1351,1463,1673,2805,3323,3335,3351,3500,3562,3700,3970,4083,4220,4562,4575,4878,5110,5151,8361,13476,14739,16015,16611,16612,16706,16757,18243,19004,19678,19718,23112,23560) AND `item` = 17020;
UPDATE `npc_vendor` SET `slot` = 10 WHERE `entry` IN (958,983,1257,1275,1307,1308,1351,1463,1673,2805,3323,3335,3351,3500,3562,3700,3970,4083,4220,4562,4575,4878,5110,5151,8361,13476,14739,16015,16611,16612,16706,16757,18243,19004,19678,19718,23112,23560) AND `item` = 17030;
UPDATE `npc_vendor` SET `slot` = 11 WHERE `entry` IN (958,983,1257,1275,1307,1308,1351,1463,1673,2805,3323,3335,3351,3500,3562,3700,3970,4083,4220,4562,4575,4878,5110,5151,8361,13476,14739,16015,16611,16612,16706,16757,18243,19004,19678,19718,23112,23560) AND `item` = 17033;
UPDATE `npc_vendor` SET `slot` = 12 WHERE `entry` IN (958,983,1257,1275,1307,1308,1351,1463,1673,2805,3323,3335,3351,3500,3562,3700,3970,4083,4220,4562,4575,4878,5110,5151,8361,13476,14739,16015,16611,16612,16706,16757,18243,19004,19678,19718,23112,23560) AND `item` = 17028;
UPDATE `npc_vendor` SET `slot` = 13 WHERE `entry` IN (958,983,1257,1275,1307,1308,1351,1463,1673,2805,3323,3335,3351,3500,3562,3700,3970,4083,4220,4562,4575,4878,5110,5151,8361,13476,14739,16015,16611,16612,16706,16757,18243,19004,19678,19718,23112,23560) AND `item` = 17029;
UPDATE `npc_vendor` SET `slot` = 14 WHERE `entry` IN (958,983,1257,1275,1307,1308,1351,1463,1673,2805,3323,3335,3351,3500,3562,3700,3970,4083,4220,4562,4575,4878,5110,5151,8361,13476,14739,16015,16611,16612,16706,16757,18243,19004,19678,19718,23112,23560) AND `item` = 17021;
UPDATE `npc_vendor` SET `slot` = 15 WHERE `entry` IN (958,983,1257,1275,1307,1308,1351,1463,1673,2805,3323,3335,3351,3500,3562,3700,3970,4083,4220,4562,4575,4878,5110,5151,8361,13476,14739,16015,16611,16612,16706,16757,18243,19004,19678,19718,23112,23560) AND `item` = 17026;
UPDATE `npc_vendor` SET `slot` = 16 WHERE `entry` IN (958,983,1257,1275,1307,1308,1351,1463,1673,2805,3323,3335,3351,3500,3562,3700,3970,4083,4220,4562,4575,4878,5110,5151,8361,13476,14739,16015,16611,16612,16706,16757,18243,19004,19678,19718,23112,23560) AND `item` = 22148;
UPDATE `npc_vendor` SET `slot` = 17 WHERE `entry` IN (958,983,1257,1275,1307,1308,1351,1463,1673,2805,3323,3335,3351,3500,3562,3700,3970,4083,4220,4562,4575,4878,5110,5151,8361,13476,14739,16015,16611,16612,16706,16757,18243,19004,19678,19718,23112,23560) AND `item` = 5565;
UPDATE `npc_vendor` SET `slot` = 18 WHERE `entry` IN (958,983,1257,1275,1307,1308,1351,1463,1673,2805,3323,3335,3351,3500,3562,3700,3970,4083,4220,4562,4575,4878,5110,5151,8361,13476,14739,16015,16611,16612,16706,16757,18243,19004,19678,19718,23112,23560) AND `item` = 16583;
UPDATE `npc_vendor` SET `slot` = 19 WHERE `entry` IN (958,983,1257,1275,1307,1308,1351,1463,1673,2805,3323,3335,3351,3500,3562,3700,3970,4083,4220,4562,4575,4878,5110,5151,8361,13476,14739,16015,16611,16612,16706,16757,18243,19004,19678,19718,23112,23560) AND `item` = 21177;
UPDATE `npc_vendor` SET `slot` = 1 WHERE `entry` IN (17518,18017,18998,19235,19535,23157,25039) AND `item` = 17037;
UPDATE `npc_vendor` SET `slot` = 2 WHERE `entry` IN (17518,18017,18998,19235,19535,23157,25039) AND `item` = 17038;
UPDATE `npc_vendor` SET `slot` = 3 WHERE `entry` IN (17518,18017,18998,19235,19535,23157,25039) AND `item` = 22147;
UPDATE `npc_vendor` SET `slot` = 4 WHERE `entry` IN (17518,18017,18998,19235,19535,23157,25039) AND `item` = 17031;
UPDATE `npc_vendor` SET `slot` = 5 WHERE `entry` IN (17518,18017,18998,19235,19535,23157,25039) AND `item` = 17032;
UPDATE `npc_vendor` SET `slot` = 6 WHERE `entry` IN (17518,18017,18998,19235,19535,23157,25039) AND `item` = 17020;
UPDATE `npc_vendor` SET `slot` = 7 WHERE `entry` IN (17518,18017,18998,19235,19535,23157,25039) AND `item` = 17030;
UPDATE `npc_vendor` SET `slot` = 8 WHERE `entry` IN (17518,18017,18998,19235,19535,23157,25039) AND `item` = 17033;
UPDATE `npc_vendor` SET `slot` = 9 WHERE `entry` IN (17518,18017,18998,19235,19535,23157,25039) AND `item` = 17028;
UPDATE `npc_vendor` SET `slot` = 10 WHERE `entry` IN (17518,18017,18998,19235,19535,23157,25039) AND `item` = 17029;
UPDATE `npc_vendor` SET `slot` = 11 WHERE `entry` IN (17518,18017,18998,19235,19535,23157,25039) AND `item` = 17021;
UPDATE `npc_vendor` SET `slot` = 12 WHERE `entry` IN (17518,18017,18998,19235,19535,23157,25039) AND `item` = 17026;
UPDATE `npc_vendor` SET `slot` = 13 WHERE `entry` IN (17518,18017,18998,19235,19535,23157,25039) AND `item` = 22148;
UPDATE `npc_vendor` SET `slot` = 14 WHERE `entry` IN (17518,18017,18998,19235,19535,23157,25039) AND `item` = 5565;
UPDATE `npc_vendor` SET `slot` = 15 WHERE `entry` IN (17518,18017,18998,19235,19535,23157,25039) AND `item` = 16583;
UPDATE `npc_vendor` SET `slot` = 16 WHERE `entry` IN (17518,18017,18998,19235,19535,23157,25039) AND `item` = 21177;
UPDATE `npc_vendor` SET `slot` = 1 WHERE `entry` IN (24409,26304) AND `item` = 22147;
UPDATE `npc_vendor` SET `slot` = 2 WHERE `entry` IN (24409,26304) AND `item` = 17030;
UPDATE `npc_vendor` SET `slot` = 3 WHERE `entry` IN (24409,26304) AND `item` = 17033;
UPDATE `npc_vendor` SET `slot` = 4 WHERE `entry` IN (24409,26304) AND `item` = 17029;
UPDATE `npc_vendor` SET `slot` = 5 WHERE `entry` IN (24409,26304) AND `item` = 22148;
UPDATE `npc_vendor` SET `slot` = 6 WHERE `entry` IN (24409,26304) AND `item` = 16583;
UPDATE `npc_vendor` SET `slot` = 7 WHERE `entry` IN (24409,26304) AND `item` = 21177;
UPDATE `npc_vendor` SET `maxcount` = 1, `incrtime` = 7200 WHERE `item` = 22901;
UPDATE `npc_vendor` SET `maxcount` = 1, `incrtime` = 43200 WHERE `item` = 22902;
UPDATE `npc_vendor` SET `slot` = 1 WHERE `entry` =24408 AND `item` =33926;
UPDATE `npc_vendor` SET `slot` = 2 WHERE `entry` =24408 AND `item` =27657;
UPDATE `npc_vendor` SET `slot` = 3 WHERE `entry` =24408 AND `item` =27667;
UPDATE `npc_vendor` SET `slot` = 4 WHERE `entry` =24408 AND `item` =27666;
UPDATE `npc_vendor` SET `slot` = 5 WHERE `entry` =24408 AND `item` =8948;
UPDATE `npc_vendor` SET `slot` = 6 WHERE `entry` =24408 AND `item` =27859;
UPDATE `npc_vendor` SET `slot` = 7 WHERE `entry` =24408 AND `item` =29453;
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(12563, 181665, 530, 1, 7661.93, -7319.62, 156.012, 0.0349062, 0, 0, 0.0174522, 0.999848, 60, 60, 255, 1),
(12565, 181665, 530, 1, 7658.82, -7322.96, 156.024, -1.50098, 0, 0, -0.681997, 0.731355, 60, 60, 255, 1),
(12566, 181665, 530, 1, 7656.94, -7237.31, 155.826, 1.62316, 0, 0, 0.725376, 0.688353, 60, 60, 255, 1),
(38565, 181665, 530, 1, 7654.78, -7352.84, 162.126, 0.139626, 0, 0, 0.0697563, 0.997564, 60, 60, 255, 1),
(38566, 181665, 530, 1, 7654.68, -7364.44, 162.123, 0, 0, 0, 0, 1, 60, 60, 255, 1),
(38567, 181665, 530, 1, 7644.13, -7429.99, 163.19, 0.034907, 0, 0, 0.0174526, 0.999848, 60, 60, 255, 1),
(38568, 181665, 530, 1, 7643.6, -7397.83, 162.543, 0.05236, 0, 0, 0.026177, 0.999657, 60, 60, 255, 1),
(38569, 181665, 530, 1, 7630.48, -7422.08, 163.077, -3.10669, 0, 0, -0.999848, 0.0174505, 60, 60, 255, 1),
(38570, 181665, 530, 1, 7630.08, -7389.77, 162.412, -3.12414, 0, 0, -0.999962, 0.0087262, 60, 60, 255, 1),
(38571, 181665, 530, 1, 7619.28, -7323.88, 155.914, -1.51844, 0, 0, -0.688356, 0.725373, 60, 60, 255, 1),
(38572, 181665, 530, 1, 7615.83, -7375.65, 162.353, -1.51844, 0, 0, -0.688356, 0.725373, 60, 60, 255, 1),
(40457, 181665, 530, 1, 7597.63, -7416.52, 156.941, 4.10153, 0, 0, -0.887011, 0.461749, 60, 60, 255, 1),
(40458, 181665, 530, 1, 7573.78, -7379.44, 162.359, 5.07891, 0, 0, -0.566406, 0.824126, 60, 60, 255, 1),
(40459, 181665, 530, 1, 7562.84, -7380.08, 162.379, -1.62316, 0, 0, -0.725376, 0.688353, 60, 60, 255, 1),
(40460, 181665, 530, 1, 7662.14, -7300.81, 156.075, 0.104719, 0, 0, 0.0523357, 0.99863, 60, 60, 255, 1),
(40461, 181665, 530, 1, 7543.93, -7356.79, 162.37, 4.64258, 0, 0, -0.731354, 0.681998, 60, 60, 255, 1),
(40462, 181665, 530, 1, 7591.96, -7323.79, 155.797, 4.66003, 0, 0, -0.725374, 0.688355, 60, 60, 255, 1),
(40463, 181665, 530, 1, 7618.28, -7342.32, 162.298, 1.62316, 0, 0, 0.725374, 0.688355, 60, 60, 255, 1),
(18287, 181665, 530, 1, 7643.72, -7405.78, 162.736, 0.087266, 0, 0, 0.0436192, 0.999048, 60, 60, 255, 1);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(18288, 181151, 530, 1, 7861.51, -7708.38, 135.661, 5.98648, 0, 0, -0.147809, 0.989016, 120, 120, 100, 1),
(18289, 181151, 530, 1, 7928.5, -7629.58, 113.899, 6.19592, 0, 0, -0.0436192, 0.999048, 120, 120, 100, 1),
(18290, 181151, 530, 1, 7805.21, -7590.71, 128.564, 6.07375, 0, 0, -0.104528, 0.994522, 120, 120, 100, 1);
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(20498, 181698, 530, 1, 7938.52, -6690.16, 50.0994, 1.20428, 0, 0, 0.566406, 0.824126, 300, 900, 100, 1),
(18291, 181698, 530, 1, 7923.38, -6728.08, 43.4225, 3.61284, 0, 0, -0.972369, 0.233448, 300, 900, 100, 1),
(18293, 181698, 530, 1, 7921.24, -6690, 41.5673, 0.104719, 0, 0, 0.0523357, 0.99863, 300, 900, 100, 1),
(18294, 181698, 530, 1, 7915.29, -6724.17, 43.0239, 2.86234, 0, 0, 0.990268, 0.139175, 300, 900, 100, 1),
(18295, 181698, 530, 1, 7907.49, -6711.6, 41.7352, 0.90757, 0, 0, 0.438371, 0.898794, 300, 900, 100, 1),
(18298, 181698, 530, 1, 7902.85, -6680.41, 41.3635, 2.49582, 0, 0, 0.948323, 0.317306, 300, 900, 100, 1),
(18300, 181698, 530, 1, 7895.57, -6711.65, 40.2913, 5.65487, 0, 0, -0.309016, 0.951057, 300, 900, 100, 1),
(18310, 181698, 530, 1, 7857.77, -6670.41, 30.3925, 2.44346, 0, 0, 0.939692, 0.34202, 300, 900, 100, 1),
(18311, 181698, 530, 1, 7842.85, -6694.56, 23.5965, 5.00909, 0, 0, -0.594823, 0.803857, 300, 900, 100, 1),
(18313, 181698, 530, 1, 7933.02, -6739.17, 46.8044, 2.49582, 0, 0, 0.948323, 0.317306, 300, 900, 100, 1),
(18314, 181698, 530, 1, 7887.08, -6686.33, 40.3131, 3.64774, 0, 0, -0.968147, 0.250381, 300, 900, 100, 1),
(18472, 181698, 530, 1, 7928.78, -6701.46, 37.9645, 4.4855, 0, 0, -0.782608, 0.622515, 300, 900, 100, 1);
DELETE FROM `gameobject` WHERE `id` IN (181138,181139,181140);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(20093, 181138, 530, 7676.28, -5735.22, 3.67275, -0.733038, 0, 0, -0.358368, 0.93358, 5, 5, 100, 1),
(19725, 181138, 530, 7683.38623046875, -5696.8095703125, 5.27138519287109375, 2.268925428390502929, 0, 0, 0.906307220458984375, 0.422619491815567016, 5, 5, 100, 1),
(30298, 181138, 530, 7681.22998046875, -5770.63720703125, 3.879880905151367187, 1.378809213638305664, 0, 0, 0.636077880859375, 0.771624863147735595, 5, 5, 100, 1), -- NEW
(19726, 181139, 530, 7714.5869140625, -5705.5654296875, 5.033568859100341796, 1.204277276992797851, 0, 0, 0.56640625, 0.824126183986663818, 5, 5, 100, 1),
(30997, 181139, 530, 7740.111328125, -5707.51416015625, 3.82405400276184082, 4.59021615982055664, 0, 0, -0.74895572662353515, 0.662620067596435546, 5, 5, 100, 1), -- NEW
(19738, 181140, 530, 7769.91, -5627.93, 18.3952, 5.25344, 0, 0, -0.492423, 0.870356, 5, 5, 100, 1);
UPDATE `pool_gameobject_template` SET `description` = 'Ghostlands - Night Elf Plans: An\'daroth (181138)' WHERE `id` = 181138;
UPDATE `pool_template` SET `description` = 'Ghostlands - Night Elf Plans: An\'daroth (181138)' WHERE `entry` = 770;
REPLACE INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (91, 1, 'Ghostlands - Night Elf Plans: An\'owyn (181139)');
REPLACE INTO `pool_gameobject_template` (`id`, `pool_entry`, `chance`, `description`) VALUES (181139, 91, 0, 'Ghostlands - Night Elf Plans: An\'owyn (181139)');
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(30065, 184793, 530, 1, 7462.37, -7973.07, 161.674, 0.10472, 0, 0, 0.0523361, 0.99863, 180, 300, 100, 1),
(30066, 184793, 530, 1, 7451.33, -7991.87, 161.674, -1.46608, 0, 0, -0.669132, 0.743144, 180, 300, 100, 1),
(30067, 184793, 530, 1, 7433.35, -7887.6, 159.824, -1.71042, 0, 0, -0.754709, 0.65606, 180, 300, 100, 1),
(30068, 184793, 530, 1, 7417.27, -7966.93, 174.169, 2.86234, 0, 0, 0.990268, 0.139173, 180, 300, 100, 1),
(30069, 184793, 530, 1, 7404.79, -7982.58, 161.249, -1.6057, 0, 0, -0.719339, 0.694659, 180, 300, 100, 1),
(30070, 184793, 530, 1, 7397.8, -7892.23, 159.261, 1.97222, 0, 0, 0.833885, 0.551938, 180, 300, 100, 1),
(30071, 184793, 530, 1, 7394.56, -7939.2, 158.955, -1.11701, 0, 0, -0.529919, 0.848048, 180, 300, 100, 1),
(30072, 184793, 530, 1, 7383.48, -7838.81, 147.744, -2.44346, 0, 0, -0.939692, 0.342021, 180, 300, 100, 1),
(30073, 184793, 530, 1, 7353.47, -7836.94, 148.174, -2.79253, 0, 0, -0.984808, 0.173647, 180, 300, 100, 1),
(30074, 184793, 530, 1, 7338.2, -7830.45, 147.661, -0.837758, 0, 0, -0.406737, 0.913545, 180, 300, 100, 1),
(30075, 184793, 530, 1, 7304.38, -7778.9, 147.916, 2.32129, 0, 0, 0.91706, 0.398748, 180, 300, 100, 1),
(30076, 184793, 530, 1, 7288.33, -7759.46, 150.019, 0.715585, 0, 0, 0.350207, 0.936672, 180, 300, 100, 1),
(40465, 184793, 530, 1, 7276.24, -7829.97, 151.824, -2.63545, 0, 0, -0.968148, 0.250379, 180, 300, 100, 1),
(40466, 184793, 530, 1, 7265.66, -7779.63, 157.668, -2.16421, 0, 0, -0.882948, 0.469471, 180, 300, 100, 1),
(40467, 184793, 530, 1, 7233.04, -7748.18, 149.285, 1.69297, 0, 0, 0.748956, 0.66262, 180, 300, 100, 1),
(40468, 184793, 530, 1, 7225.66, -7799.21, 155.996, 3.05433, 0, 0, 0.999048, 0.0436174, 180, 300, 100, 1),
(40469, 184793, 530, 1, 7163.38, -7525.89, 50.5513, -0.488692, 0, 0, -0.241921, 0.970296, 180, 300, 100, 1),
(40470, 184793, 530, 1, 7110.55, -7567.63, 49.8488, -1.53589, 0, 0, -0.694658, 0.71934, 180, 300, 100, 1),
(40471, 184793, 530, 1, 7054.54, -7535.8, 45.7992, -0.593412, 0, 0, -0.292372, 0.956305, 180, 300, 100, 1),
(40472, 184793, 530, 1, 7051.32, -7471.83, 48.7032, 3.10669, 0, 0, 0.999848, 0.0174505, 180, 300, 100, 1),
(40473, 184793, 530, 1, 6990.35, -7432.6, 49.2192, 1.50098, 0, 0, 0.681997, 0.731355, 180, 300, 100, 1),
(40474, 184793, 530, 1, 6942.06, -7485.71, 49.4787, -3.07178, 0, 0, -0.999391, 0.0348993, 180, 300, 100, 1),
(40475, 184793, 530, 1, 6921.18, -7503.96, 49.671, -3.12414, 0, 0, -0.999962, 0.0087262, 180, 300, 100, 1),
(40476, 184793, 530, 1, 6857.2, -7417.04, 47.649, 0.122173, 0, 0, 0.0610485, 0.998135, 180, 300, 100, 1),
(40477, 184793, 530, 1, 6806.05, -7442.17, 47.9223, -2.32129, 0, 0, -0.91706, 0.398748, 180, 300, 100, 1),
(40478, 184793, 530, 1, 6805.32, -7338.93, 49.9453, -0.15708, 0, 0, -0.0784593, 0.996917, 180, 300, 100, 1),
(40479, 184793, 530, 1, 6779.95, -7314.91, 49.9428, 0.558505, 0, 0, 0.275637, 0.961262, 180, 300, 100, 1),
(40480, 184793, 530, 1, 6777.21, -7418.51, 48.6384, 3.12414, 0, 0, 0.999962, 0.0087262, 180, 300, 100, 1),
(40481, 184793, 530, 1, 6752.64, -7311.65, 53.0436, 1.36136, 0, 0, 0.629322, 0.777145, 180, 300, 100, 1),
(40482, 184793, 530, 1, 6660.86, -7392.01, 70.4737, 5.06146, 0, 0, -0.573576, 0.819152, 180, 300, 100, 1),
(40483, 184793, 530, 1, 6698.16, -7318.41, 55.5933, -0.506145, 0, 0, -0.25038, 0.968148, 180, 300, 100, 1),
(30998, 184793, 530, 1, 6645.67, -7273.37, 54.9746, 1.39626, 0, 0, 0.642787, 0.766045, 180, 300, 100, 1),
(30999, 184793, 530, 1, 6701.37, -7323.05, 55.5933, 2.63544, 0, 0, 0.968147, 0.250381, 180, 300, 100, 1),
(31063, 184793, 530, 1, 6719.64, -7438.47, 51.3599, -1.93732, 0, 0, -0.824126, 0.566406, 180, 300, 100, 1),
(31064, 184793, 530, 1, 6987.94, -7527.76, 61.7815, -0.541051, 0, 0, -0.267238, 0.963631, 180, 300, 100, 1),
(31065, 184793, 530, 1, 6997.95, -7519, 56.4784, 1.25664, 0, 0, 0.587785, 0.809017, 180, 300, 100, 1),
(31726, 184793, 530, 1, 6505.11, -7441.94, 85.9752, 5.41052, 0, 0, -0.422618, 0.906308, 180, 300, 100, 1),
(31727, 184793, 530, 1, 6524.57, -7412.94, 69.1011, 3.59538, 0, 0, -0.97437, 0.224951, 180, 300, 100, 1),
(31728, 184793, 530, 1, 6603.86, -7301.56, 55.2014, 2.87979, 0, 0, 0.991445, 0.130528, 180, 300, 100, 1),
(31729, 184793, 530, 1, 6647.09, -7404.21, 57.5551, 3.68265, 0, 0, -0.96363, 0.267241, 180, 300, 100, 1),
(31730, 184793, 530, 1, 6652.18, -7409.4, 65.2256, 5.53269, 0, 0, -0.366501, 0.930418, 180, 300, 100, 1),
(31731, 184793, 530, 1, 7182.41, -7573.78, 49.2193, 3.26377, 0, 0, -0.998135, 0.0610518, 180, 300, 100, 1),
(31732, 184793, 530, 1, 7058.67, -7545.73, 45.8779, 3.78737, 0, 0, -0.948323, 0.317306, 180, 300, 100, 1),
(31733, 184793, 530, 1, 7027.02, -7547.91, 45.5196, 3.80482, 0, 0, -0.945518, 0.325568, 180, 300, 100, 1),
(31734, 184793, 530, 1, 6996.27, -7547.4, 48.8435, 5.00909, 0, 0, -0.594823, 0.803857, 180, 300, 100, 1);
UPDATE `creature_template` SET `UnitFlags` = 33536 WHERE `entry` = 25518;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(31735, 2849, 530, 7351.85400390625, -7824.33251953125, 147.920196533203125, 1.082104086875915527, 0, 0, 0.515038073062896728, 0.857167303562164306, 300, 900, 100, 1),
(31739, 75293, 530, 6645.44921875, -6329.88427734375, 9.133299827575683593, 2.949595451354980468, 0, 0, 0.995395660400390625, 0.095851235091686248, 300, 900, 100, 1),
(31740, 75293, 530, 6527.4453125, -6514.33349609375, 43.76202011108398437, 3.473210096359252929, 0, 0, -0.98628520965576171, 0.165049895644187927, 300, 900, 100, 1),
(31741, 111095, 530, 7164.01806640625, -6603.73291015625, 60.50824737548828125, 5.323255538940429687, 0, 0, -0.46174812316894531, 0.887011110782623291, 300, 900, 100, 1),
(31742, 111095, 530, 6783.197265625, -7199.501953125, 25.77179527282714843, 0.837757468223571777, 0, 0, 0.406736373901367187, 0.913545548915863037, 300, 900, 100, 1),
(31745, 106319, 530, 7344.85, -5957.92, 15.9372, 6.03884, 0, 0, -0.121869, 0.992546, 300, 900, 100, 1),
(31749, 106319, 530, 7138.9, -6196.39, 21.5686, 0.942477, 0, 0, 0.45399, 0.891007, 300, 900, 100, 1),
(31750, 106319, 530, 7828.2880859375, -7910.99462890625, 294.16424560546875, 0.017452461645007133, 0, 0, 0.008726119995117187, 0.999961912631988525, 300, 900, 100, 1),
(31751, 106319, 530, 7050.58251953125, -5736.326171875, 84.08641815185546875, 0.383971005678176879, 0, 0, 0.190808296203613281, 0.981627285480499267, 300, 900, 100, 1),
(31752, 106319, 530, 7194.93896484375, -5962.3603515625, 21.32486915588378906, 2.67034769058227539, 0, 0, 0.972369194030761718, 0.233448356389999389, 300, 900, 100, 1),
(31753, 106319, 530, 7917.97314453125, -6254.814453125, 39.78503036499023437, 1.204277276992797851, 0, 0, 0.56640625, 0.824126183986663818, 300, 900, 100, 1),
(31755, 106319, 530, 7626.720703125, -7477.81494140625, 161.88909912109375, 6.14356088638305664, 0, 0, -0.06975555419921875, 0.997564136981964111, 300, 900, 100, 1),
(31756, 106319, 530, 7151.56, -6244.49, 21.8035, 0.785397, 0, 0, 0.382683, 0.92388, 300, 900, 100, 1),
(31757, 106319, 530, 7009.52, -5700.59, 102.601, 1.29154, 0, 0, 0.601814, 0.798636, 300, 900, 100, 1);
REPLACE INTO `pool_gameobject` (`guid`, `pool_entry`, `description`) SELECT `guid`, 46, 'Ghostlands - Battered Chest (2849)' FROM `gameobject` WHERE `guid` = 31735;
REPLACE INTO `pool_gameobject` (`guid`, `pool_entry`, `description`) SELECT `guid`, 46, 'Ghostlands - Large Battered Chest (75293)' FROM `gameobject` WHERE `guid` IN (31739,31740);
REPLACE INTO `pool_gameobject` (`guid`, `pool_entry`, `description`) SELECT `guid`, 46, 'Ghostlands - Tattered Chest (111095)' FROM `gameobject` WHERE `guid` IN (31741,31742);
REPLACE INTO `pool_gameobject` (`guid`, `pool_entry`, `description`) SELECT `guid`, 46, 'Ghostlands - Battered Chest (106319)' FROM `gameobject` WHERE `guid` IN (31745,31749,31750,31751,31752,31753,31755,31756,31757);
UPDATE `pool_template` SET `max_limit` = 9 WHERE `entry` = 46;
UPDATE `creature_template` SET `InteractionPauseTimer` = 30000 WHERE `entry` = 23718;
DELETE FROM `creature_movement` WHERE `id` IN (SELECT `guid` FROM `creature` WHERE `id` = 23718);
UPDATE `creature` SET `position_x` = 6743.719, `position_y` = -7553.346, `position_z` = 126.2342, `orientation` = 3.176499, `MovementType` = 2 WHERE `id` = 23718;
DELETE FROM `creature_movement_template` WHERE `Entry` = 23718;
INSERT INTO `creature_movement_template` (`Entry`, `PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`, `Comment`) VALUES
(23718, 0, 1, 6743.719, -7553.346, 126.2342, 3.176499, 60000, 0, NULL),
(23718, 0, 2, 6755.476, -7546.018, 126.2342, 100, 0, 0, NULL),
(23718, 0, 3, 6752.933, -7537.233, 126.7342, 100, 0, 0, NULL),
(23718, 0, 4, 6756.388, -7522.79, 127.2342, 100, 0, 0, NULL),
(23718, 0, 5, 6762.099, -7523.004, 127.3592, 100, 60000, 2371801, NULL),
(23718, 0, 6, 6756.388, -7522.79, 127.2342, 100, 0, 0, NULL),
(23718, 0, 7, 6752.933, -7537.233, 126.7342, 100, 0, 0, NULL),
(23718, 0, 8, 6755.476, -7546.018, 126.2342, 100, 0, 0, NULL),
(23718, 0, 9, 6743.719, -7553.346, 126.2342, 3.176499, 120000, 0, NULL),
(23718, 0, 10, 6737.742, -7553.029, 126.7342, 100, 0, 0, NULL),
(23718, 0, 11, 6731.241, -7555.08, 127.2341, 100, 0, 0, NULL),
(23718, 0, 12, 6725.964, -7561.686, 128.4841, 0.2792527, 60000, 2371801, NULL),
(23718, 0, 13, 6731.241, -7555.08, 127.2341, 100, 0, 0, NULL),
(23718, 0, 14, 6737.742, -7553.029, 126.7342, 100, 0, 0, NULL),
(23718, 0, 15, 6743.719, -7553.346, 126.2342, 3.176499, 1200000, 0, NULL),
(23718, 0, 16, 6740.69, -7607.24, 126.194, 4.01019, 35000, 2371802, NULL),
(23718, 0, 17, 6771.95, -7585.33, 127.31, 0.534801, 10000, 2371803, NULL),
(23718, 0, 18, 6751.85, -7549.6, 126.132, 2.59961, 4000, 2371804, NULL),
(23718, 0, 19, 6743.03, -7551.57, 126.327, 3.40335, 1200000, 0, NULL);
DELETE FROM `dbscripts_on_creature_movement` WHERE `Id` BETWEEN 2371801 AND 2371804;
INSERT INTO `dbscripts_on_creature_movement` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `datafloat`, `x`, `y`, `z`, `o`, `speed`, `condition_id`, `comments`) VALUES
(2371801, 1000, 0, 28, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Garg - UNIT_STAND_STATE_SLEEP'),
(2371801, 4000, 0, 15, 32951, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Garg - Cast Sleeping Sleep'),
(2371801, 4000, 1, 29, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Garg - Remove UNIT_NPC_FLAG_GOSSIP'),
(2371801, 54000, 0, 14, 32951, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Garg - Remove Sleeping Sleep'),
(2371801, 54000, 1, 29, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Garg - Add UNIT_NPC_FLAG_GOSSIP'),
(2371801, 57000, 0, 28, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Garg - UNIT_STAND_STATE_STAND'),
(2371802, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 22216, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(2371802, 20000, 0, 0, 0, 0, 0, 0, 0, 0, 22211, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(2371803, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 22206, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(2371804, 2000, 0, 1, 61, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
DELETE FROM `creature` WHERE `guid` = 126564;
UPDATE `creature_template` SET `InteractionPauseTimer` = 30000 WHERE `entry` = 17655;
DELETE FROM `creature_movement_template` WHERE `Entry` = 17655;
INSERT INTO `creature_movement_template` (`Entry`, `PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`, `Comment`) VALUES
(17655, 0, 1, 7600.0645, -6907.846, 93.764725, 4.4572973, 30000, 1765501, NULL),
(17655, 0, 2, 7600.5234, -6904.9946, 93.88599, 1.7802358, 30000, 0, NULL),
(17655, 0, 3, 7598.409, -6904.8096, 94.34996, 100, 0, 0, NULL),
(17655, 0, 4, 7596.7944, -6905.6245, 94.31394, 3.996804, 16000, 1765502, NULL),
(17655, 0, 5, 7600.5234, -6904.9946, 93.88599, 1.7802358, 45000, 0, NULL),
(17655, 0, 6, 7603.586, -6905.457, 93.76858, 0.82030475, 40000, 1765503, NULL),
(17655, 0, 7, 7600.5234, -6904.9946, 93.88599, 1.7802358, 30000, 0, NULL),
(17655, 0, 8, 7598.409, -6904.8096, 94.34996, 100, 0, 0, NULL),
(17655, 0, 9, 7596.7944, -6905.6245, 94.31394, 3.996804, 16000, 1765502, NULL),
(17655, 0, 10, 7604.855, -6905.6206, 93.76188, 0.82030475, 40000, 1765503, NULL),
(17655, 0, 11, 7600.5234, -6904.9946, 93.88599, 1.7802358, 0, 0, NULL);
DELETE FROM `dbscripts_on_creature_movement` WHERE `Id` BETWEEN 1765501 AND 1765503;
INSERT INTO `dbscripts_on_creature_movement` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `datafloat`, `x`, `y`, `z`, `o`, `speed`, `condition_id`, `comments`) VALUES
(1765501, 1000, 0, 54, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Blacksmith Frances - SHEATH_STATE_UNARMED'),
(1765501, 1000, 1, 1, 69, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Blacksmith Frances - EMOTE_STATE_USESTANDING'),
(1765501, 29000, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Blacksmith Frances - EMOTE_ONESHOT_NONE'),
(1765502, 2000, 0, 54, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Blacksmith Frances - SHEATH_STATE_MELEE'),
(1765502, 2000, 1, 1, 233, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Blacksmith Frances - EMOTE_STATE_WORK_NOSHEATHE_MINING'),
(1765502, 15000, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Blacksmith Frances - EMOTE_ONESHOT_NONE'),
(1765503, 2000, 0, 54, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Blacksmith Frances - SHEATH_STATE_MELEE'),
(1765503, 2000, 1, 42, 0, 0, 0, 0, 0, 0, 2703, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Blacksmith Frances - UNIT_VIRTUAL_ITEM_SLOT_ID'),
(1765503, 3000, 0, 1, 92, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Blacksmith Frances - EMOTE_ONESHOT_EAT_NOSHEATHE'),
(1765503, 9000, 0, 1, 92, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Blacksmith Frances - EMOTE_ONESHOT_EAT_NOSHEATHE'),
(1765503, 15000, 0, 1, 92, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Blacksmith Frances - EMOTE_ONESHOT_EAT_NOSHEATHE'),
(1765503, 21000, 0, 1, 92, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Blacksmith Frances - EMOTE_ONESHOT_EAT_NOSHEATHE'),
(1765503, 27000, 0, 1, 92, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Blacksmith Frances - EMOTE_ONESHOT_EAT_NOSHEATHE'),
(1765503, 33000, 0, 1, 92, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Blacksmith Frances - EMOTE_ONESHOT_EAT_NOSHEATHE'),
(1765503, 39000, 0, 42, 0, 0, 0, 0, 0, 0, 1903, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Blacksmith Frances - UNIT_VIRTUAL_ITEM_SLOT_ID');
UPDATE `creature_template` SET `ExtraFlags` = `ExtraFlags`|1048576 WHERE `entry` = 16206;
DELETE FROM `dbscripts_on_gossip` WHERE `Id` = 718600 AND `command` IN (1,25);
UPDATE `dbscripts_on_gossip` SET `delay` = 0 WHERE `Id` = 718600 AND `command` = 8;
UPDATE `dbscripts_on_gossip` SET `delay` = 2000 WHERE `Id` = 718600 AND `command` = 20;
DELETE FROM `creature_movement_template` WHERE `entry` = 16206 AND `point` BETWEEN 3 and 7;
UPDATE `creature_movement_template` SET `positionx` = 6426.9736, `positiony` = -6614.0903, `positionz` = 110.5383, `WaitTime` = 0, `ScriptId` = 0 WHERE `entry` = 16206 AND `point` = 1;
UPDATE `creature_movement_template` SET `positionx` = 6431.514, `positiony` = -6597.9756, `positionz` = 112.11294, `WaitTime` = 1, `ScriptId` = 1 WHERE `entry` = 16206 AND `point` = 2;
UPDATE `creature_template` SET `ExtraFlags` = `ExtraFlags`|1048576 WHERE `entry` = 16208;
DELETE FROM `dbscripts_on_gossip` WHERE `Id` = 717900 AND `command` IN (25);
UPDATE `dbscripts_on_gossip` SET `delay` = 0 WHERE `Id` = 717900 AND `command` IN (8,1);
UPDATE `dbscripts_on_gossip` SET `delay` = 100 WHERE `Id` = 717900 AND `command` = 0;
UPDATE `dbscripts_on_gossip` SET `delay` = 400 WHERE `Id` = 717900 AND `command` IN(28,29);
UPDATE `dbscripts_on_gossip` SET `delay` = 2700 WHERE `Id` = 717900 AND `command` = 20;
DELETE FROM `creature_movement_template` WHERE `entry` = 16208 AND `point` BETWEEN 2 and 6;
UPDATE `creature_movement_template` SET `positionx` = 6662.1343, `positiony` = -6331.6577, `positionz` = 20.891989, `WaitTime` = 1, `ScriptId` = 1 WHERE `entry` = 16208 AND `point` = 1;
UPDATE `creature_template` SET `ExtraFlags` = `ExtraFlags`|1048576 WHERE `entry` = 16209;
DELETE FROM `dbscripts_on_gossip` WHERE `Id` = 717600 AND `command` IN (1,25);
UPDATE `dbscripts_on_gossip` SET `delay` = 0 WHERE `Id` = 717600 AND `command` = 8;
UPDATE `dbscripts_on_gossip` SET `delay` = 2000 WHERE `Id` = 717600 AND `command` IN (0,20);
DELETE FROM `creature_movement_template` WHERE `entry` = 16209 AND `point` BETWEEN 3 and 7;
UPDATE `creature_movement_template` SET `positionx` = 6308.249, `positiony` = -6357.642, `positionz` = 80.13461, `WaitTime` = 0, `ScriptId` = 0 WHERE `entry` = 16209 AND `point` = 1;
UPDATE `creature_movement_template` SET `positionx` = 6326.8506, `positiony` = -6366.817, `positionz` = 82.70898, `WaitTime` = 1, `ScriptId` = 1 WHERE `entry` = 16209 AND `point` = 2;
UPDATE `creature_template` SET `UnitFlags` = 768, `Faction` = 1604 WHERE `entry` = 17832;
UPDATE `creature_template` SET `UnitFlags` = 0 WHERE `entry` = 22062;


UPDATE creature_template SET UnitFlags = 33554440, MinLevel=79,MaxLevel=79, MinLevelHealth=12175, MaxLevelHealth=12175, MovementType = 3 WHERE entry=28669;
DELETE FROM creature_movement_template WHERE entry = 28669;
INSERT INTO creature_movement_template (entry, point, positionx, positiony, positionz, orientation, waittime, scriptid) VALUES
(28669,1,5967.444,-2165.715,422.854,100,0,0),
(28669,2,5865.666,-2174.974,393.3817,100,0,0),
(28669,3,5713.336,-2151.653,373.4649,100,0,0),
(28669,4,5558.722,-2128.131,366.1319,100,0,0),
(28669,5,5451.114,-2151.127,354.4373,100,0,0),
(28669,6,5377.812,-2219.117,359.1318,100,0,0),
(28669,7,5366.704,-2360.862,377.715,100,0,0),
(28669,8,5435.392,-2533.554,373.9926,100,0,0),
(28669,9,5620.228,-2725.159,344.5209,100,0,0),
(28669,10,5710.932,-2849.435,341.9651,100,0,0),
(28669,11,5793.25,-3015.15,364.3539,100,0,0),
(28669,12,5879.358,-3182.915,393.3817,100,0,0),
(28669,13,5964.949,-3300.001,393.3817,100,0,0),
(28669,14,6115.404,-3420.539,450.5761,100,0,0),
(28669,15,6211.264,-3582.169,481.242,100,0,0),
(28669,16,6279.312,-3777.027,504.3809,100,0,0),
(28669,17,6463.991,-3861.046,546.2137,100,0,0),
(28669,18,6575.966,-4030.918,546.2137,100,0,0),
(28669,19,6743.058,-4188.865,546.2137,100,0,0),
(28669,20,6896.725,-4247.418,577.3526,100,0,0),
(28669,21,6999.448,-4298.92,582.9353,100,0,0),
(28669,22,7100.701,-4416.983,611.0741,100,0,0),
(28669,23,7116.469,-4555.864,660.6572,100,0,0),
(28669,24,7057.505,-4669.796,675.6574,100,0,0),
(28669,25,6947.491,-4771.33,660.6572,100,0,0),
(28669,26,6758.396,-4783.884,626.5463,100,0,0),
(28669,27,6650.223,-4701.149,597.2407,100,0,0),
(28669,28,6627.306,-4597.556,586.0188,100,0,0),
(28669,29,6613.611,-4439.712,592.6573,100,0,0),
(28669,30,6526.06,-4289.037,568.1019,100,0,0),
(28669,31,6401.896,-4215.937,538.5742,100,0,0),
(28669,32,6286.808,-4191.781,518.3241,100,0,0),
(28669,33,6204.36,-4223.743,465.0742,100,0,0),
(28669,34,6134.582,-4239.067,386.1299,100,0,0),
(28669,35,5995.454,-4246.94,428.5185,100,0,0),
(28669,36,5909.651,-4251.924,428.5185,100,0,0),
(28669,37,5792.211,-4212.291,428.5185,100,0,0),
(28669,38,5656.491,-4115.374,428.5185,100,0,0),
(28669,39,5549.697,-3983.661,428.5185,100,0,0),
(28669,40,5495.661,-3853.954,428.5185,100,0,0),
(28669,41,5463.381,-3751.72,428.5185,100,0,0),
(28669,42,5430.445,-3669.375,428.5185,100,0,0),
(28669,43,5348.065,-3559.13,406.3796,100,0,0),
(28669,44,5240.038,-3418.709,381.4073,100,0,0),
(28669,45,5160.26,-3335.475,381.4073,100,0,0),
(28669,46,5044.02,-3214.565,381.4073,100,0,0),
(28669,47,4994.617,-3163.257,381.4073,100,0,0),
(28669,48,4929.424,-3062.172,381.4073,100,0,0),
(28669,49,4874.155,-2945.799,381.4073,100,0,0),
(28669,50,4892.917,-2768.813,381.4073,100,0,0),
(28669,51,5019.182,-2627.008,381.4073,100,0,0),
(28669,52,5067.444,-2519.115,381.4073,100,0,0),
(28669,53,5081.711,-2367.998,381.4073,100,0,0),
(28669,54,5152.338,-2120.359,419.4349,100,0,0),
(28669,55,5368.514,-1851.122,422.8514,100,0,0),
(28669,56,5660.992,-1784.473,360.5462,100,0,0),
(28669,57,5851.7,-1800.855,350.1305,100,0,0),
(28669,58,6030.714,-1863.997,348.1571,100,0,0),
(28669,59,6103.75,-1910.458,354.3242,100,0,0),
(28669,60,6163.79,-1944.525,374.379,100,0,0),
(28669,61,6183.492,-1976.164,410.129,100,0,0),
(28669,62,6184.051,-1991.26,417.3231,100,0,0),
(28669,63,6184.051,-1991.26,417.3231,100,0,0),
(28669,64,6184.051,-1991.26,417.3231,100,5000,2866901);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (58,2866901);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2866901,1,35,5,0,0,0,0,0,0,0,0,0,0,0,0,0,'throw self event 5'),
(2866901,2,15,52220,0,0,0,0,0,0,0,0,0,0,0,0,0,'self cast'),
(2866901,3,15,50630,0,0,0,0,0,0,0,0,0,0,0,0,0,'self cast'),
(2866901,4,15,52193,0,0,0,0,0,0,0,0,0,0,0,0,0,'cast on player'),
(2866901,100,18,0,0,0,0,0,4,0,0,0,0,0,0,0,0,'');
UPDATE creature SET position_x = 6071.045, position_y = -2087.786, position_z = 422.9399, orientation = 6.055491 WHERE id = 28666;
UPDATE gossip_menu_option SET action_script_id = 973201 WHERE menu_id=9732;
DELETE FROM dbscripts_on_gossip WHERE id = 973200;
DELETE FROM dbscripts_on_gossip WHERE id = 973201;
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, condition_id, comments) VALUES
(973201,0,15,52194,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'cast Force Cast Summon Gargoyle'),
(973201,1,14,51966,0,0,0,0,2,0,0,0,0,0,0,0,0,0,'remove aura'),
(973201,2,14,52192,0,0,0,0,2,0,0,0,0,0,0,0,0,0,'remove aura');
DELETE FROM `creature` WHERE `guid` = 78284;
DELETE FROM `creature` WHERE `guid` = 78285;
DELETE FROM `creature` WHERE `guid` = 78288;
DELETE FROM `creature` WHERE `guid` = 78286;
DELETE FROM `creature` WHERE `guid` = 78289;
DELETE FROM `creature` WHERE `guid` = 77052;
DELETE FROM `creature` WHERE `guid` = 78282;
DELETE FROM `creature` WHERE `guid` = 78281;
DELETE FROM `creature` WHERE `guid` = 78287;
DELETE FROM `creature` WHERE `guid` = 78283;
UPDATE creature SET spawndist = 0, MovementType = 0 WHERE id = 28717;

DELETE FROM dbscripts_on_quest_end WHERE id = 3906;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(3906,1,31,9078,100,0,0,0,0,0,0,0,0,0,0,0,0,'search for 9078'),
(3906,10,0,0,0,0,9078,100,0,4717,0,0,0,0,0,0,0,''),
(3906,4000,31,9081,100,0,0,0,0,0,0,0,0,0,0,0,0,'search for 9081'),
(3906,4100,0,0,0,0,9081,100,0,4718,0,0,0,0,0,0,0,'');
UPDATE quest_template SET CompleteScript = 3906 WHERE entry = 3906;
UPDATE `creature` SET `position_x` = '-6690.13', `position_y` = '-2161.77', `position_z` = '244.195' WHERE `guid` =7318;

INSERT INTO worldstate_name(Id, Name) VALUES
(3127,'Alterac Valley - Score Alliance'),
(3128,'Alterac Valley - Score Horde'),
(3133,'Alterac Valley - Score Enabled Horde'),
(3134,'Alterac Valley - Score Enabled Alliance'),
(1966,'Alterac Valley - Snowfall Neutral'),
(1341,'Alterac Valley - Snowfall Alliance'),
(1343,'Alterac Valley - Snowfall Alliance contested'),
(1342,'Alterac Valley - Snowfall Horde'),
(1344,'Alterac Valley - Snowfall Horde contested'),
(1358,'Alterac Valley - Irondeep Alliance'),
(1359,'Alterac Valley - Irondeep Horde'),
(1360,'Alterac Valley - Irondeep Neutral'),
(1355,'Alterac Valley - Coldtooth Alliance'),
(1356,'Alterac Valley - Coldtooth Horde'),
(1357,'Alterac Valley - Coldtooth Neutral'),
(1326,'Alterac Valley - Dun Baldar Graveyard Alliance Contested'),
(1325,'Alterac Valley - Dun Baldar Graveyard Alliance'),
(1328,'Alterac Valley - Dun Baldar Graveyard Horde Contested'),
(1327,'Alterac Valley - Dun Baldar Graveyard Horde'),
(1335,'Alterac Valley - Stormpike Graveyard Alliance Contested'),
(1333,'Alterac Valley - Stormpike Graveyard Alliance'),
(1336,'Alterac Valley - Stormpike Graveyard Horde Contested'),
(1334,'Alterac Valley - Stormpike Graveyard Horde'),
(1304,'Alterac Valley - Stoneheart Graveyard Alliance Contested'),
(1302,'Alterac Valley - Stoneheart Graveyard Alliance'),
(1303,'Alterac Valley - Stoneheart Graveyard Horde Contested'),
(1301,'Alterac Valley - Stoneheart Graveyard Horde'),
(1348,'Alterac Valley - Iceblood Graveyard Alliance Contested'),
(1346,'Alterac Valley - Iceblood Graveyard Alliance'),
(1349,'Alterac Valley - Iceblood Graveyard Horde Contested'),
(1347,'Alterac Valley - Iceblood Graveyard Horde'),
(1339,'Alterac Valley - Frostwolf Graveyard Alliance Contested'),
(1337,'Alterac Valley - Frostwolf Graveyard Alliance'),
(1340,'Alterac Valley - Frostwolf Graveyard Horde Contested'),
(1338,'Alterac Valley - Frostwolf Graveyard Horde'),
(1375,'Alterac Valley - South Bunker Alliance Contested'),
(1361,'Alterac Valley - South Bunker Alliance'),
(1378,'Alterac Valley - South Bunker Horde Contested'),
(1370,'Alterac Valley - South Bunker Horde'),
(1374,'Alterac Valley - North Bunker Alliance Contested'),
(1362,'Alterac Valley - North Bunker Alliance'),
(1379,'Alterac Valley - North Bunker Horde Contested'),
(1371,'Alterac Valley - North Bunker Horde'),
(1376,'Alterac Valley - Icewing Bunker Alliance Contested'),
(1363,'Alterac Valley - Icewing Bunker Alliance'),
(1380,'Alterac Valley - Icewing Bunker Horde Contested'),
(1372,'Alterac Valley - Icewing Bunker Horde'),
(1377,'Alterac Valley - Stoneheart Bunker Alliance Contested'),
(1364,'Alterac Valley - Stoneheart Bunker Alliance'),
(1381,'Alterac Valley - Stoneheart Bunker Horde Contested'),
(1373,'Alterac Valley - Stoneheart Bunker Horde'),
(1390,'Alterac Valley - Iceblood Tower Alliance Contested'),
(1368,'Alterac Valley - Iceblood Tower Alliance'),
(1395,'Alterac Valley - Iceblood Tower Horde Contested'),
(1385,'Alterac Valley - Iceblood Tower Horde'),
(1389,'Alterac Valley - Tower Point Alliance Contested'),
(1367,'Alterac Valley - Tower Point Alliance'),
(1394,'Alterac Valley - Tower Point Horde Contested'),
(1384,'Alterac Valley - Tower Point Horde'),
(1388,'Alterac Valley - East Tower Alliance Contested'),
(1366,'Alterac Valley - East Tower Alliance'),
(1393,'Alterac Valley - East Tower Horde Contested'),
(1383,'Alterac Valley - East Tower Horde'),
(1387,'Alterac Valley - West Tower Alliance Contested'),
(1365,'Alterac Valley - West Tower Alliance'),
(1392,'Alterac Valley - West Tower Horde Contested'),
(1382,'Alterac Valley - West Tower Horde');

INSERT INTO worldstate_name(Id, Name) VALUES
(3559,'Strand of the Ancients - Timer Minutes'),
(3560,'Strand of the Ancients - Timer Seconds Second Digit'),
(3561,'Strand of the Ancients - Timer Seconds First Digit'),
(3564,'Strand of the Ancients - Timer Enabled'),
(3571,'Strand of the Ancients - Bonus Timer'),
(4352,'Strand of the Ancients - Attacker Alliance'),
(4353,'Strand of the Ancients - Attacker Horde'),
(3614,'Strand of the Ancients - Purple Gate State'),
(3617,'Strand of the Ancients - Red Gate State'),
(3620,'Strand of the Ancients - Blue Gate State'),
(3623,'Strand of the Ancients - Green Gate State'),
(3638,'Strand of the Ancients - Yellow Gate State'),
(3849,'Strand of the Ancients - Ancient Gate State'),
(3635,'Strand of the Ancients - Left Graveyard Alliance'),
(3636,'Strand of the Ancients - Right Graveyard '),
(3637,'Strand of the Ancients - Center Graveyard '),
(3633,'Strand of the Ancients - Left Graveyard'),
(3632,'Strand of the Ancients - Right Graveyard'),
(3634,'Strand of the Ancients - Center Graveyard'),
(3627,'Strand of the Ancients - Right Attack Token Alliance'),
(3626,'Strand of the Ancients - Left Attack Token Alliance'),
(3628,'Strand of the Ancients - Right Attack Token Horde'),
(3629,'Strand of the Ancients - Left Attack Token Horde'),
(3631,'Strand of the Ancients - Defense Token Horde'),
(3630,'Strand of the Ancients - Defense Token Alliance');

INSERT INTO worldstate_name(Id, Name) VALUES
(4221,'Isle of Conquest - Alliance Reinforcements Enabled'),
(4222,'Isle of Conquest - Horde Reinforcements Enabled'),
(4226,'Isle of Conquest - Alliance Reinforcements Count'),
(4227,'Isle of Conquest - Horde Reinforcements Count'),
(4317,'Isle of Conquest - Front Gate Horde Closed'),
(4318,'Isle of Conquest - West Gate Horde Closed'),
(4319,'Isle of Conquest - East Gate Horde Closed'),
(4328,'Isle of Conquest - Front Gate Alliance Closed'),
(4327,'Isle of Conquest - West Gate Alliance Closed'),
(4326,'Isle of Conquest - East Gate Alliance Closed'),
(4322,'Isle of Conquest - Front Gate Horde Open'),
(4321,'Isle of Conquest - West Gate Horde Open'),
(4320,'Isle of Conquest - East Gate Horde Open'),
(4323,'Isle of Conquest - Front Gate Alliance Open'),
(4324,'Isle of Conquest - West Gate Alliance Open'),
(4325,'Isle of Conquest - East Gate Alliance Open'),
(4301,'Isle of Conquest - Docks Uncontrolled'),
(4305,'Isle of Conquest - Docks Contested Alliance'),
(4302,'Isle of Conquest - Docks Contested Horde'),
(4304,'Isle of Conquest - Docks Controlled Alliance'),
(4303,'Isle of Conquest - Docks Controlled Horde'),
(4296,'Isle of Conquest - Hangar Uncontrolled'),
(4300,'Isle of Conquest - Hangar Contested Alliance'),
(4297,'Isle of Conquest - Hangar Contested Horde'),
(4299,'Isle of Conquest - Hangar Controlled Alliance'),
(4298,'Isle of Conquest - Hangar Controlled Horde'),
(4294,'Isle of Conquest - Workshop Uncontrolled'),
(4228,'Isle of Conquest - Workshop Contested Alliance'),
(4293,'Isle of Conquest - Workshop Contested Horde'),
(4229,'Isle of Conquest - Workshop Controlled Alliance'),
(4230,'Isle of Conquest - Workshop Controlled Horde'),
(4306,'Isle of Conquest - Quarry Uncontrolled'),
(4310,'Isle of Conquest - Quarry Contested Alliance'),
(4307,'Isle of Conquest - Quarry Contested Horde'),
(4309,'Isle of Conquest - Quarry Controlled Alliance'),
(4308,'Isle of Conquest - Quarry Controlled Horde'),
(4311,'Isle of Conquest - Refinery Uncontrolled'),
(4315,'Isle of Conquest - Refinery Contested Alliance'),
(4312,'Isle of Conquest - Refinery Contested Horde'),
(4314,'Isle of Conquest - Refinery Controlled Alliance'),
(4313,'Isle of Conquest - Refinery Controlled Horde'),
(4341,'Isle of Conquest - Alliance Keep Uncontrolled'),
(4342,'Isle of Conquest - Alliance Keep Contested Alliance'),
(4343,'Isle of Conquest - Alliance Keep Contested Horde'),
(4339,'Isle of Conquest - Alliance Keep Controlled Alliance'),
(4340,'Isle of Conquest - Alliance Keep Controlled Horde'),
(4346,'Isle of Conquest - Horde Keep Uncontrolled'),
(4347,'Isle of Conquest - Horde Keep Contested Alliance'),
(4348,'Isle of Conquest - Horde Keep Contested Horde'),
(4344,'Isle of Conquest - Horde Keep Controlled Alliance'),
(4345,'Isle of Conquest - Horde Keep Controlled Horde');

UPDATE `spell_script_target` SET `inverseEffectMask` = 2 WHERE `entry` = 8913;
UPDATE `spell_script_target` SET `inverseEffectMask` = 2 WHERE `entry` = 21794;
UPDATE `spell_script_target` SET `inverseEffectMask` = 2 WHERE `entry` = 21866;
UPDATE `spell_script_target` SET `inverseEffectMask` = 2 WHERE `entry` = 34630;
UPDATE `spell_script_target` SET `inverseEffectMask` = 2 WHERE `entry` = 36817;
UPDATE `spell_script_target` SET `inverseEffectMask` = 2 WHERE `entry` = 37204;
UPDATE `spell_script_target` SET `inverseEffectMask` = 2 WHERE `entry` = 37205;
UPDATE `spell_script_target` SET `inverseEffectMask` = 2 WHERE `entry` = 37206;
UPDATE `spell_script_target` SET `inverseEffectMask` = 2 WHERE `entry` = 38099;
UPDATE `spell_script_target` SET `inverseEffectMask` = 2 WHERE `entry` = 38100;
UPDATE `spell_script_target` SET `inverseEffectMask` = 2 WHERE `entry` = 38101;
UPDATE `spell_script_target` SET `inverseEffectMask` = 2 WHERE `entry` = 38102;
UPDATE `spell_script_target` SET `inverseEffectMask` = 2 WHERE `entry` = 38103;
UPDATE `spell_script_target` SET `inverseEffectMask` = 2 WHERE `entry` = 38104;
UPDATE `spell_script_target` SET `inverseEffectMask` = 2 WHERE `entry` = 38105;
UPDATE `spell_script_target` SET `inverseEffectMask` = 2 WHERE `entry` = 38106;
UPDATE `spell_script_target` SET `inverseEffectMask` = 2 WHERE `entry` = 62386;
UPDATE `spell_script_target` SET `inverseEffectMask` = 2 WHERE `entry` = 65590;
UPDATE `spell_script_target` SET `inverseEffectMask` = 2 WHERE `entry` = 69767;

UPDATE creature_template SET MovementType=0, InhabitType=4 WHERE entry=29863;
UPDATE `creature_template` SET `SpeedWalk` = '1', `SpeedRun` = '1.14286', `Expansion` = '2', `MechanicImmuneMask` = '0' WHERE `Entry` =28669;
UPDATE `creature` SET `position_x` = '5211.84', `position_y` = '-1302.07', `position_z` = '242.486', `orientation` = '5.35816' WHERE `guid` =62372;
UPDATE `creature_template` SET `MinLevel` = '76', `MaxLevel` = '76', `UnitFlags` = '33587968', `MinLevelHealth` = '11001', `MaxLevelHealth` = '11001', `Armor` = '8520', `MechanicImmuneMask` = '0' WHERE `Entry` =29863;
UPDATE `creature` SET `position_x` = '5209.96', `position_y` = '-1331.44', `position_z` = '242.759', `orientation` = '1.32645', `spawntimesecsmin` = '300', `spawntimesecsmax` = '300' WHERE `guid` =120638;
DELETE FROM vehicle_accessory WHERE vehicle_entry = 29863;
INSERT INTO vehicle_accessory (vehicle_entry, seat, accessory_entry, comment) VALUES (29863,0,28518,'Persistence, Stefan Vadu');
DELETE FROM dbscripts_on_relay WHERE id IN (20634,20635);
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, condition_id, comments) VALUES
(20634,0,29,3,0,0,0,0,0x04,0,0,0,0,0,0,0,0,0,'Remove NPC FLAGS'),
(20634,0,42,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,0,'Remove eqip'),
(20634,2000,29,3,1,0,0,0,0x04,0,0,0,0,0,0,0,0,0,'Add NPC FLAGS'),
(20634,2001,23,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,0,'demorph'),
(20634,2002,42,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,0,'Reset eqip'),
(20634,4000,31,29863,30,0,0,0,0,0,0,0,0,0,0,0,0,0,'search for 29863'),
(20634,4100,35,5,30,0,0,0,0,0,0,0,0,0,0,0,0,0,'self send event AI 5'),
(20634,8000,0,0,0,0,0,0,0,30477,30478,30479,0,0,0,0,0,0,'random say'),
(20635,10,39,1,0,0,0,0,2|0x08,0,0,0,0,0,0,0,0,0,'Fly ON'),
(20635,1000,37,0,0,0,0,0,2,0,0,0,0,0,0,0,0,0,''),
(20635,3000,39,0,0,0,0,0,2|0x08,0,0,0,0,0,0,0,0,0,'Fly OFF');

UPDATE `gossip_menu_option` SET `action_script_id` = '973101' WHERE `menu_id` =9731 AND `id` =0;
DELETE FROM dbscripts_on_gossip WHERE id IN (973100,973101);
INSERT INTO `dbscripts_on_gossip` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `datafloat`, `x`, `y`, `z`, `o`, `speed`, `condition_id`, `comments`) VALUES
(973101, 0, 0, 15, 52863, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'teleport');
UPDATE `gameobject` SET `spawnMask` = '0' WHERE `id` =190897;
UPDATE `gameobject` SET `spawnMask` = '0' WHERE `id` =190816;

DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id IN (3125));
DELETE FROM creature_movement WHERE id IN (SELECT guid FROM creature WHERE id IN (3125));
DELETE FROM creature WHERE id IN (3125);
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(34163, 3125, 1, 1, 1, 0, 0, 197.564, -4969.24, 13.6588, 5.01189, 300, 300, 10, 0, 0, 0, 0, 1),
(34350, 3125, 1, 1, 1, 0, 0, 188.641, -5019.8, 12.6547, 1.27263, 300, 300, 10, 0, 0, 0, 0, 1),
(34382, 3125, 1, 1, 1, 0, 0, -688.159, -4987.74, 19.7873, 1.46316, 300, 300, 10, 0, 0, 0, 0, 1),
(34419, 3125, 1, 1, 1, 0, 0, -284.233, -4857.56, 34.3123, 4.82708, 300, 300, 10, 0, 0, 0, 0, 1),
(34518, 3125, 1, 1, 1, 0, 0, -848.249, -4618.33, 44.8452, 3.47964, 300, 300, 10, 0, 0, 0, 0, 1),
(34561, 3125, 1, 1, 1, 0, 0, -344.096, -4845.91, 39.8805, 4.78467, 300, 300, 10, 0, 0, 0, 0, 1),
(34660, 3125, 1, 1, 1, 0, 0, -663.184, -4903.87, 30.8102, 5.48121, 300, 300, 10, 0, 0, 0, 0, 1),
(34779, 3125, 1, 1, 1, 0, 0, 304.512, -4987.1, 17.1312, 0.056691, 300, 300, 5, 0, 0, 0, 0, 1),
(34858, 3125, 1, 1, 1, 0, 0, 294.561, -5019.29, 13.4365, 5.79937, 300, 300, 10, 0, 0, 0, 0, 1),
(34925, 3125, 1, 1, 1, 0, 0, 232.716, -5084.86, 11.0905, 0.00069, 300, 300, 10, 0, 0, 0, 0, 1),
(34970, 3125, 1, 1, 1, 0, 0, -691.481, -4957.31, 23.1926, 2.13768, 300, 300, 10, 0, 0, 0, 0, 1),
(34972, 3125, 1, 1, 1, 0, 0, -746.218, -4744.62, 31.5489, 5.28711, 300, 300, 5, 0, 0, 0, 0, 1),
(35003, 3125, 1, 1, 1, 0, 0, -486.359, -4824.19, 36.5391, 3.16307, 300, 300, 10, 0, 0, 0, 0, 1),
(35040, 3125, 1, 1, 1, 0, 0, -688.767, -5045.84, 17.2011, 5.91665, 300, 300, 10, 0, 0, 0, 0, 1),
(35049, 3125, 1, 1, 1, 0, 0, -591.821, -4809.46, 32.2656, 6.02258, 300, 300, 10, 0, 0, 0, 0, 1),
(35096, 3125, 1, 1, 1, 0, 0, -786.505, -4714.73, 31.3035, 0.391032, 300, 300, 5, 0, 0, 0, 0, 1),
(35167, 3125, 1, 1, 1, 0, 0, -680.672, -4655.35, 38.1271, 5.48074, 300, 300, 10, 0, 0, 0, 0, 1),
(35364, 3125, 1, 1, 1, 0, 0, 236.772, -5057.58, 11.2487, 3.62075, 300, 300, 10, 0, 0, 0, 0, 1),
(35383, 3125, 1, 1, 1, 0, 0, -781.204, -4705.88, 32.8319, 0.871088, 300, 300, 5, 0, 0, 0, 0, 1),
(35387, 3125, 1, 1, 1, 0, 0, 345.725, -5016.48, 19.2973, 3.53756, 300, 300, 5, 0, 0, 0, 0, 1),
(35412, 3125, 1, 1, 1, 0, 0, 210.404, -4972.72, 14.4258, 4.35227, 300, 300, 10, 0, 0, 0, 0, 1),
(33857, 3125, 1, 1, 1, 0, 0, -103.086, -4657.6, 33.676, 5.68737, 300, 300, 0, 0, 0, 0, 0, 2),
(35513, 3125, 1, 1, 1, 0, 0, 326.787, -5118.37, 3.74095, 5.82804, 300, 300, 10, 0, 0, 0, 0, 1),
(35567, 3125, 1, 1, 1, 0, 0, 27.9387, -5073.43, 8.73164, 1.389, 300, 300, 5, 0, 0, 0, 0, 1),
(35586, 3125, 1, 1, 1, 0, 0, 114.34, -5121.52, 1.79737, 1.3141, 300, 300, 5, 0, 0, 0, 0, 1),
(35636, 3125, 1, 1, 1, 0, 0, -788.5, -4724.95, 30.19, 5.00945, 300, 300, 5, 0, 0, 0, 0, 1),
(35691, 3125, 1, 1, 1, 0, 0, 77.7985, -4921.86, 12.4946, 4.80623, 300, 300, 5, 0, 0, 0, 0, 1),
(35751, 3125, 1, 1, 1, 0, 0, 104.669, -4977.64, 11.5578, 5.67838, 300, 300, 5, 0, 0, 0, 0, 1),
(35770, 3125, 1, 1, 1, 0, 0, 244.559, -5122.25, 5.86734, 4.03674, 300, 300, 10, 0, 0, 0, 0, 1),
(35846, 3125, 1, 1, 1, 0, 0, -731.343, -5038.89, 15.7219, 0.526424, 300, 300, 10, 0, 0, 0, 0, 1),
(35861, 3125, 1, 1, 1, 0, 0, -553.688, -4840.2, 36.8342, 0.307318, 300, 300, 10, 0, 0, 0, 0, 1),
(35891, 3125, 1, 1, 1, 0, 0, -761.495, -4582.7, 51.4225, 2.88905, 300, 300, 5, 0, 0, 0, 0, 1),
(35914, 3125, 1, 1, 1, 0, 0, -658.536, -4858.06, 40.104, 6.23604, 300, 300, 5, 0, 0, 0, 0, 1),
(35915, 3125, 1, 1, 1, 0, 0, -622.742, -4823.74, 26.245, 5.37773, 300, 300, 5, 0, 0, 0, 0, 1),
(35942, 3125, 1, 1, 1, 0, 0, 318.62, -5042.76, 12.2757, 1.22002, 300, 300, 5, 0, 0, 0, 0, 1),
(36033, 3125, 1, 1, 1, 0, 0, 158.573, -5011.06, 9.11651, 0.315578, 300, 300, 10, 0, 0, 0, 0, 1),
(36057, 3125, 1, 1, 1, 0, 0, -588.754, -4895.5, 34.1713, 5.79334, 300, 300, 10, 0, 0, 0, 0, 1),
(36059, 3125, 1, 1, 1, 0, 0, -832.27, -4638.75, 41.8502, 0.36212, 300, 300, 10, 0, 0, 0, 0, 1),
(36131, 3125, 1, 1, 1, 0, 0, -432.512, -4854.03, 37.6829, 3.34396, 300, 300, 5, 0, 0, 0, 0, 1),
(36250, 3125, 1, 1, 1, 0, 0, -188.732, -4844.76, 24.6295, 0.350773, 300, 300, 5, 0, 0, 0, 0, 1),
(36308, 3125, 1, 1, 1, 0, 0, -823.612, -4577.57, 51.0542, 2.32748, 300, 300, 10, 0, 0, 0, 0, 1),
(33881, 3125, 1, 1, 1, 0, 0, -405.919, -4717.56, 44.4453, 1.7138, 300, 300, 0, 0, 0, 0, 0, 2),
(36314, 3125, 1, 1, 1, 0, 0, -478.389, -4839.04, 37.4476, 5.6407, 300, 300, 10, 0, 0, 0, 0, 1),
(36339, 3125, 1, 1, 1, 0, 0, -725.941, -4613.79, 41.1353, 2.89472, 300, 300, 10, 0, 0, 0, 0, 1),
(36366, 3125, 1, 1, 1, 0, 0, -622.387, -4837.24, 26.4352, 2.81737, 300, 300, 5, 0, 0, 0, 0, 1),
(36526, 3125, 1, 1, 1, 0, 0, 189.8, -5111.89, 5.41148, 4.58126, 300, 300, 10, 0, 0, 0, 0, 1),
(36599, 3125, 1, 1, 1, 0, 0, 284.559, -5082.87, 9.10461, 5.91688, 300, 300, 10, 0, 0, 0, 0, 1),
(36603, 3125, 1, 1, 1, 0, 0, -646.478, -4928.2, 30.3386, 0.305683, 300, 300, 10, 0, 0, 0, 0, 1),
(34090, 3125, 1, 1, 1, 0, 0, -121.162, -4709.15, 28.195, 0.263307, 300, 300, 0, 0, 0, 0, 0, 2),
(36646, 3125, 1, 1, 1, 0, 0, 65.0834, -5017.19, 10.4039, 3.16893, 300, 300, 5, 0, 0, 0, 0, 1),
(36669, 3125, 1, 1, 1, 0, 0, 19.2551, -4813.54, 23.2508, 2.94343, 300, 300, 5, 0, 0, 0, 0, 1),
(36691, 3125, 1, 1, 1, 0, 0, -706.37, -5014.12, 17.3949, 3.1391, 300, 300, 10, 0, 0, 0, 0, 1),
(36730, 3125, 1, 1, 1, 0, 0, 286.425, -4947.95, 22.0564, 0.37362, 300, 300, 5, 0, 0, 0, 0, 1),
(36743, 3125, 1, 1, 1, 0, 0, 250.882, -4982.37, 19.254, 0.367454, 300, 300, 10, 0, 0, 0, 0, 1),
(36755, 3125, 1, 1, 1, 0, 0, -747.245, -4649.64, 41.1089, 1.13075, 300, 300, 5, 0, 0, 0, 0, 1),
(36855, 3125, 1, 1, 1, 0, 0, -781.648, -4611.14, 45.3457, 1.09142, 300, 300, 10, 0, 0, 0, 0, 1),
(36865, 3125, 1, 1, 1, 0, 0, -138.576, -4819.18, 23.9827, 2.97676, 300, 300, 5, 0, 0, 0, 0, 1),
(36871, 3125, 1, 1, 1, 0, 0, -79.0009, -4787.46, 24.0587, 1.52928, 300, 300, 5, 0, 0, 0, 0, 1),
(36899, 3125, 1, 1, 1, 0, 0, 80.1492, -4814.94, 18.7142, 1.11149, 300, 300, 5, 0, 0, 0, 0, 1),
(36917, 3125, 1, 1, 1, 0, 0, -677.986, -4930.12, 25.1055, 5.28631, 300, 300, 10, 0, 0, 0, 0, 1),
(36996, 3125, 1, 1, 1, 0, 0, -554.579, -4777.85, 36.107, 5.90087, 300, 300, 10, 0, 0, 0, 0, 1),
(37043, 3125, 1, 1, 1, 0, 0, 132.915, -4918.65, 12.9131, 0.240713, 300, 300, 5, 0, 0, 0, 0, 1),
(37144, 3125, 1, 1, 1, 0, 0, -17.9669, -4769.81, 25.2121, 3.4207, 300, 300, 5, 0, 0, 0, 0, 1),
(37214, 3125, 1, 1, 1, 0, 0, 249.331, -4915.08, 20.4446, 1.65686, 300, 300, 10, 0, 0, 0, 0, 1),
(37236, 3125, 1, 1, 1, 0, 0, 41.419, -4856.5, 18.8172, 0.117801, 300, 300, 5, 0, 0, 0, 0, 1),
(37245, 3125, 1, 1, 1, 0, 0, -815.818, -4781.79, 23.1941, 3.73485, 300, 300, 5, 0, 0, 0, 0, 1),
(37321, 3125, 1, 1, 1, 0, 0, -451.499, -4820.5, 38.2678, 4.0887, 300, 300, 10, 0, 0, 0, 0, 1),
(37331, 3125, 1, 1, 1, 0, 0, -1021.26, -4858.54, 10.0914, 4.92695, 300, 300, 10, 0, 0, 0, 0, 1),
(37391, 3125, 1, 1, 1, 0, 0, 208.736, -4882.42, 14.6597, 6.22455, 300, 300, 10, 0, 0, 0, 0, 1),
(34147, 3125, 1, 1, 1, 0, 0, -327.766, -4760.08, 36.7095, 6.08023, 300, 300, 0, 0, 0, 0, 0, 2),
(37406, 3125, 1, 1, 1, 0, 0, -886.264, -4782.01, 20.216, 3.31259, 300, 300, 5, 0, 0, 0, 0, 1);
INSERT INTO `creature_movement` (`Id`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`, `Comment`) VALUES
(34147, 1, -327.766, -4760.08, 36.6491, 6.08023, 0, 0, NULL),
(34147, 2, -307.026, -4757.96, 36.3603, 0.091569, 0, 0, NULL),
(34147, 3, -286.811, -4756.11, 34.1922, 0.091569, 0, 0, NULL),
(34147, 4, -272.284, -4754.77, 34.1844, 0.091569, 0, 0, NULL),
(34147, 5, -265.5, -4753.05, 33.6913, 0.248648, 0, 0, NULL),
(34147, 6, -256.536, -4741.59, 32.2737, 1.27752, 0, 0, NULL),
(34147, 7, -256.426, -4725.89, 33.2756, 1.64509, 0, 0, NULL),
(34147, 8, -257.675, -4709.1, 34.2231, 1.64509, 0, 0, NULL),
(34147, 9, -260.288, -4699.09, 37.0144, 2.26163, 0, 0, NULL),
(34147, 10, -264.176, -4694.38, 38.3938, 2.57735, 0, 0, NULL),
(34147, 11, -269.589, -4690.96, 38.8834, 2.57735, 0, 0, NULL),
(34147, 12, -280.665, -4690.68, 39.2254, 3.14284, 0, 0, NULL),
(34147, 13, -291.292, -4693.17, 39.4739, 3.14284, 0, 0, NULL),
(34147, 14, -303.736, -4689.96, 41.9234, 2.97398, 0, 0, NULL),
(34147, 15, -311.884, -4690.42, 41.0454, 3.3926, 0, 0, NULL),
(34147, 16, -321.512, -4692.89, 40.3765, 3.3926, 0, 0, NULL),
(34147, 17, -337.345, -4696.95, 38.814, 3.3926, 0, 0, NULL),
(34147, 18, -347.369, -4707.03, 38.2411, 4.178, 0, 0, NULL),
(34147, 19, -357.466, -4726.06, 38.4795, 4.19449, 0, 0, NULL),
(34147, 20, -361.583, -4734.52, 39.4971, 4.2746, 0, 0, NULL),
(34147, 21, -366.072, -4742.29, 38.7492, 4.15679, 0, 0, NULL),
(34147, 22, -369.61, -4747.54, 40.3396, 4.15679, 0, 0, NULL),
(34147, 23, -361.003, -4753.41, 37.5095, 5.73073, 0, 0, NULL),
(34147, 24, -345.576, -4759.72, 36.8648, 6.04175, 0, 0, NULL),
(34090, 1, -121.162, -4709.15, 27.93, 0.263307, 0, 0, NULL),
(34090, 2, -103.324, -4704.22, 28.4752, 0.891626, 0, 0, NULL),
(34090, 3, -91.8912, -4693.48, 30.4882, 0.801305, 0, 0, NULL),
(34090, 4, -98.0826, -4668.58, 32.5437, 1.86159, 0, 0, NULL),
(34090, 5, -108.558, -4659.12, 33.0813, 2.46242, 0, 0, NULL),
(34090, 6, -123.121, -4652.93, 33.8118, 2.69804, 0, 0, NULL),
(34090, 7, -137.574, -4653.24, 35.3335, 3.14179, 0, 0, NULL),
(34090, 8, -152.153, -4651.58, 37.4562, 3.04362, 0, 0, NULL),
(34090, 9, -167.803, -4649.81, 37.7494, 3.02791, 0, 0, NULL),
(34090, 10, -186.079, -4647.93, 38.5911, 3.11038, 0, 0, NULL),
(34090, 11, -188.795, -4657.63, 36.2397, 4.62619, 0, 0, NULL),
(34090, 12, -189.618, -4669.97, 33.4692, 4.62619, 0, 0, NULL),
(34090, 13, -198.707, -4679.42, 33.1351, 3.95075, 0, 0, NULL),
(34090, 14, -209.977, -4691.24, 32.6171, 3.95075, 0, 0, NULL),
(34090, 15, -217.987, -4698.61, 31.033, 3.93112, 0, 0, NULL),
(34090, 16, -221.252, -4706.95, 29.1452, 4.28454, 0, 0, NULL),
(34090, 17, -226.853, -4716.18, 29.2998, 4.22171, 0, 0, NULL),
(34090, 18, -228.244, -4721.6, 29.3076, 4.46126, 0, 0, NULL),
(34090, 19, -222.968, -4725.64, 29.6394, 5.58437, 0, 0, NULL),
(34090, 20, -217.048, -4728.59, 31.5374, 5.95744, 0, 0, NULL),
(34090, 21, -209.686, -4728.02, 32.0704, 6.23311, 0, 0, NULL),
(34090, 22, -196.465, -4727.24, 32.0757, 0.122715, 0, 0, NULL),
(34090, 23, -178.542, -4717.88, 31.7107, 0.503633, 0, 0, NULL),
(34090, 24, -175.455, -4698, 32.316, 1.36757, 0, 0, NULL),
(34090, 25, -153.919, -4700.8, 30.4153, 6.09567, 0, 0, NULL),
(34090, 26, -141.606, -4706.08, 28.791, 5.94252, 0, 0, NULL),
(34090, 27, -132.901, -4712.47, 27.927, 5.68727, 0, 0, NULL),
(33881, 1, -406.087, -4716.63, 44.8804, 1.80953, 0, 0, NULL),
(33881, 2, -408.276, -4708.65, 45.1308, 1.80953, 0, 0, NULL),
(33881, 3, -409.576, -4703.31, 40.2804, 1.80953, 0, 0, NULL),
(33881, 4, -412.923, -4691.66, 39.5794, 1.88414, 0, 0, NULL),
(33881, 5, -419.728, -4679.76, 38.7276, 2.27762, 0, 0, NULL),
(33881, 6, -428.741, -4672.17, 37.967, 2.419, 0, 0, NULL),
(33881, 7, -439.755, -4664.31, 40.0006, 2.53681, 0, 0, NULL),
(33881, 8, -456.36, -4658.33, 40.9741, 2.85254, 0, 0, NULL),
(33881, 9, -460.767, -4666.47, 39.0189, 4.10132, 0, 0, NULL),
(33881, 10, -467.21, -4674.15, 36.7182, 3.98351, 0, 0, NULL),
(33881, 11, -478.211, -4682.6, 38.8073, 3.78559, 0, 0, NULL),
(33881, 12, -489.172, -4689.26, 36.6404, 3.66778, 0, 0, NULL),
(33881, 13, -494.44, -4693.17, 36.7468, 4.57256, 0, 0, NULL),
(33881, 14, -482.252, -4697.46, 36.8586, 5.98549, 0, 0, NULL),
(33881, 15, -470.356, -4697.13, 38.0726, 6.25881, 0, 0, NULL),
(33881, 16, -455.515, -4698.51, 38.4622, 6.13864, 0, 0, NULL),
(33881, 17, -444.913, -4710.9, 37.4488, 5.41922, 0, 0, NULL),
(33881, 18, -433.46, -4722.15, 38.8961, 5.42157, 0, 0, NULL),
(33881, 19, -424.593, -4731.05, 40.0664, 5.57944, 0, 0, NULL),
(33881, 20, -415.99, -4737.86, 40.2052, 5.85276, 0, 0, NULL),
(33881, 21, -409.609, -4729.68, 41.9805, 1.04298, 0, 0, NULL),
(33881, 22, -406.009, -4721.75, 41.9123, 1.27624, 0, 0, NULL),
(33857, 1, -103.086, -4657.6, 33.6479, 5.68737, 0, 0, NULL),
(33857, 2, -85.3881, -4677.97, 32.5394, 5.42426, 0, 0, NULL),
(33857, 3, -81.7362, -4701.13, 30.2284, 4.86271, 0, 0, NULL),
(33857, 4, -70.1425, -4695.94, 30.9405, 0.609772, 0, 0, NULL),
(33857, 5, -59.5394, -4681, 33.771, 0.967129, 0, 0, NULL),
(33857, 6, -54.5816, -4677.98, 35.3588, 0.440911, 0, 0, NULL),
(33857, 7, -49.7002, -4676.23, 38.9528, 0.440911, 0, 0, NULL),
(33857, 8, -46.3046, -4673.13, 41.046, 0.914507, 0, 0, NULL),
(33857, 9, -44.1007, -4670.26, 41.0807, 0.914507, 0, 0, NULL),
(33857, 10, -44.0761, -4665.47, 38.7072, 1.64807, 0, 0, NULL),
(33857, 11, -44.3984, -4659.13, 35.8799, 1.64807, 0, 0, NULL),
(33857, 12, -40.1175, -4644.03, 36.3342, 1.2593, 0, 0, NULL),
(33857, 13, -34.7326, -4631.52, 40.2554, 1.1729, 0, 0, NULL),
(33857, 14, -33.4486, -4622.9, 43.117, 1.41245, 0, 0, NULL),
(33857, 15, -45.7339, -4611.2, 44.6652, 2.38242, 0, 0, NULL),
(33857, 16, -59.8055, -4613.19, 43.9173, 3.26599, 0, 0, NULL),
(33857, 17, -72.1956, -4616.84, 41.993, 3.47412, 0, 0, NULL),
(33857, 18, -82.2069, -4628.65, 38.7271, 3.98463, 0, 0, NULL),
(33857, 19, -89.89, -4632.09, 38.1229, 3.61157, 0, 0, NULL),
(33857, 20, -103.297, -4625.97, 39.8145, 2.8026, 0, 0, NULL),
(33857, 21, -112.51, -4623.24, 41.5492, 2.8026, 0, 0, NULL),
(33857, 22, -116.701, -4640.65, 36.011, 4.50691, 0, 0, NULL),
(33857, 23, -116.177, -4648.41, 34.4998, 4.78023, 0, 0, NULL);

DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id IN (21455));
DELETE FROM creature_movement WHERE id IN (SELECT guid FROM creature WHERE id IN (21455));
DELETE FROM creature WHERE id IN (21455);
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(71191, 21455, 530, 1, 1, 0, 0, -3408, 1203.43, 62.595, 5.95157, 300, 300, 0, 0, 0, 0, 0, 0),
(71192, 21455, 530, 1, 1, 0, 0, -3401.35, 1190.95, 57.24, 1.16937, 300, 300, 0, 0, 0, 0, 0, 0),
(71156, 21455, 530, 1, 1, 0, 0, -3329.03, 1231.72, 73.322, 5, 300, 300, 0, 0, 0, 0, 0, 0),
(71158, 21455, 530, 1, 1, 0, 0, -3380.88, 1226.77, 67.3501, 2.05949, 300, 300, 0, 0, 0, 0, 0, 0),
(71193, 21455, 530, 1, 1, 0, 0, -3384.42, 1205.49, 64.8928, 3.42085, 300, 300, 0, 0, 0, 0, 0, 0),
(71194, 21455, 530, 1, 1, 0, 0, -3343.12, 1203.49, 68.0822, 0.017453, 300, 300, 0, 0, 0, 0, 0, 0),
(71195, 21455, 530, 1, 1, 0, 0, -3353.31, 1216.33, 68.3528, 5.21853, 300, 300, 0, 0, 0, 0, 0, 0),
(71196, 21455, 530, 1, 1, 0, 0, -3342.07, 1224.06, 72.2189, 5.25344, 300, 300, 0, 0, 0, 0, 0, 0),
(71198, 21455, 530, 1, 1, 0, 0, -3393.88, 1214.27, 65.71, 4.79, 300, 300, 0, 0, 0, 0, 0, 0),
(71161, 21455, 530, 1, 1, 0, 0, -3366.56, 1230, 69.316, 1.42, 300, 300, 0, 0, 0, 0, 0, 0),
(71199, 21455, 530, 1, 1, 0, 0, -3345.82, 1189.65, 63.7035, 0.366519, 300, 300, 0, 0, 0, 0, 0, 0),
(71200, 21455, 530, 1, 1, 0, 0, -3417.87, 1139.28, 49.31, 4.37, 300, 300, 0, 0, 0, 0, 0, 0),
(73350, 21455, 530, 1, 1, 0, 0, -3313.77, 1200.41, 67.3797, 2.42601, 300, 300, 0, 0, 0, 0, 0, 0),
(71162, 21455, 530, 1, 1, 0, 0, -3313.48, 1227.47, 75.26, 4.17134, 300, 300, 0, 0, 0, 0, 0, 0),
(73351, 21455, 530, 1, 1, 0, 0, -3174.95, 1140.08, 78.8016, 1.09956, 300, 300, 0, 0, 0, 0, 0, 0),
(71163, 21455, 530, 1, 1, 0, 0, -3170.12, 1115.74, 73.0459, 5.34071, 300, 300, 0, 0, 0, 0, 0, 0),
(73352, 21455, 530, 1, 1, 0, 0, -3313.35, 1157.94, 60.3042, 6.16101, 300, 300, 0, 0, 0, 0, 0, 0),
(73353, 21455, 530, 1, 1, 0, 0, -3326.85, 1116.35, 60.5507, 5.16617, 300, 300, 0, 0, 0, 0, 0, 0),
(73357, 21455, 530, 1, 1, 0, 0, -3325.76, 1154.69, 59.0762, 5.41052, 300, 300, 0, 0, 0, 0, 0, 0),
(73360, 21455, 530, 1, 1, 0, 0, -3214.56, 1138.7, 74.6943, 0, 300, 300, 0, 0, 0, 0, 0, 0),
(73361, 21455, 530, 1, 1, 0, 0, -3321.94, 1144.01, 62.2512, 0.994838, 300, 300, 0, 0, 0, 0, 0, 0),
(73362, 21455, 530, 1, 1, 0, 0, -3305.28, 1159.14, 62.3786, 3.4383, 300, 300, 0, 0, 0, 0, 0, 0),
(73363, 21455, 530, 1, 1, 0, 0, -3298.12, 1100.45, 60.3784, 3.54302, 300, 300, 0, 0, 0, 0, 0, 0),
(73364, 21455, 530, 1, 1, 0, 0, -3309.37, 1106.06, 61.7755, 4.72984, 300, 300, 0, 0, 0, 0, 0, 0),
(73365, 21455, 530, 1, 1, 0, 0, -3295.84, 1086, 57.0373, 3.12414, 300, 300, 0, 0, 0, 0, 0, 0),
(73366, 21455, 530, 1, 1, 0, 0, -3321.9, 1106.28, 60.8032, 4.06662, 300, 300, 0, 0, 0, 0, 0, 0),
(73367, 21455, 530, 1, 1, 0, 0, -3315.96, 1071.76, 56.7062, 3.12414, 300, 300, 0, 0, 0, 0, 0, 0),
(71170, 21455, 530, 1, 1, 0, 0, -3191.57, 1047.34, 68.328, 4.73, 300, 300, 0, 0, 0, 0, 0, 0),
(73368, 21455, 530, 1, 1, 0, 0, -3224.45, 1020.85, 64.4435, 3.05433, 300, 300, 0, 0, 0, 0, 0, 0),
(73369, 21455, 530, 1, 1, 0, 0, -3333.82, 1061.6, 49.7686, 0.541052, 300, 300, 0, 0, 0, 0, 0, 0),
(73370, 21455, 530, 1, 1, 0, 0, -3362.23, 1042.65, 45.5525, 3.47321, 300, 300, 0, 0, 0, 0, 0, 0),
(73371, 21455, 530, 1, 1, 0, 0, -3249.21, 898.291, 33.1782, 2.30383, 300, 300, 0, 0, 0, 0, 0, 0),
(73372, 21455, 530, 1, 1, 0, 0, -3266.42, 894.744, 24.165, 1.815, 300, 300, 0, 0, 0, 0, 0, 0),
(71171, 21455, 530, 1, 1, 0, 0, -3315.88, 1002.01, 40.7047, 1.37881, 300, 300, 0, 0, 0, 0, 0, 0),
(73373, 21455, 530, 1, 1, 0, 0, -3286.3, 936.568, 38.737, 3.61283, 300, 300, 0, 0, 0, 0, 0, 0),
(73376, 21455, 530, 1, 1, 0, 0, -3270.78, 939.565, 43.93, 3.48443, 300, 300, 0, 0, 0, 0, 0, 0),
(73377, 21455, 530, 1, 1, 0, 0, -3333.47, 995.415, 38.1228, 3.42085, 300, 300, 0, 0, 0, 0, 0, 0),
(73378, 21455, 530, 1, 1, 0, 0, -3346.39, 1006.65, 34.1415, 5.18363, 300, 300, 0, 0, 0, 0, 0, 0),
(73379, 21455, 530, 1, 1, 0, 0, -3355.28, 997.707, 29.3346, 5.77704, 300, 300, 0, 0, 0, 0, 0, 0),
(73381, 21455, 530, 1, 1, 0, 0, -3315.93, 889.346, -0.713264, 1.06465, 300, 300, 0, 0, 0, 0, 0, 0),
(73384, 21455, 530, 1, 1, 0, 0, -3270.02, 920.7, 41.7499, 5.09636, 300, 300, 0, 0, 0, 0, 0, 0),
(71173, 21455, 530, 1, 1, 0, 0, -3300.1, 889.834, 7.69428, 1.5708, 300, 300, 0, 0, 0, 0, 0, 0),
(73387, 21455, 530, 1, 1, 0, 0, -3277.2, 924.197, 40.2815, 4.50295, 300, 300, 0, 0, 0, 0, 0, 0),
(73388, 21455, 530, 1, 1, 0, 0, -3304.08, 918.116, 35.9056, 4.78318, 300, 300, 0, 0, 0, 0, 0, 0),
(73389, 21455, 530, 1, 1, 0, 0, -3282.25, 893.636, 16.3353, 1.44862, 300, 300, 0, 0, 0, 0, 0, 0),
(73390, 21455, 530, 1, 1, 0, 0, -3356.25, 973.667, 31.4845, 3.64774, 300, 300, 0, 0, 0, 0, 0, 0),
(73391, 21455, 530, 1, 1, 0, 0, -3346.71, 968.004, 29.8137, 3.735, 300, 300, 0, 0, 0, 0, 0, 0),
(73392, 21455, 530, 1, 1, 0, 0, -3346.23, 933.568, 28.3369, 1.53589, 300, 300, 0, 0, 0, 0, 0, 0),
(73393, 21455, 530, 1, 1, 0, 0, -3345.74, 942.641, 31.7562, 4.99164, 300, 300, 0, 0, 0, 0, 0, 0),
(73394, 21455, 530, 1, 1, 0, 0, -3363.76, 943.301, 25.5139, 3.01942, 300, 300, 0, 0, 0, 0, 0, 0),
(73396, 21455, 530, 1, 1, 0, 0, -3396.79, 947.521, 21.5163, 3.90954, 300, 300, 0, 0, 0, 0, 0, 0),
(73397, 21455, 530, 1, 1, 0, 0, -3376.51, 952.235, 25.0441, 0.10472, 300, 300, 0, 0, 0, 0, 0, 0),
(73398, 21455, 530, 1, 1, 0, 0, -3378.34, 935.224, 22.4447, 0.401426, 300, 300, 0, 0, 0, 0, 0, 0),
(73399, 21455, 530, 1, 1, 0, 0, -3338.53, 940.571, 30.7562, 2.63545, 300, 300, 0, 0, 0, 0, 0, 0),
(73400, 21455, 530, 1, 1, 0, 0, -3379.51, 986.245, 25.9995, 5.77704, 300, 300, 0, 0, 0, 0, 0, 0),
(73402, 21455, 530, 1, 1, 0, 0, -3345.4, 955.898, 28.589, 2.49582, 300, 300, 0, 0, 0, 0, 0, 0),
(73403, 21455, 530, 1, 1, 0, 0, -3378.01, 970.344, 26.0264, 5.77704, 300, 300, 0, 0, 0, 0, 0, 0),
(71179, 21455, 530, 1, 1, 0, 0, -3398.2, 970.029, 22.7224, 2.42601, 300, 300, 0, 0, 0, 0, 0, 0),
(73404, 21455, 530, 1, 1, 0, 0, -3332.77, 930.19, 30.4088, 3.63029, 300, 300, 0, 0, 0, 0, 0, 0),
(73405, 21455, 530, 1, 1, 0, 0, -3367.9, 975.318, 27.8533, 3.90954, 300, 300, 0, 0, 0, 0, 0, 0),
(73410, 21455, 530, 1, 1, 0, 0, -3343.05, 924.313, 28.1793, 0.523599, 300, 300, 0, 0, 0, 0, 0, 0),
(73412, 21455, 530, 1, 1, 0, 0, -3357.68, 922.807, 24.6527, 4.45059, 300, 300, 0, 0, 0, 0, 0, 0),
(71180, 21455, 530, 1, 1, 0, 0, -3349.48, 890.147, -13.0415, 0.593412, 300, 300, 0, 0, 0, 0, 0, 0),
(71188, 21455, 530, 1, 1, 0, 0, -3333.38, 886.389, -8.72764, 1.50098, 300, 300, 0, 0, 0, 0, 0, 0),
(73413, 21455, 530, 1, 1, 0, 0, -3366.7, 890.737, -16.6287, 1.58825, 300, 300, 0, 0, 0, 0, 0, 0),
(71189, 21455, 530, 1, 1, 0, 0, -3418.08, 894.901, -26.0922, 1.41372, 300, 300, 0, 0, 0, 0, 0, 0),
(73414, 21455, 530, 1, 1, 0, 0, -3400.88, 890.509, -22.7804, 1.79769, 300, 300, 0, 0, 0, 0, 0, 0),
(73415, 21455, 530, 1, 1, 0, 0, -3382.15, 890.675, -19.0369, 1.95477, 300, 300, 0, 0, 0, 0, 0, 0),
(73419, 21455, 530, 1, 1, 0, 0, -3194.41, 889.876, 51.7198, 5.5676, 180, 180, 0, 0, 0, 0, 0, 0),
(73422, 21455, 530, 1, 1, 0, 0, -3202.95, 902.151, 49.9862, 0.837758, 180, 180, 0, 0, 0, 0, 0, 0),
(73428, 21455, 530, 1, 1, 0, 0, -3329.55, 1187.46, 65.5767, 2.16421, 180, 180, 0, 0, 0, 0, 0, 0),
(73437, 21455, 530, 1, 1, 0, 0, -3251.08, 976.31, 48.1459, 6.23082, 180, 180, 0, 0, 0, 0, 0, 0),
(73439, 21455, 530, 1, 1, 0, 0, -3231.52, 997.717, 59.2313, 1.45149, 180, 180, 0, 0, 0, 0, 0, 0),
(73440, 21455, 530, 1, 1, 0, 0, -3231.95, 1018.78, 62.6671, 5.88176, 180, 180, 0, 0, 0, 0, 0, 0),
(73441, 21455, 530, 1, 1, 0, 0, -3254.02, 992.717, 51.3794, 1.44353, 180, 180, 0, 0, 0, 0, 0, 0),
(73442, 21455, 530, 1, 1, 0, 0, -3245.43, 1009.24, 59.9086, 0.663225, 180, 180, 0, 0, 0, 0, 0, 0),
(73443, 21455, 530, 1, 1, 0, 0, -3240.76, 1027.02, 61.4212, 0.15708, 180, 180, 0, 0, 0, 0, 0, 0),
(73448, 21455, 530, 1, 1, 0, 0, -3250.08, 1020.43, 58.8627, 0.418879, 180, 180, 0, 0, 0, 0, 0, 0),
(73449, 21455, 530, 1, 1, 0, 0, -3394.58, 1127.67, 51.0358, 5.86431, 180, 180, 0, 0, 0, 0, 0, 0),
(73455, 21455, 530, 1, 1, 0, 0, -3383.46, 1127.75, 52.9988, 3.87463, 180, 180, 0, 0, 0, 0, 0, 0),
(73504, 21455, 530, 1, 1, 0, 0, -3264.48, 1002.89, 56.8814, 3.97935, 180, 180, 0, 0, 0, 0, 0, 0),
(73506, 21455, 530, 1, 1, 0, 0, -3380.83, 1113.42, 48.791, 2.54818, 180, 180, 0, 0, 0, 0, 0, 0),
(73507, 21455, 530, 1, 1, 0, 0, -3394.78, 1111.06, 50.7728, 1.27409, 180, 180, 0, 0, 0, 0, 0, 0),
(73509, 21455, 530, 1, 1, 0, 0, -3289.59, 1032.92, 51.8233, 2.96706, 180, 180, 0, 0, 0, 0, 0, 0),
(73510, 21455, 530, 1, 1, 0, 0, -3337.02, 1092.48, 52.5119, 0.191986, 180, 180, 0, 0, 0, 0, 0, 0),
(73511, 21455, 530, 1, 1, 0, 0, -3297.32, 1038.93, 53.6622, 5.28835, 180, 180, 0, 0, 0, 0, 0, 0),
(73512, 21455, 530, 1, 1, 0, 0, -3295.74, 1026.52, 49.9782, 1.93731, 180, 180, 0, 0, 0, 0, 0, 0),
(73513, 21455, 530, 1, 1, 0, 0, -3303.5, 1031.59, 50.6656, 0.0174533, 180, 180, 0, 0, 0, 0, 0, 0),
(73515, 21455, 530, 1, 1, 0, 0, -3320.54, 1058.17, 51.5506, 1.91986, 180, 180, 0, 0, 0, 0, 0, 0),
(73599, 21455, 530, 1, 1, 0, 0, -3406.06, 1042.06, 43.6969, 3.80482, 180, 180, 0, 0, 0, 0, 0, 0),
(73603, 21455, 530, 1, 1, 0, 0, -3230.25, 969.699, 56.468, 1.94, 180, 180, 0, 0, 0, 0, 0, 0),
(73605, 21455, 530, 1, 1, 0, 0, -3202.2, 924.88, 54.5841, 5.24821, 180, 180, 0, 0, 0, 0, 0, 0),
(37482, 21455, 530, 1, 1, 0, 0, -3194.94, 912.901, 53.9515, 3.68136, 180, 180, 0, 0, 0, 0, 0, 0),
(37493, 21455, 530, 1, 1, 0, 0, -3422.27, 1122.06, 46.7247, 0.86922, 180, 180, 0, 0, 0, 0, 0, 0);
INSERT INTO `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_pvp_state`, `emote`, `moveflags`, `auras`) VALUES
(71156, 0, 0, 1, 16, 233, 0, '37067'),
(71158, 0, 0, 1, 16, 0, 0, NULL),
(71161, 0, 0, 1, 16, 0, 0, NULL),
(71162, 0, 0, 1, 16, 0, 0, NULL),
(71163, 0, 0, 1, 16, 0, 0, NULL),
(71170, 0, 0, 1, 16, 233, 0, '37067'),
(71171, 0, 0, 1, 16, 0, 0, NULL),
(71173, 0, 0, 1, 16, 0, 0, NULL),
(71179, 0, 0, 1, 16, 233, 0, '37067'),
(71180, 0, 0, 1, 16, 0, 0, NULL),
(71188, 0, 0, 1, 16, 233, 0, '37067'),
(71189, 0, 0, 1, 16, 0, 0, NULL);

INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(37526, 28751, 571, 1, 1, 0, 0, 6174.21, -2046.94, 241.163, 3.94444, 300, 300, 0, 0, 0, 0, 0, 0),
(37514, 28751, 571, 1, 1, 0, 0, 6175.28, -2017.28, 245.161, 1.98968, 300, 300, 0, 0, 0, 0, 0, 0);
UPDATE creature_template SET MovementType = 0 WHERE entry = 28751;
UPDATE creature SET MovementType = 0, spawndist = 0 WHERE id = 28751;
UPDATE creature_template SET SpellList=0 WHERE entry=28750;
DELETE FROM creature_spell_list_entry WHERE Id = 2875000;
INSERT INTO creature_spell_list_entry(Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(2875000, 'ZulDrak - Blight Geist - Charm spells',0,0);
DELETE FROM creature_spell_list WHERE Id = 2875000;
INSERT INTO creature_spell_list(Id, Position, SpellId, Flags, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
(2875000,8,52245,0,0,0,100,0,0,0,0,0,'Blighted Geist - Harvest Blight Crystal');
DELETE FROM dbscripts_on_spell WHERE id IN (52247);
INSERT INTO dbscripts_on_spell (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(52247,2000,1,25,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(52247,2500,37,0,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(52247,3000,1,399,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(52247,4000,1,36,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(52247,5000,40,0,0,0,0,0,6,0,0,0,0,0,0,0,0,'despawn object'),
(52247,6000,15,52243,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(52247,6500,15,52248,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(52247,7000,14,52244,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(52247,10000,3,0,0,0,0,0,0x04,0,0,0,0,6174.282,-2017.247,245.1156,100,'force to move');

DELETE FROM dbscripts_on_quest_end WHERE id IN (11140);
INSERT INTO `dbscripts_on_quest_end` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `datafloat`, `x`, `y`, `z`, `o`, `speed`, `condition_id`, `comments`) VALUES
(11140, 8001, 0, 1, 1, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(11140, 8000, 0, 0, 0, 0, 0, 0, 0, 0, 22161, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(11140, 2001, 0, 1, 6, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(11140, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 22160, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(11140, 13000, 0, 29, 3, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'NpcFlags added'),
(11140, 12000, 0, 0, 0, 0, 0, 0, 0, 0, 22162, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(11140, 0, 0, 29, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'NpcFlags removed');

DELETE FROM dbscripts_on_quest_start WHERE id IN (1364);
INSERT INTO dbscripts_on_quest_start (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1364,100,0,0,0,0,0,0,0,1828,1829,1830,1831,0,0,0,0,'');
UPDATE quest_template SET StartScript = 1364 WHERE entry = 1364;
UPDATE `creature` SET `position_x` = '-10994.7', `position_y` = '-3507.89', `position_z` = '103.225', `orientation` = '0.977384', `spawntimesecsmin` = '300', `spawntimesecsmax` = '300' WHERE `guid` =1909;

DELETE FROM dbscripts_on_quest_end WHERE id IN (8791);
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(8791,1,1,22,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(8791,100,0,0,0,0,0,0,0,11355,0,0,0,0,0,0,0,'');
UPDATE quest_template SET CompleteScript = 8791 WHERE entry = 8791;
UPDATE `creature` SET `position_x` = '-6752.38', `position_y` = '823.836', `position_z` = '57.3633', `orientation` = '0.344505' WHERE `guid` =24093;

REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(118626, 28739, 571, 1, 1, 0, 0, 6164.84, -2149.95, 240.345, 3.7001, 60, 60, 0, 0, 0, 0, 0, 0),
(118629, 28739, 571, 1, 1, 0, 0, 6193.68, -2155.79, 239.706, 4.86947, 60, 60, 0, 0, 0, 0, 0, 0),
(118627, 28739, 571, 1, 1, 0, 0, 6230.51, -2162.48, 240.345, 5.49779, 60, 60, 0, 0, 0, 0, 0, 0),
(118628, 28739, 571, 1, 1, 0, 0, 6103.49, -1939.63, 239.714, 2.33874, 60, 60, 0, 0, 0, 0, 0, 0),
(118625, 28739, 571, 1, 1, 0, 0, 6088.47, -2078.73, 239.668, 6.12611, 60, 60, 0, 0, 0, 0, 0, 0);
DELETE FROM dbscripts_on_spell WHERE id IN (52227);
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(4755, 28745, 571, 1, 1, 0, 0, 6178.21, -2159.62, 236.212, 4.508, 300, 300, 0, 0, 0, 0, 0, 0),
(4791, 28745, 571, 1, 1, 0, 0, 6222.58, -2163.87, 236.21, 3.8779, 300, 300, 0, 0, 0, 0, 0, 0),
(49416, 28745, 571, 1, 1, 0, 0, 6231.98, -2160.44, 236.292, 0.949701, 300, 300, 0, 0, 0, 0, 0, 0);

REPLACE INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(44697, 190720, 571, 1, 1, 6226.66, -2043, 417.656, 0.209439, 0, 0, 0.104528, 0.994522, 180, 180, 100, 1),
(44698, 190720, 571, 1, 1, 6104.31, -1996.04, 417.567, -0.226892, 0, 0, -0.113203, 0.993572, 180, 180, 100, 1),
(44699, 190720, 571, 1, 1, 6096.11, -2086.15, 417.622, 1.91986, 0, 0, 0.819151, 0.573577, 180, 180, 100, 1),
(44700, 190720, 571, 1, 1, 6141.86, -2081.13, 417.654, 0.95993, 0, 0, 0.461748, 0.887011, 180, 180, 100, 1),
(44701, 190720, 571, 1, 1, 6106.4, -2038.01, 417.686, -0.698132, 0, 0, -0.34202, 0.939693, 180, 180, 100, 1),
(44702, 190720, 571, 1, 1, 6079.98, -2068.74, 417.635, 1.64061, 0, 0, 0.731353, 0.681999, 180, 180, 100, 1),
(44703, 190720, 571, 1, 1, 6208.85, -1955.14, 417.658, -2.80997, 0, 0, -0.986285, 0.16505, 180, 180, 100, 1),
(44704, 190720, 571, 1, 1, 6230.58, -2062.23, 417.472, 2.82743, 0, 0, 0.987688, 0.156436, 180, 180, 100, 1),
(31754, 190720, 571, 1, 1, 6245.09, -2010.3, 417.549, -1.83259, 0, 0, -0.793353, 0.608762, 180, 180, 100, 1),
(31758, 190720, 571, 1, 1, 6242.54, -1959.01, 417.684, 0.471238, 0, 0, 0.233445, 0.97237, 180, 180, 100, 1),
(31759, 190720, 571, 1, 1, 6227.56, -2095.36, 417.597, 2.1293, 0, 0, 0.874619, 0.48481, 180, 180, 100, 1),
(31760, 190720, 571, 1, 1, 6208.02, -2098.34, 417.598, 0.698132, 0, 0, 0.34202, 0.939693, 180, 180, 100, 1),
(31761, 190720, 571, 1, 1, 6182.6, -2088.75, 417.549, 2.53072, 0, 0, 0.953716, 0.300708, 180, 180, 100, 1),
(31762, 190720, 571, 1, 1, 6170.37, -1960.46, 417.549, -2.37364, 0, 0, -0.927183, 0.374608, 180, 180, 100, 1),
(31763, 190720, 571, 1, 1, 6255.47, -1972.38, 417.714, 0.331611, 0, 0, 0.165047, 0.986286, 180, 180, 100, 1),
(31764, 190720, 571, 1, 1, 6247.18, -1992.44, 417.55, 1.06465, 0, 0, 0.507538, 0.861629, 180, 180, 100, 1);
DELETE FROM `spawn_group` WHERE id = 30000;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES (30000, 'Zul\'drak - Voltarus - Harvested Blight Crystal 190720', 1, 6, 0, 0);
DELETE FROM `spawn_group_spawn` WHERE id = 30000;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(30000, 44697, 0),(30000, 44700, 0),(30000, 31754, 0),(30000, 31760, 0),(30000, 44703, 0),(30000, 31763, 0),(30000, 44698, 0),(30000, 44701, 0),
(30000, 31758, 0),(30000, 31761, 0),(30000, 44704, 0),(30000, 31764, 0),(30000, 44699, 0),(30000, 44702, 0),(30000, 31759, 0),(30000, 31762, 0);

REPLACE INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(4894, 180514, 1, 1, 1, -6825.29, 809.125, 51.8699, 0.349065, 0, 0, 0.173648, 0.984808, 180, 180, 255, 1),
(4896, 180514, 1, 1, 1, -6822.21, 808.584, 51.5885, 2.77507, 0, 0, 0.983254, 0.182238, 180, 180, 255, 1),
(4895, 180514, 1, 1, 1, -6823.57, 811.977, 51.4426, 4.41568, 0, 0, -0.803857, 0.594823, 180, 180, 255, 1);
DELETE FROM dbscripts_on_quest_end WHERE id IN (8315);
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(8315,1,21,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'active'),
(8315,10,3,0,0,0,0,0,0x04,0,0,0,0,-6824.018,809.9626,51.738823,0.48,'move'),
(8315,100,29,3,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'remove NPCFlags'),
(8315,3000,28,8,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'STAND_STATE_KNEEL '),
(8315,3200,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(8315,3400,0,0,0,0,0,0,0,10762,0,0,0,0,0,0,0,''),
(8315,3902,53,0,0,0,0,0,0,19997,1,0,0,0,0,0,0,'Set worldstate variable to 1'),
(8315,4000,13,0,0,0,180514,4894,1|0x10,0,0,0,0,0,0,0,0,'activate object'),
(8315,4001,13,0,0,0,180514,4896,1|0x10,0,0,0,0,0,0,0,0,'activate object'),
(8315,4002,13,0,0,0,180514,4895,1|0x10,0,0,0,0,0,0,0,0,'activate object'),
(8315,5000,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(8315,6500,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(8315,8000,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(8315,9500,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(8315,9600,0,0,0,0,0,0,0,10829,0,0,0,0,0,0,0,''),
(8315,11000,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(8315,12600,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(8315,14000,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(8315,14400,13,0,0,0,180514,4894,1|0x10,0,0,0,0,0,0,0,0,'activate object'),
(8315,14401,13,0,0,0,180514,4896,1|0x10,0,0,0,0,0,0,0,0,'activate object'),
(8315,14402,13,0,0,0,180514,4895,1|0x10,0,0,0,0,0,0,0,0,'activate object'),
(8315,15500,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(8315,17000,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(8315,17015,0,0,0,0,0,0,0,10830,0,0,0,0,0,0,0,''),
(8315,18500,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(8315,20000,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(8315,21500,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(8315,23000,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(8315,23500,13,0,0,0,180514,4894,1|0x10,0,0,0,0,0,0,0,0,'activate object'),
(8315,24500,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(8315,24800,13,0,0,0,180514,4896,1|0x10,0,0,0,0,0,0,0,0,'activate object'),
(8315,24801,13,0,0,0,180514,4895,1|0x10,0,0,0,0,0,0,0,0,'activate object'),
(8315,26000,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(8315,27500,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(8315,29000,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(8315,29015,0,0,0,0,0,0,0,10831,0,0,0,0,0,0,0,''),
(8315,30500,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(8315,32000,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(8315,32500,13,0,0,0,180514,4894,1|0x10,0,0,0,0,0,0,0,0,'activate object'),
(8315,33500,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(8315,35000,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(8315,35400,13,0,0,0,180514,4896,1|0x10,0,0,0,0,0,0,0,0,'activate object'),
(8315,35401,13,0,0,0,180514,4895,1|0x10,0,0,0,0,0,0,0,0,'activate object'),
(8315,36500,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(8315,38000,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(8315,39500,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(8315,39600,0,0,0,0,0,0,0,10832,0,0,0,0,0,0,0,''),
(8315,41000,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(8315,41500,13,0,0,0,180514,4894,1|0x10,0,0,0,0,0,0,0,0,'activate object'),
(8315,42600,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(8315,44000,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(8315,45600,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(8315,46000,13,0,0,0,180514,4896,1|0x10,0,0,0,0,0,0,0,0,'activate object'),
(8315,46001,13,0,0,0,180514,4895,1|0x10,0,0,0,0,0,0,0,0,'activate object'),
(8315,47000,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(8315,48600,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(8315,50200,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(8315,50500,13,0,0,0,180514,4894,1|0x10,0,0,0,0,0,0,0,0,'activate object'),
(8315,51600,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(8315,53200,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(8315,54600,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(8315,54700,0,0,0,0,0,0,0,10833,0,0,0,0,0,0,0,''),
(8315,56200,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(8315,56700,13,0,0,0,180514,4896,1|0x10,0,0,0,0,0,0,0,0,'activate object'),
(8315,56701,13,0,0,0,180514,4895,1|0x10,0,0,0,0,0,0,0,0,'activate object'),
(8315,57700,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(8315,59200,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(8315,59600,13,0,0,0,180514,4894,1|0x10,0,0,0,0,0,0,0,0,'activate object'),
(8315,60600,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(8315,62200,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(8315,63800,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(8315,65400,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(8315,67000,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(8315,67100,13,0,0,0,180514,4896,1|0x10,0,0,0,0,0,0,0,0,'activate object'),
(8315,67101,13,0,0,0,180514,4895,1|0x10,0,0,0,0,0,0,0,0,'activate object'),
(8315,68600,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(8315,69000,13,0,0,0,180514,4894,1|0x10,0,0,0,0,0,0,0,0,'activate object'),
(8315,69200,1,5,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(8315,69300,0,0,0,0,0,0,0,10836,0,0,0,0,0,0,0,''),
(8315,72500,0,0,0,0,0,0,0,10837,0,0,0,0,0,0,0,''),
(8315,75700,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(8315,75800,0,0,0,0,0,0,0,10838,0,0,0,0,0,0,0,''),
(8315,77200,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(8315,77700,13,0,0,0,180514,4894,1|0x10,0,0,0,0,0,0,0,0,'activate object'),
(8315,77701,13,0,0,0,180514,4896,1|0x10,0,0,0,0,0,0,0,0,'activate object'),
(8315,77702,13,0,0,0,180514,4895,1|0x10,0,0,0,0,0,0,0,0,'activate object'),
(8315,79200,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(8315,80600,0,0,0,0,0,0,0,10839,0,0,0,0,0,0,0,''),
(8315,82200,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(8315,83600,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(8315,85100,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(8315,86500,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(8315,88100,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(8315,88500,13,0,0,0,180514,4894,1|0x10,0,0,0,0,0,0,0,0,'activate object'),
(8315,89800,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(8315,90200,13,0,0,0,180514,4896,1|0x10,0,0,0,0,0,0,0,0,'activate object'),
(8315,90201,13,0,0,0,180514,4895,1|0x10,0,0,0,0,0,0,0,0,'activate object'),
(8315,91400,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(8315,91500,0,0,0,0,0,0,0,10840,0,0,0,0,0,0,0,''),
(8315,93100,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(8315,94600,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(8315,96200,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(8315,97800,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(8315,98200,13,0,0,0,180514,4894,1|0x10,0,0,0,0,0,0,0,0,'activate object'),
(8315,99400,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(8315,100900,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(8315,101400,13,0,0,0,180514,4896,1|0x10,0,0,0,0,0,0,0,0,'activate object'),
(8315,101401,13,0,0,0,180514,4895,1|0x10,0,0,0,0,0,0,0,0,'activate object'),
(8315,102600,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(8315,104200,0,0,0,0,0,0,0,10841,0,0,0,0,0,0,0,''),
(8315,105600,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(8315,107200,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(8315,108700,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(8315,110300,13,0,0,0,180514,4894,1|0x10,0,0,0,0,0,0,0,0,'activate object'),
(8315,111400,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(8315,112900,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(8315,114300,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(8315,114900,13,0,0,0,180514,4896,1|0x10,0,0,0,0,0,0,0,0,'activate object'),
(8315,114901,13,0,0,0,180514,4895,1|0x10,0,0,0,0,0,0,0,0,'activate object'),
(8315,115800,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(8315,115900,0,0,0,0,0,0,0,10842,0,0,0,0,0,0,0,''),
(8315,117300,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(8315,118900,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(8315,119400,13,0,0,0,180514,4894,1|0x10,0,0,0,0,0,0,0,0,'activate object'),
(8315,120300,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(8315,121800,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(8315,123400,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(8315,124900,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(8315,125300,13,0,0,0,180514,4896,1|0x10,0,0,0,0,0,0,0,0,'activate object'),
(8315,125301,13,0,0,0,180514,4895,1|0x10,0,0,0,0,0,0,0,0,'activate object'),
(8315,126400,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(8315,127900,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(8315,128000,0,0,0,0,0,0,0,10843,0,0,0,0,0,0,0,''),
(8315,128300,13,0,0,0,180514,4894,1|0x10,0,0,0,0,0,0,0,0,'activate object'),
(8315,129600,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(8315,130200,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(8315,131600,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(8315,133200,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(8315,134800,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(8315,135200,13,0,0,0,180514,4896,1|0x10,0,0,0,0,0,0,0,0,'activate object'),
(8315,135201,13,0,0,0,180514,4895,1|0x10,0,0,0,0,0,0,0,0,'activate object'),
(8315,136400,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(8315,136800,13,0,0,0,180514,4894,1|0x10,0,0,0,0,0,0,0,0,'activate object'),
(8315,138000,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(8315,139400,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(8315,139500,0,0,0,0,0,0,0,10844,0,0,0,0,0,0,0,''),
(8315,141000,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(8315,142600,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(8315,144200,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(8315,145800,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(8315,146300,13,0,0,0,180514,4894,1|0x10,0,0,0,0,0,0,0,0,'activate object'),
(8315,146301,13,0,0,0,180514,4896,1|0x10,0,0,0,0,0,0,0,0,'activate object'),
(8315,146302,13,0,0,0,180514,4895,1|0x10,0,0,0,0,0,0,0,0,'activate object'),
(8315,147400,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(8315,149000,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(8315,150600,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(8315,150700,0,0,0,0,0,0,0,10845,0,0,0,0,0,0,0,''),
(8315,152200,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(8315,153800,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(8315,155200,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(8315,155600,13,0,0,0,180514,4894,1|0x10,0,0,0,0,0,0,0,0,'activate object'),
(8315,156800,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(8315,157200,13,0,0,0,180514,4896,1|0x10,0,0,0,0,0,0,0,0,'activate object'),
(8315,157201,13,0,0,0,180514,4895,1|0x10,0,0,0,0,0,0,0,0,'activate object'),
(8315,158400,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(8315,160000,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(8315,161600,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(8315,163200,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(8315,163300,0,0,0,0,0,0,0,10846,0,0,0,0,0,0,0,''),
(8315,164900,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(8315,165300,13,0,0,0,180514,4894,1|0x10,0,0,0,0,0,0,0,0,'activate object'),
(8315,166500,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(8315,168100,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(8315,168500,13,0,0,0,180514,4896,1|0x10,0,0,0,0,0,0,0,0,'activate object'),
(8315,168501,13,0,0,0,180514,4895,1|0x10,0,0,0,0,0,0,0,0,'activate object'),
(8315,170200,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(8315,171800,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(8315,173400,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(8315,174900,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(8315,175300,13,0,0,0,180514,4894,1|0x10,0,0,0,0,0,0,0,0,'activate object'),
(8315,176500,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(8315,176600,0,0,0,0,0,0,0,10847,0,0,0,0,0,0,0,''),
(8315,178200,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(8315,179800,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(8315,180200,13,0,0,0,180514,4896,1|0x10,0,0,0,0,0,0,0,0,'activate object'),
(8315,180201,13,0,0,0,180514,4895,1|0x10,0,0,0,0,0,0,0,0,'activate object'),
(8315,181800,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(8315,183400,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(8315,185000,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(8315,185400,13,0,0,0,180514,4894,1|0x10,0,0,0,0,0,0,0,0,'activate object'),
(8315,186600,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(8315,188200,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(8315,189800,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(8315,190200,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(8315,190300,0,0,0,0,0,0,0,10848,0,0,0,0,0,0,0,''),
(8315,190600,13,0,0,0,180514,4896,1|0x10,0,0,0,0,0,0,0,0,'activate object'),
(8315,190601,13,0,0,0,180514,4895,1|0x10,0,0,0,0,0,0,0,0,'activate object'),
(8315,191900,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(8315,193500,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(8315,193900,13,0,0,0,180514,4894,1|0x10,0,0,0,0,0,0,0,0,'activate object'),
(8315,195100,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(8315,196700,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(8315,198300,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(8315,199900,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(8315,200000,0,0,0,0,0,0,0,10849,0,0,0,0,0,0,0,''),
(8315,201500,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(8315,201900,13,0,0,0,180514,4896,1|0x10,0,0,0,0,0,0,0,0,'activate object'),
(8315,201900,13,0,0,0,180514,4895,1|0x10,0,0,0,0,0,0,0,0,'activate object'),
(8315,203100,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(8315,203500,13,0,0,0,180514,4894,1|0x10,0,0,0,0,0,0,0,0,'activate object'),
(8315,204700,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(8315,204800,0,0,0,0,0,0,0,10850,0,0,0,0,0,0,0,''),
(8315,206100,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(8315,207700,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(8315,209300,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(8315,210900,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(8315,212500,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(8315,213000,13,0,0,0,180514,4894,1|0x10,0,0,0,0,0,0,0,0,'activate object'),
(8315,213001,13,0,0,0,180514,4896,1|0x10,0,0,0,0,0,0,0,0,'activate object'),
(8315,213002,13,0,0,0,180514,4895,1|0x10,0,0,0,0,0,0,0,0,'activate object'),
(8315,214100,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(8315,215700,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(8315,217300,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(8315,217400,0,0,0,0,0,0,0,10851,0,0,0,0,0,0,0,''),
(8315,218900,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(8315,220500,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(8315,222100,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(8315,222600,13,0,0,0,180514,4894,1|0x10,0,0,0,0,0,0,0,0,'activate object'),
(8315,223100,13,0,0,0,180514,4896,1|0x10,0,0,0,0,0,0,0,0,'activate object'),
(8315,223101,13,0,0,0,180514,4895,1|0x10,0,0,0,0,0,0,0,0,'activate object'),
(8315,224200,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(8315,225800,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(8315,227400,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(8315,229000,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(8315,229100,0,0,0,0,0,0,0,10852,0,0,0,0,0,0,0,''),
(8315,230600,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(8315,233100,13,0,0,0,180514,4894,1|0x10,0,0,0,0,0,0,0,0,'activate object'),
(8315,234300,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(8315,235900,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(8315,236300,13,0,0,0,180514,4896,1|0x10,0,0,0,0,0,0,0,0,'activate object'),
(8315,236301,13,0,0,0,180514,4895,1|0x10,0,0,0,0,0,0,0,0,'activate object'),
(8315,237700,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(8315,239300,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(8315,240900,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(8315,242500,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(8315,243000,13,0,0,0,180514,4894,1|0x10,0,0,0,0,0,0,0,0,'activate object'),
(8315,244200,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(8315,244290,35,5,50,0,0,0,0,0,0,0,0,0,0,0,0,'Send EVENT 5'),
(8315,250000,53,0,0,0,0,0,0,19997,0,0,0,0,0,0,0,'Set worldstate variable to 0'),
(8315,250100,28,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'STAND_STATE_Stand'),
(8315,251000,3,0,0,0,0,0,0x04,0,0,0,0,-6828.4897,807.2229,52.099663,100,'move'),
(8315,253500,3,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0.383972436189651489,'move'),
(8315,253600,29,3,1,0,0,0,0x04,0,0,0,0,0,0,0,0,'add NPCFlags'),
(8315,253700,21,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'unactive');
UPDATE quest_template SET CompleteScript = 8315 WHERE entry = 8315;
DELETE FROM dbscripts_on_relay WHERE id IN (20636);
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20636,1,0,0,0,0,0,0,0,10853,0,0,0,0,0,0,0,''), (20636,4500,0,0,0,0,0,0,0,10854,0,0,0,0,0,0,0,'');
DELETE FROM `spawn_group` WHERE id = 19997;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES (19997, 'Silithus - Cenarion Hold  - o.180514 spawn with q.8315', 1, 0, 2921, 0x08);
DELETE FROM `spawn_group_spawn` WHERE id = 19997;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES (19997, 4894, -1), (19997, 4896, -1), (19997, 4895, -1);
DELETE FROM conditions WHERE condition_entry IN (2921);
INSERT INTO conditions (condition_entry, `type`, value1, value2, value3, flags, comments) VALUES (2921, 42, 19997, 0, 1, 0, 'Silithus - Cenarion Hold - o.180514 spawn with q.8315');
DELETE FROM worldstate_name WHERE Id=19997;
INSERT INTO worldstate_name(Id, Name) VALUES (19997,'Silithus - Cenarion Hold  - o.180514 spawn with q.8315');

UPDATE `npc_text_broadcast_text` SET `Prob0` = '0' WHERE `Id` =13270;
UPDATE `npc_text_broadcast_text` SET `Prob0` = '0' WHERE `Id` =13271;
UPDATE `quest_template` SET `NextQuestId` = '0' WHERE `entry` =12635;
UPDATE `creature_template` SET `ExtraFlags` = '4160', `InhabitType` = '1' WHERE `Entry` in (32596,32597,32598,32600,32601,32602);
DELETE FROM `creature_template_addon` WHERE `entry` in (32596,32597,32598,32600,32601,32602);
UPDATE `creature` SET `id` = '32601', `modelid` = '0' WHERE `guid` =87278 AND `id` =32596;
UPDATE `creature_template` SET `MinLevel` = '79' WHERE `Entry` =32602;
UPDATE `creature` SET `modelid` = '0' WHERE `id` in (32596,32597,32598,32600);
INSERT INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES ('87291', '305', '0', 'Dalaran guests');
UPDATE `creature` SET `phaseMask` = '1', `modelid` = '0', `position_x` = '5777.76', `position_y` = '379.25', `position_z` = '670.277', `orientation` = '1.50997', `spawntimesecsmin` = '60', `spawntimesecsmax` = '60', `spawndist` = '0', `MovementType` = '2' WHERE `guid` =87291;
INSERT INTO `creature_movement` (`Id`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`, `Comment`) VALUES
(87291, 1, 5777.76, 379.25, 670.277, 0, 10, 3260202, NULL),
(87291, 2, 5777.76, 379.25, 670.277, 0, 10, 5, NULL),
(87291, 3, 5782.43, 402.971, 670.946, 0, 0, 0, NULL),
(87291, 4, 5814.88, 438.046, 666.324, 0, 0, 0, NULL),
(87291, 5, 5815.4, 438.903, 666.324, 0, 0, 0, NULL),
(87291, 6, 5819.47, 452.592, 658.759, 0, 0, 0, NULL),
(87291, 7, 5820.25, 460.15, 658.766, 0, 0, 0, NULL),
(87291, 8, 5830.56, 481.217, 658.213, 0, 10, 3260201, NULL),
(87291, 9, 5830.56, 481.217, 658.213, 0, 10, 6, NULL),
(87291, 10, 5832.12, 506.817, 657.553, 0, 0, 0, NULL),
(87291, 11, 5831.75, 514.86, 657.74, 0, 0, 0, NULL),
(87291, 12, 5840.4, 533.342, 657.657, 0, 0, 0, NULL),
(87291, 13, 5840.4, 533.342, 657.657, 0, 10, 1, NULL);
UPDATE `creature_movement` SET `ScriptId` = '3260102' WHERE `Id` =87278 AND `Point` =1;
UPDATE `creature_movement` SET `ScriptId` = '3260101' WHERE `Id` =87278 AND `Point` =7;
DELETE FROM dbscripts_on_creature_movement WHERE id IN (3259601,3259701,3259801,3260001,3260101,3260201,3259602,3259702,3259802,3260002,3260102,3260202);
INSERT INTO `dbscripts_on_creature_movement` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `datafloat`, `x`, `y`, `z`, `o`, `speed`, `condition_id`, `comments`) VALUES
(3259801, 0, 0, 39, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'movement chenged'),
(3259801, 10, 0, 24, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(3259601, 0, 0, 39, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'movement chenged'),
(3259601, 10, 0, 24, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(3259701, 0, 0, 39, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'movement chenged'),
(3259701, 10, 0, 24, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(3260001, 0, 0, 39, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'movement chenged'),
(3260001, 10, 0, 24, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(3260101, 0, 0, 39, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'movement chenged'),
(3260101, 10, 0, 24, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(3260201, 0, 0, 39, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'movement chenged'),
(3260201, 10, 0, 24, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(3259602, 0, 0, 39, 1, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'movement chenged'),
(3259602, 10, 0, 24, 32335, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(3259702, 0, 0, 39, 1, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'movement chenged'),
(3259702, 10, 0, 24, 24654, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(3260002, 0, 0, 39, 1, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'movement chenged'),
(3260002, 10, 0, 24, 23408, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(3260102, 0, 0, 39, 1, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'movement chenged'),
(3260102, 10, 0, 24, 18365, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(3260202, 0, 0, 39, 1, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'movement chenged'),
(3260202, 10, 0, 24, 34709, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(3259802, 0, 0, 39, 1, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'movement chenged'),
(3259802, 10, 0, 24, 22000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

DELETE FROM `conditions` WHERE `condition_entry` = 498;
DELETE FROM `conditions` WHERE `condition_entry` = 1162;
UPDATE gossip_menu  SET condition_id=498 WHERE entry=9709 AND text_id=13271;
UPDATE `gossip_menu_option` SET `condition_id` = 306 WHERE `menu_id` =9709 AND `id` =0;
INSERT INTO conditions (condition_entry, type, value1, value2, flags) VALUES (498,37,29863,5,1);

UPDATE creature SET position_x=5957.316, position_y=-2082.866, position_z=248.2318, orientation=4.10124, spawntimesecsmin=300, spawntimesecsmax=300, MovementType=2, spawndist=0, curhealth = 0 WHERE id=28793;
UPDATE creature_template SET MovementType=2 WHERE entry=28793;
DELETE FROM creature_movement_template WHERE Entry=28793;
INSERT INTO creature_movement_template (Entry, Point, PositionX, PositionY, PositionZ, Orientation, WaitTime, ScriptId) VALUES
(28793,1,5957.316,-2082.866,248.2318,1.518436,25000,0),
(28793,2,5954.65,-2131.165,248.4123,100,0,0),
(28793,3,5971.161,-2133.242,249.2916,100,5000,0),
(28793,4,5953.852,-2138.804,248.3089,100,0,0),
(28793,5,5954.501,-2187.947,248.3032,100,0,0);
DELETE FROM dbscripts_on_relay WHERE id = 20637;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20637,1,31,28805,100,0,0,0,0,0,0,0,0,0,0,0,0,'check if 28805 alive'),
(20637,100,0,0,0,0,0,0,4,28858,0,0,0,0,0,0,0,'say');
UPDATE creature_template SET MinLevel=75, MaxLevel=76, MinLevelHealth=53175, MaxLevelHealth=55005 WHERE Entry = 28805;
DELETE FROM `dbscripts_on_creature_death` WHERE id = 28805;
INSERT INTO `dbscripts_on_creature_death` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `datafloat`, `x`, `y`, `z`, `o`, `comments`) VALUES
(28805,1,18,0,20,0,0,0,0x04,0,0,0,0,0,0,0,0,0,'desp self');
UPDATE creature_template SET SpellList=0 WHERE entry=28802;
DELETE FROM creature_spell_list_entry WHERE Id = 2880200;
INSERT INTO creature_spell_list_entry(Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(2880200, 'ZulDrak - Servant of Drakuru - Charm spells',0,0);
DELETE FROM creature_spell_list WHERE Id = 2880200;
INSERT INTO creature_spell_list(Id, Position, SpellId, Flags, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
(2880200,3,52400,0,0,0,100,0,0,0,0,0,'Servant of Drakuru - Ferocious Enrage'),
(2880200,4,52401,0,0,0,100,0,0,0,0,0,'Servant of Drakuru - Gut Rip'),
(2880200,5,52402,0,0,0,100,0,0,0,0,0,'Servant of Drakuru - Stunning Force (Rank 1)');

DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id IN (16308));
DELETE FROM creature_movement WHERE id IN (SELECT guid FROM creature WHERE id IN (16308));
DELETE FROM `creature` WHERE `id` = 16308;
INSERT INTO `creature` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `MovementType`) VALUES
(78390, 16308, 530, 6727.7255859375, -6460.21728515625, 26.46784210205078125, 0, 300, 300, 0, 4),
(67539, 16308, 530, 6702.06, -6489.62, 29.3432, 0, 300, 300, 0, 4),
(78389, 16308, 530, 7095.29150390625, -6542.45263671875, 9.762145042419433593, 0, 300, 300, 0, 4);
SET @GUID := 78390;
DELETE FROM `creature_movement` WHERE `Id` = @GUID;
INSERT INTO `creature_movement` (`Id`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(@GUID, 1, 6727.7255859375, -6460.21728515625, 26.46784210205078125, 6.058742046356201171, 30000, 0),
(@GUID, 2, 6754.346, -6465.144, 22.53503, 100, 0, 0),
(@GUID, 3, 6783.1035, -6464.2236, 18.224869, 100, 0, 0),
(@GUID, 4, 6853.7568359375, -6484.658203125, 17.78900718688964843, 100, 0, 0),
(@GUID, 5, 6892.264, -6491.754, 18.465225, 100, 0, 0),
(@GUID, 6, 6915.8774, -6493.78, 13.71758, 100, 0, 0),
(@GUID, 7, 7025.951171875, -6501.3935546875, 10.75816154479980468, 100, 0, 0),
(@GUID, 8, 7059.0674, -6502.6357, 9.745641, 100, 0, 0),
(@GUID, 9, 7072.2773, -6493.5615, 10.647484, 100, 0, 0);
SET @GUID := 67539;
DELETE FROM `creature_movement` WHERE `Id` = @GUID;
INSERT INTO `creature_movement` (`Id`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(@GUID, 1, 6702.06, -6489.62, 29.3432, 0.087266, 10000, 0),
(@GUID, 2, 6842.2998046875, -6540.22900390625, 18.38805007934570312, 100, 0, 0),
(@GUID, 3, 6854.87109375, -6539.22216796875, 19.16777992248535156, 100, 0, 0),
(@GUID, 4, 6866.46484375, -6544.90380859375, 18.8291015625, 100, 0, 0),
(@GUID, 5, 6877.892, -6550.9995, 19.447285, 100, 0, 0),
(@GUID, 6, 6891.1655, -6564.9497, 16.306171, 100, 0, 0),
(@GUID, 7, 6900.8154, -6575.0913, 12.373608, 100, 0, 0),
(@GUID, 8, 6911.1626, -6585.9844, 9.769257, 100, 0, 0),
(@GUID, 9, 6940.42138671875, -6601.03271484375, 10.3547372817993164, 100, 0, 0),
(@GUID, 10, 6965.375, -6602.0566, 10.58962, 100, 0, 0),
(@GUID, 11, 6988.7686, -6606.379, 9.802615, 100, 0, 0),
(@GUID, 12, 7091.5849609375, -6578.96630859375, 10.09276103973388671, 100, 0, 0);
SET @GUID := 78389;
DELETE FROM `creature_movement` WHERE `Id` = @GUID;
INSERT INTO `creature_movement` (`Id`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(@GUID, 1, 7095.29150390625, -6542.45263671875, 9.762145042419433593, 100, 0, 0),
(@GUID, 2, 7087.515625, -6544.7666015625, 9.582495689392089843, 100, 0, 0),
(@GUID, 3, 6908.914, -6534.4204, 12.928319, 100, 0, 0),
(@GUID, 4, 6886.1147, -6528.21, 17.733747, 100, 0, 0),
(@GUID, 5, 6861.8486328125, -6520.41552734375, 19.12448883056640625, 100, 0, 0),
(@GUID, 6, 6776.1533, -6500.8296, 19.099348, 100, 0, 0),
(@GUID, 7, 6729.5029296875, -6486.69580078125, 25.4896087646484375, 5.642649650573730468, 0, 0);
UPDATE `creature_template` SET `UnitFlags` = 0, `ExtraFlags` = `ExtraFlags`|(4096+1048576) WHERE `entry` = 16308;
UPDATE `creature_template` SET `UnitFlags` = 0, `ExtraFlags` = `ExtraFlags`|(4096+1048576) WHERE `entry` = 16311;
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id IN (16311));
DELETE FROM creature_movement WHERE id IN (SELECT guid FROM creature WHERE id IN (16311));
DELETE FROM `creature` WHERE `id` = 16311;
INSERT INTO `creature` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `MovementType`) VALUES
(75263, 16311, 530, 7188.27, -6495.46, 10.9984, 0, 300, 300, 0, 4),
(75264, 16311, 530, 7651.20, -6580.62, 10.2465, 0, 300, 300, 0, 4),
(75265, 16311, 530, 7221.23, -6542.42, 14.4053, 0, 300, 300, 0, 4),
(75266, 16311, 530, 7252.30, -6570.79, 17.8611, 0, 300, 300, 0, 4);
SET @GUID := 75263;
DELETE FROM `creature_movement` WHERE `Id` = @GUID;
INSERT INTO `creature_movement` (`Id`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(@GUID, 1, 7188.27, -6495.46, 10.9984, 100, 0, 0),
(@GUID, 2, 7222.347, -6495.6606, 11.325985, 100, 0, 0),
(@GUID, 3, 7253.28, -6498.1235, 11.305006, 100, 0, 0),
(@GUID, 4, 7292.9316, -6513.9243, 13.077052, 100, 0, 0),
(@GUID, 5, 7316.3115, -6501.7466, 14.422257, 100, 0, 0),
(@GUID, 6, 7345.693, -6518.047, 15.281251, 100, 0, 0),
(@GUID, 7, 7445.6807, -6546.5596, 11.011176, 100, 0, 0),
(@GUID, 8, 7486.049, -6546.157, 10.568814, 100, 0, 0),
(@GUID, 9, 7515.1025, -6542.5103, 11.416475, 100, 0, 0),
(@GUID, 10, 7543.6084, -6551.826, 12.611581, 100, 0, 0),
(@GUID, 11, 7589.0156, -6555.318, 14.050683, 100, 0, 0),
(@GUID, 12, 7616.53, -6545.7173, 10.092621, 100, 0, 0),
(@GUID, 13, 7652.928, -6551.9565, 11.630804, 100, 0, 0);
SET @GUID := 75264;
DELETE FROM `creature_movement` WHERE `Id` = @GUID;
INSERT INTO `creature_movement` (`Id`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(@GUID, 1, 7651.2085, -6580.6274, 10.246517, 100, 0, 0),
(@GUID, 2, 7574.973, -6575.3916, 13.658122, 100, 0, 0),
(@GUID, 3, 7546.5166, -6570.2656, 12.472251, 100, 0, 0),
(@GUID, 4, 7506.358, -6562.097, 10.328341, 100, 0, 0),
(@GUID, 5, 7448.37, -6556.74, 10.5310, 100, 0, 0),
(@GUID, 6, 7411.41, -6553.86, 10.8579, 100, 0, 0),
(@GUID, 7, 7378.27, -6549.28, 12.8599, 100, 0, 0),
(@GUID, 8, 7254.6406, -6523.9453, 11.628147, 100, 0, 0),
(@GUID, 9, 7220.651, -6522.0815, 10.580136, 100, 0, 0),
(@GUID, 10, 7191.97, -6514.98, 10.7379, 100, 0, 0);
SET @GUID := 75265;
DELETE FROM `creature_movement` WHERE `Id` = @GUID;
INSERT INTO `creature_movement` (`Id`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(@GUID, 1, 7221.23, -6542.42, 14.4053, 100, 0, 0),
(@GUID, 2, 7252.74, -6551.9297, 15.076238, 100, 0, 0),
(@GUID, 3, 7280.7793, -6553.406, 11.63918, 100, 0, 0),
(@GUID, 4, 7310.6304, -6562.0713, 11.390157, 100, 0, 0),
(@GUID, 5, 7438.28, -6579.83, 9.7462, 100, 0, 0),
(@GUID, 6, 7488.311, -6583.426, 9.413548, 100, 0, 0),
(@GUID, 7, 7512.869, -6585.4463, 10.433503, 100, 0, 0),
(@GUID, 8, 7545.0337, -6592.553, 11.641196, 100, 0, 0),
(@GUID, 9, 7577.6675, -6601.77, 11.89841, 100, 0, 0),
(@GUID, 10, 7617.639, -6609.751, 14.411549, 100, 0, 0),
(@GUID, 11, 7642.31, -6615.88, 13.5814, 100, 0, 0);
SET @GUID := 75266;
DELETE FROM `creature_movement` WHERE `Id` = @GUID;
INSERT INTO `creature_movement` (`Id`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(@GUID, 1, 7252.30, -6570.79, 17.8611, 100, 0, 0),
(@GUID, 2, 7304.4673, -6602.853, 11.905862, 100, 0, 0),
(@GUID, 3, 7329.0063, -6606.192, 8.848245, 100, 0, 0),
(@GUID, 4, 7355.4165, -6604.479, 10.104639, 100, 0, 0),
(@GUID, 5, 7379.0547, -6603.8105, 8.856997, 100, 0, 0),
(@GUID, 6, 7266.613, -6575.5664, 17.473843, 100, 0, 0),
(@GUID, 7, 7443.03, -6606.39, 9.2374, 100, 0, 0),
(@GUID, 8, 7480.038, -6606.483, 9.45992, 100, 0, 0),
(@GUID, 9, 7512.153, -6613.131, 9.395042, 100, 0, 0),
(@GUID, 10, 7535.4053, -6617.065, 9.97742, 100, 0, 0),
(@GUID, 11, 7562.0503, -6624.1763, 10.499148, 100, 0, 0),
(@GUID, 12, 7599.4565, -6634.863, 11.278537, 100, 0, 0),
(@GUID, 13, 7626.25, -6642.38, 15.6297, 100, 0, 0);
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id IN (16404,16405));
DELETE FROM creature_movement WHERE id IN (SELECT guid FROM creature WHERE id IN (16404,16405));
DELETE FROM `creature` WHERE `id` IN (16404,16405);
INSERT INTO `creature` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `MovementType`) VALUES
(92500, 16404, 530, 7782.52, -5520.32, -25.0596, 2.25148, 300, 300, 25, 1),
(92501, 16404, 530, 7849.99, -5582.05, -15.6664, 1.91986, 300, 300, 25, 1),
(75267, 16404, 530, 7453.58, -5582.35, -4.67931, 1.29154, 300, 300, 25, 1),
(75268, 16404, 530, 7650.67, -5514.59, -49.1541, 0.471239, 300, 300, 25, 1),
(75269, 16404, 530, 7584.5, -5583.41, -24.8534, 3.45575, 300, 300, 25, 1),
(75270, 16404, 530, 7583.76, -5452.18, -46.0399, 2.70526, 300, 300, 25, 1),
(75271, 16404, 530, 7714.01, -5449.99, -64.6989, 5.61996, 300, 300, 25, 1),
(75272, 16404, 530, 7646.78, -5386.8, -65.335, 3.75246, 300, 300, 25, 1),
(90981, 16404, 530, 7851.46, -5451.52, -47.5537, 0.698132, 300, 300, 25, 1),
(90982, 16404, 530, 7916.75, -5518.63, -40.6265, 0.0872665, 300, 300, 25, 1),
(90983, 16404, 530, 7981.46, -5584.88, -4.67932, 2.98451, 300, 300, 25, 1),
(90984, 16404, 530, 7981.47, -5453.28, -45.3642, 2.44346, 300, 300, 25, 1),
(90985, 16404, 530, 8049.63, -5517.96, -25.7112, 5.20108, 300, 300, 25, 1),
(90986, 16404, 530, 8116.96, -5448.62, -46.0617, 0.698132, 300, 300, 25, 1),
(90987, 16404, 530, 8115.65, -5582.93, -4.67935, 3.07178, 300, 300, 25, 1),
(90988, 16404, 530, 8181.52, -5517.78, -21.4738, 3.9968, 300, 300, 15, 1),
(92334, 16405, 530, 6929.59, -5718.05, -2.57678, 4.20766, 300, 300, 25, 1),
(92335, 16405, 530, 6786.31, -5718.75, -11.0892, 3.22507, 300, 300, 25, 1),
(90989, 16405, 530, 6988.21, -5644.91, -3.24633, 3.19372, 300, 300, 25, 1),
(90990, 16405, 530, 7185.63, -5581.58, -7.89854, 1.23799, 300, 300, 25, 1),
(90991, 16405, 530, 7125.06, -5516.67, -5.84579, 0.0544871, 300, 300, 25, 1),
(49414, 16405, 530, 7250.16, -5645.38, -4.68682, 1.60947, 300, 300, 25, 1),
(49415, 16405, 530, 7251.58, -5518.66, -14.8205, 5.09052, 300, 300, 25, 1),
(49417, 16405, 530, 7319, -5583.68, -5.34557, 4.63134, 300, 300, 25, 1),
(49418, 16405, 530, 7385.25, -5514.5, -23.8396, 4.48253, 300, 300, 25, 1),
(49419, 16405, 530, 7058.42, -5622.24, -6.2648, 5.30934, 300, 300, 25, 1);
UPDATE `creature_template` SET `ExtraFlags` = `ExtraFlags`|1048576 WHERE `entry` = 16404;
UPDATE `creature_template` SET `ExtraFlags` = `ExtraFlags`|1048576 WHERE `entry` = 16405;
UPDATE `creature_template` SET `UnitFlags` = 0, `ExtraFlags` = `ExtraFlags`|1048576 WHERE `entry` = 16316;
DELETE FROM creature_movement WHERE id IN (SELECT guid FROM creature WHERE id  = 16316);
DELETE FROM `creature_addon` WHERE `guid` IN (SELECT `guid` FROM `creature` WHERE `id` = 16316);
DELETE FROM `creature` WHERE `id` = 16316;
INSERT INTO `creature` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `MovementType`) VALUES
(55926, 16316, 530, 7221.24, -6350.17, 42.281, 0.784609, 300, 300, 10, 1),
(55927, 16316, 530, 7245.87, -6371.23, 45.5117, 1.98578, 300, 300, 10, 1),
(55928, 16316, 530, 7284, -6389.01, 42.9657, 5.91538, 300, 300, 10, 1),
(55929, 16316, 530, 7151.58251953125, -6417.0107421875, 39.69874954223632812, 4.290693283081054687, 300, 300, 10, 1),
(55930, 16316, 530, 7279.27099609375, -6447.33056640625, 31.69436454772949218, 1.409456253051757812, 300, 300, 10, 1),
(49425, 16316, 530, 7268.84, -6422.21, 44.8567, 0.68786, 300, 300, 10, 1),
(49426, 16316, 530, 7121.49462890625, -6645.91943359375, 45.05701065063476562, 4.965888023376464843, 300, 300, 10, 1),
(49427, 16316, 530, 7164.14, -6659.28, 51.1032, 2.44948, 300, 300, 10, 1),
(49428, 16316, 530, 7186.97216796875, -6654.8828125, 52.35645675659179687, 5.1043243408203125, 300, 300, 10, 1),
(49429, 16316, 530, 7234.97, -6643.13, 49.204, 5.49503, 300, 300, 10, 1);
UPDATE `creature_template` SET `UnitFlags` = 32768, `ExtraFlags` = `ExtraFlags`|1048576 WHERE `entry` = 16318;
DELETE FROM creature_movement WHERE id IN (SELECT guid FROM creature WHERE id  = 16318);
DELETE FROM `creature_addon` WHERE `guid` IN (SELECT `guid` FROM `creature` WHERE `id` = 16318);
DELETE FROM `creature` WHERE `id` = 16318;
INSERT INTO `creature` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `MovementType`) VALUES
(56162, 16318, 530, 7220.64501953125, -6403.009765625, 56.24953079223632812, 4.660028934478759765, 300, 300, 0, 0),
(56163, 16318, 530, 7221.1875, -6428.111328125, 56.24944305419921875, 1.623156189918518066, 300, 300, 0, 0),
(75262, 16318, 530, 7232.88232421875, -6414.5380859375, 56.24930953979492187, 3.176499128341674804, 300, 300, 0, 0),
(75826, 16318, 530, 7216.7509765625, -6415.4697265625, 59.2485809326171875, 0.104719758033752441, 300, 300, 0, 0),
(75827, 16318, 530, 7167.1162109375, -6626.78662109375, 60.74185562133789062, 1.413716673851013183, 300, 300, 0, 0),
(75828, 16318, 530, 7173.07666015625, -6602.65478515625, 60.74173355102539062, 4.450589656829833984, 300, 300, 0, 0),
(75829, 16318, 530, 7157.48486328125, -6611.3837890625, 60.7415771484375, 6.038839340209960937, 300, 300, 0, 0),
(75830, 16318, 530, 7172.9970703125, -6615.69384765625, 63.7408447265625, 2.932153224945068359, 300, 300, 0, 0);
UPDATE `creature_template` SET `UnitFlags` = 0, `ExtraFlags` = `ExtraFlags`|1048576 WHERE `entry` = 16322;
DELETE FROM creature_movement WHERE id IN (SELECT guid FROM creature WHERE id  = 16322);
DELETE FROM `creature_addon` WHERE `guid` IN (SELECT `guid` FROM `creature` WHERE `id` = 16322);
DELETE FROM `creature` WHERE `id` = 16322;
INSERT INTO `creature` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `MovementType`) VALUES
(67590, 16322, 530, 7695.32, -6385.79, 21.7635, 2.10787, 300, 300, 5, 1),
(67603, 16322, 530, 7665.96, -6406.48, 19.1865, 1.05674, 300, 300, 5, 1),
(67861, 16322, 530, 7680.21, -6408.18, 17.545, 4.67237, 300, 300, 5, 1),
(67863, 16322, 530, 7709.88525390625, -6404.076171875, 17.94471931457519531, 4.077486515045166015, 300, 300, 5, 1),
(67866, 16322, 530, 7688.4, -6391.44, 20.5135, 1.10074, 300, 300, 5, 1),
(67872, 16322, 530, 7663.18, -6396, 20.2945, 2.48449, 300, 300, 5, 1),
(67874, 16322, 530, 7676.73, -6378.29, 23.0135, 4.74449, 300, 300, 5, 1),
(67878, 16322, 530, 7663.31, -6376.65, 23.6095, 2.0837, 300, 300, 5, 1),
(67896, 16322, 530, 7705.21, -6355.74, 22.5366, 0.780316, 300, 300, 5, 1),
(67897, 16322, 530, 7680.92, -6343.92, 28.4991, 0.109609, 300, 300, 5, 1),
(67902, 16322, 530, 7650.7607421875, -6351.3671875, 25.54853057861328125, 6.2238922119140625, 300, 300, 5, 1),
(67904, 16322, 530, 7685.076171875, -6375.98828125, 24.37945938110351562, 1.120163321495056152, 300, 300, 5, 1);
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(92332, 17210, 530, 1, 0, 0, 7959.21, -6477.04, 51.0589, 0, 300, 300, 0, 0, 0, 0, 0, 2);
DELETE FROM `creature_movement_template` WHERE `Entry` = 17210;
INSERT INTO `creature_movement_template` (`Entry`, `PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(17210, 0, 1, 7959.21, -6477.04, 51.0589, 100, 0, 0),
(17210, 0, 2, 7949.21, -6470.89, 50.8545, 2.67718, 12000, 1721001),
(17210, 0, 3, 7964.13, -6468.31, 50.8281, 100, 0, 0),
(17210, 0, 4, 7970.87, -6472.73, 51.378, 100, 0, 0),
(17210, 0, 5, 7976.76, -6470.12, 53.2503, 100, 0, 0),
(17210, 0, 6, 7987.85, -6464.91, 58.1229, 100, 0, 0),
(17210, 0, 7, 7994, -6460.51, 60.3201, 100, 0, 0),
(17210, 0, 8, 8002.4, -6454.37, 61.7814, 0.722335, 12000, 1721001),
(17210, 0, 9, 8008.29, -6466.92, 61.8956, 0.09794, 12000, 1721001),
(17210, 0, 10, 8002.48, -6475.78, 60.9006, 100, 0, 0),
(17210, 0, 11, 7996.81, -6483.91, 59.0609, 100, 0, 0),
(17210, 0, 12, 7991.4, -6490.99, 57.1803, 100, 0, 0),
(17210, 0, 13, 7986.9, -6496.35, 56.1106, 100, 0, 0),
(17210, 0, 14, 7972.27, -6513.77, 56.5861, 100, 0, 0),
(17210, 0, 15, 7972.21, -6524.3, 57.8696, 100, 0, 0),
(17210, 0, 16, 7974.74, -6536.88, 58.8071, 100, 0, 0),
(17210, 0, 17, 7977.36, -6550.41, 59.3031, 4.92499, 12000, 1721001),
(17210, 0, 18, 7979.65, -6540.51, 59.4182, 0.723897, 12000, 1721001),
(17210, 0, 19, 7973.16, -6525.25, 58.0451, 100, 0, 0),
(17210, 0, 20, 7970.04, -6515.8, 56.4786, 100, 0, 0),
(17210, 0, 21, 7966.01, -6503.63, 52.3774, 100, 0, 0),
(17210, 0, 22, 7961.96, -6491.44, 51.8998, 100, 0, 0);
DELETE FROM `dbscripts_on_creature_movement` WHERE `id` = 1721001;
INSERT INTO `dbscripts_on_creature_movement` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `datafloat`, `x`, `y`, `z`, `o`, `speed`, `condition_id`, `comments`) VALUES
(1721001, 0, 	0, 31, 16330, 5, 0, 0, 0, 0, -12000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Sentinel Leader - Terminate Script If Sentinel Spy (16330) Is Not Found in Range'),
(1721001, 1000, 0, 1, 66, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Sentinel Leader - EMOTE_ONESHOT_SALUTE (66)'),
(1721001, 3000, 0, 1, 1, 0, 0, 16330, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Sentinel Spy - EMOTE_ONESHOT_TALK (1)'),
(1721001, 5000, 0, 1, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Sentinel Leader - EMOTE_ONESHOT_QUESTION (6)'),
(1721001, 7000, 0, 1, 273, 0, 0, 16330, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Sentinel Spy - EMOTE_ONESHOT_YES (273)'),
(1721001, 9000, 0, 1, 66, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Sentinel Leader - EMOTE_ONESHOT_SALUTE (66)'),
(1721001, 11000, 0, 1, 66, 0, 0, 16330, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Sentinel Spy - EMOTE_ONESHOT_SALUTE (66)');
UPDATE `creature_template` SET `ExtraFlags` = `ExtraFlags`|1048576 WHERE `entry` = 16330;
UPDATE `creature_template` SET `ExtraFlags` = `ExtraFlags`|1048576 WHERE `entry` = 17210;
DELETE FROM `creature_movement` WHERE `Id` IN (SELECT `guid` FROM `creature` WHERE `id` = 16330);
DELETE FROM `creature_addon` WHERE `guid` IN (SELECT `guid` FROM `creature` WHERE `id` = 16330);
DELETE FROM `creature` WHERE `id` IN (16330);
REPLACE INTO `creature` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `MovementType`) VALUES
(75769, 16330, 530, 7946.3671875, -6469.5166015625, 50.92702102661132812, 5.829399585723876953, 300, 300, 0, 0),
(75770, 16330, 530, 7965.81103515625, -6465.1884765625, 51.12981414794921875, 4.118977069854736328, 300, 300, 0, 0),
(75771, 16330, 530, 7966.69091796875, -6482.30810546875, 51.914703369140625, 2.426007747650146484, 300, 300, 0, 0),
(75772, 16330, 530, 8005.76318359375, -6450.9755859375, 62.13370513916015625, 3.926990747451782226, 300, 300, 0, 0),
(75773, 16330, 530, 8011.03662109375, -6466.64501953125, 62.0297088623046875, 3.176499128341674804, 300, 300, 0, 0),
(75774, 16330, 530, 7978.05029296875, -6554.125, 59.26723861694335937, 1.954768776893615722, 300, 300, 0, 0),
(75775, 16330, 530, 7981.28759765625, -6539.00244140625, 59.53390884399414062, 3.892084121704101562, 300, 300, 0, 0),
(75776, 16330, 530, 7945.73291015625, -6579.013671875, 54.38336944580078125, 1.01095, 300, 300, 15, 1),
(75777, 16330, 530, 7920.18, -6554.29, 51.7943, 5.00561, 300, 300, 15, 1),
(75778, 16330, 530, 7894.06, -6544.12, 47.641, 0.324908, 300, 300, 15, 1),
(75779, 16330, 530, 7947.65, -6547.53, 54.3721, 5.65176, 300, 300, 15, 1),
(75780, 16330, 530, 7915.890625, -6519.07080078125, 47.7542266845703125, 4.08876657485961914, 300, 300, 15, 1),
(75781, 16330, 530, 7885.6962890625, -6486.44921875, 48.70124053955078125, 0.894071877002716064, 300, 300, 15, 1),
(75782, 16330, 530, 7989.87, -6513.11, 59.2806, 5.54836, 300, 300, 15, 1),
(67367, 16330, 530, 7913.65, -6485.86, 47.6309, 4.13106, 300, 300, 15, 1),
(67906, 16330, 530, 7954.7627, -6430.6167, 57.585033, 0.081288, 300, 300, 15, 1),
(49430, 16330, 530, 7886.62, -6517.31, 46.9132, 5.20012, 300, 300, 15, 1),
(49431, 16330, 530, 7993.6333, -6466.6142, 59.4672, 6.03039, 300, 300, 5, 1),
(49432, 16330, 530, 7954.6, -6563.63, 55.0333, 6.02287, 300, 300, 0, 2),
(49433, 16330, 530, 7900.32, -6497.87, 47.5106, 0.484221, 300, 300, 0, 2);
INSERT INTO `creature_movement` (`Id`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`) VALUES
(49433, 1, 7900.32, -6497.87, 47.5106, 100),
(49433, 2, 7912.19, -6494.71, 47.1821, 100),
(49433, 3, 7922.93, -6492.08, 46.9292, 100),
(49433, 4, 7921.86, -6482.85, 47.5928, 100),
(49433, 5, 7920.85, -6469.48, 49.084, 100),
(49433, 6, 7919.63, -6459.06, 50.2057, 100),
(49433, 7, 7918.18, -6448.69, 52.262, 100),
(49433, 8, 7920.56, -6464.31, 49.4089, 100),
(49433, 9, 7921.59, -6478.87, 47.8886, 100),
(49433, 10, 7929.73, -6493.64, 46.6639, 100),
(49433, 11, 7937.41, -6500.79, 46.5272, 100),
(49433, 12, 7919.69, -6516.77, 46.9043, 100),
(49433, 13, 7914.54, -6535.86, 47.6551, 100),
(49433, 14, 7913.81, -6544.76, 50.403, 100),
(49433, 15, 7913.29, -6551.15, 51.2099, 100),
(49433, 16, 7914.92, -6541.96, 49.7333, 100),
(49433, 17, 7915.97, -6535.64, 47.636, 100),
(49433, 18, 7920.28, -6524.81, 47.3236, 100),
(49433, 19, 7923.52, -6512.41, 46.8267, 100),
(49433, 20, 7939.68, -6501.67, 46.5513, 100),
(49433, 21, 7947.13, -6505.87, 46.7364, 100),
(49433, 22, 7952.35, -6506.45, 47.3305, 100),
(49433, 23, 7965.78, -6506.66, 52.521, 100),
(49433, 24, 7967.41, -6504.22, 52.7831, 100),
(49433, 25, 7954.21, -6506.42, 47.7545, 100),
(49433, 26, 7946.79, -6505.8, 46.7331, 100),
(49433, 27, 7939.91, -6501.96, 46.5581, 100),
(49433, 28, 7927.88, -6507.88, 46.7883, 100),
(49433, 29, 7921.43, -6512.77, 46.8466, 100),
(49433, 30, 7915.21, -6535.85, 47.6562, 100),
(49433, 31, 7912.94, -6545.49, 50.4127, 100),
(49433, 32, 7911.48, -6551.73, 51.1795, 100),
(49433, 33, 7912.34, -6543.65, 49.8552, 100),
(49433, 34, 7913.88, -6535.61, 47.6357, 100),
(49433, 35, 7918.22, -6515.64, 46.8566, 100),
(49433, 36, 7929.86, -6506.89, 46.7253, 100),
(49433, 37, 7929.33, -6494.27, 46.6611, 100),
(49433, 38, 7923.27, -6490.81, 46.9264, 100),
(49433, 39, 7913.32, -6494.07, 47.1927, 100),
(49433, 40, 7899.95, -6498.34, 47.557, 100),
(49433, 41, 7890.17, -6499.9, 47.7993, 100),
(49433, 42, 7876.3, -6501.86, 48.0669, 100),
(49433, 43, 7872.25, -6502.43, 48.8298, 100),
(49433, 44, 7882.11, -6501.17, 47.8077, 100),
(49433, 45, 7890.8, -6499.92, 47.7538, 100),
(49432, 45, 7945.58, -6565.89, 53.7617, 100),
(49432, 44, 7937.35, -6573.28, 54.2422, 100),
(49432, 43, 7926.36, -6582.38, 53.3067, 100),
(49432, 42, 7920.57, -6571.27, 53.5382, 100),
(49432, 41, 7914.84, -6561.13, 52.44, 100),
(49432, 40, 7908.73, -6559.11, 51.5153, 100),
(49432, 39, 7897.69, -6555.46, 49.4669, 100),
(49432, 38, 7886.59, -6550.28, 47.3383, 100),
(49432, 37, 7883.16, -6534.38, 45.6395, 100),
(49432, 36, 7881.31, -6518.72, 46.856, 100),
(49432, 35, 7880.4, -6512.95, 46.5274, 100),
(49432, 34, 7880.19, -6504.77, 47.4123, 100),
(49432, 33, 7881.74, -6487.36, 48.4788, 100),
(49432, 32, 7890.16, -6474.4, 50.7722, 100),
(49432, 31, 7891.72, -6470.63, 50.8219, 100),
(49432, 30, 7900.47, -6463.69, 50.8951, 100),
(49432, 29, 7910.99, -6457.89, 51.0916, 100),
(49432, 28, 7917.64, -6450.51, 51.9036, 100),
(49432, 27, 7924.08, -6439.39, 54.3376, 100),
(49432, 26, 7933.5, -6426.63, 57.9866, 100),
(49432, 25, 7938.21, -6419.97, 61.3128, 100),
(49432, 24, 7949.72, -6421.83, 59.2484, 100),
(49432, 23, 7963.72, -6423.02, 59.4658, 100),
(49432, 22, 7974.22, -6423.23, 58.9278, 100),
(49432, 21, 7986.65, -6428.11, 60.1909, 100),
(49432, 20, 7999.43, -6429.75, 61.7411, 100),
(49432, 19, 8010.34, -6435.62, 62.5336, 100),
(49432, 18, 8021.14, -6441.41, 62.7181, 100),
(49432, 17, 8023.17, -6447.8, 62.1215, 100),
(49432, 16, 8025.27, -6459.26, 62.0128, 100),
(49432, 15, 8021.24, -6467.69, 62.1535, 100),
(49432, 14, 8015.96, -6477.41, 63.0251, 100),
(49432, 13, 8011.67, -6485.03, 62.7964, 100),
(49432, 12, 8011.49, -6490.87, 62.3164, 100),
(49432, 11, 8009.73, -6507.7, 59.7056, 100),
(49432, 10, 8009.96, -6519.94, 59.6991, 100),
(49432, 9, 8008.8, -6536.84, 61.587, 100),
(49432, 8, 8006.59, -6547.12, 63.0345, 100),
(49432, 7, 8005.24, -6555.77, 63.7849, 100),
(49432, 6, 8004.22, -6566.78, 63.3646, 100),
(49432, 5, 7994.78, -6569.86, 62.2509, 100),
(49432, 4, 7983.77, -6569.5, 60.7446, 100),
(49432, 3, 7973.98, -6567.99, 58.5354, 100),
(49432, 2, 7964.2, -6566.23, 56.9822, 100),
(49432, 1, 7954.6, -6563.63, 55.0333, 100);
UPDATE `creature_movement` SET `Comment` = 'Corecraft' WHERE `id` = 49433;
UPDATE `creature_template` SET `ExtraFlags` = `ExtraFlags`|1048576 WHERE `entry` = 16331;
UPDATE `creature_template` SET `ExtraFlags` = `ExtraFlags`|1048576 WHERE `entry` = 16332;
DELETE FROM `creature_addon` WHERE `guid` IN (SELECT `guid` FROM `creature` WHERE `id` IN (16331,16332));
DELETE FROM `creature_movement` WHERE `id` IN (SELECT `guid` FROM `creature` WHERE `id` IN (16331,16332));
DELETE FROM `creature` WHERE `id` IN (16331,16332);
INSERT INTO `creature` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `MovementType`) VALUES
(75017, 16331, 530, 7679.66162109375, -5769.40478515625, 3.854619264602661132, 1.047197580337524414, 300, 300, 0, 2),
(75018, 16331, 530, 7677.50244140625, -5736.302734375, 3.758324146270751953, 5.724679946899414062, 300, 300, 0, 2),
(75019, 16331, 530, 7691.95654296875, -5714.34912109375, 4.27935647964477539, 3.577924966812133789, 300, 300, 0, 0),
(75020, 16331, 530, 7712.92626953125, -5704.05322265625, 3.397907257080078125, 2.565634012222290039, 300, 300, 0, 2),
(75021, 16331, 530, 7685.88525390625, -5699.0595703125, 3.649730205535888671, 0.48869219422340393, 300, 300, 0, 2),
(49434, 16331, 530, 7720.328125, -5695.7041015625, 3.863145351409912109, 2.722713708877563476, 300, 300, 0, 2),
(49435, 16331, 530, 7741.41650390625, -5707.06005859375, 3.669067144393920898, 6.195918560028076171, 300, 300, 0, 2),
(49436, 16331, 530, 7719.69287109375, -5682.38525390625, 4.808124542236328125, 0.191986218094825744, 300, 300, 0, 0),
(49437, 16331, 530, 7681.078125, -5667.5009765625, 1.573118329048156738, 5.305800914764404296, 300, 300, 0, 2),
(75022, 16332, 530, 7751.95, -5668.52, 3.2572, 0, 300, 300, 0, 2),
(75023, 16332, 530, 7758.2876, -5604.123, 5.953563, 0, 300, 300, 0, 4),
(75024, 16332, 530, 7730.902, -5575.2056, 6.875351, 0, 300, 300, 0, 2),
(75816, 16332, 530, 7746.667480, -5595.223145, 5.204555, 0, 300, 300, 1, 1),
(75817, 16332, 530, 7764.08447265625, -5621.7392578125, 12.73809432983398437, 2.234021425247192382, 300, 300, 0, 0),
(75818, 16332, 530, 7775.2153, -5634.5225, 17.786907, 0, 300, 300, 0, 2),
(75819, 16332, 530, 7772.72998046875, -5629.0810546875, 17.91558647155761718, 2.687807083129882812, 300, 300, 0, 0);
INSERT INTO `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_pvp_state`, `emote`, `moveflags`, `auras`) VALUES 
(75019, 0, 8, 1, 16, 0, 0, NULL),
(49436, 0, 8, 1, 16, 0, 0, NULL);
DELETE FROM `creature_movement` WHERE `Id` = 75022;
INSERT INTO `creature_movement` (`Id`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(75022, 10, 7751.95, -5668.52, 3.257, 100, 0, 0),
(75022, 9, 7755.93, -5703.13, 3.984, 100, 0, 0),
(75022, 8, 7731.41, -5733.69, 3.972, 100, 0, 0),
(75022, 7, 7697.18, -5732.92, 3.67, 100, 0, 0),
(75022, 6, 7696.6, -5753.39, 4.803, 100, 0, 0),
(75022, 5, 7672.94, -5753.6, 3.817, 100, 0, 0),
(75022, 4, 7696.6, -5753.39, 4.803, 100, 0, 0),
(75022, 3, 7697.18, -5732.92, 3.67, 100, 0, 0),
(75022, 2, 7731.41, -5733.69, 3.972, 100, 0, 0),
(75022, 1, 7755.93, -5703.13, 3.984, 100, 0, 0);
INSERT INTO `creature_movement` (`Id`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(75017, 1, 7679.66162109375, -5769.40478515625, 3.854619264602661132, 100, 1, 1633101),
(75017, 2, 7679.66162109375, -5769.40478515625, 3.854619264602661132, 100, 45000, 0),
(75018, 1, 7677.50244140625, -5736.302734375, 3.758324146270751953, 100, 45000, 0),
(75018, 2, 7677.50244140625, -5736.302734375, 3.758324146270751953, 100, 1, 1633101),
(75020, 1, 7712.92626953125, -5704.05322265625, 3.397907257080078125, 100, 1, 1633101),
(75020, 2, 7712.92626953125, -5704.05322265625, 3.397907257080078125, 100, 45000, 0),
(75021, 1, 7685.88525390625, -5699.0595703125, 3.649730205535888671, 100, 45000, 0),
(75021, 2, 7685.88525390625, -5699.0595703125, 3.649730205535888671, 100, 1, 1633101),
(49434, 1, 7720.328125, -5695.7041015625, 3.863145351409912109, 100, 1, 1633101),
(49434, 2, 7720.328125, -5695.7041015625, 3.863145351409912109, 100, 45000, 0),
(49435, 1, 7741.41650390625, -5707.06005859375, 3.669067144393920898, 100, 45000, 0),
(49435, 2, 7741.41650390625, -5707.06005859375, 3.669067144393920898, 100, 1, 1633101),
(49437, 1, 7681.078125, -5667.5009765625, 1.573118329048156738, 100, 1, 1633101),
(49437, 2, 7681.078125, -5667.5009765625, 1.573118329048156738, 100, 45000, 0);
DELETE FROM `dbscripts_on_creature_movement` WHERE `id` = 1633101;
INSERT INTO `dbscripts_on_creature_movement` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `datafloat`, `x`, `y`, `z`, `o`, `speed`, `condition_id`, `comments`) VALUES
(1633101, 0, 0, 15, 28892, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Darnassian Druid - Cast Nature Channeling'),
(1633101, 30000, 0, 47, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Darnassian Druid - Interrupt Channelling');
SET @GUID := 75024;
DELETE FROM `creature_movement` WHERE `Id` = @GUID;
INSERT INTO `creature_movement` (`Id`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(@GUID, 1, 7730.902, -5575.2056, 6.875351, 100, 0, 0),
(@GUID, 2, 7729.6963, -5579.8394, 6.7106028, 100, 0, 0),
(@GUID, 3, 7732.3457, -5586.9214, 6.2064266, 100, 0, 0),
(@GUID, 4, 7739.3994, -5597.0625, 5.1765356, 100, 0, 0),
(@GUID, 5, 7743.164, -5603.155, 5.3690796, 100, 0, 0),
(@GUID, 6, 7750.7754, -5606.6, 5.8016047, 100, 0, 0),
(@GUID, 7, 7755.2476, -5603.3574, 5.79532, 100, 0, 0),
(@GUID, 8, 7754, -5596.923, 5.4391894, 100, 0, 0),
(@GUID, 9, 7748.6787, -5590.26, 5.1773467, 100, 0, 0),
(@GUID, 10, 7741.2046, -5580.746, 6.187786, 100, 0, 0),
(@GUID, 11, 7735.624, -5575.783, 6.685228, 100, 0, 0);
SET @GUID := 75818;
DELETE FROM `creature_movement` WHERE `Id` = @GUID;
INSERT INTO `creature_movement` (`Id`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(@GUID, 1, 7775.2153, -5634.5225, 17.786907, 100, 0, 0),
(@GUID, 2, 7781.776, -5625.834, 17.69419, 100, 0, 0),
(@GUID, 3, 7780.244, -5622.344, 16.68333, 100, 0, 0),
(@GUID, 4, 7778.632, -5620.921, 15.060618, 100, 0, 0),
(@GUID, 5, 7773.259, -5620.7246, 12.782057, 100, 0, 0),
(@GUID, 6, 7767.975, -5624.541, 12.765444, 100, 0, 0),
(@GUID, 7, 7762.6157, -5628.4653, 12.778393, 100, 0, 0),
(@GUID, 8, 7761.0054, -5634.1597, 14.97569, 100, 0, 0),
(@GUID, 9, 7762.2866, -5636.7803, 17.259825, 100, 0, 0),
(@GUID, 10, 7767.257, -5638.0933, 17.724257, 100, 0, 0);
SET @GUID := 75023;
DELETE FROM `creature_movement` WHERE `Id` = @GUID;
INSERT INTO `creature_movement` (`Id`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(@GUID, 4, 7725, -5631.25, 2.3535814, 100, 0, 0),
(@GUID, 3, 7730.3564, -5628.1562, 1.3758655, 100, 0, 0),
(@GUID, 2, 7747.982, -5614.319, 6.5642357, 100, 0, 0),
(@GUID, 1, 7758.2876, -5604.123, 5.953563, 100, 0, 0);
UPDATE `creature_template` SET `UnitFlags` = 32768, `ExtraFlags` = `ExtraFlags`|1048576 WHERE `entry` = 16333;
DELETE FROM `creature_movement` WHERE `Id` IN (SELECT `guid` FROM `creature` WHERE `id` = 16333);
DELETE FROM `creature` WHERE `id` = 16333;
INSERT INTO `creature` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `MovementType`) VALUES
(56221, 16333, 530, 6836.13916015625, -7143.13525390625, 30.26040077209472656, 4.485496044158935546, 300, 300, 0, 0),
(56222, 16333, 530, 6824.734375, -7225.86962890625, 27.0943145751953125, 1.169370532035827636, 300, 300, 0, 0),
(56223, 16333, 530, 6846.6484375, -7184.21728515625, 27.48716354370117187, 3.804817676544189453, 300, 300, 0, 0),
(56224, 16333, 530, 6781.94873046875, -7187.36474609375, 25.85512924194335937, 6.126105785369873046, 300, 300, 0, 0),
(56225, 16333, 530, 6791.18212890625, -7202.23974609375, 25.85512924194335937, 0.715584993362426757, 300, 300, 0, 0),
(56226, 16333, 530, 6768.29345703125, -7147.10107421875, 49.63121795654296875, 0.471238881349563598, 300, 300, 0, 0),
(56227, 16333, 530, 6812.75341796875, -7221.546875, 26.718292236328125, 0.872664630413055419, 300, 300, 0, 0),
(56228, 16333, 530, 6841.5849609375, -7174.06591796875, 26.72866249084472656, 4.956735134124755859, 300, 300, 0, 0),
(56229, 16333, 530, 6830.13, -7176.33, 26.0216, 4.5204, 300, 300, 0, 0),
(56230, 16333, 530, 6818.568359, -7242.177734, 35.198566, 5.42038, 300, 300, 10, 1),
(77434, 16333, 530, 6847.521484, -7243.867676, 37.487274, 0.712861, 300, 300, 15, 1),
(77435, 16333, 530, 6851.939453, -7217.625488, 30.057913, 0.618929, 300, 300, 3, 1),
(77436, 16333, 530, 6880.149902, -7218.870117, 35.896557, 3.83648, 300, 300, 7, 1),
(77437, 16333, 530, 6882.91, -7182.39, 34.9994, 1.0177, 300, 300, 5, 1),
(78380, 16333, 530, 6879.649902, -7156.330078, 31.428101, 2.73824, 300, 300, 7, 1),
(92297, 16333, 530, 6898.009766, -7120.899902, 44.987499, 2.37723, 300, 300, 10, 1),
(117844, 16333, 530, 6872.617188, -7108.649414, 42.858631, 0.108649, 300, 300, 10, 1),
(123805, 16333, 530, 6813.123047, -7141.786133, 41.153851, 4.35504, 300, 300, 5, 1),
(123806, 16333, 530, 6748.535, -7152.66, 52.768658, 2.06064, 300, 300, 7, 1),
(123807, 16333, 530, 6749.279785, -7176.759766, 36.344700, 4.35297, 300, 300, 10, 1),
(123808, 16333, 530, 6779.802246, -7220.193848, 31.106001, 3.68917, 300, 300, 10, 1),
(123809, 16333, 530, 6834.94, -7216.47, 26.7579, 0, 300, 300, 0, 2),
(123810, 16333, 530, 6814.88, -7163.52, 33.065, 0, 300, 300, 0, 2),
(123811, 16333, 530, 6846.407, -7200.3657, 27.267984, 0, 300, 300, 0, 2);
SET @GUID := 123811;
DELETE FROM `creature_movement` WHERE `Id` = @GUID;
INSERT INTO `creature_movement` (`Id`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(@GUID, 1, 6846.407, -7200.3657, 27.267984, 100, 0, 0),
(@GUID, 2, 6842.989, -7192.268, 26.899847, 100, 0, 0),
(@GUID, 3, 6835.602, -7187.326, 26.064764, 100, 0, 0),
(@GUID, 4, 6828.214, -7188.1807, 24.513636, 100, 0, 0),
(@GUID, 5, 6820.3257, -7191.4316, 24.031214, 100, 0, 0),
(@GUID, 6, 6816.6333, -7196.6235, 24.099451, 100, 0, 0),
(@GUID, 7, 6816.6333, -7206.371, 24.4266, 100, 0, 0),
(@GUID, 8, 6820.516, -7213.812, 24.97848, 100, 0, 0),
(@GUID, 9, 6826.326, -7216.882, 25.996058, 100, 0, 0),
(@GUID, 10, 6835.212, -7216.7383, 26.493082, 100, 0, 0),
(@GUID, 11, 6841.942, -7214.983, 27.368082, 100, 0, 0),
(@GUID, 12, 6847.863, -7209.14, 27.527506, 100, 0, 0);
INSERT INTO `creature_movement` (`Id`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(123809, 1, 6834.94, -7216.47, 26.7579, 100, 0, 0),
(123809, 2, 6826.21, -7222.83, 27.1963, 100, 10000, 1633301),
(123809, 3, 6817.33, -7206.5, 24.9296, 100, 0, 0),
(123809, 4, 6819.72, -7180.19, 25.8325, 100, 0, 0),
(123809, 5, 6811.1, -7153.33, 37.8559, 100, 0, 0),
(123809, 6, 6794.9, -7138.71, 44.1971, 100, 0, 0),
(123809, 7, 6778.6, -7138.58, 47.7421, 100, 0, 0),
(123809, 8, 6770.26, -7144.74, 49.6693, 100, 10000, 1633301),
(123809, 9, 6786.9, -7138.09, 45.3298, 100, 0, 0),
(123809, 10, 6817.34, -7166.11, 30.7101, 100, 0, 0),
(123809, 11, 6823.65, -7165.9, 28.295, 100, 0, 0),
(123809, 12, 6835.52, -7146.78, 30.003, 100, 10000, 1633301),
(123809, 13, 6835.17, -7162.58, 27.7987, 100, 0, 0),
(123809, 14, 6835.99, -7176.25, 26.3595, 100, 0, 0),
(123809, 15, 6827.22, -7186.35, 24.9956, 100, 0, 0),
(123809, 16, 6819.5957, -7180.5723, 25.781458, 100, 0, 0),
(123809, 17, 6813.71, -7178.02, 26.0733, 100, 0, 0),
(123809, 18, 6800.09, -7180.94, 26.1337, 100, 0, 0),
(123809, 19, 6785.24, -7187.50, 25.7774, 100, 10000, 1633301),
(123809, 20, 6801.9673, -7180.109, 25.907923, 100, 0, 0),
(123809, 21, 6818.525, -7178.7393, 25.782923, 100, 0, 0),
(123809, 22, 6822.1846, -7189.311, 24.157923, 100, 0, 0),
(123809, 23, 6841.8916, -7191.3696, 26.759832, 100, 0, 0),
(123809, 24, 6844.3, -7187.85, 27.6956, 100, 10000, 1633301),
(123809, 25, 6846.74, -7212.1, 27.7392, 100, 0, 0),
(123810, 1, 6813.301, -7160.7793, 34.0559, 100, 0, 0),
(123810, 2, 6796.022, -7137.7695, 44.04686, 100, 0, 0),
(123810, 3, 6775.7603, -7138.9243, 48.620712, 100, 0, 0),
(123810, 4, 6770.26, -7144.74, 49.6693, 100, 10000, 1633301),
(123810, 5, 6783.22, -7137.83, 46.4981, 100, 0, 0),
(123810, 6, 6794.4, -7137.11, 44.6029, 100, 0, 0),
(123810, 7, 6800.04, -7146.85, 40.496, 100, 0, 0),
(123810, 8, 6795.78, -7165.81, 32.8607, 100, 0, 0),
(123810, 9, 6794.72, -7181.56, 26.6348, 100, 0, 0),
(123810, 10, 6794.2, -7190.43, 25.9555, 100, 0, 0),
(123810, 11, 6791.74, -7199.41, 25.7725, 100, 10000, 1633301),
(123810, 12, 6789.92, -7190.85, 26.1468, 100, 0, 0),
(123810, 13, 6801.36, -7179.81, 25.9079, 100, 0, 0),
(123810, 14, 6817.51, -7178.51, 25.7217, 100, 0, 0),
(123810, 15, 6818.854, -7192.0767, 24.157923, 100, 0, 0),
(123810, 16, 6814.8433, -7203.1724, 24.507288, 100, 0, 0),
(123810, 17, 6819.7017, -7216.159, 25.484217, 100, 0, 0),
(123810, 18, 6814.854, -7219.908, 26.657923, 100, 10000, 1633301),
(123810, 19, 6816.3257, -7196.019, 24.154505, 100, 0, 0),
(123810, 20, 6828.638, -7189.9097, 24.657068, 100, 0, 0),
(123810, 21, 6830.4307, -7178.8135, 26.032923, 100, 10000, 1633301),
(123810, 22, 6820.8594, -7177.1274, 26.519983, 100, 0, 0);
DELETE FROM `dbscripts_on_creature_movement` WHERE `id` = 1633301;
INSERT INTO `dbscripts_on_creature_movement` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `datafloat`, `x`, `y`, `z`, `o`, `speed`, `condition_id`, `comments`) VALUES
(1633301, 0, 	0, 31, 16333, 5, 0, 0, 0, 0, -12000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Sentinel Infiltrator (Master) - Terminate Script If Sentinel Infiltrator (16333) Is Not Found in Range'),
(1633301, 1000, 0, 1, 66, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Sentinel Infiltrator (Master) - EMOTE_ONESHOT_SALUTE (66)'),
(1633301, 1000, 0, 1, 66, 0, 0, 16333, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Sentinel Infiltrator - EMOTE_ONESHOT_SALUTE (66)'),
(1633301, 3000, 0, 1, 1, 0, 0, 16333, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Sentinel Infiltrator - EMOTE_ONESHOT_TALK (1)'),
(1633301, 5000, 0, 1, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Sentinel Infiltrator (Master) - EMOTE_ONESHOT_QUESTION (6)'),
(1633301, 7000, 0, 1, 5, 0, 0, 16333, 5, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Sentinel Infiltrator - EMOTE_ONESHOT_EXCLAMATION (5) or '),
(1633301, 7000, 0, 1, 66, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Sentinel Infiltrator (Master) - EMOTE_ONESHOT_SALUTE (66)');

DELETE FROM dbscripts_on_spell WHERE id = 52322;
INSERT INTO dbscripts_on_spell (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(52322,1,40,0,0,0,190731,30,7,0,0,0,0,0,0,0,0,''),
(52322,2,40,0,0,0,190732,30,7,0,0,0,0,0,0,0,0,''),
(52322,10,15,52324,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(52322,100,15,52335,0,0,28778,30,7,0,0,0,0,0,0,0,0,''),
(52322,101,15,52325,0,0,28778,30,7,0,0,0,0,0,0,0,0,''),
(52322,102,15,52330,0,0,28778,30,7,0,0,0,0,0,0,0,0,''),
(52322,103,15,52332,0,0,28778,30,7,0,0,0,0,0,0,0,0,''),
(52322,104,15,52332,0,0,28778,30,7,0,0,0,0,0,0,0,0,''),
(52322,105,15,52332,0,0,28778,30,7,0,0,0,0,0,0,0,0,''),
(52322,106,15,52332,0,0,28778,30,7,0,0,0,0,0,0,0,0,''),
(52322,107,18,0,0,0,28778,30,7,0,0,0,0,0,0,0,0,'');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(37660, 28778, 571, 1, 1, 0, 0, 6197.43, -2173.22, 235.535, 5.25344, 120, 120, 0, 0, 0, 0, 0, 0),
(37697, 28778, 571, 1, 1, 0, 0, 5955.15, -2026.29, 240.224, 5.07891, 120, 120, 0, 0, 0, 0, 0, 0),
(37706, 28778, 571, 1, 1, 0, 0, 6095.28, -1926.77, 235.397, 2.70526, 120, 120, 0, 0, 0, 0, 0, 0),
(38435, 28778, 571, 1, 1, 0, 0, 6037.03, -2196.01, 239.58, 1.50098, 120, 120, 0, 0, 0, 0, 0, 0),
(39247, 28778, 571, 1, 1, 0, 0, 6203.21, -2242.75, 239.477, 4.08407, 120, 120, 0, 0, 0, 0, 0, 0),
(39307, 28778, 571, 1, 1, 0, 0, 6049.06, -1963.66, 235.833, 5.14872, 120, 120, 0, 0, 0, 0, 0, 0);
UPDATE creature SET spawndist = 0, MovementType = 0, spawntimesecsmin = 120, spawntimesecsmax = 120 WHERE id = 28778;
DELETE FROM dbscripts_on_relay WHERE id = 20638;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20638,1,9,0,0,0,190731,30,7,0,0,0,0,0,0,0,0,'');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(31765, 190731, 571, 1, 1, 6037.15, -2195.38, 239.482, -2.65289, 0, 0, -0.970294, 0.241927, 300, 300, 100, 1),
(31769, 190731, 571, 1, 1, 6096.43, -1927.1, 235.434, 2.49582, 0, 0, 0.948324, 0.317305, 300, 300, 100, 1),
(31770, 190731, 571, 1, 1, 6200.58, -2240.45, 239.915, 0.506145, 0, 0, 0.25038, 0.968148, 300, 300, 100, 1),
(31771, 190731, 571, 1, 1, 6052.2, -1963.25, 235.494, -2.18166, 0, 0, -0.88701, 0.461749, 300, 300, 100, 1),
(31772, 190731, 571, 1, 1, 5956.58, -2024.94, 240.278, 2.37364, 0, 0, 0.927183, 0.374608, 300, 300, 100, 1),
(31773, 190731, 571, 1, 1, 6196.58, -2173.52, 235.556, 0.366518, 0, 0, 0.182235, 0.983255, 300, 300, 100, 1);

-- --------------------------------------------------------------------------------------------------------------------------------------------------------------
