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

UPDATE `creature_template` SET `GossipMenuId` = '0' WHERE `Entry` =2055;

-- --------------------------------------------------------------------------------------------------------------------------------------------------------------
