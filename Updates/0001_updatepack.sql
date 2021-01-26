# Y2kCat
# ALTER TABLE db_version_ytdb CHANGE COLUMN 662_FIX_14017 663_FIX_14032 bit;
REPLACE INTO `db_version_ytdb` (`version`) VALUES ('663_FIX_14032');

UPDATE db_version SET `cache_id`= '663';
UPDATE db_version SET `version`= 'YTDB_0.15.1_R663_cMaNGOS_R14032_RuDB_R71';

DELETE FROM spell_script_target WHERE entry IN (68788,69347,70464,71281);
INSERT INTO spell_script_target VALUES
(68788,0,196485,0), (69347,1,37584,0), (69347,1,37588,0), (69347,1,37587,0), (69347,1,37496,0), (69347,1,37497,0), (69347,1,37498,0), (69347,1,36477,0), (70464,1,36796,0),
(71281,1,36764,0), (71281,1,36765,0), (71281,1,36766,0), (71281,1,36767,0), (71281,1,36770,0), (71281,1,36771,0), (71281,1,36772,0), (71281,1,36773,0);

DELETE FROM creature_equip_template WHERE entry=4182;
INSERT INTO creature_equip_template (entry, equipentry1) VALUES (4182,49346);
UPDATE creature_template SET EquipmentTemplateId=4182 WHERE entry IN (36494,37613);
UPDATE creature_template SET faction=1771, MinLevel=80, MaxLevel=80, UnitFlags=UnitFlags|256 WHERE entry IN (36796,37657);
UPDATE `creature_template` SET `MinLevelHealth` = 5342, `MaxLevelHealth` = 5342, `MinMeleeDmg` = 422, `MaxMeleeDmg` = 586, `MinRangedDmg` = 345, `MaxRangedDmg` = 509, `Armor` = 9729, `MeleeAttackPower` = 642 WHERE `Entry` =36796;
UPDATE creature_template SET UnitFlags=33554496 WHERE entry IN (36938,36658);
UPDATE creature_template SET MinLevel=82, MaxLevel=82, faction=14 WHERE entry IN (36731);
UPDATE `creature_template` SET `MinLevelHealth` = 18199, `MaxLevelHealth` = 18199, `Armor` = 10356 WHERE `Entry` =36731;
UPDATE creature_template SET MovementType=2 WHERE entry=37755;

DELETE FROM `creature_movement_template` WHERE `entry`=28841;
INSERT INTO `creature_movement_template` (`entry`,`pathId`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`waittime`,`script_id`) VALUES
(28841,0,1,2386.89,-5901.15,108.503,0.0305656,6000,2884101),
(28841,1,2,2366.93,-5906.73,106.928,100,0,0),
(28841,1,3,2332.73,-5902.29,100.307,100,0,0),
(28841,1,4,2317.88,-5902.86,94.9301,100,0,0),
(28841,1,5,2301.5,-5908.89,87.569,100,0,0),
(28841,1,6,2295.23,-5916.3,83.1045,100,0,0),
(28841,1,7,2290.66,-5928.75,74.3088,100,0,0),
(28841,1,8,2283.12,-5959.27,55.8999,100,0,0),
(28841,1,9,2271.77,-5970.92,48.815,100,0,0),
(28841,1,10,2250.55,-5980.45,36.277,100,0,0),
(28841,1,11,2241.79,-5987.29,31.6077,100,0,0),
(28841,1,12,2233.43,-5998.21,24.4464,100,0,0),
(28841,1,13,2222.22,-6016.38,10.5408,100,0,0),
(28841,1,14,2206.35,-6051.64,6.24328,100,0,0),
(28841,1,15,2189.89,-6078.5,3.60618,100,0,0),
(28841,1,16,2183.44,-6099.19,0.853,100,0,0),
(28841,1,17,2176.59,-6128.98,1.09618,100,0,0),
(28841,1,18,2168.7,-6155.02,1.37583,100,0,0),
(28841,1,19,2134.1,-6167.12,0.389482,100,0,0),
(28841,1,20,2122.55,-6185.47,14.1255,100,0,0),
(28841,1,21,2115.67,-6196.45,13.3122,100,0,0),
(28841,1,22,2118.73,-6192.05,13.2693,1.86369,10000,2884102),
(28841,2,2,2366.93,-5906.73,106.928,100,0,0),
(28841,2,3,2332.73,-5902.29,100.307,100,0,0),
(28841,2,4,2317.88,-5902.86,94.9301,100,0,0),
(28841,2,5,2301.5,-5908.89,87.569,100,0,0),
(28841,2,6,2295.23,-5916.3,83.1045,100,0,0),
(28841,2,7,2290.66,-5928.75,74.3088,100,0,0),
(28841,2,8,2283.12,-5959.27,55.8999,100,0,0),
(28841,2,9,2271.77,-5970.92,48.815,100,0,0),
(28841,2,10,2250.55,-5980.45,36.277,100,0,0),
(28841,2,11,2241.79,-5987.29,31.6077,100,0,0),
(28841,2,12,2233.43,-5998.21,24.4464,100,0,0),
(28841,2,13,2222.22,-6016.38,10.5408,100,0,0),
(28841,2,14,2206.35,-6051.64,6.24328,100,0,0),
(28841,2,15,2189.89,-6078.5,3.60618,100,0,0),
(28841,2,16,2183.44,-6099.19,0.853,100,0,0),
(28841,2,17,2176.59,-6128.98,1.09618,100,0,0),
(28841,2,18,2178.14,-6147.96,1.55015,100,0,0),
(28841,2,19,2189.69,-6160.87,2.3304,100,0,0),
(28841,2,20,2213.66,-6164.05,0.80185,100,0,0),
(28841,2,21,2238.24,-6160.77,1.35147,100,0,0),
(28841,2,22,2262.75,-6160.41,1.44572,100,0,0),
(28841,2,23,2269.03,-6167.88,1.28304,100,0,0),
(28841,2,24,2270.15,-6178.05,7.35795,100,0,0),
(28841,2,25,2270.86,-6186.41,13.8103,100,0,0),
(28841,2,26,2270.64,-6196.38,13.2132,1.86369,10000,2884102);
DELETE FROM dbscripts_on_creature_movement WHERE id = 2884101;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2884101,1000,21,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'Scarlet Miner active'),
(2884101,2000,25,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'RUN ON'),
(2884101,2000,0,0,0,0,0,0,0,2000001313,0,0,0,0,0,0,0,''),
(2884101,5000,15,52595,0,0,28817,15,1,0,0,0,0,0,0,0,0,'cast 52595 on buddy'),
(2884101,5500,45,0,20214,0,0,0,0,0,0,0,0,0,0,0,0,'Start Random Script');
DELETE FROM dbscript_random_templates WHERE id = 20214;
INSERT INTO dbscript_random_templates (id, type, target_id, chance, comments) VALUES
(20214,1,20509,0,'28841 - Random Script - 1'),
(20214,1,20510,0,'28841 - Random Script - 2');
DELETE FROM dbscripts_on_relay WHERE id BETWEEN 20509 AND 20510;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20509,0,20,2,1,0,0,0,0x04,0,0,0,0,0,0,0,0,'28841 - Random Script - Set path 1'),
(20510,0,20,2,2,0,0,0,0x04,0,0,0,0,0,0,0,0,'28841 - Random Script - Set path 2');
DELETE FROM creature_template_addon WHERE entry IN (28864);
INSERT INTO creature_template_addon VALUES (28864,0,0,0,0,0,0,43775);
UPDATE creature_template SET SpeedWalk=(2.5/2.5), SpeedRun=(14/7.0), MovementType = 3 WHERE entry = 28864;
DELETE FROM `creature_movement_template` WHERE `entry`=28864;
INSERT INTO `creature_movement_template` (`entry`,`pathId`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`waittime`,`script_id`) VALUES
(28864,0,1,2191.454,-6131.876,48.42883,100,0,0),
(28864,0,2,2220.663,-6030.991,70.01215,100,0,0),
(28864,0,3,2281.503,-5955.75,131.79,100,0,0),
(28864,0,4,2306.983,-5872.798,177.6512,100,0,0),
(28864,0,5,2347.977,-5736.882,167.929,100,0,0),
(28864,0,6,2360.925,-5710.754,155.4011,100,5000,2886401);
DELETE FROM dbscripts_on_creature_movement WHERE id = 2886402;
DELETE FROM spell_script_target WHERE entry IN(52576);
INSERT INTO spell_script_target (entry, type, targetEntry, inverseEffectMask) VALUES (52576,1,28822,0), (52576,1,28834,0), (52576,1,28850,0), (52576,1,28856,0);
DELETE FROM dbscripts_on_relay WHERE id = 20511;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20511,0,32,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of 28864 EAI: Pause'),
(20511,1,25,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of 28864 EAI: RUN ON'),
(20511,2000,32,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of 28864 EAI: Unpause');

UPDATE creature_template SET GossipMenuId=10942 WHERE entry IN (37596,37633);
DELETE FROM gossip_menu WHERE entry IN (10942,10971);
INSERT INTO gossip_menu (entry,text_id) VALUES (10942,15206);
DELETE FROM gossip_menu_option WHERE menu_id IN (10942,10943,10971);
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_script_id) VALUES
(10942,0,0,'What would you have of me, Banshee Queen?',1,1,1094201),
(10943,0,0,'What would you have of me, my lady?',1,1,1094301);

UPDATE creature SET spawntimesecsmin = 30, spawntimesecsmax = 30 WHERE id = 28905;
DELETE FROM creature_movement_template WHERE entry IN (28890);
INSERT INTO creature_movement_template (entry, pathId, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(28890,0,1,2109.85,-5727.25,100.257,100,0,0),
(28890,0,2,2156.03,-5712.91,102.291,100,0,0),
(28890,0,3,2177.85,-5738.68,101.921,100,0,0),
(28890,0,4,2188.7,-5759.94,101.649,5.14936,10000,2889001),
(28890,0,5,2225.29,-5781.82,101.775,100,0,0),
(28890,0,6,2252.21,-5806.7,100.959,100,0,0),
(28890,0,7,2265.43,-5827.23,100.945,100,0,0),
(28890,0,8,2267.51,-5839.93,100.944,100,0,0),
(28890,0,9,2284.81,-5845.79,100.935,5.98189,10000,2889002),
(28890,0,10,2259.68,-5866.16,101.605,100,0,0),
(28890,0,11,2241.44,-5886.94,100.764,100,0,0),
(28890,0,12,2228.81,-5899.27,100.89,100,0,0),
(28890,0,13,2201.1,-5902.2,100.88,100,0,0),
(28890,0,14,2179.59,-5890.74,101.109,100,0,0),
(28890,0,15,2181.51,-5888.24,100.93,0.693798,10000,2889005),
(28890,0,16,2165.13,-5866.72,101.331,100,0,0),
(28890,0,17,2148.69,-5851.04,101.349,2.57152,10000,2889003),
(28890,0,18,2143.17,-5825.25,101.125,100,0,0),
(28890,0,19,2130.2,-5789.78,98.9462,1.48547,10000,2889006),
(28890,0,20,2115.31,-5769.12,98.1968,100,0,0),
(28890,0,21,2107.57,-5742.3,99.8496,100,0,0),
(28890,0,22,2098.97,-5737.7,100.199,100,0,0),
(28890,0,23,2079.4,-5743.34,99.624,100,10000,2889004);
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 2889001 AND 2889006;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2889001,2000,0,0,0,0,0,0,0,2000003170,2000003171,0,0,0,0,0,0,''),
(2889001,3000,31,28893,15,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2889001,3100,15,52685,1,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2889001,5000,21,1,0,0,28906,15,7,0,0,0,0,0,0,0,0,'buddy active'),
(2889001,5100,20,2,1,0,28906,15,7,0,0,0,0,0,0,0,0,'buddy: set path 1'),
(2889002,2000,0,0,0,0,0,0,0,2000003170,2000003171,0,0,0,0,0,0,''),
(2889002,3000,31,28893,15,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2889002,3100,15,52685,1,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2889002,5000,21,1,0,0,28906,15,7,0,0,0,0,0,0,0,0,'buddy active'),
(2889002,5100,20,2,2,0,28906,15,7,0,0,0,0,0,0,0,0,'buddy: set path 2'),
(2889003,2000,0,0,0,0,0,0,0,2000003170,2000003171,0,0,0,0,0,0,''),
(2889003,3000,31,28893,15,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2889003,3100,15,52685,1,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2889003,5000,21,1,0,0,28906,15,7,0,0,0,0,0,0,0,0,'buddy active'),
(2889003,5100,20,2,3,0,28906,15,7,0,0,0,0,0,0,0,0,'buddy: set path 3'),
(2889004,2000,0,0,0,0,0,0,0,2000003170,2000003171,0,0,0,0,0,0,''),
(2889004,3000,31,28893,15,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2889004,3100,15,52685,1,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2889004,5000,21,1,0,0,28906,15,7,0,0,0,0,0,0,0,0,'buddy active'),
(2889004,5100,20,2,4,0,28906,15,7,0,0,0,0,0,0,0,0,'buddy: set path 4'),
(2889005,2000,0,0,0,0,0,0,0,2000003172,2000003173,0,0,0,0,0,0,''),
(2889005,3000,31,28896,15,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2889005,4000,15,52683,1,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2889005,6000,21,1,0,0,28897,15,7,0,0,0,0,0,0,0,0,'active'),
(2889005,7000,3,0,700,0,28897,15,15,0,0,0,0,1783.51,-5818.18,113.877,3.19587,''),
(2889006,2000,0,0,0,0,0,0,0,2000003173,2000003172,0,0,0,0,0,0,''),
(2889006,3000,31,28898,15,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2889006,4000,15,52683,1,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2889006,6000,21,1,0,0,28897,15,7,0,0,0,0,0,0,0,0,'active'),
(2889006,7000,3,0,700,0,28897,15,15,0,0,0,0,1783.51,-5818.18,113.877,3.19587,'');
UPDATE creature_template SET MaxLevel = 53, MaxLevelHealth = 4906 WHERE Entry =28906;
DELETE FROM creature_movement_template WHERE entry IN (28906);
INSERT INTO creature_movement_template (entry, pathId, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(28906,1,1,2164.51,-5762.43,105.812,100,0,0),
(28906,1,2,2103.57,-5761.91,115.876,100,0,0),
(28906,1,3,2049.54,-5766.39,127.401,100,0,0),
(28906,1,4,1973.77,-5786.98,130.151,100,0,0),
(28906,1,5,1890.31,-5807.16,126.994,100,0,0),
(28906,1,6,1787.26,-5817.24,113.935,100,120000,20),
(28906,2,1,2287.87,-5847.99,100.933,100,0,0),
(28906,2,2,2244.47,-5852.56,112.429,100,0,0),
(28906,2,3,2157.57,-5862.11,114.903,100,0,0),
(28906,2,4,2094.89,-5875.62,118.826,100,0,0),
(28906,2,5,2013.79,-5891.56,121.166,100,0,0),
(28906,2,6,1942.48,-5906.04,119.159,100,0,0),
(28906,2,7,1821.51,-5929.45,113.933,100,120000,20),
(28906,3,1,2123.1,-5848.77,105.342,100,0,0),
(28906,3,2,2069.17,-5843.8,115.868,100,0,0),
(28906,3,3,2006.08,-5837.99,124.258,100,0,0),
(28906,3,4,1910.63,-5829.31,127.803,100,0,0),
(28906,3,5,1845.02,-5823.28,120.655,100,0,0),
(28906,3,6,1786.15,-5820.29,114.979,100,120000,20),
(28906,4,1,2062.89,-5754.34,104.725,100,0,0),
(28906,4,2,2028.53,-5780.27,112.379,100,0,0),
(28906,4,3,1981.45,-5815.95,123.981,100,0,0),
(28906,4,4,1934.88,-5854.3,128.325,100,0,0),
(28906,4,5,1868.49,-5900.39,120.756,100,0,0),
(28906,4,6,1818.15,-5930,115.077,100,120000,20);
DELETE FROM dbscripts_on_spell WHERE id = 48778;
INSERT INTO dbscripts_on_spell (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(48778,0,15,50772,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'');

UPDATE creature_template SET InhabitType = 4 WHERE entry = 28935;

DELETE FROM dbscripts_on_quest_end WHERE id = 12716;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(12716,0,0,0,0,0,0,0,0,2000001434,0,0,0,0,0,0,0,''),
(12716,1000,15,52706,0,0,0,0,0,0,0,0,0,0,0,0,0,'cast: Create Plague Cauldron'),
(12716,2500,15,52707,0,0,0,0,6,0,0,0,0,0,0,0,0,'Player Cast: See Noth Invisibility');
UPDATE dbscript_string SET sound = 8849 WHERE entry = 2000001434;
DELETE FROM spell_area WHERE spell = 52707;
INSERT INTO spell_area (spell, area, quest_start, quest_start_active, quest_end, condition_id, aura_spell, racemask, gender, autocast) VALUES (52707,4298,0,0,0,0,0,0,2,0);

UPDATE quest_template SET PrevQuestId = 12714, NextQuestId = 0, NextQuestInChain = 12719 WHERE entry = 12715;
UPDATE quest_template SET PrevQuestId = 12714, NextQuestId = 0, NextQuestInChain = 12717 WHERE entry = 12716;
UPDATE quest_template SET PrevQuestId = 12716, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 0 WHERE entry = 12717;
UPDATE quest_template SET PrevQuestId = 12715, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 0 WHERE entry = 12722;
UPDATE quest_template SET PrevQuestId = 12719, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 0 WHERE entry = 12720;
UPDATE quest_template SET RequiredCondition = 3447, PrevQuestId = 0, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 12724 WHERE entry = 12723;
DELETE FROM conditions WHERE condition_entry BETWEEN 3444 AND 3447;
INSERT INTO conditions (condition_entry, type, value1, value2, value3, value4) VALUES
(3444, 8, 12717,0,0,0), (3445, 8, 12719,0,0,0), (3446, 8, 12722,0,0,0), (3447, -1, 3444,3445,3446,0);

UPDATE `gossip_menu_option` SET `action_script_id` = 1095001 WHERE `menu_id` =10950 AND `id` =0;
UPDATE `gossip_menu_option` SET `action_script_id` = 1095002 WHERE `menu_id` =10950 AND `id` =1;
UPDATE `gossip_menu_option` SET `action_script_id` = 1103101 WHERE `menu_id` =11031 AND `id` =0;
UPDATE `gossip_menu_option` SET `action_script_id` = 1103102 WHERE `menu_id` =11031 AND `id` =1;
DELETE FROM `dbscripts_on_gossip` WHERE `id` in (1095000,1103100);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (3722103,3722301,3758201);
DELETE FROM `dbscript_string` WHERE entry BETWEEN 2000001632 AND 2000001673;

DELETE FROM dbscripts_on_quest_start WHERE id = 12727;
INSERT INTO dbscripts_on_quest_start (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(12727,1,21,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'Koltira active'),
(12727,2,29,3,0,0,0,0,0,0,0,0,0,0,0,0,0,'quest flag removed'),
(12727,10,0,0,0,0,0,0,0,2000001435,0,0,0,0,0,0,0,''),
(12727,15,28,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'STATE_SIT'),
(12727,4000,0,0,0,0,0,0,0,2000001436,0,0,0,0,0,0,0,''),
(12727,5000,28,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'STATE_STAND'),
(12727,7000,3,0,0,0,0,0,0,0,0,0,0,1653.36,-6038.34,127.584,1.78556,''),
(12727,8000,3,0,0,0,0,0,0,0,0,0,0,1653.94,-6034.72,127.584,1.29819,''),
(12727,11000,28,8,0,0,0,0,0,0,0,0,0,0,0,0,0,'STATE_KNEEL'),
(12727,12000,0,0,0,0,29011,561507,23,2000001437,0,0,0,0,0,0,0,'Valroth - text'),
(12727,13000,15,52899,0,0,0,0,4,0,0,0,0,0,0,0,0,''),
(12727,13000,28,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'STATE_STAND'),
(12727,15000,3,0,0,0,0,0,0,0,0,0,0,1651.89,-6037.1,127.584,3.83972,''),
(12727,15000,10,29007,300000,0,0,0,8,1,0,0,0,1640.65,-6032.49,134.739,4.58821,'summon Crimson Acolyte'),
(12727,16000,10,29007,300000,0,0,0,8,1,0,0,0,1640.65,-6032.49,134.739,4.58821,'summon Crimson Acolyte'),
(12727,16000,10,29007,300000,0,0,0,8,1,0,0,0,1640.65,-6032.49,134.739,4.58821,'summon Crimson Acolyte'),
(12727,16500,34,3449,12727,0,0,0,0,0,0,0,0,0,0,0,0,'check if player is alive'),
(12727,16800,34,3450,12727,0,0,0,0,0,0,0,0,0,0,0,0,'check if player is there'),
(12727,17000,28,8,0,0,0,0,0,0,0,0,0,0,0,0,0,'STATE_KNEEL'),
(12727,17000,0,0,0,0,0,0,0,2000001438,0,0,0,0,0,0,0,''),
(12727,17500,35,8,0,0,0,0,4,0,0,0,0,0,0,0,0,'Send AI Event 8'),
(12727,18000,15,52894,1,0,0,0,4,0,0,0,0,0,0,0,0,''),
(12727,21000,0,0,0,0,0,0,0,2000001439,0,0,0,0,0,0,0,''),
(12727,21000,28,8,0,0,0,0,0,0,0,0,0,0,0,0,0,'STATE_KNEEL'),
(12727,24100,34,3449,12727,0,0,0,0,0,0,0,0,0,0,0,0,'check if player is alive'),
(12727,24300,34,3450,12727,0,0,0,0,0,0,0,0,0,0,0,0,'check if player is there'),
(12727,41000,0,0,0,0,0,0,0,2000001440,0,0,0,0,0,0,0,''),
(12727,42000,0,0,0,0,29011,561507,23,2000001441,0,0,0,0,0,0,0,'Valroth - text'),
(12727,43000,10,29007,300000,0,0,0,8,1,0,0,0,1640.65,-6032.49,134.739,4.58821,'summon Crimson Acolyte'),
(12727,44000,10,29007,300000,0,0,0,8,1,0,0,0,1640.65,-6032.49,134.739,4.58821,'summon Crimson Acolyte'),
(12727,44000,10,29007,300000,0,0,0,8,1,0,0,0,1640.65,-6032.49,134.739,4.58821,'summon Crimson Acolyte'),
(12727,45100,34,3449,12727,0,0,0,0,0,0,0,0,0,0,0,0,'check if player is alive'),
(12727,45300,34,3450,12727,0,0,0,0,0,0,0,0,0,0,0,0,'check if player is there'),
(12727,76000,0,0,0,0,0,0,0,2000001442,0,0,0,0,0,0,0,''),
(12727,77000,0,0,0,0,29011,561507,23,2000001443,0,0,0,0,0,0,0,'Valroth - text'),
(12727,78000,10,29007,300000,0,0,0,8,1,0,0,0,1640.65,-6032.49,134.739,4.58821,'summon Crimson Acolyte'),
(12727,79000,10,29007,300000,0,0,0,8,1,0,0,0,1640.65,-6032.49,134.739,4.58821,'summon Crimson Acolyte'),
(12727,79000,10,29007,300000,0,0,0,8,1,0,0,0,1640.65,-6032.49,134.739,4.58821,'summon Crimson Acolyte'),
(12727,80100,34,3449,12727,0,0,0,0,0,0,0,0,0,0,0,0,'check if player is alive'),
(12727,80300,34,3450,12727,0,0,0,0,0,0,0,0,0,0,0,0,'check if player is there'),
(12727,111000,0,0,0,0,0,0,0,2000001444,0,0,0,0,0,0,0,''),
(12727,112000,0,0,0,0,29011,561507,23,2000001445,0,0,0,0,0,0,0,'Valroth - text'),
(12727,113000,10,29001,420000,0,0,0,8,1,0,0,0,1640.65,-6032.49,134.739,4.58821,'summon High Inquisitor Valroth'),
(12727,114100,34,3449,12727,0,0,0,0,0,0,0,0,0,0,0,0,'check if player is alive'),
(12727,114300,34,3450,12727,0,0,0,0,0,0,0,0,0,0,0,0,'check if player is there');
DELETE FROM conditions WHERE condition_entry BETWEEN 3449 AND 3450;
INSERT INTO conditions (condition_entry, type, value1, value2, value3, value4) VALUES (3449,36,1,0,0,0), (3450,36,1,40,0,0);
UPDATE creature_template SET UnitFlags = 33280 WHERE Entry = 28912;
UPDATE creature SET spawntimesecsmin = 10, spawntimesecsmax = 10 WHERE id = 28912;
UPDATE creature_template_addon SET auras = 53627 WHERE entry = 28912;
DELETE FROM dbscripts_on_creature_movement WHERE id = 2891201 AND delay = 14000;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2891201,14000,48,512,0,0,0,0,4,0,0,0,0,0,0,0,0,'Remove UnitFlags');
DELETE FROM dbscripts_on_creature_movement WHERE id = 2891203;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2891203,10,24,0,0,0,0,0,4,0,0,0,0,0,0,0,0,'unmount'),
(2891203,20,20,0,0,0,0,0,4,0,0,0,0,0,0,0,0,'idle'),
(2891203,100,18,0,0,0,0,0,4,0,0,0,0,0,0,0,0,'despawn self');
DELETE FROM dbscripts_on_relay WHERE id = 20512;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20512,1,48,512,1,0,0,0,4,0,0,0,0,0,0,0,0,'Part of Koltira Deathweaver 28912 EAI: Add UnitFlags'),
(20512,2,29,3,1,0,0,0,4,0,0,0,0,0,0,0,0,'Part of Koltira Deathweaver 28912 EAI: NPCFlags added'),
(20512,3,21,0,0,0,0,0,4,0,0,0,0,0,0,0,0,'Part of Koltira Deathweaver 28912 EAI: unactive');
UPDATE creature_template SET MechanicImmuneMask = 32 WHERE Entry = 29001;

DELETE FROM conditions WHERE condition_entry = 3448;
INSERT INTO conditions (condition_entry, type, value1, value2, value3, value4) VALUES (3448,9,12723,0,0,0);

UPDATE creature_template SET RegenerateStats = 0 WHERE entry IN (29032,29061,29065,29067,29068,29070,29071,29072,29073,29074);
UPDATE creature SET spawntimesecsmin = 30, spawntimesecsmax = 30, curhealth = 5 WHERE id  IN (29032,29061,29065,29067,29068,29070,29071,29072,29073,29074);

REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(99680, 24918, 530, 1, 1, 0, 0, 723.793, 2365.64, 274.944, 5.86431, 300, 300, 0, 0, 7300, 9465, 0, 0),
(99681, 24918, 530, 1, 1, 0, 0, 752.155, 2343.45, 275.142, 2.60054, 300, 300, 0, 0, 7300, 9465, 0, 0),
(99682, 24918, 530, 1, 1, 0, 0, 787.652, 2278.22, 281.466, 3.79114, 300, 300, 0, 0, 7300, 9465, 0, 0),
(99683, 24918, 530, 1, 1, 0, 0, 704.268, 2359.31, 275.142, 3.61283, 300, 300, 0, 0, 7300, 9465, 0, 0),
(99684, 24918, 530, 1, 1, 0, 0, 673.716, 2368.9, 275.142, 5.2709, 300, 300, 0, 0, 7300, 9465, 0, 0),
(99685, 24918, 530, 1, 1, 0, 0, 662.616, 2432.37, 275.845, 0.715585, 300, 300, 0, 0, 7300, 9465, 0, 0),
(99686, 24918, 530, 1, 1, 0, 0, 664.95, 2458.71, 275.782, 5.74213, 300, 300, 0, 0, 7300, 9465, 0, 0),
(100314, 24918, 530, 1, 1, 0, 0, 824.137, 2288.24, 281.436, 3.94444, 300, 300, 0, 0, 7300, 9465, 0, 0),
(100315, 24918, 530, 1, 1, 0, 0, 823.586, 2249.68, 281.457, 2.07694, 300, 300, 0, 0, 7300, 9465, 0, 0),
(100316, 24918, 530, 1, 1, 0, 0, 751.091, 2429.36, 275.142, 2.42601, 300, 300, 0, 0, 7300, 9465, 0, 0),
(100317, 24918, 530, 1, 1, 0, 0, 695.22, 2432.9, 275.142, 2.42601, 300, 300, 0, 0, 7300, 9465, 0, 0),
(100318, 24918, 530, 1, 1, 0, 0, 716.441, 2429.56, 275.142, 0.820305, 300, 300, 0, 0, 7300, 9465, 0, 0),
(100319, 24918, 530, 1, 1, 0, 0, 747.793, 2368.04, 275.142, 3.90954, 300, 300, 0, 0, 7300, 9465, 0, 0),
(100320, 24918, 530, 1, 1, 0, 0, 754.144, 2438.25, 274.62, 2.9273, 300, 300, 0, 0, 7300, 9465, 0, 0),
(100321, 24918, 530, 1, 1, 0, 0, 754.176, 2452.07, 275.06, 3.51242, 300, 300, 0, 0, 7300, 9465, 0, 0),
(100322, 24918, 530, 1, 1, 0, 0, 742.747, 2461.31, 275.059, 4.25855, 300, 300, 0, 0, 7300, 9465, 0, 0),
(100323, 24918, 530, 1, 1, 0, 0, 723.978, 2458.27, 275.059, 5.39031, 300, 300, 0, 0, 7300, 9465, 0, 0),
(100324, 24918, 530, 1, 1, 0, 0, 699.547, 2445.8, 275.06, 3.05689, 300, 300, 0, 0, 7300, 9465, 0, 0),
(100325, 24918, 530, 1, 1, 0, 0, 693.09, 2458.03, 275.059, 3.88549, 300, 300, 0, 0, 7300, 9465, 0, 0),
(100326, 24918, 530, 1, 1, 0, 0, 723.702, 2340.94, 275.058, 0.69991, 300, 300, 0, 0, 7300, 9465, 0, 0),
(19054, 24918, 530, 1, 1, 0, 0, 660.08, 2353.48, 274.377, 6.27231, 300, 300, 0, 0, 7300, 9465, 0, 0),
(19065, 24918, 530, 1, 1, 0, 0, 694.831, 2333.75, 275.008, 2.12148, 300, 300, 0, 0, 7300, 9465, 0, 0);
DELETE FROM `creature_template_addon` WHERE `entry` = 24918;
REPLACE INTO `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_pvp_state`, `emote`, `moveflags`, `auras`) VALUES
(99680, 0, 8, 1, 16, 0, 0, NULL), (99681, 0, 8, 1, 16, 0, 0, NULL), (99682, 0, 0, 1, 16, 64, 0, NULL), (99683, 0, 8, 1, 16, 0, 0, NULL), (99684, 0, 8, 1, 16, 0, 0, NULL),
(99685, 0, 8, 1, 16, 0, 0, NULL), (99686, 0, 8, 1, 16, 0, 0, NULL), (100314, 0, 8, 1, 16, 0, 0, NULL), (100315, 0, 8, 1, 16, 0, 0, NULL), (100316, 0, 8, 1, 16, 0, 0, NULL),
(100317, 0, 8, 1, 16, 0, 0, NULL), (100318, 0, 8, 1, 16, 0, 0, NULL), (100319, 0, 8, 1, 16, 0, 0, NULL), (100320, 0, 8, 1, 16, 0, 0, NULL), (100321, 0, 8, 1, 16, 0, 0, NULL),
(100322, 0, 8, 1, 16, 0, 0, NULL), (100323, 0, 8, 1, 16, 0, 0, NULL), (100324, 0, 8, 1, 16, 0, 0, NULL), (100325, 0, 8, 1, 16, 0, 0, NULL), (100326, 0, 8, 1, 16, 0, 0, NULL),
(19054, 0, 8, 1, 16, 0, 0, NULL), (19065, 0, 8, 1, 16, 0, 0, NULL);
REPLACE INTO `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_pvp_state`, `emote`, `moveflags`, `auras`) VALUES
(54064, 0, 0, 1, 16, 383, 0, '44864'), (54071, 0, 0, 1, 16, 383, 0, '44864'), (54074, 0, 0, 1, 16, 383, 0, '44864'), (54356, 0, 0, 1, 16, 383, 0, '32567'), (54009, 0, 0, 1, 16, 383, 0, '32567');

UPDATE `creature_template_addon` SET `bytes1` = 0, `auras` = 29266 WHERE `entry` in (26873,27412,27828,28390,29454);
UPDATE `creature_template_addon` SET `bytes1` = 50331648 WHERE `entry` =29545;
DELETE FROM `creature_template_addon` WHERE `entry` = 32275;
UPDATE `creature` SET `position_x` = 8056.28, `position_y` = 2089.38, `position_z` = 503.156, `orientation` = 3.92699 WHERE `guid` =111007;
REPLACE INTO `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_pvp_state`, `emote`, `moveflags`, `auras`) VALUES
(110998, 0, 0, 1, 0, 0, 0, NULL), (110993, 0, 0, 1, 0, 431, 0, NULL), (111006, 0, 0, 1, 0, 431, 0, NULL), (110992, 0, 0, 1, 0, 431, 0, NULL), (110999, 0, 0, 1, 0, 431, 0, NULL),
(110995, 0, 0, 1, 0, 431, 0, NULL), (111000, 0, 0, 1, 0, 431, 0, NULL), (111005, 0, 0, 1, 0, 431, 0, NULL), (111007, 0, 0, 1, 0, 0, 0, NULL), (110997, 0, 0, 1, 0, 431, 0, NULL),
(111008, 0, 0, 1, 0, 431, 0, NULL), (110994, 0, 0, 1, 0, 431, 0, NULL), (111001, 0, 0, 1, 0, 431, 0, NULL), (110996, 0, 0, 1, 0, 431, 0, NULL), (111004, 0, 0, 1, 0, 0, 0, NULL);

UPDATE `gameobject` SET `position_x` = -991.671, `position_y` = -3710.49, `position_z` = 4.45864, `orientation` = 2.54818, `rotation2` = 0.956305, `rotation3` = 0.292372, `spawntimesecsmin` = 5, `spawntimesecsmax` = 5 WHERE `guid` =6576;

UPDATE spell_area SET quest_end = 12757 WHERE spell = 53081;
UPDATE dbscripts_on_quest_start SET data_flags = 4 WHERE id = 12757 AND delay = 3000;
DELETE FROM dbscripts_on_spell WHERE id = 53098;
INSERT INTO dbscripts_on_spell (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(53098,1000,14,53081,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'remove aura from player');
