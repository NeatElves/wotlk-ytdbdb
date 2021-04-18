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
UPDATE creature_template SET MinLevel=80, MaxLevel=80 WHERE entry IN (38189,38188);
UPDATE creature_template SET UnitFlags=33088 WHERE entry=36990;
UPDATE creature_template SET UnitFlags=320, faction=534 WHERE entry IN (37572,37616,37575,37617,37576,37615);
UPDATE creature_template SET UnitFlags=320, faction=714 WHERE entry IN (37577,37620,37578,37621,37579,37619);
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

UPDATE creature_template SET UnitFlags=32832 WHERE entry=30519;

DELETE FROM dbscript_string WHERE entry = 2000001154;
DELETE FROM dbscript_string WHERE entry = 2000001155;

UPDATE creature_template SET RegenerateStats = 12, MinLevelHealth = 133525, MaxLevelHealth = 133525, MinLevelMana = 51360, MaxLevelMana = 51360, HealthMultiplier = 31, PowerMultiplier = 20 WHERE entry = 28670;
UPDATE creature_template SET Detection = 50, VisibilityDistanceType = 3 WHERE entry = 29104;
DELETE FROM dbscripts_on_relay WHERE id IN (20513,20514);
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20513,10,34,3469,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Frostbrood Vanquisher EAI: area check'),
(20513,100,15,51272,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Frostbrood Vanquisher EAI: cast 51272'),
(20513,1000,0,0,0,0,0,0,0,2000001154,0,0,0,0,0,0,0,'Part of Frostbrood Vanquisher EAI: Say warning'),
(20513,10000,34,3469,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Frostbrood Vanquisher EAI: area check'),
(20513,10010,35,5,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Frostbrood Vanquisher EAI: send AI Event A'),
(20513,10100,14,52196,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Frostbrood Vanquisher EAI: Player Drop'),
(20514,100,31,28670,150,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Scarlet Ballista EAI: search for 28670'),
(20514,200,26,0,0,0,28670,160,1,0,0,0,0,0,0,0,0,'Part of Scarlet Ballista EAI: start attack target');
DELETE FROM conditions WHERE condition_entry BETWEEN 3451 AND 3469;
INSERT INTO conditions (condition_entry, type, value1, value2, value3, value4) VALUES
(3451, 4, 4356,0,0,0), (3452, 4, 4347,0,0,0), (3453, 4, 4349,0,0,0),
(3454, 4, 4348,0,0,0), (3455, 4, 4350,0,0,0), (3456, 4, 4365,0,0,0),
(3457, 4, 4355,0,0,0), (3458, 4, 4343,0,0,0), (3459, 4, 4346,0,0,0),
(3460, 4, 4352,0,0,0), (3461, 4, 4345,0,0,0), (3462, 4, 4360,0,0,0),
(3463, 4, 4351,0,0,0), (3464, 4, 4377,0,0,0),
(3465, -2, 3464,3463,3462,3461), (3466, -2, 3460,3459,3458,3457), (3467, -2, 3456,3455,3454,3453),
(3468, -2, 3467,3466,3465,3452), (3469, -2, 3468,3451,0,0);
DELETE FROM dbscript_string WHERE entry = 2000001154;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000001154,'Return to the field of battle or you will be dropped!',0,3,0,0,NULL);

UPDATE `quest_template` SET `RequiredRaces` = 512 WHERE `entry` =9489;
UPDATE `quest_template` SET `RequiredRaces` = 1024 WHERE `entry` =9586;
UPDATE `quest_template` SET `RequiredRaces` = 16 WHERE `entry` =5651;
UPDATE `quest_template` SET `RequiredRaces` = 16 WHERE `entry` =5650;
UPDATE `quest_template` SET `RequiredRaces` = 128 WHERE `entry` =5649;
UPDATE `quest_template` SET `RequiredRaces` = 128 WHERE `entry` =5648;
UPDATE `quest_template` SET `RequiredRaces` = 1 WHERE `entry` =5623;
UPDATE `quest_template` SET `RequiredRaces` = 1 WHERE `entry` =5624;
UPDATE `quest_template` SET `RequiredRaces` = 4 WHERE `entry` =5626;
UPDATE `quest_template` SET `RequiredRaces` = 4 WHERE `entry` =5625;
UPDATE `quest_template` SET `ExclusiveGroup` = 0 WHERE `entry` IN (5622,5626);
UPDATE `quest_template` SET `NextQuestId` = 0 WHERE `entry` IN (5622,5626,8564);

DELETE FROM `creature` WHERE `guid` = 177767;
DELETE FROM `creature` WHERE `guid` = 17767;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(17767, 12428, 0, 1, 1, 0, 0, 2436.81, 359.072, 33.352, 0.122173, 60, 60, 0, 0, 110, 0, 0, 0);

DELETE FROM dbscripts_on_relay WHERE id IN (20515);
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20515,100,31,28511,40,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Scarlet Crusader EAI: search for 28511'),
(20515,200,26,0,0,0,28511,45,1,0,0,0,0,0,0,0,0,'Part of Scarlet Crusader EAI: start attack target');

UPDATE spell_area SET quest_start = 0, quest_end = 0, condition_id = 3478 WHERE spell = 52598;
DELETE FROM conditions WHERE condition_entry BETWEEN 3470 AND 3478;
INSERT INTO conditions (condition_entry,type,value1,value2,value3,value4,flags) VALUE
(3470,9,12706,0,0,0,0), (3471,8,12706,0,0,0,0), (3472,-2,3471,3470,0,0,0), (3473,8,12757,0,0,0,1),
(3474,-1,3473,3472,0,0,0), (3475,1,53107,0,0,0,0), (3476,8,12779,0,0,0,1), (3477,-1,3476,3475,0,0,0),
(3478,-2,3477,3474,0,0,0);

UPDATE creature_template SET MovementType = 0 WHERE Entry = 29113;
UPDATE creature SET MovementType = 0, spawndist = 0 WHERE id = 29113;
DELETE FROM creature_movement_template WHERE entry = 29113;
DELETE FROM dbscripts_on_creature_movement WHERE id = 2911301;
DELETE FROM `dbscript_string` WHERE `entry` IN (2000003174,2000003175);

UPDATE creature_template SET InhabitType=1 WHERE entry=24844;
DELETE FROM `dbscripts_on_event` WHERE `id` = 16547;
INSERT INTO `dbscripts_on_event` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(16547, 0, 0, 10, 24844, 600000, 0, 0, 0, 0, 0, 0, 0, 0, 209.912, -318.697, 14.005, 1.181, 0, '');

DELETE FROM creature_movement_template WHERE entry=8497;
INSERT INTO creature_movement_template (entry,pathId,point,position_x,position_y,position_z,orientation) VALUES
(8497, 0, 1, -420.629, 276.682, -90.827, 3.1722),
(8497, 0, 2, -446.197, 275.329, -90.674, 3.1722),
(8497, 1, 1, -512.015, 276.134, -90.827, 6.2808),
(8497, 1, 2, -489.960, 275.129, -90.751, 6.2808);
UPDATE creature_movement_template SET waittime=1000, script_id=849701 WHERE entry=8497 AND point=2;
DELETE FROM dbscripts_on_creature_movement WHERE id=849701;
INSERT INTO `dbscripts_on_creature_movement` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(849701, 0, 0, 20, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Nightmare Suppressor - Switch to idle movement'),
(849701, 2000, 0, 15, 12623, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Nightmare Suppressor - Cast Suppression on Shade of Hakkar');

DELETE FROM `item_required_target` WHERE `entry` = 23693;
INSERT INTO `item_required_target` VALUES (23693,1,17226);

UPDATE `creature_template` SET `SchoolImmuneMask` = 127 WHERE `Entry` =11439;
UPDATE `creature_template` SET `SchoolImmuneMask` = 64 WHERE `Entry` =15691;

REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(125081, 23637, 1, 1, 1, 0, 0, -3963.17, -2879.72, 42.4148, 5.34521, 120, 240, 5, 0, 1500, 0, 0, 1),
(125073, 23637, 1, 1, 1, 0, 0, -4021.75, -4982.69, 8.12982, 2.41315, 120, 240, 0, 0, 1500, 0, 0, 0),
(125074, 23637, 1, 1, 1, 0, 0, -4021.61, -4991.62, 0.814585, 0.334238, 120, 240, 7, 0, 1500, 0, 0, 1),
(125080, 23637, 1, 1, 1, 0, 0, -4019.12, -4990.38, 18.5149, 3.80699, 120, 240, 7, 0, 1500, 0, 0, 1),
(125054, 23637, 1, 1, 1, 0, 0, -3956.36, -4990.98, 2.70445, 2.30383, 120, 240, 0, 0, 1500, 0, 0, 0),
(125221, 23637, 1, 1, 1, 0, 0, -3909.32, -2874.8, 46.3937, 4.28747, 120, 240, 5, 0, 1500, 0, 0, 1);
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(27147, 5057, 1, 1, 1, 0, 0, -3892.68, -2825.73, 35.9298, 0.453786, 120, 240, 0, 0, 1536, 0, 0, 0),
(27166, 5057, 1, 1, 1, 0, 0, -3879.48, -2825.4, 36.8048, 6.08054, 120, 240, 5, 0, 1536, 0, 0, 1),
(27168, 5057, 1, 1, 1, 0, 0, -3885.19, -2819.23, 36.0548, 4.01426, 120, 240, 0, 0, 1536, 0, 0, 0),
(27173, 5057, 1, 1, 1, 0, 0, -3945.04, -2843.88, 43.7061, 5.96903, 120, 240, 0, 0, 1536, 0, 0, 0),
(27174, 5057, 1, 1, 1, 0, 0, -4006.29, -4999.48, 0.814592, 2.05179, 120, 240, 7, 0, 1536, 0, 0, 1),
(27202, 5057, 1, 1, 1, 0, 0, -3996.45, -5017.51, 1.1492, 1.7174, 120, 240, 7, 0, 1536, 0, 0, 1),
(27206, 5057, 1, 1, 1, 0, 0, -4004.39, -5011.29, 8.13875, 3.24073, 120, 240, 7, 0, 1536, 0, 0, 1),
(27207, 5057, 1, 1, 1, 0, 0, -4009.07, -5002.67, 8.13691, 4.69542, 120, 240, 7, 0, 1536, 0, 0, 1),
(1323, 5057, 1, 1, 1, 0, 0, -4023.72, -4988.4, 13.1899, 3.90975, 120, 240, 7, 0, 1536, 0, 0, 1),
(1966, 5057, 1, 1, 1, 0, 0, -4004.84, -5003.35, 13.4668, 0.497071, 120, 240, 7, 0, 1536, 0, 0, 1),
(2783, 5057, 1, 1, 1, 0, 0, -3999.51, -5015.85, 13.7618, 0.311079, 120, 240, 7, 0, 1536, 0, 0, 1),
(5904, 5057, 1, 1, 1, 0, 0, -3946.01, -2869.55, 46.3896, 4.67316, 120, 240, 5, 0, 1536, 0, 0, 1),
(5918, 5057, 1, 1, 1, 0, 0, -3948.4, -2859.03, 46.446, 3.03687, 120, 240, 0, 0, 1536, 0, 0, 0),
(5953, 5057, 1, 1, 1, 0, 0, -3963.32, -4982.18, 2.6071, 5.41052, 120, 240, 0, 0, 1536, 0, 0, 0),
(5982, 5057, 1, 1, 1, 0, 0, -3951.94, -4955.57, 7.11307, 0.942478, 120, 240, 0, 0, 1536, 0, 0, 0),
(6044, 5057, 1, 1, 1, 0, 0, -3897.23, -2845.84, 43.3428, 2.16257, 120, 240, 5, 0, 1536, 0, 0, 1),
(6131, 5057, 1, 1, 1, 0, 0, -3895.97, -2861.52, 43.0928, 3.24631, 120, 240, 0, 0, 1536, 0, 0, 0),
(6212, 5057, 1, 1, 1, 0, 0, -3912.21, -2892.58, 41.9027, 1.98968, 120, 240, 0, 0, 1536, 0, 0, 0),
(6247, 5057, 1, 1, 1, 0, 0, -3903.37, -2883.93, 41.5277, 2.67035, 120, 240, 0, 0, 1536, 0, 0, 0),
(6261, 5057, 1, 1, 1, 0, 0, -3908.52, -2876.12, 46.3821, 5.75666, 120, 240, 5, 0, 1536, 0, 0, 1),
(6264, 5057, 1, 1, 1, 0, 0, -3954.27, -2879.46, 42.7898, 1.5708, 120, 240, 0, 0, 1536, 0, 0, 0),
(6282, 5057, 1, 1, 1, 0, 0, -3935.79, -2893.68, 40.7898, 2.07694, 120, 240, 0, 0, 1536, 0, 0, 0),
(6297, 5057, 1, 1, 1, 0, 0, -3938.95, -2881.77, 46.4864, 4.78725, 120, 240, 5, 0, 1536, 0, 0, 1),
(6299, 5057, 1, 1, 1, 0, 0, -3924.16, -2887.04, 46.469, 6.20877, 120, 240, 5, 0, 1536, 0, 0, 1),
(6300, 5057, 1, 1, 1, 0, 0, -3913.12, -2882.31, 46.4922, 5.98271, 120, 240, 5, 0, 1536, 0, 0, 1),
(6318, 5057, 1, 1, 1, 0, 0, -3935.22, -2834.92, 45.0582, 5.61996, 120, 240, 0, 0, 1536, 0, 0, 0),
(7202, 5057, 1, 1, 1, 0, 0, -3950, -2800.72, 36.1944, 2.91861, 120, 240, 0, 0, 1536, 0, 0, 0),
(7225, 5057, 1, 1, 1, 0, 0, -3911.16, -2852.42, 46.4658, 0.246311, 120, 240, 0, 0, 1536, 0, 0, 0),
(7235, 5057, 1, 1, 1, 0, 0, -3918.25, -2857.4, 46.4777, 0.767945, 120, 240, 0, 0, 1536, 0, 0, 0),
(7282, 5057, 1, 1, 1, 0, 0, -3929.78, -2857.98, 46.4779, 1.36885, 120, 240, 0, 0, 1536, 0, 0, 0),
(7306, 5057, 1, 1, 1, 0, 0, -3918.02, -2867.88, 46.4802, 1.04486, 120, 240, 0, 0, 1536, 0, 0, 0),
(7312, 5057, 1, 1, 1, 0, 0, -3929.25, -2821.05, 40.8324, 1.55334, 120, 240, 0, 0, 1536, 0, 0, 0),
(7378, 5057, 1, 1, 1, 0, 0, -3906.45, -2826.95, 41.1166, 1.5708, 120, 240, 0, 0, 1536, 0, 0, 0),
(7643, 5057, 1, 1, 1, 0, 0, -3918.9, -2844.21, 45.5775, 0.104178, 120, 240, 0, 0, 1536, 0, 0, 0),
(7654, 5057, 1, 1, 1, 0, 0, -3935.73, -2845.99, 46.5165, 3.72999, 120, 240, 0, 0, 1536, 0, 0, 0),
(7656, 5057, 1, 1, 1, 0, 0, -3912.7, -2787.49, 36.8756, 3.54302, 120, 240, 0, 0, 1536, 0, 0, 0),
(7664, 5057, 1, 1, 1, 0, 0, -3949.52, -2782.31, 35.2724, 1.0821, 120, 240, 0, 0, 1536, 0, 0, 0);
INSERT INTO `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_pvp_state`, `emote`, `moveflags`, `auras`) VALUES
(27147, 0, 0, 1, 16, 173, 0, NULL), (27166, 0, 0, 1, 16, 0, 0, NULL), (27168, 0, 0, 1, 16, 173, 0, NULL), (27173, 0, 0, 1, 16, 173, 0, NULL), (27174, 0, 0, 1, 16, 0, 0, NULL),
(27202, 0, 0, 1, 16, 0, 0, NULL), (27206, 0, 0, 1, 16, 0, 0, NULL), (27207, 0, 0, 1, 16, 0, 0, NULL), (1323, 0, 0, 1, 16, 0, 0, NULL), (1966, 0, 0, 1, 16, 0, 0, NULL),
(2783, 0, 0, 1, 16, 0, 0, NULL), (5904, 0, 0, 1, 16, 0, 0, NULL), (5918, 0, 0, 1, 16, 173, 0, NULL), (5953, 0, 0, 1, 16, 0, 0, NULL), (5982, 0, 8, 1, 16, 0, 0, NULL),
(6044, 0, 0, 1, 16, 0, 0, NULL), (6131, 0, 0, 1, 16, 173, 0, NULL), (6212, 0, 0, 1, 16, 173, 0, NULL), (6247, 0, 0, 1, 16, 173, 0, NULL), (6261, 0, 0, 1, 16, 0, 0, NULL),
(6264, 0, 0, 1, 16, 173, 0, NULL), (6282, 0, 0, 1, 16, 173, 0, NULL), (6297, 0, 0, 1, 16, 0, 0, NULL), (6299, 0, 0, 1, 16, 0, 0, NULL), (6300, 0, 0, 1, 16, 0, 0, NULL),
(6318, 0, 0, 1, 16, 173, 0, NULL), (7202, 0, 0, 1, 16, 0, 0, NULL), (7225, 0, 0, 1, 16, 0, 0, NULL), (7235, 0, 0, 1, 16, 173, 0, NULL), (7282, 0, 0, 1, 16, 0, 0, NULL),
(7306, 0, 0, 1, 16, 0, 0, NULL), (7312, 0, 0, 1, 16, 0, 0, NULL), (7378, 0, 0, 1, 16, 0, 0, NULL), (7643, 0, 0, 1, 16, 0, 0, NULL), (7654, 0, 0, 1, 16, 0, 0, NULL),
(7656, 0, 0, 1, 16, 173, 0, NULL), (7664, 0, 0, 1, 16, 173, 0, NULL);

UPDATE creature_template SET SpeedWalk=2.5/2.5,SpeedRun=16/7 WHERE entry = 29190;
DELETE FROM creature_addon WHERE guid IN (561924,561925);
DELETE FROM creature_template_addon WHERE entry = 29190;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES (29190,0,0,1,0,0,0,'53624 53627');
DELETE FROM dbscripts_on_creature_death WHERE id = 29190;
INSERT INTO dbscripts_on_creature_death (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(29190,0,18,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'despawn');
DELETE FROM creature_movement_template WHERE entry = 29190;
INSERT INTO creature_movement_template (entry, pathid, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(29190,0,1,2435.987,-5097.607,82.96162,5.061455,100,5),
(29190,0,2,2419.6,-5122.16,81.1112,100,0,0),
(29190,0,3,2401.72,-5142.61,83.1335,100,0,0),
(29190,0,4,2385.38,-5156.83,75.5348,100,0,0),
(29190,0,5,2373.48,-5172.65,74.6722,100,0,0),
(29190,0,6,2364.63,-5183.49,77.1403,100,0,0),
(29190,0,7,2350.4,-5201.39,76.8901,100,0,0),
(29190,0,8,2330.48,-5205.79,81.8514,100,0,0),
(29190,0,9,2316.78,-5209.51,81.6041,100,0,0),
(29190,0,10,2299.41,-5215.87,83.9007,100,0,0),
(29190,0,11,2280.55,-5211.67,82.0652,100,0,0),
(29190,0,12,2268.24,-5209.44,82.3729,100,0,0),
(29190,0,13,2236.47,-5204.69,74.9135,100,0,0),
(29190,0,14,2228.61,-5223.14,74.3909,100,0,0),
(29190,0,15,2221.58,-5241.43,78.1746,100,0,0),
(29190,0,16,2228.65,-5251.06,75.5002,100,0,0),
(29190,0,17,2236.57,-5262.38,74.7068,100,0,0),
(29190,0,18,2247.06,-5279.16,81.5796,100,0,0),
(29190,0,19,2249.22,-5295.68,82.1674,100,5000,20),
(29190,1,1,2453.178,-5183.313,76.18691,3.228859,100,5),
(29190,1,2,2412.24,-5183.5,77.0228,100,0,0),
(29190,1,3,2386.57,-5186.66,74.2527,100,0,0),
(29190,1,4,2369.94,-5196.97,75.7526,100,0,0),
(29190,1,5,2355.95,-5206.45,78.8122,100,0,0),
(29190,1,6,2347.69,-5209.09,79.5427,100,0,0),
(29190,1,7,2333.67,-5212.68,83.8716,100,0,0),
(29190,1,8,2317.91,-5216.2,83.733,100,0,0),
(29190,1,9,2309.61,-5232.05,84.8413,100,0,0),
(29190,1,10,2300.17,-5246.84,84.4107,100,0,0),
(29190,1,11,2300.15,-5285.83,81.9137,100,5000,20),
(29190,2,1,2345.58,-5283.828,82.45392,3.033957,100,5),
(29190,2,2,2282.042,-5277.006,82.18815,100,5000,20),
(29190,3,1,2244.037,-5338.109,85.05786,0.296706,100,5),
(29190,3,2,2254.5,-5298.54,82.1677,100,5000,20);
DELETE FROM creature_movement_template WHERE entry = 29186;
INSERT INTO creature_movement_template (entry, pathid, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(29186,0,1,2271.599,-5331.55,87.84799,5.951573,100,5),
(29186,0,2,2271.73,-5288.08,82.4161,100,5000,20),
(29186,1,1,2204.03,-5250.58,80.9081,5.52923,100,5),
(29186,1,2,2227.06,-5262.19,75.4769,100,0,0),
(29186,1,3,2271.29,-5275.3,81.7531,100,5000,20),
(29186,2,1,2347.58,-5259.57,82.2603,3.72025,100,5),
(29186,2,2,2292.24,-5280,81.9698,100,5000,20);
UPDATE creature SET spawntimesecsmin = 20, spawntimesecsmax = 20 WHERE id = 29173;
DELETE FROM creature_template_addon WHERE entry = 29174;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES (29174,0,0,1,0,375,0,NULL);
UPDATE creature_template SET MovementType = 2 WHERE entry = 29179;
DELETE FROM creature_movement_template WHERE entry = 29179;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(29179,1,2282.02,-5317.44,88.5497,100,0,0),
(29179,2,2280.35,-5301.91,85.444,100,0,0),
(29179,3,2278.215,-5279.796,82.32075,100,1000,0),
(29179,4,2279.79,-5295.6,84.1678,100,0,0);

UPDATE creature SET spawntimesecsmin = 20, spawntimesecsmax = 20 WHERE id = 31094;
DELETE FROM `creature` WHERE `guid` = 89765;
DELETE FROM dbscripts_on_relay WHERE id BETWEEN 20516 AND 20518;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20516,100,31,31098,10,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Knight of the Ebon Blade EAI: search for 31098'),
(20516,150,26,0,0,0,31098,13,1,0,0,0,0,0,0,0,0,'Part of Knight of the Ebon Blade EAI: start attack target'),
(20517,100,31,31095,10,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Knight of the Ebon Blade EAI: search for 31095'),
(20517,150,26,0,0,0,31095,13,1,0,0,0,0,0,0,0,0,'Part of Knight of the Ebon Blade EAI: start attack target'),
(20518,100,31,31099,10,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Knight of the Ebon Blade EAI: search for 31099'),
(20518,150,26,0,0,0,31099,13,1,0,0,0,0,0,0,0,0,'Part of Knight of the Ebon Blade EAI: start attack target');

UPDATE dbscripts_on_quest_end SET data_flags = 6 WHERE id = 13188 AND delay = 0;
UPDATE dbscripts_on_quest_end SET data_flags = 6 WHERE id = 13189 AND delay = 0;

UPDATE dbscripts_on_quest_end SET data_flags = 4 WHERE id = 489 AND delay = 0;

DELETE FROM dbscripts_on_gossip WHERE id = 132301;
INSERT INTO dbscripts_on_gossip (id,delay,command,datalong,datalong2,datalong3,buddy_entry,search_radius,data_flags,dataint,dataint2,dataint3,dataint4,x,y,z,o,comments) VALUES
(132301,0,15,12512,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Cast: Kalaran Conjures Torch'),
(132301,2000,9,10766,180,0,0,0,0,0,0,0,0,0,0,0,0,'resp object'),
(132301,3000,9,20889,178,0,0,0,0,0,0,0,0,0,0,0,0,'resp object');

UPDATE `gameobject` SET `position_x` = -6679.93, `position_y` = -1189.67, `position_z` = 240.115, `orientation` = 3.08923, `rotation2` = 0.999657, `rotation3` = 0.0261783, `spawntimesecsmin` = 1, `spawntimesecsmax` = 1, `animprogress` = 100 WHERE `guid` =55177;
DELETE FROM dbscripts_on_quest_end WHERE id = 3463 AND delay = 4000;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(3463,4000,40,0,0,0,149502,30,4,0,0,0,0,0,0,0,0,'reload object');

UPDATE gameobject SET position_x=9554.557, position_y=1655.089, position_z=1297.832, orientation=3.141593, rotation0=0, rotation1=0, rotation2=-1, rotation3=0 WHERE id = 19551;

UPDATE creature_template SET InhabitType=3 WHERE entry IN(21212);

INSERT INTO spell_script_target VALUES (8202,0,63674,0);

UPDATE `creature_template` SET `Detection` = 30 WHERE `entry` IN (3794,3795,17772,17852,17854,17919,17920,17921,17922,17928,17931,17932,17933,17934,17935,17936,17937,17943,17944,17945,17948,18487);

DELETE FROM dbscripts_on_quest_end WHERE id = 1191;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1191,1,21,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Zamek - Active'),
(1191,5,29,2,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Zamek - NPCFlags Removed'),
(1191,10,25,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Zamek - RUN ON'),
(1191,15,20,2,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Zamek - waypoints');
DELETE FROM creature_movement_template WHERE entry IN (4709,4720);
INSERT INTO creature_movement_template (entry,point,position_x,position_y,position_z,orientation,waittime,script_id) VALUES
(4709,1,-6237.13,-3911.58,-60.5103,100,0,0),
(4709,2,-6257.43,-3879.56,-58.8595,100,0,0),
(4709,3,-6267.61,-3850.91,-58.7503,100,0,0),
(4709,4,-6266.24,-3846.35,-58.7503,100,5000,470901),
(4709,5,-6267.61,-3850.91,-58.7503,100,0,0),
(4709,6,-6257.43,-3879.56,-58.8595,100,0,0),
(4709,7,-6237.13,-3911.58,-60.5103,100,0,0),
(4709,8,-6226.13,-3944.94,-58.6251,100,1000,470902),
(4720,1,-6243.39,-3845.91,-58.7498,100,100,472001),
(4720,2,-6250.63,-3847.35,-58.7491,100,0,0),
(4720,3,-6255.06,-3853.64,-58.7491,100,0,0),
(4720,4,-6262.2, -3851.84,-58.7491,100,0,0),
(4720,5,-6266.24,-3846.35,-58.7503,100,30000,472002),
(4720,6,-6262.2, -3851.84,-58.7491,100,0,0),
(4720,7,-6255.06,-3853.64,-58.7491,100,0,0),
(4720,8,-6250.63,-3847.35,-58.7491,100,0,0),
(4720,9,-6243.39,-3845.91,-58.7498,100,0,0),
(4720,10,-6236.99,-3831.23,-58.1364,100,1000,472003);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (470901,470902,472001,472002,472003);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(470901,1000,0,0,0,0,0,0,4,2000000044,0,0,0,0,0,0,0,''),
(470901,3000,9,20,5,0,0,0,0,0,0,0,0,0,0,0,0,'respawn gobject'),
(470901,5900,31,4720,100,0,0,0,0,0,0,0,0,0,0,0,0,'search for 4720'),
(470901,5950,0,0,0,0,4720,100,7,2000000045,0,0,0,0,0,0,0,'4720 - say'),
(470901,5950,25,1,0,0,4720,100,7,0,0,0,0,0,0,0,0,'4720 - RUN'),
(470901,6000,20,2,0,0,4720,100,7,0,0,0,0,0,0,0,0,'4720 - waypoints'),
(470902,100,29,2,1,0,0,0,0,0,0,0,0,0,0,0,0,'Zamek - NPCFlags Added'),
(470902,200,20,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Zamek - Idle'),
(470902,300,21,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Zamek - UnActive'),
(472001,10,21,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Active'),
(472001,100,9,13621,42,0,0,0,0,0,0,0,0,0,0,0,0,'respawn gameobject'),
(472001,110,40,0,0,0,179888,100,7,0,0,0,0,0,0,0,0,'despawn gameobject'),
(472002,1000,0,0,0,0,0,0,4,2000000046,0,0,0,0,0,0,0,''),
(472002,27000,0,0,0,0,0,0,4,2000000047,0,0,0,0,0,0,0,''),
(472003,10,20,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'idle'),
(472003,100,21,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'UnActive');
DELETE FROM dbscript_string WHERE entry BETWEEN 2000000044 AND 2000000047;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000000044,'Hehehe! Things go boom!',0,0,0,0,NULL),
(2000000045,'What was that!',0,0,0,5,NULL),
(2000000046,'Bloody... Must have been the goblins... Let\'s see how bad the damage is.',0,0,0,0,NULL),
(2000000047,'Guess there\'s nothing more to be done. Blast!',0,0,0,6,NULL);
UPDATE quest_template SET RequiredCondition = 3481, PrevQuestId = 0 WHERE entry = 1191;
DELETE FROM conditions WHERE condition_entry BETWEEN 3479 AND 3481;
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES (3479, 9, 1190, 0), (3480, 19, 1194, 0), (3481, -2, 3480, 3479);
UPDATE gameobject SET spawntimesecsmin = 45, spawntimesecsmax = 45 WHERE id = 179888;
UPDATE gameobject SET position_x=-6236.64, position_y=-3830.48, position_z=-58.1364, orientation=-0.907571, rotation0=0, rotation1=0, rotation2=-0.438371, rotation3=0.898794 WHERE id=20805;
DELETE FROM gameobject WHERE guid = 129;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(129,144065,1,1,1,-6266.46,-3845.4,-58.7498,0.550892,0,0,0.271976, 0.962304, -5, -5, 255, 1);

UPDATE creature_template SET faction=21, armor=10356, MinLevel=82, MaxLevel=82 WHERE entry IN (38135,38395,38634,38635,38398,38630,38631,38009);
UPDATE creature_template SET DamageMultiplier=7.5 WHERE entry IN (38135,38634,38635,38009,38630,38631);
UPDATE creature_template SET DamageMultiplier=13 WHERE entry IN (38395,38398);
UPDATE creature_template SET faction=21, armor=8340, MinLevel=82, MaxLevel=82 WHERE entry IN (38136,38396,38632,38633,38010,38397,39000,39001);
UPDATE creature_template SET DamageMultiplier=7.5 WHERE entry IN (38136,38632,38633,38010,39000,39001);
UPDATE creature_template SET DamageMultiplier=13 WHERE entry IN (38397,38396);
UPDATE creature_template SET MovementType=0 WHERE entry IN (37200,37187);
UPDATE gossip_menu_option SET action_script_id=1093401 WHERE menu_id=10934;
UPDATE gossip_menu_option SET action_script_id=1095301 WHERE menu_id=10953;
UPDATE gameobject_template SET ExtraFlags=4096 WHERE entry=202220;
SET @CONDID := 3482;
DELETE FROM areatrigger_teleport WHERE id=5698;
INSERT INTO areatrigger_teleport(id, name, required_level, target_map, target_position_x, target_position_y, target_position_z, target_orientation, condition_id) VALUES
(5698, 'Icecrown Citadel Spire Entrance', 80, 631, 4138.76, 2769.25, 351, 0, @CONDID);
UPDATE gossip_menu SET condition_id=@CONDID+1 WHERE entry IN (10933,10934,10952,10953);
UPDATE gossip_menu_option SET condition_id=@CONDID+1 WHERE menu_id IN (10933,10934,10952,10953);
DELETE FROM gossip_menu WHERE entry=10953 AND text_id=15415;
INSERT INTO gossip_menu (entry,text_id,script_id,condition_id) VALUES (10953,15415,0,@CONDID+0);
DELETE FROM gossip_menu WHERE entry=10933 AND text_id=15412;
INSERT INTO gossip_menu (entry,text_id,script_id,condition_id) VALUES (10933,15412,0,@CONDID+0);
DELETE FROM conditions WHERE condition_entry IN (@CONDID+0,@CONDID+1);
INSERT INTO conditions (condition_entry,type,value1,comments) VALUES
(@CONDID+0,18,63101,'Icecrown Citadel - Deathbringer Saurfang conmplete'),
(@CONDID+1,-3,@CONDID+0,'Icecrown Citadel - NOT Deathbringer Saurfang conmplete');
DELETE FROM npc_spellclick_spells WHERE npc_entry IN (36838,36839);
INSERT INTO npc_spellclick_spells (npc_entry,spell_id,quest_start,cast_flags) VALUES (36839,70510,0,1), (36838,70510,0,1);
DELETE FROM creature_template_spells WHERE entry IN (36838,36839);
INSERT INTO creature_template_spells (entry,setId,spell1,spell2) VALUES (36838,0,69399,69401), (36839,0,70172,70174);
UPDATE creature_template SET RegenerateStats=0 WHERE entry IN (37540,37215);
UPDATE creature_template SET EquipmentTemplateId=2023 WHERE entry=37920;
DELETE FROM spell_script_target WHERE entry IN (70175,69400,70104,69705,70173);
INSERT INTO spell_script_target (entry,type,targetEntry,inverseEffectMask) VALUES
(69402,1,37215,5), (70175,1,37540,5), (69400,1,37215,5), (70173,1,37540,5), (69705,1,36838,0), (69705,1,36839,0);
DELETE FROM spell_target_position WHERE id IN (72340);
INSERT INTO spell_target_position VALUES (72340,631,-548.983,2211.24,539.29,0);
UPDATE gameobject_template SET ExtraFlags=4096 WHERE entry IN (202235,202242,202243,202244,202245,202246,202190);

DELETE FROM npc_text WHERE ID IN (2139, 2140);
DELETE FROM npc_text_broadcast_text WHERE Id IN (2139, 2140);
INSERT INTO npc_text_broadcast_text (Id, Prob0, Prob1, Prob2, Prob3, Prob4, Prob5, Prob6, Prob7, BroadcastTextId0, BroadcastTextId1, BroadcastTextId2, BroadcastTextId3, BroadcastTextId4, BroadcastTextId5, BroadcastTextId6, BroadcastTextId7) VALUES
(2139, 1, 0, 0, 0, 0, 0, 0, 0, 4563, 0, 0, 0, 0, 0, 0, 0),
(2140, 1, 0, 0, 0, 0, 0, 0, 0, 4565, 0, 0, 0, 0, 0, 0, 0);

DELETE FROM creature_cooldowns WHERE entry IN(24697);
INSERT INTO creature_cooldowns VALUES (24697,44547,11000,15000), (24697,44640,6000,10000);
DELETE FROM creature_cooldowns WHERE entry IN(25563);
INSERT INTO creature_cooldowns VALUES (25563,44547,11000,15000), (25563,44640,4500,6000);
REPLACE INTO creature_cooldowns VALUES (24696,20299,10000,15000), (24696,17741,13000,19000), (24696,44639,3000,6000);
REPLACE INTO creature_cooldowns VALUES (24689,44534,5000,10000), (24689,44505,32000,40000);
REPLACE INTO creature_cooldowns VALUES (24690,44505,32000,40000);
REPLACE INTO creature_cooldowns VALUES (24688,44505,32000,40000), (24688,44533,1,4000);
REPLACE INTO creature_cooldowns VALUES (24686,44518,10000,10000), (24686,44519,6000,6000);
REPLACE INTO creature_cooldowns VALUES (24684,44479,10000,10000), (24684,44480,20000,20000);
REPLACE INTO creature_cooldowns VALUES (25568,44475,30000,30000), (25568,46028,11000,19000), (25565,46029,10000,10000), (25565,46030,20000,20000), (25572,46042,10000,10000),
(25572,46043,6000,6000), (25570,46192,15000,15000), (25570,46046,10000,15000), (25575,44534,6000,10000), (25575,44505,20000,25000), (25577,44505,20000,25000), (25577,44533,1,4000),
(25576,44505,20000,25000), (25547,46150,10000,15000), (25547,46151,14000,20000), (25547,44639,3000,6000);

UPDATE `creature_template` SET `PickpocketLootId` = 0 WHERE `Entry` in (24697,25563);
DELETE FROM `pickpocketing_loot_template` WHERE `entry` = 24697;

UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 10 WHERE `entry` =10678 AND `item` =13920;

DELETE FROM dbscripts_on_relay WHERE id IN (30008,30009);
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(30008,0,1,4,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'GENERIC - emote 4'),
(30009,0,1,21,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'GENERIC - emote 21');
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(10216, 26839, 571, 1, 1, 0, 0, 3273.25, -2197.42, 117.456, 4.067, 300, 300, 0, 0, 9940, 0, 0, 0),
(10219, 26839, 571, 1, 1, 0, 0, 3268.64, -2195.64, 117.456, 4.346, 300, 300, 0, 0, 9940, 0, 0, 0);
DELETE FROM creature_addon WHERE guid IN (10216,10219);
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES (10216,0,0,1,0,0,0,49415), (10219,0,0,1,0,0,0,49415);
UPDATE `creature` SET `position_x` = '3237.74', `position_y` = '-2267.83', `position_z` = '115.855', `orientation` = '1.3439', `spawntimesecsmin` = '300', `spawntimesecsmax` = '300' WHERE `guid` =119550;
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 27037);
DELETE FROM creature_template_addon WHERE entry = 27037;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES (27037,0,1,1,0,0,0,NULL);
REPLACE INTO creature (guid, id, map, spawnmask, phasemask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) values
(108490,26864,571,1,1,0,0,3327.9,-2222.44,118.364,3.72655,180,180,0,0,9940,0,0,2),
(108491,26864,571,1,1,0,0,3329.71,-2221.25,118.6,3.72655,180,180,0,0,9940,0,0,0),
(108492,26864,571,1,1,0,0,3332.56,-2219.36,118.955,3.72655,180,180,0,0,9940,0,0,0);
DELETE FROM creature_template_addon WHERE entry = 26864;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES (26864,14334,0,1,0,0,0,NULL);
DELETE FROM creature_movement WHERE id = 108490;
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,waittime,script_id) VALUES
(108490,1,3327.9,-2222.44,118.364,3.72655,100,5),
(108490,2,3316.52,-2229.91,116.692,100,0,0),
(108490,3,3304.02,-2244.76,113.997,100,0,0),
(108490,4,3294.62,-2252.12,113.06,100,0,0),
(108490,5,3286.99,-2254.48,113.603,100,0,0),
(108490,6,3276.51,-2254.34,114.365,100,0,0),
(108490,7,3260.11,-2250.75,114.267,100,0,0),
(108490,8,3246.11,-2247.49,114.558,100,0,0),
(108490,9,3228.99,-2245.27,114.72,100,0,0),
(108490,10,3214.93,-2244.45,116.265,100,0,0),
(108490,11,3197.38,-2244.27,115.608,100,0,0),
(108490,12,3176.27,-2244.52,114.904,100,0,0),
(108490,13,3163.77,-2244.28,114.329,100,0,0),
(108490,14,3151.4,-2237.88,112.492,100,0,0),
(108490,15,3146.37,-2231.66,114.197,100,0,0),
(108490,16,3142.2,-2226.87,115.954,100,0,0),
(108490,17,3138.26,-2217.24,116.54,100,0,0),
(108490,18,3132.41,-2197.08,113.424,100,0,0),
(108490,19,3130.38,-2186.07,110.976,100,0,0),
(108490,20,3128.45,-2175.32,107.516,100,0,0),
(108490,21,3126.81,-2161.43,106.153,100,0,0),
(108490,22,3126.49,-2137.16,97.8772,100,0,0),
(108490,23,3129.76,-2122.61,95.9353,100,0,0),
(108490,24,3139.8,-2105.11,94.7253,100,0,0),
(108490,25,3151.04,-2091.39,92.2904,100,0,0),
(108490,26,3168.99,-2069.29,89.5316,100,0,0),
(108490,27,3189.21,-2054.34,87.481,100,0,0),
(108490,28,3202.59,-2046.72,88.1715,100,0,0),
(108490,29,3221.16,-2040.19,87.4672,100,0,0),
(108490,30,3237.93,-2036.14,88.5198,100,0,0),
(108490,31,3250.69,-2035.78,89.4513,100,0,0),
(108490,32,3262.02,-2043.69,92.9265,100,0,0),
(108490,33,3275.77,-2055.76,97.6329,100,0,0),
(108490,34,3284.54,-2064.14,99.3037,100,0,0),
(108490,35,3289.81,-2071.38,98.2907,100,0,0),
(108490,36,3297.11,-2085.13,103.487,100,0,0),
(108490,37,3305.27,-2101.3,110.051,100,0,0),
(108490,38,3311.04,-2114.47,112.628,100,0,0),
(108490,39,3321.03,-2121.15,117.409,100,0,0),
(108490,40,3332.53,-2128.11,121.238,100,0,0),
(108490,41,3345.24,-2140.59,121.417,100,0,0),
(108490,42,3352.07,-2149.57,123.536,100,0,0),
(108490,43,3360.99,-2163.15,122.547,100,0,0),
(108490,44,3369.55,-2180.42,121.473,100,0,0),
(108490,45,3368.13,-2200.41,119.971,100,0,0),
(108490,46,3359.01,-2207.96,119.533,100,0,0),
(108490,47,3346.17,-2213.88,119.376,100,0,0);
DELETE FROM creature_linking WHERE master_guid = 108490;
INSERT INTO creature_linking (guid, master_guid, flag) VALUES (108491, 108490, 1+2+515), (108492, 108490, 1+2+515);
DELETE FROM dbscript_random_templates WHERE id = 20220;
INSERT INTO dbscript_random_templates (id, type, target_id, chance, comments) VALUES
(20220,1,30008,40,'26869 - Random Script 1'),
(20220,1,30001,20,'26869 - Random Script 2'),
(20220,1,30002,20,'26869 - Random Script 3'),
(20220,1,30003,10,'26869 - Random Script 4'),
(20220,1,30009,10,'26869 - Random Script 5');
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(119653, 27102, 571, 1, 1, 0, 0, 3270.91, -2197.24, 117.456, 4.102, 300, 300, 0, 0, 66934, 0, 0, 0),
(10288, 27102, 571, 1, 1, 0, 0, 3275.85, -2208.03, 117.029, 2.80998, 300, 300, 0, 0, 66934, 0, 0, 0);
DELETE FROM creature_addon WHERE guid IN (119653);
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES (119653,0,0,1,0,0,0,49415);
DELETE FROM spell_area WHERE spell = 49417 AND area = 4206;
INSERT INTO spell_area (spell, area, quest_start, quest_start_active, quest_end, condition_id, aura_spell, racemask, gender, autocast) VALUES (49417,4206,0,0,0,3484,0,0,2,1);
DELETE FROM conditions WHERE condition_entry = 3484;
INSERT INTO conditions (condition_entry, type, value1, value2, flags) VALUES (3484, 8, 12431, 0, 0);

DELETE FROM `creature_questrelation` WHERE `id` = 23724 AND `quest` = 11984;
DELETE FROM `creature_involvedrelation` WHERE `id` = 23724 AND `quest` = 11984;
UPDATE `creature_template` SET `NpcFlags` = 4224 WHERE `Entry` =23724;

DELETE FROM conditions WHERE condition_entry = 3485;
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES (3485, 8, 12468, 0);
UPDATE quest_template SET RequiredCondition = 3485 WHERE entry = 12256;
DELETE FROM conditions WHERE condition_entry BETWEEN 3486 AND 3488;
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES (3486, 8, 12256, 0), (3487, 8, 12257, 0), (3488, -1, 3487, 3486);
UPDATE quest_template SET RequiredCondition = 3488 WHERE entry = 12259;
DELETE FROM conditions WHERE condition_entry = 3489;
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES (3489, 8, 12412, 0);
UPDATE quest_template SET RequiredCondition = 3489 WHERE entry = 12453;
DELETE FROM conditions WHERE condition_entry = 3490;
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES (3490, 8, 12413, 0);
UPDATE quest_template SET RequiredCondition = 3490 WHERE entry = 12207;
UPDATE quest_template SET RequiredCondition = 3490 WHERE entry = 12213;
UPDATE quest_template SET NextQuestId = 0, ExclusiveGroup = 0 WHERE entry IN (12422,12413,12178);
DELETE FROM conditions WHERE condition_entry BETWEEN 3491 AND 3493;
INSERT INTO conditions (condition_entry, type, value1, value2, value3) VALUES (3491, 8, 12422, 0, 0), (3492, 8, 12178, 0, 0), (3493, -1, 3492, 3491,3490);
UPDATE quest_template SET RequiredCondition = 3493 WHERE entry = 12427;
UPDATE quest_template SET PrevQuestId = 12412 WHERE entry = 12208;
UPDATE quest_template SET PrevQuestId = 12310 WHERE entry = 12210;
UPDATE quest_template SET PrevQuestId = 12259 WHERE entry = 12451;
DELETE FROM conditions WHERE condition_entry BETWEEN 3494 AND 3496;
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES (3494, 8, 12213, 0), (3495, 8, 12207, 0), (3496, -1, 3495, 3494);
UPDATE quest_template SET RequiredCondition = 3496 WHERE entry = 12229;
UPDATE quest_template SET RequiredCondition = 3496 WHERE entry = 12231;
DELETE FROM conditions WHERE condition_entry BETWEEN 3497 AND 3499;
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES (3497, 8, 12229, 0), (3498, 8, 12231, 0), (3499, -1, 3498, 3497);
UPDATE quest_template SET RequiredCondition = 3499 WHERE entry = 12241;
UPDATE quest_template SET RequiredCondition = 3499 WHERE entry = 12242;
DELETE FROM conditions WHERE condition_entry BETWEEN 3500 AND 3502;
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES (3500, 8, 12241, 0), (3501, 8, 12242, 0), (3502, -1, 3501, 3500);
UPDATE quest_template SET RequiredCondition = 3502 WHERE entry = 12236;
DELETE FROM conditions WHERE condition_entry = 3503;
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES (3503, 8, 12259, 0);
UPDATE quest_template SET RequiredCondition = 3503 WHERE entry = 12412;

DELETE FROM dbscripts_on_relay WHERE id IN (30015,30035,30037,30038,30388);
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(30015,0,1,15,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'GENERIC - emote 15'),
(30035,0,1,35,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'GENERIC - emote 35'),
(30037,0,1,37,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'GENERIC - emote 37'),
(30038,0,1,38,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'GENERIC - emote 38'),
(30388,0,1,388,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'GENERIC - emote 388');
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(119558, 27260, 571, 1, 1, 0, 0, 2701, -2850.57, 73.7177, 0.613982, 300, 300, 5, 0, 9940, 0, 0, 1),
(119559, 27260, 571, 1, 1, 0, 0, 2907.08, -2755.14, 84.7627, 2.44346, 300, 300, 0, 0, 9940, 0, 0, 0),
(119560, 27260, 571, 1, 1, 0, 0, 2703.14, -2765.9, 83.8222, 4.92183, 300, 300, 0, 0, 9940, 0, 0, 0),
(119566, 27260, 571, 1, 1, 0, 0, 3005.73, -2610.31, 98.553, 1.3007, 300, 300, 0, 0, 9940, 0, 0, 2),
(119567, 27260, 571, 1, 1, 0, 0, 2846.76, -2630.59, 84.7385, 4.2586, 300, 300, 0, 0, 9940, 0, 0, 2),
(119561, 27260, 571, 1, 1, 0, 0, 2910.33, -2717.12, 94.4947, 2.86234, 300, 300, 0, 0, 9940, 0, 0, 0),
(119562, 27260, 571, 1, 1, 0, 0, 2829.38, -2719.09, 85.5312, 3.80931, 300, 300, 0, 0, 9940, 0, 0, 2),
(119563, 27260, 571, 1, 1, 0, 0, 2794.2, -2702.35, 85.5368, 5.06145, 300, 300, 0, 0, 9940, 0, 0, 0),
(119564, 27260, 571, 1, 1, 0, 0, 2866.45, -2587.53, 84.7385, 1.69297, 300, 300, 0, 0, 9940, 0, 0, 0),
(119565, 27260, 571, 1, 1, 0, 0, 2749.97, -2776.68, 96.42, 1.76278, 300, 300, 0, 0, 9940, 0, 0, 0),
(119568, 27260, 571, 1, 1, 0, 0, 2757.06, -2410.56, 39.5577, 4.20624, 300, 300, 0, 0, 9940, 0, 0, 0),
(119569, 27260, 571, 1, 1, 0, 0, 2975.06, -2566.25, 88.4192, 1.65806, 300, 300, 0, 0, 9940, 0, 0, 0),
(119570, 27260, 571, 1, 1, 0, 0, 2746.48, -2862.24, 71.3454, 5.57456, 300, 300, 5, 0, 9940, 0, 0, 1),
(119571, 27260, 571, 1, 1, 0, 0, 2977.98, -2523.29, 90.4354, 3.82227, 300, 300, 0, 0, 9940, 0, 0, 0),
(119572, 27260, 571, 1, 1, 0, 0, 2845.67, -2600.35, 84.7385, 5.60251, 300, 300, 0, 0, 9940, 0, 0, 0),
(14097, 27260, 571, 1, 1, 0, 0, 2867.81, -2563.69, 86.3263, 1.31394, 300, 300, 5, 0, 9940, 0, 0, 1),
(14752, 27260, 571, 1, 1, 0, 0, 3001.02, -2558.17, 88.3604, 3.82227, 300, 300, 0, 0, 9940, 0, 0, 0),
(15451, 27260, 571, 1, 1, 0, 0, 2782.06, -2672.58, 84.7385, 5.28835, 300, 300, 0, 0, 9940, 0, 0, 0),
(15617, 27260, 571, 1, 1, 0, 0, 2772.13, -2771.28, 96.4379, 1.8675, 300, 300, 0, 0, 9940, 0, 0, 0),
(15745, 27260, 571, 1, 1, 0, 0, 2989.24, -2586.43, 97.23, 3.22886, 300, 300, 0, 0, 9940, 0, 0, 0),
(15774, 27260, 571, 1, 1, 0, 0, 2871.3, -2734.23, 84.7621, 2.61032, 300, 300, 0, 0, 9940, 0, 0, 0),
(15963, 27260, 571, 1, 1, 0, 0, 2830.75, -2649.2, 86.3197, 0.643402, 300, 300, 5, 0, 9940, 0, 0, 1),
(16148, 27260, 571, 1, 1, 0, 0, 2957.66, -2681.77, 94.4652, 0.98, 300, 300, 0, 0, 9940, 0, 0, 0),
(16149, 27260, 571, 1, 1, 0, 0, 2915.89, -2531.44, 78.9732, 1.92225, 300, 300, 0, 0, 9940, 0, 0, 2),
(16200, 27260, 571, 1, 1, 0, 0, 2752.45, -2418.29, 39.6069, 1.448, 300, 300, 0, 0, 9940, 0, 0, 0),
(16280, 27260, 571, 1, 1, 0, 0, 2726.31, -2469.71, 28.1838, 4.03171, 300, 300, 0, 0, 9940, 0, 0, 0),
(16285, 27260, 571, 1, 1, 0, 0, 2742.55, -2481.45, 27.1402, 4.13643, 300, 300, 0, 0, 9940, 0, 0, 0),
(519648, 27260, 571, 1, 1, 0, 0, 2806.79, -2447.48, 47.6994, 3.90954, 300, 300, 0, 0, 9940, 0, 0, 0),
(519649, 27260, 571, 1, 1, 0, 0, 2966.92, -2678.05, 94.4652, 2.63545, 300, 300, 0, 0, 9940, 0, 0, 0),
(16376, 27260, 571, 1, 1, 0, 0, 2926.61, -2648, 85.1729, 5.69762, 300, 300, 0, 0, 9940, 0, 0, 2),
(16488, 27260, 571, 1, 1, 0, 0, 2962.83, -2634.55, 96.5028, 3.24631, 300, 300, 0, 0, 9940, 0, 0, 0),
(16547, 27260, 571, 1, 1, 0, 0, 2965.57, -2609.59, 96.0956, 3.10669, 300, 300, 0, 0, 9940, 0, 0, 0),
(16555, 27260, 571, 1, 1, 0, 0, 2852.4, -2489.62, 54.8559, 2.93651, 300, 300, 0, 0, 9940, 0, 0, 2),
(16562, 27260, 571, 1, 1, 0, 0, 2846.86, -2454.24, 47.6162, 5.49968, 300, 300, 0, 0, 9940, 0, 0, 0);
REPLACE INTO `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_pvp_state`, `emote`, `moveflags`, `auras`) VALUES
(119558, 0, 0, 1, 0, 0, 0, NULL), (119559, 0, 1, 1, 0, 0, 0, NULL), (119560, 0, 0, 1, 0, 375, 0, NULL), (119566, 0, 0, 1, 0, 0, 0, NULL), (119567, 0, 0, 1, 0, 375, 0, NULL),
(119561, 0, 0, 1, 0, 375, 0, NULL), (119562, 0, 0, 1, 0, 0, 0, NULL), (119563, 0, 0, 1, 0, 0, 0, NULL), (119564, 0, 0, 1, 0, 69, 0, NULL), (119565, 0, 0, 1, 0, 375, 0, NULL),
(119568, 0, 0, 1, 0, 69, 0, NULL), (119569, 0, 1, 1, 0, 0, 0, NULL), (119570, 0, 0, 1, 0, 0, 0, NULL), (119571, 0, 0, 1, 0, 375, 0, NULL), (119572, 0, 1, 1, 0, 0, 0, NULL),
(14097, 0, 0, 1, 0, 0, 0, NULL), (14752, 0, 1, 1, 0, 0, 0, NULL), (15451, 0, 1, 1, 0, 0, 0, NULL), (15617, 0, 0, 1, 0, 375, 0, NULL), (15745, 0, 0, 1, 0, 375, 0, NULL),
(15774, 0, 1, 1, 0, 0, 0, NULL), (15963, 0, 0, 1, 0, 0, 0, NULL), (16148, 0, 0, 1, 0, 426, 0, NULL), (16149, 0, 0, 1, 0, 0, 0, NULL), (16200, 0, 0, 1, 0, 426, 0, NULL),
(16280, 0, 0, 1, 0, 375, 0, NULL), (16285, 0, 0, 1, 0, 375, 0, NULL), (519648, 0, 0, 1, 0, 375, 0, NULL), (519649, 0, 0, 1, 0, 426, 0, NULL), (16488, 0, 0, 1, 0, 375, 0, NULL),
(16547, 0, 0, 1, 0, 375, 0, NULL), (16562, 0, 0, 1, 0, 375, 0, NULL);
DELETE FROM creature_movement WHERE id IN (119566,119567,119562,16149,16376,16555);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,waittime,script_id) VALUES
(119566,1,3006.23,-2607.25,101.099,100,0,0),
(119566,2,3007.07,-2598.91,102.911,100,0,0),
(119566,3,3006.28,-2606.47,101.461,100,0,0),
(119566,4,3005.61,-2611.19,97.911,100,0,0),
(119566,5,3002.15,-2628.95,97.8517,100,0,0),
(119566,6,3005.71,-2611.25,97.8601,100,0,0),
(119567,1,2846.759,-2630.591,84.73853,4.26,1000,11),
(119567,2,2846.759,-2630.591,84.73853,4.26,2000,3),
(119562,1,2809.15,-2724.7,85.6628,100,0,0),
(119562,2,2829.02,-2717.94,85.4589,100,0,0),
(119562,3,2838.38,-2713.08,84.7226,100,0,0),
(119562,4,2852.97,-2702.07,84.8651,100,0,0),
(119562,5,2870.17,-2686.65,84.7286,100,0,0),
(119562,6,2883.97,-2672.75,84.6707,100,0,0),
(119562,7,2898.65,-2652.64,84.6641,100,0,0),
(119562,8,2884.13,-2672.39,84.6726,100,0,0),
(119562,9,2869.69,-2686.93,84.7326,100,0,0),
(119562,10,2853.08,-2701.74,84.8623,100,0,0),
(119562,11,2838.94,-2712.72,84.7127,100,0,0),
(119562,12,2829.34,-2717.9,85.4542,100,0,0),
(16149,1,2914.29,-2527.84,78.2614,100,0,0),
(16149,2,2917.93,-2541.13,81.2494,100,0,0),
(16149,3,2919.99,-2555.65,84.3355,100,0,0),
(16149,4,2920.5,-2574.03,84.654,100,0,0),
(16149,5,2919.79,-2584.78,84.9915,100,0,0),
(16149,6,2915.32,-2602.38,84.7149,100,0,0),
(16149,7,2918.28,-2591.77,84.9911,100,0,0),
(16149,8,2920.55,-2578.26,84.8455,100,0,0),
(16149,9,2920.43,-2563.04,84.6562,100,0,0),
(16149,10,2918.9,-2545.62,82.4385,100,0,0),
(16376,1,2934.74,-2653.9,87.269,100,0,0),
(16376,2,2937.88,-2660.5,90.4033,100,0,0),
(16376,3,2937.52,-2667.76,92.5724,100,0,0),
(16376,4,2935.96,-2674.85,93.9745,100,0,0),
(16376,5,2937.34,-2668.42,92.7268,100,0,0),
(16376,6,2937.85,-2660.88,90.5423,100,0,0),
(16376,7,2935.2,-2654.8,87.7507,100,0,0),
(16376,8,2926.99,-2648.19,85.2513,100,0,0),
(16376,9,2918.4,-2643.09,84.8818,100,0,0),
(16376,10,2926.7,-2647.94,85.1646,100,0,0),
(16555,1,2838.63,-2488.47,50.7344,100,0,0),
(16555,2,2825.91,-2489.11,48.3127,100,0,0),
(16555,3,2811.66,-2489.68,47.6237,100,0,0),
(16555,4,2803.28,-2487.48,47.7769,100,0,0),
(16555,5,2796.01,-2483.03,47.7752,100,0,0),
(16555,6,2802.33,-2487.18,47.765,100,0,0),
(16555,7,2811.6,-2489.81,47.6219,100,0,0),
(16555,8,2825.49,-2489.05,48.2575,100,0,0),
(16555,9,2838.62,-2488.42,50.7323,100,0,0),
(16555,10,2852.34,-2489.69,54.8478,100,0,0),
(16555,11,2867.42,-2492.75,60.1478,100,0,0),
(16555,12,2880.31,-2498.21,65.0221,100,0,0),
(16555,13,2893.81,-2506.41,70.6216,100,0,0),
(16555,14,2902.87,-2513.21,73.9873,100,0,0),
(16555,15,2910.73,-2521.74,76.9949,100,0,0),
(16555,16,2913.98,-2527.19,78.1391,100,0,0),
(16555,17,2909.99,-2519.33,76.373,100,0,0),
(16555,18,2899.8,-2510.37,72.7624,100,0,0),
(16555,19,2894.08,-2506.32,70.6771,100,0,0),
(16555,20,2879.75,-2498.13,65.0462,100,0,0),
(16555,21,2867.73,-2492.77,60.2641,100,0,0),
(16555,22,2852.74,-2489.69,54.9677,100,0,0);
DELETE FROM dbscript_random_templates WHERE id = 20221;
INSERT INTO dbscript_random_templates (id, type, target_id, chance, comments) VALUES
(20221,1,30015,0,'27260 - Random Script 1'),
(20221,1,30035,0,'27260 - Random Script 2'),
(20221,1,30037,0,'27260 - Random Script 3'),
(20221,1,30038,0,'27260 - Random Script 4'),
(20221,1,30388,0,'27260 - Random Script 5');
UPDATE creature SET spawntimesecsmin = 300, `spawntimesecsmax` = 300 WHERE guid =119574;
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 27377);
DELETE FROM creature_template_addon WHERE entry = 27377;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES (27377,0,0,2,0,0,0,NULL);
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(93652, 27259, 571, 1, 1, 0, 0, 2945.36, -2708.21, 94.4652, 3.03687, 300, 300, 0, 0, 7952, 7654, 0, 0),
(93653, 27259, 571, 1, 1, 0, 0, 2765.47, -2793.08, 99.1925, 1.88496, 300, 300, 0, 0, 7952, 7654, 0, 0),
(93654, 27259, 571, 1, 1, 0, 0, 2689.35, -2820.76, 75.8684, 5.88748, 300, 300, 5, 0, 7952, 7654, 0, 1),
(93655, 27259, 571, 1, 1, 0, 0, 2908.05, -2616.85, 84.7385, 3.45575, 300, 300, 0, 0, 7952, 7654, 0, 2),
(119551, 27259, 571, 1, 1, 0, 0, 2727.26, -2806.97, 77.5717, 1.08393, 300, 300, 7, 0, 7952, 7654, 0, 1),
(119556, 27259, 571, 1, 1, 0, 0, 2979.45, -2645.78, 97.1994, 1.65806, 300, 300, 0, 0, 7952, 7654, 0, 0),
(119552, 27259, 571, 1, 1, 0, 0, 2905.05, -2636.84, 84.7385, 2.63545, 300, 300, 0, 0, 7952, 7654, 0, 2),
(10147, 27259, 571, 1, 1, 0, 0, 2929.75, -2702.46, 96.3027, 1.41372, 300, 300, 0, 0, 7952, 7654, 0, 0),
(10169, 27259, 571, 1, 1, 0, 0, 2886.87, -2711.3, 84.763, 0.977384, 300, 300, 0, 0, 7952, 7654, 0, 0),
(10294, 27259, 571, 1, 1, 0, 0, 2843.5, -2744.96, 84.7621, 5.39307, 300, 300, 0, 0, 7952, 7654, 0, 0),
(10295, 27259, 571, 1, 1, 0, 0, 2757.22, -2697.17, 84.7385, 2.05949, 300, 300, 0, 0, 7952, 7654, 0, 0),
(10296, 27259, 571, 1, 1, 0, 0, 2747.93, -2725.5, 88.0451, 5.64855, 300, 300, 5, 0, 7952, 7654, 0, 1),
(10640, 27259, 571, 1, 1, 0, 0, 2982.93, -2545.39, 88.3743, 2.18166, 300, 300, 0, 0, 7952, 7654, 0, 0),
(10684, 27259, 571, 1, 1, 0, 0, 2826.92, -2673.03, 84.7385, 3.19395, 300, 300, 0, 0, 7952, 7654, 0, 0),
(119553, 27259, 571, 1, 1, 0, 0, 2872.09, -2630.97, 84.7385, 0.191986, 300, 300, 0, 0, 7952, 7654, 0, 2),
(10688, 27259, 571, 1, 1, 0, 0, 2805.93, -2671.32, 87.0472, 1.76278, 300, 300, 0, 0, 7952, 7654, 0, 0),
(10011, 27259, 571, 1, 1, 0, 0, 2874.59, -2611.92, 84.7385, 5.84685, 300, 300, 0, 0, 7952, 7654, 0, 2),
(10711, 27259, 571, 1, 1, 0, 0, 2937.17, -2587.75, 84.7732, 4.17469, 300, 300, 5, 0, 7952, 7654, 0, 1),
(119554, 27259, 571, 1, 1, 0, 0, 2892.95, -2604.54, 84.7385, 4.46804, 300, 300, 0, 0, 7952, 7654, 0, 2),
(10718, 27259, 571, 1, 1, 0, 0, 2953.04, -2527.08, 89.73, 4.85249, 300, 300, 5, 0, 7952, 7654, 0, 1),
(10803, 27259, 571, 1, 1, 0, 0, 2791.53, -2751.67, 90.4261, 4.53786, 300, 300, 7, 0, 7952, 7654, 0, 1),
(10992, 27259, 571, 1, 1, 0, 0, 2872.54, -2753.62, 85.6842, 1.29154, 300, 300, 7, 0, 7952, 7654, 0, 1),
(11430, 27259, 571, 1, 1, 0, 0, 2817.62, -2765.14, 85.9285, 5.12293, 300, 300, 0, 0, 7952, 7654, 0, 0),
(119555, 27259, 571, 1, 1, 0, 0, 2885.92, -2643.76, 84.7385, 1.51844, 300, 300, 0, 0, 7952, 7654, 0, 2),
(11453, 27259, 571, 1, 1, 0, 0, 2860.76, -2541.45, 84.6046, 4.58, 300, 300, 7, 0, 7952, 7654, 0, 1),
(12147, 27259, 571, 1, 1, 0, 0, 2837.47, -2755.96, 86.7382, 2.45656, 300, 300, 0, 0, 7952, 7654, 0, 0),
(16915, 27259, 571, 1, 1, 0, 0, 2773.11, -2428.52, 39.5333, 5.49263, 300, 300, 7, 0, 7952, 7654, 0, 1),
(16969, 27259, 571, 1, 1, 0, 0, 2828.16, -2511.26, 47.8492, 0.174689, 300, 300, 7, 0, 7952, 7654, 0, 1),
(17014, 27259, 571, 1, 1, 0, 0, 2922.63, -2495.74, 72.5858, 1.15192, 300, 300, 0, 0, 7952, 7654, 0, 0),
(17085, 27259, 571, 1, 1, 0, 0, 2855.21, -2752.86, 84.7625, 3.38594, 300, 300, 0, 0, 7952, 7654, 0, 0);
REPLACE INTO `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_pvp_state`, `emote`, `moveflags`, `auras`) VALUES
(10640, 0, 0, 1, 0, 69, 0, NULL), (10718, 0, 0, 1, 0, 0, 0, NULL), (119554, 0, 0, 1, 0, 0, 0, NULL), (93652, 0, 0, 1, 0, 69, 0, NULL), (93653, 0, 0, 1, 0, 0, 0, NULL),
(10296, 0, 0, 1, 0, 0, 0, NULL), (10295, 0, 0, 1, 0, 69, 0, NULL), (10294, 0, 0, 1, 0, 69, 0, NULL), (10169, 0, 0, 1, 0, 69, 0, NULL), (10684, 0, 0, 1, 0, 69, 0, NULL),
(119553, 0, 0, 1, 0, 0, 0, NULL), (10688, 0, 0, 1, 0, 69, 0, NULL), (93654, 0, 0, 1, 0, 0, 0, NULL), (93655, 0, 0, 1, 0, 0, 0, NULL), (119551, 0, 0, 1, 0, 0, 0, NULL),
(10147, 0, 0, 1, 0, 0, 0, NULL), (119552, 0, 0, 1, 0, 0, 0, NULL), (10711, 0, 0, 1, 0, 0, 0, NULL), (10011, 0, 0, 1, 0, 0, 0, NULL), (119556, 0, 0, 1, 0, 69, 0, NULL),
(10803, 0, 0, 1, 0, 0, 0, NULL), (10992, 0, 0, 1, 0, 0, 0, NULL), (17014, 0, 0, 1, 0, 69, 0, NULL), (17085, 0, 0, 1, 0, 69, 0, NULL);
DELETE FROM creature_movement WHERE id IN (119554,119553,93655,119552,10011,119555);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,waittime,script_id) VALUES
(119554,1,2892.953,-2604.541,84.73854,4.468043,1000,11),
(119554,2,2892.953,-2604.541,84.73854,4.468043,2000,3),
(119553,1,2872.087,-2630.973,84.73854,0.1919862,1000,11),
(119553,2,2872.087,-2630.973,84.73854,0.1919862,2000,3),
(93655,1,2908.05,-2616.853,84.73854,3.455752,1000,11),
(93655,2,2908.05,-2616.853,84.73854,3.455752,2000,3),
(119552,1,2905.052,-2636.845,84.73854,2.635447,1000,11),
(119552,2,2905.052,-2636.845,84.73854,2.635447,2000,3),
(10011,1,2874.59,-2611.92,84.7385,5.84685,1000,11),
(10011,2,2874.59,-2611.92,84.7385,5.84685,2000,3),
(119555,1,2885.919,-2643.758,84.73854,1.518436,1000,11),
(119555,2,2885.919,-2643.758,84.73854,1.518436,2000,3);

DELETE FROM dbscripts_on_gossip WHERE id = 951200;
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(951200,0,15,48606,0,0,0,0,6,0,0,0,0,0,0,0,0,'cast Summon Flamebringer');
UPDATE creature_template SET UnitFlags = 0, InhabitType = 5 WHERE entry = 27292;
DELETE FROM creature_template_addon WHERE entry = 27292;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES (27292,0,0,0,0,0,0,48602);
DELETE FROM spell_script_target WHERE entry = 48600;
INSERT INTO spell_script_target (entry, type, targetEntry, inverseEffectMask) VALUES (48600, 1, 27292, 0);
DELETE FROM dbscripts_on_relay WHERE id IN (20521,20522);
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20521,10,34,3504,0,0,0,0,2,0,0,0,0,0,0,0,0,'Part of Flamebringer EAI: area check'),
(20521,100,0,0,0,0,0,0,2,2000000868,0,0,0,0,0,0,0,'Part of Flamebringer EAI: warning'),
(20521,200,15,48694,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Flamebringer EAI: warning spell'),
(20521,10000,34,3504,0,0,0,0,2,0,0,0,0,0,0,0,0,'Part of Flamebringer EAI: area check'),
(20521,10100,14,48600,0,0,0,0,2,0,0,0,0,0,0,0,0,'Part of Flamebringer EAI: Player Drop'),
(20521,10500,15,53208,0,0,0,0,4,0,0,0,0,0,0,0,0,'Part of Flamebringer EAI: Player cast Parachute'),
(20522,0,39,1,0,0,0,0,0x04 | 0x08,0,0,0,0,0,0,0,0,'Part of Flamebringer EAI: Fly ON');
DELETE FROM conditions WHERE condition_entry = 3504;
INSERT INTO conditions (condition_entry, type, value1, value2, value3, value4) VALUES (3504, 4, 4207,0,0,0);
DELETE FROM dbscript_string WHERE entry = 2000000868;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000000868,'Flamebringer attempts to throw you from his back. Return to Voldrune!',0,3,0,0,NULL);
DELETE FROM creature_cooldowns WHERE entry = 27292;
INSERT INTO creature_cooldowns (entry, spellId, CooldownMin, CooldownMax) VALUES (27292,48620,10000,10000);

DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 27438);
DELETE FROM creature WHERE id = 27438;
INSERT INTO creature (guid, id, map, spawnmask, phasemask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) values
(108327,27438,571,1,1,0,0,3550.5,-2697.47,106.974,4.64188,240,360,0,0,0,0,0,0),
(108328,27438,571,1,1,0,0,3461.15,-2675.45,79.755,1.04869,240,360,0,0,0,0,0,0),
(108329,27438,571,1,1,0,0,3516.2,-2649.08,96.3399,1.25447,240,360,0,0,0,0,0,0),
(108330,27438,571,1,1,0,0,3508.79,-2616.86,93.464,3.71279,240,360,0,0,0,0,0,0),
(108331,27438,571,1,1,0,0,3468.04,-2618.96,79.3134,4.42358,240,360,0,0,0,0,0,0),
(108332,27438,571,1,1,0,0,3536.98,-2616.84,102.467,1.49402,240,360,0,0,0,0,0,0),
(108333,27438,571,1,1,0,0,3563.79,-2628.14,111.809,4.75344,240,360,0,0,0,0,0,0),
(108334,27438,571,1,1,0,0,3594.89,-2670.99,124.212,3.50369,240,360,0,0,0,0,0,0),
(108335,27438,571,1,1,0,0,3619.56,-2638.46,129.704,5.86931,240,360,0,0,0,0,0,0),
(108336,27438,571,1,1,0,0,3669.94,-2674.73,152.04,4.45951,240,360,0,0,0,0,0,0),
(108337,27438,571,1,1,0,0,3697.98,-2639.53,155.368,1.96979,240,360,0,0,0,0,0,0),
(108338,27438,571,1,1,0,0,3726.93,-2646.75,159.787,0.332233,240,360,0,0,0,0,0,0),
(108339,27438,571,1,1,0,0,3913.79,-2749.88,217.418,3.38745,240,360,0,0,0,0,0,0),
(108340,27438,571,1,1,0,0,3933.09,-2713.14,219.493,0.771284,240,360,0,0,0,0,0,0),
(17652,27438,571,1,1,0,0,4122.86,-2571.02,215.182,1.19133,240,360,0,0,0,0,0,0),
(18634,27438,571,1,1,0,0,4092.57,-2523.11,214.892,3.57109,240,360,0,0,0,0,0,0),
(18696,27438,571,1,1,0,0,4119.71,-2485.49,215.216,5.23614,240,360,0,0,0,0,0,0),
(18737,27438,571,1,1,0,0,4090.47,-2467.79,215.225,0.146757,240,360,0,0,0,0,0,0),
(18987,27438,571,1,1,0,0,4075.45,-2414.1,214.965,2.76999,240,360,0,0,0,0,0,0);
DELETE FROM dbscripts_on_relay WHERE id IN (20523,20524);
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20523,0,20,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'set idle'),
(20523,1000,1,69,0,0,0,0,0,0,0,0,0,0,0,0,0,'start emote'),
(20523,5000,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'stop emote'),
(20523,6000,20,1,7,0,0,0,0,0,0,0,0,0,0,0,0,'set randomovement'),
(20524,0,20,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'set idle'),
(20524,1000,37,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'move towards target'),
(20524,5000,1,379,0,0,0,0,2,0,0,0,0,0,0,0,0,'emote'),
(20524,8000,15,48754,0,0,0,0,0,0,0,0,0,0,0,0,0,'spell'),
(20524,8500,1,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'emote'),
(20524,9000,20,1,7,0,0,0,2,0,0,0,0,0,0,0,0,'set randomovement'),
(20524,12000,35,6,30,0,0,0,4,0,0,0,0,0,0,0,0,'send AI EVENT 6'),
(20524,13000,18,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'target despawn');

UPDATE creature_loot_template SET ChanceOrQuestChance = -25 WHERE entry = 27131 AND item = 37020;

DELETE FROM dbscripts_on_quest_end WHERE id = 12178;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(12178,0,0,0,0,0,0,0,0,2000000869,0,0,0,0,0,0,0,''),
(12178,2900,31,26862,15,0,0,0,0,0,0,0,0,0,0,0,0,'search for 26862'),
(12178,3000,0,0,0,0,26862,20,7,2000000870,0,0,0,0,0,0,0,''),
(12178,6900,31,27102,100,0,0,0,0,0,0,0,0,0,0,0,0,'search for 27102'),
(12178,7000,0,0,0,0,27102,105,7,2000000871,0,0,0,0,0,0,0,''),
(12178,7100,21,1,0,0,27102,105,7,0,0,0,0,0,0,0,0,'buddy ACTIVE'),
(12178,12000,0,0,0,0,0,0,0,2000000872,0,0,0,0,0,0,0,''),
(12178,15900,31,27102,100,0,0,0,0,0,0,0,0,0,0,0,0,'search for 27102'),
(12178,16000,0,0,0,0,27102,105,0,2000000873,0,0,0,0,0,0,0,''),
(12178,16500,25,1,0,0,27102,105,7,0,0,0,0,0,0,0,0,''),
(12178,17000,20,2,0,0,27102,105,7,0,0,0,0,0,0,0,0,'');
UPDATE quest_template SET CompleteScript = 12178 WHERE entry = 12178;
DELETE FROM creature_movement_template WHERE entry = 27102;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(27102,1,3257.15,-2227.86,116.83,100,0,0),
(27102,2,3237.86,-2265.85,114.243,4.71412,10000,2710201),
(27102,3,3250.23,-2237.21,115.094,100,0,0),
(27102,4,3260.69,-2220.83,116.955,100,0,0),
(27102,5,3275.85,-2208.03,117.029,100,0,0),
(27102,6,3275.85,-2208.03,117.029,2.80998,1000,2710202);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (2710201,2710202);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2710201,100,0,0,0,0,0,0,0,2000000874,0,0,0,0,0,0,0,''),
(2710201,900,31,27037,20,0,0,0,0,0,0,0,0,0,0,0,0,'search for 27037'),
(2710201,1000,0,0,0,0,27037,25,7,2000000876,0,0,0,0,0,0,0,''),
(2710201,7000,0,0,0,0,0,0,0,2000000875,0,0,0,0,0,0,0,''),
(2710202,100,20,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'idle'),
(2710202,200,21,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'unactive');
DELETE FROM dbscript_string WHERE entry BETWEEN 2000000869 AND 2000000876;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000000869,'That spineless troll has failed me for the last time.  Anthis!  Break his legs!',0,0,0,15,NULL),
(2000000870,'At once, my lady!',0,0,0,0,NULL),
(2000000871,'Let me take care of it, sister.',0,0,0,66,NULL),
(2000000872,'I\'ve never seen you so eager to cause harm to someone, sister.  Such a pleasant development... very well, go!',0,0,0,25,NULL),
(2000000873,'What were you thinking, provoking her like that?',0,4,0,0,NULL),
(2000000874,'You... half-idiot!  You really did it this time.  I\'m going to have to make it look like your leg\'s broken.',0,0,0,0,NULL),
(2000000875,'Now don\'t move if you ever want to walk again!',0,0,0,60,NULL),
(2000000876,'No, please!  Don\'t!',0,0,0,434,NULL);

UPDATE creature_model_info SET modelid_other_gender = 23814, modelid_alternative = 23813 WHERE modelid = 23812;
UPDATE creature_model_info SET modelid_other_gender = 23814, modelid_alternative = 23812 WHERE modelid = 23813;
UPDATE creature_model_info SET modelid_other_gender = 23812 WHERE modelid = 23814;
DELETE FROM creature_template_addon WHERE entry = 27546;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES (27546,0,0,2,0,0,0,NULL);
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(119576, 27546, 571, 1, 1, 0, 0, 3110.83, -3091.04, 128.052, 0.244924, 300, 300, 5, 0, 9940, 3387, 0, 1),
(119577, 27546, 571, 1, 1, 0, 0, 3180.09, -3046.34, 133.666, 0.815905, 300, 300, 5, 0, 9940, 3387, 0, 1),
(119578, 27546, 571, 1, 1, 0, 0, 3120.02, -3061.54, 121.649, 3.11035, 300, 300, 5, 0, 9940, 3387, 0, 1),
(119579, 27546, 571, 1, 1, 0, 0, 3083.39, -3023.6, 118.017, 1.37002, 300, 300, 7, 0, 9940, 3387, 0, 1),
(119580, 27546, 571, 1, 1, 0, 0, 3111.65, -2969.95, 124.422, 2.02458, 300, 300, 0, 0, 9940, 3387, 0, 0),
(119581, 27546, 571, 1, 1, 0, 0, 3139.87, -3055.73, 126.667, 5.0675, 300, 300, 5, 0, 9940, 3387, 0, 1),
(119582, 27546, 571, 1, 1, 0, 0, 3158.33, -3030.98, 129.002, 0.872665, 300, 300, 0, 0, 9940, 3387, 0, 0),
(119583, 27546, 571, 1, 1, 0, 0, 3157.75, -3086.8, 137.307, 0.031716, 300, 300, 5, 0, 9940, 3387, 0, 1),
(119584, 27546, 571, 1, 1, 0, 0, 3051.04, -2982.29, 114.594, 0.198928, 300, 300, 5, 0, 9940, 3387, 0, 1),
(19067, 27546, 571, 1, 1, 0, 0, 3116.96, -3018.49, 118.338, 4.49423, 300, 300, 5, 0, 9940, 3387, 0, 1),
(19068, 27546, 571, 1, 1, 0, 0, 3088.57, -2973.33, 121.646, 5.79863, 300, 300, 5, 0, 9940, 3387, 0, 1),
(19082, 27546, 571, 1, 1, 0, 0, 3059, -3082.52, 117.398, 0.787469, 300, 300, 5, 0, 9940, 3387, 0, 1),
(19083, 27546, 571, 1, 1, 0, 0, 3026.96, -3048.63, 114.749, 6.0446, 300, 300, 5, 0, 9940, 3387, 0, 1),
(19087, 27546, 571, 1, 1, 0, 0, 3097.27, -2998.01, 118.763, 0.996003, 300, 300, 5, 0, 9940, 3387, 0, 1),
(19093, 27546, 571, 1, 1, 0, 0, 3145.47, -3002.14, 134.129, 0.872665, 300, 300, 0, 0, 9940, 3387, 0, 0),
(19095, 27546, 571, 1, 1, 0, 0, 3140.86, -2990.92, 126.688, 0.715585, 300, 300, 0, 0, 9940, 3387, 0, 0),
(19114, 27546, 571, 1, 1, 0, 0, 3151.91, -2974.61, 126.189, 3.31429, 300, 300, 5, 0, 9940, 3387, 0, 1),
(19163, 27546, 571, 1, 1, 0, 0, 3152.95, -3007.4, 134.193, 0.837758, 300, 300, 0, 0, 9940, 3387, 0, 0),
(19301, 27546, 571, 1, 1, 0, 0, 3129.28, -2980.31, 124.58, 0.366519, 300, 300, 0, 0, 9940, 3387, 0, 0),
(19361, 27546, 571, 1, 1, 0, 0, 3161.46, -3005.84, 127.998, 1.11701, 300, 300, 0, 0, 9940, 3387, 0, 0),
(19482, 27546, 571, 1, 1, 0, 0, 3128.18, -2963.07, 124.043, 1.72915, 300, 300, 5, 0, 9940, 3387, 0, 1),
(19573, 27546, 571, 1, 1, 0, 0, 3112.54, -2982.7, 124.566, 0.331613, 300, 300, 0, 0, 9940, 3387, 0, 0);
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 27546);
INSERT INTO creature_addon (guid,mount,bytes1,b2_0_sheath,b2_1_pvp_state,emote,moveflags,auras) VALUES
(19163,0,0,2,0,214,0,NULL), (119580,0,0,2,0,214,0,NULL), (119582,0,0,2,0,214,0,NULL), (19093,0,0,2,0,214,0,NULL),
(19361,0,0,2,0,214,0,NULL), (19095,0,0,2,0,214,0,NULL), (19301,0,0,2,0,214,0,NULL);

DELETE FROM conditions WHERE condition_entry BETWEEN 3505 AND 3509;
INSERT INTO conditions (condition_entry, type, value1, value2, value3, value4, flags) VALUES
(3505, 23, 36940, 1, 0, 0, 1), (3506, 9, 12105, 0, 0, 0, 1), (3507, 8, 12105, 0, 0, 0, 1), (3508, -2, 3507, 3506, 0, 0, 0), (3509, -1, 3508, 3505, 340, 0, 0);
UPDATE creature_loot_template SET condition_id = 3509 WHERE item = 36940;
DELETE FROM conditions WHERE condition_entry BETWEEN 3510 AND 3514;
INSERT INTO conditions (condition_entry, type, value1, value2, value3, value4, flags) VALUES
(3510, 23, 37830, 1, 0, 0, 1), (3511, 9, 12423, 0, 0, 0, 1), (3512, 8, 12423, 0, 0, 0, 1), (3513, -2, 3512, 3511, 0, 0, 0), (3514, -1, 3513, 3510, 273, 0, 0);
UPDATE creature_loot_template SET condition_id = 3514 WHERE item = 37830;

DELETE FROM dbscripts_on_quest_end WHERE id = 12422;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(12422,0,38,234,27102,0,0,0,0,0,0,0,0,0,0,0,0,'Send Mail');
UPDATE quest_template SET CompleteScript = 12422 WHERE entry = 12422;

DELETE FROM dbscripts_on_quest_start WHERE id = 790;
UPDATE quest_template SET StartScript = 0 WHERE entry = 790;
DELETE FROM dbscripts_on_quest_start WHERE id = 804;
INSERT INTO dbscripts_on_quest_start (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(804,1000,28,8,0,0,0,0,0,0x04,0,0,0,0,0,0,0,'STATE_KNEEL'),
(804,3000,0,0,0,0,0,0,0,2000000241,0,0,0,0,0,0,0,''),
(804,7000,28,7,0,0,0,0,0,0x04,0,0,0,0,0,0,0,'STATE_DEATH');
DELETE FROM `dbscript_string` WHERE `entry` = 2000000672;
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(35333, 3281, 1, 1, 1, 0, 0, -547.335, -4103.85, 70.0987, 6.07659, 200, 200, 15, 0, 86, 0, 0, 1);

UPDATE creature SET spawndist = 0, MovementType = 0 WHERE id = 10556;

REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(37005, 10676, 1, 1, 1, 0, 0, 293.208, -4746.92, 9.39871, 3.16327, 300, 300, 0, 0, 2440, 0, 0, 2),
(37021, 10682, 1, 1, 1, 0, 0, 294.965, -4743.98, 9.38235, 3.16327, 300, 300, 0, 0, 2440, 0, 0, 0);
DELETE FROM creature_linking WHERE master_guid = 37005;
INSERT INTO creature_linking (guid, master_guid, flag) VALUES (37021, 37005, 1+2+512);
DELETE FROM `creature_movement` WHERE `id` = 37021;
DELETE FROM `creature_movement` WHERE `id` = 37005;
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `script_id`, `comment`) VALUES
(37005, 1, 285.396, -4746.17, 9.48428, 0, 0, 0, NULL),
(37005, 2, 272.08, -4747.94, 9.78259, 0, 0, 0, NULL),
(37005, 3, 258.411, -4747.67, 10.0987, 0, 0, 0, NULL),
(37005, 4, 241.189, -4739.18, 10.1022, 0, 0, 0, NULL),
(37005, 5, 223.698, -4745.11, 10.1022, 0, 100, 5, NULL),
(37005, 6, 192.269, -4750.57, 11.1131, 0, 0, 0, NULL),
(37005, 7, 169.198, -4758.37, 11.5876, 0, 0, 0, NULL),
(37005, 8, 135.878, -4772.29, 11.967, 0, 0, 0, NULL),
(37005, 9, 106.618, -4752.63, 15.7554, 0, 0, 0, NULL),
(37005, 10, 90.4136, -4744.55, 17.2587, 0, 0, 0, NULL),
(37005, 11, 60.7802, -4744.4, 19.4248, 0, 0, 0, NULL),
(37005, 12, 41.2531, -4745.39, 20.9696, 0, 0, 0, NULL),
(37005, 13, 12.8472, -4750.3, 21.9785, 0, 0, 0, NULL),
(37005, 14, -22.9689, -4751.51, 21.4648, 0, 0, 0, NULL),
(37005, 15, -50.0948, -4751.86, 21.0281, 0, 0, 0, NULL),
(37005, 16, -84.2163, -4751.13, 20.995, 0, 0, 0, NULL),
(37005, 17, -122.308, -4757.27, 22.1991, 0, 0, 0, NULL),
(37005, 18, -162.708, -4768.6, 23.2985, 0, 0, 0, NULL),
(37005, 19, -222.353, -4788.78, 24.9537, 0, 0, 0, NULL),
(37005, 20, -272.99, -4802.43, 28.3927, 0, 0, 0, NULL),
(37005, 21, -324.35, -4812.95, 30.6759, 0, 0, 0, NULL),
(37005, 22, -366.055, -4819.39, 32.2942, 0, 0, 0, NULL),
(37005, 23, -393.656, -4805.13, 32.3298, 0, 0, 0, NULL),
(37005, 24, -427.748, -4788.85, 32.539, 0, 0, 0, NULL),
(37005, 25, -451.591, -4777.82, 32.4108, 0, 0, 0, NULL),
(37005, 26, -491.962, -4773.69, 32.209, 0, 0, 0, NULL),
(37005, 27, -529.828, -4752.62, 32.9936, 0, 0, 0, NULL),
(37005, 28, -563.433, -4736.64, 33.3856, 0, 0, 0, NULL),
(37005, 29, -592.883, -4716.38, 34.8526, 0, 0, 0, NULL),
(37005, 30, -607.065, -4689.99, 37.8701, 0, 0, 0, NULL),
(37005, 31, -609.691, -4657.4, 39.2716, 0, 0, 0, NULL),
(37005, 32, -609.378, -4621.92, 40.5397, 0, 100, 6, NULL),
(37005, 33, -606.536, -4598.99, 41.3401, 0, 0, 0, NULL),
(37005, 34, -598.559, -4576, 40.863, 0, 0, 0, NULL),
(37005, 35, -617.677, -4566.84, 41.4141, 0, 0, 0, NULL),
(37005, 36, -635.167, -4558.02, 41.4149, 0, 0, 0, NULL),
(37005, 37, -629.829, -4535.2, 41.3885, 0, 0, 0, NULL),
(37005, 38, -601.713, -4532.21, 41.33, 0, 0, 0, NULL),
(37005, 39, -585.511, -4515.24, 42.3304, 0, 0, 0, NULL),
(37005, 40, -571.92, -4497.46, 42.5659, 0, 0, 0, NULL),
(37005, 41, -573.773, -4476.88, 42.4267, 0, 0, 0, NULL),
(37005, 42, -591.111, -4443.99, 41.413, 0, 0, 0, NULL),
(37005, 43, -605.458, -4401.06, 43.2108, 0, 0, 0, NULL),
(37005, 44, -604.78, -4370.58, 39.3396, 0, 0, 0, NULL),
(37005, 45, -602.266, -4320.58, 37.7376, 0, 0, 0, NULL),
(37005, 46, -604.331, -4289.5, 37.8264, 0, 0, 0, NULL),
(37005, 47, -616.198, -4282.17, 37.9677, 0, 0, 0, NULL),
(37005, 48, -633.136, -4264.42, 38.415, 0, 0, 0, NULL),
(37005, 49, -632.159, -4240, 38.1508, 0, 0, 0, NULL),
(37005, 50, -619.995, -4221.7, 38.1341, 0, 0, 0, NULL),
(37005, 51, -594.357, -4222.88, 38.1656, 0, 0, 0, NULL),
(37005, 52, -571.29, -4244.38, 37.9757, 0, 0, 0, NULL),
(37005, 53, -574.484, -4273.59, 37.933, 0, 0, 0, NULL),
(37005, 54, -595.473, -4293.64, 37.826, 0, 0, 0, NULL),
(37005, 55, -596.434, -4322.7, 37.599, 0, 0, 0, NULL),
(37005, 56, -595.453, -4365.47, 39.1718, 0, 0, 0, NULL),
(37005, 57, -597.233, -4403.15, 43.8014, 0, 0, 0, NULL),
(37005, 58, -595.365, -4415.06, 43.5007, 0, 0, 0, NULL),
(37005, 59, -587.576, -4433.57, 42.0538, 0, 0, 0, NULL),
(37005, 60, -569.998, -4471.68, 42.3917, 0, 0, 0, NULL),
(37005, 61, -564.511, -4491.28, 42.5658, 0, 0, 0, NULL),
(37005, 62, -570.483, -4506.3, 42.5045, 0, 0, 0, NULL),
(37005, 63, -584.607, -4524.34, 41.7159, 0, 0, 0, NULL),
(37005, 64, -586.837, -4535.32, 41.3298, 0, 0, 0, NULL),
(37005, 65, -550.708, -4556.57, 41.5629, 0, 0, 0, NULL),
(37005, 66, -550.207, -4576.46, 41.3351, 0, 0, 0, NULL),
(37005, 67, -563.775, -4581.39, 41.3413, 0, 0, 0, NULL),
(37005, 68, -594.329, -4577.56, 40.9098, 0, 0, 0, NULL),
(37005, 69, -602.055, -4603.04, 41.3029, 0, 100, 5, NULL),
(37005, 70, -601.67, -4638.42, 39.8888, 0, 0, 0, NULL),
(37005, 71, -601.155, -4673.11, 38.7015, 0, 0, 0, NULL),
(37005, 72, -581.861, -4713.64, 34.2112, 0, 0, 0, NULL),
(37005, 73, -558.782, -4728.99, 33.687, 0, 0, 0, NULL),
(37005, 74, -531.563, -4744.83, 32.96, 0, 0, 0, NULL),
(37005, 75, -503.36, -4758.86, 32.4242, 0, 0, 0, NULL),
(37005, 76, -466.784, -4771.69, 32.4114, 0, 0, 0, NULL),
(37005, 77, -438.361, -4776.46, 32.529, 0, 0, 0, NULL),
(37005, 78, -409.812, -4789.75, 32.3453, 0, 0, 0, NULL),
(37005, 79, -365.266, -4811.7, 32.4286, 0, 0, 0, NULL),
(37005, 80, -339.341, -4807.62, 31.3661, 0, 0, 0, NULL),
(37005, 81, -298.214, -4799.11, 29.6388, 0, 0, 0, NULL),
(37005, 82, -245.122, -4786.73, 25.8776, 0, 0, 0, NULL),
(37005, 83, -195.231, -4770.47, 23.6482, 0, 0, 0, NULL),
(37005, 84, -145.978, -4752.32, 22.8914, 0, 0, 0, NULL),
(37005, 85, -96.1512, -4743.51, 21.6903, 0, 0, 0, NULL),
(37005, 86, -50.2155, -4745.55, 20.9886, 0, 0, 0, NULL),
(37005, 87, 5.36878, -4743.72, 21.8896, 0, 0, 0, NULL),
(37005, 88, 32.8426, -4740.5, 21.5665, 0, 0, 0, NULL),
(37005, 89, 66.0986, -4740.87, 18.8802, 0, 0, 0, NULL),
(37005, 90, 97.3291, -4741.05, 16.8945, 0, 0, 0, NULL),
(37005, 91, 138.562, -4765.19, 12.2531, 0, 0, 0, NULL),
(37005, 92, 183.265, -4746.67, 11.3841, 0, 0, 0, NULL),
(37005, 93, 237.727, -4736.44, 10.1034, 0, 100, 6, NULL),
(37005, 94, 263.358, -4743.46, 9.97667, 0, 0, 0, NULL);

DELETE FROM dbscripts_on_quest_start WHERE id = 12427;
INSERT INTO dbscripts_on_quest_start (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(12427,0,0,0,0,0,0,0,0,2000003822,0,0,0,0,0,0,0,''),
(12427,10,29,2,0,0,0,0,4,0,0,0,0,0,0,0,0,'NPCFlags Remove'),
(12427,100,10,27715,600000,0,0,0,0x08,0,0,0,0,3245.124,-2343.807,92.10033,1.117,'Summon Ironhide');
UPDATE quest_template SET StartScript = 12427 WHERE entry = 12427;
DELETE FROM dbscripts_on_quest_start WHERE id = 12428;
INSERT INTO dbscripts_on_quest_start (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(12428,0,0,0,0,0,0,0,0,2000003823,0,0,0,0,0,0,0,''),
(12428,10,29,2,0,0,0,0,4,0,0,0,0,0,0,0,0,'NPCFlags Remove'),
(12428,100,10,27716,600000,0,0,0,0x08,0,0,0,0,3245.2917,-2343.9275,92.06799,1.309,'Summon Torgg Thundertotem');
UPDATE quest_template SET StartScript = 12428 WHERE entry = 12428;
DELETE FROM dbscripts_on_quest_start WHERE id = 12429;
INSERT INTO dbscripts_on_quest_start (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(12429,0,0,0,0,0,0,0,0,2000003824,0,0,0,0,0,0,0,''),
(12429,10,29,2,0,0,0,0,4,0,0,0,0,0,0,0,0,'NPCFlags Remove'),
(12429,6000,0,0,0,0,0,0,0,2000003825,0,0,0,0,0,0,0,''),
(12429,7000,10,27717,600000,0,0,0,0x08,0,0,0,0,3244.923,-2344.4214,92.11688,1.309,'Summon Rustblood');
UPDATE quest_template SET StartScript = 12429 WHERE entry = 12429;
DELETE FROM dbscripts_on_quest_start WHERE id = 12430;
INSERT INTO dbscripts_on_quest_start (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(12430,0,0,0,0,0,0,0,0,2000003826,0,0,0,0,0,0,0,''),
(12430,10,29,2,0,0,0,0,4,0,0,0,0,0,0,0,0,'NPCFlags Remove'),
(12430,6000,0,0,0,0,0,0,0,2000003827,0,0,0,0,0,0,0,''),
(12430,16000,0,0,0,0,0,0,0,2000003828,0,0,0,0,0,0,0,''),
(12430,20000,10,27718,600000,0,0,0,0x08,0,0,0,0,3244.4917,-2343.1282,92.22895,0.66,'Summon Horgrenn Hellcleave');
UPDATE quest_template SET StartScript = 12430 WHERE entry = 12430;
DELETE FROM dbscripts_on_quest_start WHERE id = 12431;
INSERT INTO dbscripts_on_quest_start (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(12431,0,0,0,0,0,0,0,0,2000003829,0,0,0,0,0,0,0,''),
(12431,10,29,2,0,0,0,0,4,0,0,0,0,0,0,0,0,'NPCFlags Remove'),
(12431,100,10,27727,600000,0,0,0,0x08,0,0,0,0,3253.5452,-2337.4917,92.147606,3.05,'Summon Conqueror Krenna'),
(12431,110,10,27102,600000,0,0,0,0x08,0,0,0,0,3243.701,-2336.4758,92.44055,6.178,'Summon Gorgonna'),
(12431,120,10,26862,600000,0,0,0,0x08,0,0,0,0,3256.5142,-2339.1406,92.15862,3.37,'Summon Anthis'),
(12431,130,10,26863,600000,0,0,0,0x08,0,0,0,0,3255.9524,-2335.6614,92.2131,3.44,'Summon Sethyel'),
(12431,8000,0,0,0,0,27102,80,7,2000003830,0,0,0,0,0,0,0,''),
(12431,17000,0,0,0,0,27727,80,0,2000003834,0,0,0,0,0,0,0,''),
(12431,23000,0,0,0,0,27102,80,7,2000003831,0,0,0,0,0,0,0,''),
(12431,31000,0,0,0,0,27727,80,0,2000003835,0,0,0,0,0,0,0,''),
(12431,37000,0,0,0,0,27102,80,7,2000003832,0,0,0,0,0,0,0,''),
(12431,46500,0,0,0,0,27727,80,0,2000003836,0,0,0,0,0,0,0,''),
(12431,52500,0,0,0,0,27102,80,7,2000003833,0,0,0,0,0,0,0,''),
(12431,54000,35,5,70,0,0,0,4,0,0,0,0,0,0,0,0,'Send AI EVENT A');
UPDATE quest_template SET StartScript = 12431 WHERE entry = 12431;
DELETE FROM dbscripts_on_relay WHERE id IN (20525,20526,20527,20528,20529);
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20525,1,31,27715,80,0,0,0,0x08,0,0,0,0,0,0,0,0,'Part of Grennix Shivwiggle EAI: search for 27715 - terminate if found'),
(20525,5,31,27716,80,0,0,0,0x08,0,0,0,0,0,0,0,0,'Part of Grennix Shivwiggle EAI: search for 27716 - terminate if found'),
(20525,10,31,27717,80,0,0,0,0x08,0,0,0,0,0,0,0,0,'Part of Grennix Shivwiggle EAI: search for 27717 - terminate if found'),
(20525,15,31,27718,80,0,0,0,0x08,0,0,0,0,0,0,0,0,'Part of Grennix Shivwiggle EAI: search for 27718 - terminate if found'),
(20525,20,31,27102,80,0,0,0,0x08,0,0,0,0,0,0,0,0,'Part of Grennix Shivwiggle EAI: search for 27718 - terminate if found'),
(20525,25,29,2,1,0,0,0,4,0,0,0,0,0,0,0,0,'Part of Grennix Shivwiggle EAI: NPCFlags Set'),
(20526,1,34,3515,0,0,0,0,0x08,0,0,0,0,0,0,0,0,'Part of Gorgonna EAI: area check'),
(20526,10,29,2,0,0,0,0,4,0,0,0,0,0,0,0,0,'Part of Gorgonna EAI: NPCFlags Removed'),
(20527,0,0,0,0,0,0,0,4,2000003837,0,0,0,0,0,0,0,'Part of Gorgonna EAI: Say'),
(20528,1,22,16,0x01,0,0,0,4,0,0,0,0,0,0,0,0,'Part of Conqueror Krenna EAI: faction update'),
(20528,10,31,27102,30,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Grennix Shivwiggle EAI: search for 27102'),
(20528,100,26,0,0,0,27102,40,1,0,0,0,0,0,0,0,0,'Part of Grennix Shivwiggle EAI: search for 27102');
DELETE FROM dbscript_string WHERE entry BETWEEN 2000003822 AND 2000003837;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000003822,'Ladies and gentlemen, gather round the Conquest Pit!  Witness the battle of $r versus bear and place your bets with confidence!',0,1,0,0,NULL),
(2000003823,'Just when you think you\'ve seen it all!  $n will square off with an authentic Grizzly Hills crazed furbolg in front of your very eyes here at the Conquest Pit!  Place your bets, folks!',0,1,0,0,NULL),
(2000003824,'Gather round, folks!  Grab a warm drink and find a good seat for you\'re about to witness a showdown between $r and machine!',0,1,0,0,NULL),
(2000003825,'Straight out of Thor Modan and made of 100 percent authentic... metal... here is Rustblood, the lightning-powered iron golem!',0,1,0,0,NULL),
(2000003826,'Ladies and gentlemen... gather round the pit!',0,1,0,0,NULL),
(2000003827,'In one corner we have... $n, truly a world class $c.  Slayer of reptiles, mammals, mechanical constructs and the odd dragon...kin.  You\'ve never seen another $r like $g him : her;.',0,1,0,0,NULL),
(2000003828,'In the other corner, a serial killer, mass defenestrator, sentenced to death multiple times by noose and by blunt instrument!  Horgrenn... Hellcleave!  Ladies and gentlemen... place your bets!',0,1,0,0,NULL),
(2000003829,'Ladies and gentlemen!  Well... let\'s just say you don\'t want to miss this one!',0,1,0,0,NULL),
(2000003830,'I see you\'ve brought your pets.',0,0,0,0,NULL),
(2000003831,'It doesn\'t have to end this way, you know?',0,0,0,0,NULL),
(2000003832,'I used good judgment when you showed none.  I don\'t want to see you lead us into ruin, Krenna!',0,0,0,0,NULL),
(2000003833,'We\'ll see about that.',0,0,0,0,NULL),
(2000003834,'Good one, sister.  What about your pet?  Where is $n?',0,0,0,0,NULL),
(2000003835,'You went behind my back.  You neglected my orders.  You will pay the price.',0,0,0,0,NULL),
(2000003836,'Enough talk.  By the time I\'m through with you, not even the worgs are going to want to go near your corpse.',0,0,0,0,NULL),
(2000003837,'Why... why sister?  Why did it have to come to this?',0,0,0,0,NULL);
UPDATE creature_template SET UnitFlags = 320 WHERE entry = 27716;
DELETE FROM creature_equip_template WHERE entry = 3006;
INSERT INTO creature_equip_template (entry, equipentry1, equipentry2, equipentry3) VALUES (3006, 37832, 37832, 0);
UPDATE creature_template SET Faction = 14, UnitFlags = 320 WHERE entry = 27715;
UPDATE creature_template SET Faction = 14, UnitFlags = 320 WHERE entry = 27717;
UPDATE creature_template SET Faction = 14, UnitFlags = 320, EquipmentTemplateId = 3006 WHERE entry = 27718;
UPDATE creature_template SET Faction = 1979 WHERE entry = 27727;
DELETE FROM creature_template_addon WHERE entry = 27727;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES (27727,0,0,1,0,0,0,49414);
DELETE FROM creature_linking_template WHERE master_entry = 27727;
INSERT INTO creature_linking_template (entry, map, master_entry, flag, search_range) VALUES
(26862, 571, 27727, 1, 30), (26863, 571, 27727, 1, 30);
DELETE FROM spell_area WHERE spell = 49416 AND area = 4248;
INSERT INTO spell_area (spell, area, quest_start, quest_start_active, quest_end, condition_id, aura_spell, racemask, gender, autocast) VALUES (49416,4248,0,0,12431,0,0,0,2,1);
DELETE FROM conditions WHERE condition_entry IN (3515,3516);
INSERT INTO conditions (condition_entry, type, value1, value2, flags) VALUES (3515, 4, 4248, 0, 0), (3516, 4, 4206, 0, 0);

DELETE FROM dbscripts_on_creature_movement WHERE id = 758;

INSERT INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_pvp_state`, `emote`, `moveflags`, `auras`) VALUES ('11327', '0', '0', '1', '0', '0', '0', '67399');
INSERT INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_pvp_state`, `emote`, `moveflags`, `auras`) VALUES ('34694', '0', '0', '1', '0', '0', '0', '67370');

UPDATE creature SET spawntimesecsmin=1800, spawntimesecsmax=1800 WHERE guid IN (561924,561925,561903,561938,561941,561939);
UPDATE creature_template SET EquipmentTemplateId=0 WHERE entry=29175;
DELETE FROM creature_movement WHERE id IN (561924,561925);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `script_id`) VALUES
(561925,1,2427.513,-5170.1714,79.92267,100,0,0),
(561925,2,2378.9214,-5190.077,75.328064,100,0,0),
(561925,3,2354.3633,-5207.5884,79.07798,100,0,0),
(561925,4,2318.208,-5215.8696,83.70072,100,0,0),
(561925,5,2299.7175,-5247.5063,84.357346,100,0,0),
(561925,6,2300.2935,-5285.48,82.02069,100,0,0),
(561925,7,2308.4897,-5290.1406,82.185,100,0,0),
(561925,8,2308.1047,-5292.194,82.02069,100,1000,7),
(561924,1,2400.139,-5095.251,82.060844,100,0,0),
(561924,2,2377.962,-5137.99,76.361145,100,0,0),
(561924,3,2375.7024,-5171.646,74.49957,100,0,0),
(561924,4,2362.4583,-5200.2295,77.377174,100,0,0),
(561924,5,2326.5635,-5203.1113,79.51713,100,0,0),
(561924,6,2281.3264,-5211.5522,82.08207,100,0,0),
(561924,7,2236.011,-5204.351,74.75613,100,0,0),
(561924,8,2221.5903,-5241.5303,78.334206,100,0,0),
(561924,9,2246.648,-5279.3325,81.84155,100,0,0),
(561924,10,2248.189,-5287.56,82.724,100,1000,7);
DELETE FROM `creature_movement_template` WHERE entry IN(29173,29199,29204,29200,29175,29179,29176,29178,29177,29180,29182,29181,29228,29183,29219,29206,29174);
INSERT INTO `creature_movement_template` (`entry`, `pathId`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `script_id`) VALUES
(29173,0,1,2430.2861,-5166.55,80.94271,100,0,0),
(29173,0,2,2409.7349,-5180.9673,78.2663,100,0,0),
(29173,0,3,2388.6926,-5191.797,73.986145,100,0,0),
(29173,0,4,2371.6829,-5206.2803,76.66461,100,0,0),
(29173,0,5,2358.5476,-5218.236,82.20042,100,0,0),
(29173,0,6,2344.3154,-5232.941,85.46824,100,0,0),
(29173,0,7,2332.4934,-5247.6587,84.58001,100,0,0),
(29173,0,8,2311.1836,-5264.96,82.72234,100,0,0),
(29173,0,9,2298.6687,-5272.8677,81.88911,100,1000,7),
(29173,1,1,2281.6511,-5282.5884,82.54389,4.6303,1000,7),
(29199,0,1,2436.5994,-5137.0156,83.21733,100,0,0),
(29199,0,2,2436.5732,-5150.8433,82.318146,100,0,0),
(29199,0,3,2431.699,-5162.737,82.02926,100,0,0),
(29199,0,4,2423.6157,-5169.9165,80.33136,100,0,0),
(29199,0,5,2414.4165,-5177.2075,79.08649,100,0,0),
(29199,0,6,2404.8223,-5184.239,76.69423,100,0,0),
(29199,0,7,2394.84,-5188.722,74.06664,100,0,0),
(29199,0,8,2384.3113,-5194.0894,74.46209,100,0,0),
(29199,0,9,2375.6396,-5202.671,74.978615,100,0,0),
(29199,0,10,2375.6396,-5202.671,74.978615,100,0,0),
(29199,0,11,2367.2144,-5210.0195,79.031166,100,0,0),
(29199,0,12,2359.2834,-5217.4907,82.179054,100,0,0),
(29199,0,13,2351.37,-5225.6875,84.32249,100,0,0),
(29199,0,14,2342.9949,-5234.3228,85.52503,100,0,0),
(29199,0,15,2335.7024,-5243.668,84.716835,100,0,0),
(29199,0,16,2327.0146,-5251.6035,84.45501,100,0,0),
(29199,0,17,2317.9814,-5259.263,83.65594,100,0,0),
(29199,0,18,2308.9338,-5266.732,82.432274,100,0,0),
(29199,0,19,2298.2136,-5271.8433,81.94575,100,0,0),
(29199,0,20,2287.7285,-5277.336,82.311386,100,1000,7),
(29199,1,1,2286.9436,-5276.3916,82.05048,4.43313,1000,2919901),
(29204,0,1,2436.3938,-5147.844,82.56242,100,0,0),
(29204,0,2,2432.1245,-5159.789,82.72506,100,0,0),
(29204,0,3,2424.858,-5167.2124,81.22662,100,0,0),
(29204,0,4,2416.2937,-5174.862,79.501526,100,0,0),
(29204,0,5,2406.887,-5182.2876,77.6954,100,0,0),
(29204,0,6,2397.581,-5186.9297,74.486145,100,0,0),
(29204,0,7,2386.9043,-5192.589,74.22072,100,0,0),
(29204,0,8,2378.0715,-5200.8027,74.838806,100,0,0),
(29204,0,9,2369.351,-5208.2607,77.83898,100,0,0),
(29204,0,10,2361.4675,-5215.5825,81.39477,100,0,0),
(29204,0,11,2353.3645,-5223.798,84.044044,100,0,0),
(29204,0,12,2345.1194,-5232.2095,85.37879,100,0,0),
(29204,0,13,2337.6865,-5241.413,84.61715,100,0,0),
(29204,0,14,2329.1184,-5249.467,84.58001,100,0,0),
(29204,0,15,2320.172,-5257.2354,83.8991,100,0,0),
(29204,0,16,2311.1917,-5264.7793,82.74407,100,0,0),
(29204,0,17,2300.738,-5270.2114,82.06341,100,0,0),
(29204,0,18,2290.3271,-5275.833,82.29019,100,1000,7),
(29204,1,1,2163.7673,-5225.8994,83.525024,100,1000,1),
(29200,0,1,2434.9187,-5147.0254,83.04118,100,0,0),
(29200,0,2,2431.4224,-5158.7144,83.1097,100,0,0),
(29200,0,3,2427.88,-5168.7886,80.35187,100,0,0),
(29200,0,4,2417.8103,-5175.0796,79.32025,100,0,0),
(29200,0,5,2408.0205,-5182.0337,77.91669,100,0,0),
(29200,0,6,2398.2297,-5186.6436,74.76691,100,0,0),
(29200,0,7,2387.7927,-5192.1304,74.18774,100,0,0),
(29200,0,8,2378.9634,-5200.3936,74.48993,100,0,0),
(29200,0,9,2370.1538,-5207.7583,77.49084,100,0,0),
(29200,0,10,2362.2402,-5215.0205,81.06909,100,0,0),
(29200,0,11,2354.1506,-5223.1606,83.949066,100,0,0),
(29200,0,12,2345.8616,-5231.5356,85.41917,100,0,0),
(29200,0,13,2338.4346,-5240.737,84.701225,100,0,0),
(29200,0,14,2329.7979,-5248.7324,84.54461,100,0,0),
(29200,0,15,2320.8694,-5256.5166,83.92027,100,0,0),
(29200,0,16,2311.9026,-5264.0806,82.84262,100,0,0),
(29200,0,17,2301.4734,-5269.485,82.02706,100,0,0),
(29200,0,18,2291.1277,-5275.213,82.338684,100,1000,7),
(29200,1,1,2273.329,-5275.756,81.94575,4.86946,1000,2919901),
(29175,0,1,2199.3313,-5271.9775,88.236786,100,0,0),
(29175,0,2,2235.2202,-5278.9307,79.08179,100,0,0),
(29175,0,3,2253.47,-5284.3545,82.474,100,0,0),
(29175,0,4,2281.2556,-5299.5728,85.09321,1.69296,1000,2917501),
(29175,1,1,2282.8252,-5284.2954,82.63342,100,1000,7),
(29175,2,1,2271.0044,-5280.692,82.00697,100,1000,7),
(29176,1,1,2285.42,-5305.125,86.24626,1.62315,1000,7),
(29176,2,1,2280.1504,-5271.0415,81.94575,100,1000,7),
(29178,1,1,2276.1965,-5306.005,86.05442,1.62315,1000,7),
(29178,2,1,2280.1504,-5271.0415,81.94575,100,1000,7),
(29177,1,1,2277.4705,-5310.7856,87.1491,1.62315,1000,7),
(29177,2,1,2280.1504,-5271.0415,81.94575,100,1000,7),
(29179,0,1,2281.117,-5315.9224,88.52019,100,0,0),
(29179,0,2,2281.1956,-5316.9194,88.52019,100,0,0),
(29179,0,3,2280.875,-5312.9355,87.87126,100,0,0),
(29179,0,4,2280.6348,-5309.9473,87.24626,100,0,0),
(29179,0,5,2280.3945,-5306.959,86.49626,100,0,0),
(29179,0,6,2280.1543,-5303.9707,85.87126,100,0,0),
(29179,0,7,2279.914,-5300.9824,85.12126,100,0,0),
(29179,0,8,2279.5938,-5296.998,84.57075,100,0,0),
(29179,0,9,2279.2734,-5293.0137,83.82075,100,0,0),
(29179,0,10,2278.9531,-5289.0293,83.19575,100,0,0),
(29179,0,11,2278.5527,-5284.049,82.57075,100,0,0),
(29179,0,12,2278.2153,-5279.7964,82.32075,100,0,0),
(29179,0,13,2278.2153,-5279.7964,82.32075,100,0,0),
(29179,1,1,2279.3428,-5320.2344,88.861984,1.62315,1000,7),
(29179,2,1,2280.1504,-5271.0415,81.94575,100,1000,7),
(29180,1,1,2286.5137,-5309.6123,87.26872,1.62315,1000,7),
(29180,2,1,2280.1504,-5271.0415,81.94575,100,1000,7),
(29182,1,1,2280.7996,-5316.569,88.42204,1.62315,1000,7),
(29182,2,1,2280.1504,-5271.0415,81.94575,100,1000,7),
(29181,1,1,2274.3296,-5318.618,88.09841,1.62315,1000,7),
(29181,2,1,2280.1504,-5271.0415,81.94575,100,1000,7),
(29174,0,1,2279.2747,-5270.7705,81.82075,100,1000,7),
(29174,1,1,2282.0042,-5270.7173,81.82075,100,1000,7),
(29174,2,1,2281.9778,-5270.725,81.82075,100,1000,7),
(29228,0,1,2280.2483,-5269.8696,81.82075,100,1000,7),
(29183,0,1,2280.5713,-5267.348,81.56746,100,1000,7),
(29219,0,1,2263.8887,-5271.7656,81.2733,100,1000,7),
(29219,1,1,2307.0173,-5277.6113,81.9260,100,1000,7),
(29219,2,1,2294.8312,-5266.5004,81.9244,100,1000,7),
(29206,0,1,2263.8887,-5271.7656,81.2733,100,1000,7),
(29206,1,1,2307.0173,-5277.6113,81.9260,100,1000,7),
(29206,2,1,2294.8312,-5266.5004,81.9244,100,1000,7);
DELETE FROM `dbscripts_on_creature_movement` WHERE `id` IN (2919901,2917501);
INSERT INTO `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
(2919901,0,32,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'Death Knight - pause WP Movement'),
(2919901,0,14,53658,0,0,0,0,0,0,0,0,0,0,0,0,0,'Death Knight - remove The Light of Dawn aura'),
(2919901,0,28,8,0,0,0,0,0,0,0,0,0,0,0,0,0,'Death Knight - kneel'),
(2917501,0,32,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'Highlord Tirion Fordring - pause WP Movement'),
(2917501,0,24,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Highlord Tirion Fordring - unmount'),
(2917501,0,35,1003,200,0,0,0,0,0,0,0,0,0,0,0,0,'Highlord Tirion Fordring - send AI event');

UPDATE creature_template_addon SET bytes1 = 0 WHERE entry IN (10599,10600);
DELETE FROM dbscripts_on_relay WHERE id BETWEEN 5 AND 13;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(5,1,31,10599,40,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Krang Stonehoof EAI: search for 10599'),
(5,5,31,10600,40,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Krang Stonehoof EAI: search for 10600'),
(5,10,21,1,0,0,0,0,4,0,0,0,0,0,0,0,0,'Part of Krang Stonehoof EAI: Active'),
(5,15,21,1,0,0,10599,80,4,0,0,0,0,0,0,0,0,'Part of Krang Stonehoof EAI: Buddy A Active'),
(5,20,21,1,0,0,10600,80,4,0,0,0,0,0,0,0,0,'Part of Krang Stonehoof EAI: Buddy B Active'),
(5,30,35,5,70,0,0,0,4,0,0,0,0,0,0,0,0,'Part of Krang Stonehoof EAI: Send AI Event A'),
(5,2000,0,0,0,0,0,0,4,2000003838,0,0,0,0,0,0,0,'Part of Krang Stonehoof EAI: Say 1'),
(5,12000,0,0,0,0,0,0,4,2000003839,0,0,0,0,0,0,0,'Part of Krang Stonehoof EAI: Say 2'),
(5,28000,0,0,0,0,0,0,4,2000003843,0,0,0,0,0,0,0,'Part of Krang Stonehoof EAI: Say 3'),
(5,28000,35,6,70,0,0,0,4,0,0,0,0,0,0,0,0,'Part of Krang Stonehoof EAI: Send AI Event B'),
(6,0,0,0,0,0,0,0,4,2000003844,0,0,0,0,0,0,0,'Part of Krang Stonehoof EAI: Say 4'),
(6,3000,0,0,0,0,0,0,4,2000003848,0,0,0,0,0,0,0,'Part of Krang Stonehoof EAI: Say 5'),
(6,3100,35,8,70,0,0,0,4,0,0,0,0,0,0,0,0,'Part of Krang Stonehoof EAI: Send AI Event C'),
(6,6000,0,0,0,0,0,0,4,2000003849,0,0,0,0,0,0,0,'Part of Krang Stonehoof EAI: Say 6'),
(6,6100,35,9,70,0,0,0,4,0,0,0,0,0,0,0,0,'Part of Krang Stonehoof EAI: Send AI Event D'),
(6,9000,0,0,0,0,0,0,4,2000003850,0,0,0,0,0,0,0,'Part of Krang Stonehoof EAI: Say 7'),
(6,10000,21,0,0,0,0,0,4,0,0,0,0,0,0,0,0,'Part of Krang Stonehoof EAI: unactive'),
(7,0,0,0,0,0,0,0,4,2000003845,2000003846,2000003847,0,0,0,0,0,'Part of Krang Stonehoof EAI: Random Say'),
(8,0,28,0,0,0,0,0,4,0,0,0,0,0,0,0,0,'Part of Hulfnar Stonetotem EAI: Stand'),
(8,4000,3,0,0,0,0,0,0,0,0,0,0,-2356.47,-518.23,-9.42476,1.21545,'Part of Hulfnar Stonetotem EAI: move'),
(8,8000,3,0,0,0,0,0,0,0,0,0,0,0,0,0,1.21545,'Part of Hulfnar Stonetotem EAI: move'),
(8,9000,1,2,0,0,0,0,4,0,0,0,0,0,0,0,0,'Part of Hulfnar Stonetotem EAI: emote'),
(8,13000,3,0,0,0,0,0,4,0,0,0,0,0,0,0,0.264,'Part of Hulfnar Stonetotem EAI: face Buddy B'),
(8,16000,0,0,0,0,0,0,4,2000003840,0,0,0,0,0,0,0,'Part of Hulfnar Stonetotem EAI: Say'),
(8,26000,0,0,0,0,0,0,4,2000003842,0,0,0,0,0,0,0,'Part of Hulfnar Stonetotem EAI: Say'),
(8,31000,1,15,0,0,0,0,4,0,0,0,0,0,0,0,0,'Part of Hulfnar Stonetotem EAI: emote'),
(8,33000,22,1607,0x04|0x20,0,0,0,4,0,0,0,0,0,0,0,0,'Part of Hulfnar Stonetotem EAI: faction update'),
(8,34000,26,0,0,0,10600,50,1,0,0,0,0,0,0,0,0,'Part of Hulfnar Stonetotem EAI: attack buddy B'),
(9,0,36,0,0,0,3063,60,1,0,0,0,0,0,0,0,0,'Part of Hulfnar Stonetotem EAI: Face target'),
(9,1000,1,2,0,0,0,0,4,0,0,0,0,0,0,0,0,'Part of Hulfnar Stonetotem EAI: emote'),
(9,4000,3,0,0,0,0,0,4,0,0,0,0,-2360.29,-519.246,-9.29993,0.261799,'Part of Hulfnar Stonetotem EAI: move'),
(9,13000,3,0,0,0,0,0,4,0,0,0,0,0,0,0,0.261799,'Part of Hulfnar Stonetotem EAI: move'),
(9,14000,28,1,0,0,0,0,4,0,0,0,0,0,0,0,0,'Part of Hulfnar Stonetotem EAI: SIT'),
(9,15000,21,0,0,0,0,0,4,0,0,0,0,0,0,0,0,'Part of Hulfnar Stonetotem EAI: unactive'),
(10,0,31,10600,30,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Hulfnar Stonetotem EAI: search for buddy B'),
(10,100,36,0,0,0,10600,35,1,0,0,0,0,0,0,0,0,'Part of Hulfnar Stonetotem EAI: Face buddy B'),
(10,1000,1,2,0,0,0,0,4,0,0,0,0,0,0,0,0,'Part of Hulfnar Stonetotem EAI: emote'),
(11,0,28,0,0,0,0,0,4,0,0,0,0,0,0,0,0,'Part of Thontek Rumblehoof EAI: Stand'),
(11,4000,3,0,0,0,0,0,0,0,0,0,0,-2338.61,-513.379,-9.42474,2.06132,'Part of Thontek Rumblehoof EAI: move'),
(11,8000,3,0,0,0,0,0,0,0,0,0,0,0,0,0,2.06132,'Part of Thontek Rumblehoof EAI: move'),
(11,9000,1,2,0,0,0,0,4,0,0,0,0,0,0,0,0,'Part of Thontek Rumblehoof EAI: emote'),
(11,13000,3,0,0,0,0,0,4,0,0,0,0,0,0,0,3.405,'Part of Thontek Rumblehoof EAI: face Buddy A'),
(11,21000,0,0,0,0,0,0,4,2000003841,0,0,0,0,0,0,0,'Part of Thontek Rumblehoof EAI: Say'),
(11,24000,1,25,0,0,0,0,4,0,0,0,0,0,0,0,0,'Part of Thontek Rumblehoof EAI: emote'),
(11,31000,1,15,0,0,0,0,4,0,0,0,0,0,0,0,0,'Part of Thontek Rumblehoof EAI: emote'),
(11,33000,22,1606,0x04|0x20,0,0,0,4,0,0,0,0,0,0,0,0,'Part of Thontek Rumblehoof EAI: faction update'),
(11,34000,26,0,0,0,10599,50,1,0,0,0,0,0,0,0,0,'Part of Thontek Rumblehoof EAI: attack buddy A'),
(12,0,36,0,0,0,3063,60,1,0,0,0,0,0,0,0,0,'Part of Thontek Rumblehoof EAI: Face target'),
(12,1000,1,2,0,0,0,0,4,0,0,0,0,0,0,0,0,'Part of Thontek Rumblehoof EAI: emote'),
(12,4000,3,0,0,0,0,0,4,0,0,0,0,-2333.96,-512.051,-9.29993,3.40339,'Part of Thontek Rumblehoof EAI: move'),
(12,13000,3,0,0,0,0,0,4,0,0,0,0,0,0,0,3.40339,'Part of Thontek Rumblehoof EAI: move'),
(12,14000,28,1,0,0,0,0,4,0,0,0,0,0,0,0,0,'Part of Thontek Rumblehoof EAI: SIT'),
(12,15000,21,0,0,0,0,0,4,0,0,0,0,0,0,0,0,'Part of Thontek Rumblehoof EAI: unactive'),
(13,0,31,10599,30,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Thontek Rumblehoof EAI: search for buddy A'),
(13,100,36,0,0,0,10599,35,1,0,0,0,0,0,0,0,0,'Part of Thontek Rumblehoof EAI: Face buddy A'),
(13,1000,1,2,0,0,0,0,4,0,0,0,0,0,0,0,0,'Part of Thontek Rumblehoof EAI: emote');
DELETE FROM dbscript_string WHERE entry BETWEEN 2000003838 AND 2000003850;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000003838,'Hulfnar!  Thontek!  Stand and address me.',0,0,3,1,NULL),
(2000003839,'I want you both to demonstrate the techniques I have taught you for the benefit of the younger students here.  Ready...  begin!',0,0,3,1,NULL),
(2000003840,'Start running!',0,0,3,25,NULL),
(2000003841,'Do not push me, or I will impale you on my horns!',0,0,3,5,NULL),
(2000003842,'Bring it on!',0,0,3,5,NULL),
(2000003843,'Enough talk you two!  Commence fighting!',0,0,3,5,NULL),
(2000003844,'Ish nu!  That\'s enough!',0,0,3,1,NULL),
(2000003845,'Now that\'s a War Stomp!  Good job!',0,0,3,21,NULL),
(2000003846,'That\'s how it\'s done class!  You better be paying attention!',0,0,3,21,NULL),
(2000003847,'Now that\'s putting your hoof down!',0,0,3,21,NULL),
(2000003848,'Good, good.  Now bow to each other.',0,0,3,21,NULL),
(2000003849,'Now bow to me.',0,0,3,2,NULL),
(2000003850,'Good job you two.  Now go have a seat.',0,0,3,1,NULL);

DELETE FROM dbscripts_on_quest_start WHERE id = 924;
INSERT INTO dbscripts_on_quest_start (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(924,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,6.28083,'move'),
(924,200,0,0,0,0,0,0,0,2000000036,0,0,0,0,0,0,0,''),
(924,6000,3,0,0,0,0,0,0,0,0,0,0,0,0,0,5.305801,'move');
UPDATE quest_template SET StartScript = 924 WHERE entry = 924;
DELETE FROM dbscript_string WHERE entry = 2000000036;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000000036,'Take a stone from the table, $n.  You will need it for your quest.',0,0,1,25,NULL);

UPDATE creature SET spawntimesecsmin = 15, spawntimesecsmax = 15 WHERE id = 299;

DELETE FROM creature_movement_template WHERE entry = 1433;
INSERT INTO creature_movement_template (entry, pathID, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(1433,0,1,-8768.19,715.132,99.5343,100,2500,143301),
(1433,0,2,-8776.53,714.943,99.5343,100,0,0),
(1433,0,3,-8764.02,718.846,99.5343,100,0,0),
(1433,0,4,-8756.49,726.23,98.1827,100,0,0),
(1433,0,5,-8737.77,700.301,98.7146,100,0,0),
(1433,0,6,-8776.04,669.29,103.093,100,0,0),
(1433,0,7,-8760.53,646.648,103.862,100,10,143302),
(1433,0,8,-8759.42,624.292,101.056,100,0,0),
(1433,0,9,-8770.38,609.041,97.2165,100,0,0),
(1433,0,10,-8797.7,588.021,97.3042,100,0,0),
(1433,0,11,-8818.46,616.102,94.9164,100,0,0),
(1433,0,12,-8818.67,626.67,93.9437,100,0,0),
(1433,0,13,-8791.16,634.711,94.5033,100,0,0),
(1433,0,14,-8779.68,637.628,97.2233,100,0,0),
(1433,0,15,-8781.26,638.974,97.2233,2.66,15000,143303),
(1433,0,16,-8781.68,637.128,97.2233,100,0,0),
(1433,0,17,-8825.46,624.483,93.8268,100,0,0),
(1433,0,18,-8849.64,602.755,92.1315,100,0,0),
(1433,0,19,-8864.55,585.043,92.84,100,0,0),
(1433,0,20,-8856.92,577.403,95.375,100,0,0),
(1433,0,21,-8849.48,570.495,94.68,100,25000,143304),
(1433,0,22,-8856.92,577.403,95.375,100,0,0),
(1433,0,23,-8864.55,585.043,92.84,100,0,0),
(1433,0,24,-8837.26,611.555,93.3786,100,0,0),
(1433,0,25,-8843.4,642.051,95.825,100,0,0),
(1433,0,26,-8850.36,660.501,97.1423,100,0,0),
(1433,0,27,-8825.86,677.315,97.6257,100,0,0),
(1433,0,28,-8843.57,720.188,97.4082,100,0,0),
(1433,0,29,-8801.84,745.453,97.5976,100,0,0),
(1433,0,30,-8773.15,740.631,99.4496,100,0,0),
(1433,0,31,-8757.46,725.815,98.2184,100,0,0),
(1433,0,32,-8769.03,714.77,99.5337,100,10,143305),
(1433,0,33,-8778.93,715.753,99.5337,100,0,0),
(1433,0,34,-8775.91,719.409,101.569,100,0,0),
(1433,0,35,-8770.39,724.865,105.913,100,0,0),
(1433,0,36,-8765.45,721.19,105.913,100,10,1);

DELETE FROM dbscripts_on_quest_end WHERE id = 114;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(114,2000,0,0,0,0,0,0,0,2000001205,0,0,0,0,0,0,0,'Maybell Maclure - First Say'),
(114,3000,42,0,0,0,0,0,0x04,3699,0,0,0,0,0,0,0,'Maybell Maclure - equip'),
(114,4000,1,92,0,0,0,0,0,0,0,0,0,0,0,0,0,'Maybell Maclure - Emote OneShotEatNoSheathe'),
(114,7950,42,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Maybell Maclure - reset equip'),
(114,8000,18,0,0,0,0,0,4,0,0,0,0,0,0,0,0,'Maybell Maclure - Despawn');

UPDATE creature_linking SET flag = 1+2+512 WHERE master_guid = 4373;

DELETE FROM `creature_template_addon` WHERE `entry`=38453;
INSERT INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_pvp_state`, `emote`, `moveflags`, `auras`) VALUES (38453,0,0,1,0,0,0,'61185');

UPDATE creature SET position_x = 3582.4, position_y = -2766.76, position_z = 161.475, MovementType = 1, spawndist = 20 WHERE guid = 18077;

DELETE FROM creature_movement WHERE id IN (85465,85466,88587,60774,88588,60776,88589,60775);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,waittime,script_id) VALUES
(85465,1,3672.48,-763.4879,191.4545,100,2000,0),
(85465,2,3673.191,-760.4655,192.2879,100,1000,2751301),
(85465,3,3673.49,-757.923,198.406,100,0,0),
(85465,4,3674.23,-756.283,206.571,100,0,0),
(85465,5,3673.765,-755.542,215.0878,100,2000,2751302),
(85465,6,3678.672,-753.1924,213.6011,100,2000,20),
(85466,1,3663.896,-761.7448,191.4388,100,2000,0),
(85466,2,3664.959,-758.4537,191.4409,100,1000,2751301),
(85466,3,3665.64,-755.951,198.419,100,0,0),
(85466,4,3666.03,-754.231,206.009,100,0,0),
(85466,5,3662.74,-752.6339,215.098,100,2000,2751302),
(85466,6,3663.159,-748.4298,213.6011,100,2000,20),
(88587,1,3680.118,-765.717,191.9705,100,2000,0),
(88587,2,3681.089,-762.5474,192.1629,100,1000,2751301),
(88587,3,3681.57,-759.928,198.413,100,0,0),
(88587,4,3681.79,-758.161,207.048,100,0,0),
(88587,5,3684.851,-757.9039,215.0973,100,2000,2751302),
(88587,6,3682.315,-753.7151,213.6011,100,2000,20),
(60774,1,3722.031,-783.5903,190.6925,100,2000,0),
(60774,2,3724.07,-779.406,191.418,100,1000,2751301),
(60774,3,3724.97,-777.689,198.409,100,0,0),
(60774,4,3725.38,-775.942,206.754,100,0,0),
(60774,5,3722.075,-773.4526,215.1078,100,2000,2751302),
(60774,6,3720.085,-768.491,213.61,100,2000,20),
(88588,1,3785.37,-841.987,188.307,100,2000,0),
(88588,2,3786.63,-839.897,188.532,100,1000,2751301),
(88588,3,3788.36,-838.74,197.237,100,0,0),
(88588,4,3789.78,-837.671,205.629,100,0,0),
(88588,5,3789.88,-836.3713,213.968,100,2000,2751302),
(88588,6,3790.928,-831.8257,212.4815,100,2000,20),
(60776,1,3626.902,-763.2815,185.2519,100,0,0),
(60776,2,3627.859,-756.8647,190.6269,100,0,0),
(60776,3,3628.135,-753.8326,191.2519,100,1000,2751301),
(60776,4,3629.71,-751.176,197.998,100,0,0),
(60776,5,3630.53,-749.468,206.305,100,0,0),
(60776,6,3627.42,-748.5042,214.6225,100,2000,2751302), 
(60776,7,3627.85,-744.8469,213.1324,100,2000,20),
(88589,1,3775.505,-831.1061,188.3889,100,2000,0),
(88589,2,3777.602,-830.1339,188.6053,100,1000,2751301),
(88589,3,3778.96,-828.143,197.22,100,0,0),
(88589,4,3780.63,-827.322,205.807,100,0,0),
(88589,5,3782.327,-828.0553,213.9651,100,2000,2751302), 
(88589,6,3785.964,-826.6042,212.4815,100,2000,20),
(60775,1,3703.59,-775.868,191.2394,100,2000,0),
(60775,2,3706.769,-771.2674,192.2468,100,1000,2751301),
(60775,3,3708.1,-769.468,198.404,100,0,0),
(60775,4,3709.11,-768.01,207.337,100,0,0),
(60775,5,3706.828,-766.1467,215.0982,100,2000,2751302),
(60775,6,3707.411,-761.9837,213.6099,100,2000,20);

UPDATE creature SET spawntimesecsmin = 30, spawntimesecsmax = 30, spawndist = 5, MovementType = 1 WHERE id = 26366;
UPDATE creature SET spawntimesecsmin = 300, spawntimesecsmax = 300, spawndist = 10, MovementType = 1 WHERE id = 26363;

REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(119647, 26369, 571, 1, 1, 0, 0, 3288.68, -3378.65, 305.763, 6.05629, 300, 300, 0, 0, 9610, 0, 0, 0),
(119648, 26369, 571, 1, 1, 0, 0, 3311.83, -3071.99, 179.299, 5.83988, 300, 300, 0, 0, 9610, 0, 0, 0),
(119649, 26369, 571, 1, 1, 0, 0, 3312.77, -3107.95, 215.065, 0.54, 300, 300, 0, 0, 9610, 0, 0, 2),
(119650, 26369, 571, 1, 1, 0, 0, 3317.57, -3107.36, 182.727, 2.60054, 300, 300, 0, 0, 9610, 0, 0, 0),
(119651, 26369, 571, 1, 1, 0, 0, 3318.99, -3310.03, 281.022, 5.93, 300, 300, 0, 0, 9610, 0, 0, 2),
(138337, 26369, 571, 1, 1, 0, 0, 3327.84, -3228.53, 232.22, 0.69, 300, 300, 0, 0, 9610, 0, 0, 2),
(138338, 26369, 571, 1, 1, 0, 0, 3327.84, -3228.53, 232.22, 2.9, 300, 300, 0, 0, 9610, 0, 0, 2),
(138339, 26369, 571, 1, 1, 0, 0, 3334.24, -3252.92, 250.667, 5.04, 300, 300, 0, 0, 9610, 0, 0, 2),
(138340, 26369, 571, 1, 1, 0, 0, 3348.85, -3069.62, 206.623, 4.59, 300, 300, 0, 0, 9610, 0, 0, 2),
(138341, 26369, 571, 1, 1, 0, 0, 3349.31, -3449.33, 286.685, 1.41372, 300, 300, 0, 0, 9610, 0, 0, 0),
(138342, 26369, 571, 1, 1, 0, 0, 3353.29, -3110.4, 200.775, 3.45575, 300, 300, 0, 0, 9610, 0, 0, 0),
(138343, 26369, 571, 1, 1, 0, 0, 3359.7, -3114.07, 202.033, 0.383972, 300, 300, 0, 0, 9610, 0, 0, 0),
(138344, 26369, 571, 1, 1, 0, 0, 3399.41, -3048.96, 203.399, 3.26377, 300, 300, 0, 0, 9610, 0, 0, 0),
(138345, 26369, 571, 1, 1, 0, 0, 3399.73, -3326.94, 248.178, 5.51524, 300, 300, 0, 0, 9610, 0, 0, 0),
(138346, 26369, 571, 1, 1, 0, 0, 3402.94, -3259.05, 230.534, 3.36848, 300, 300, 0, 0, 9610, 0, 0, 0),
(138347, 26369, 571, 1, 1, 0, 0, 3403.32, -2969.78, 199.915, 1.37881, 300, 300, 0, 0, 9610, 0, 0, 0),
(138348, 26369, 571, 1, 1, 0, 0, 3410.69, -3244.78, 221.609, 2.16421, 300, 300, 0, 0, 9610, 0, 0, 0),
(138349, 26369, 571, 1, 1, 0, 0, 3411.2, -2958.74, 201.819, 1.48353, 300, 300, 0, 0, 9610, 0, 0, 0),
(138350, 26369, 571, 1, 1, 0, 0, 3423.59, -3107.75, 213.754, 6.21337, 300, 300, 0, 0, 9610, 0, 0, 0),
(138351, 26369, 571, 1, 1, 0, 0, 3427.98, -2935.43, 215.71, 2.33, 300, 300, 0, 0, 9610, 0, 0, 2),
(138352, 26369, 571, 1, 1, 0, 0, 3429.12, -3259.74, 231.776, 0.593412, 300, 300, 0, 0, 9610, 0, 0, 0),
(138353, 26369, 571, 1, 1, 0, 0, 3465.01, -2973.05, 207.046, 6.26413, 300, 300, 0, 0, 9610, 0, 0, 0),
(138354, 26369, 571, 1, 1, 0, 0, 3476.5, -2918.63, 202.536, 2.07694, 300, 300, 0, 0, 9610, 0, 0, 0),
(138355, 26369, 571, 1, 1, 0, 0, 3496.1, -2974.4, 231.876, 4.4, 300, 300, 0, 0, 9610, 0, 0, 2),
(138356, 26369, 571, 1, 1, 0, 0, 3497.08, -3287.84, 230.284, 2.82743, 300, 300, 0, 0, 9610, 0, 0, 0),
(138357, 26369, 571, 1, 1, 0, 0, 3571.41, -3159.38, 273.333, 1.46, 300, 300, 0, 0, 9610, 0, 0, 2),
(138358, 26369, 571, 1, 1, 0, 0, 3637, -3385.53, 248.683, 3.71755, 300, 300, 0, 0, 9610, 0, 0, 0),
(138359, 26369, 571, 1, 1, 0, 0, 3654.24, -3074.07, 260.452, 1.79769, 300, 300, 0, 0, 9610, 0, 0, 0),
(138360, 26369, 571, 1, 1, 0, 0, 3655.37, -3144.83, 292.036, 1.64, 300, 300, 0, 0, 9610, 0, 0, 2),
(138361, 26369, 571, 1, 1, 0, 0, 3663.25, -3379.44, 252.523, 4.83456, 300, 300, 0, 0, 9610, 0, 0, 0),
(138362, 26369, 571, 1, 1, 0, 0, 3663.63, -3118.29, 281.32, 1.25664, 300, 300, 0, 0, 9610, 0, 0, 0),
(138363, 26369, 571, 1, 1, 0, 0, 3664.86, -3421.6, 247.564, 3.87463, 300, 300, 0, 0, 9610, 0, 0, 0),
(138364, 26369, 571, 1, 1, 0, 0, 3674.59, -3347.61, 272.092, 2.58, 300, 300, 0, 0, 9610, 0, 0, 2),
(138365, 26369, 571, 1, 1, 0, 0, 3675.55, -3423.17, 251.596, 2.77507, 300, 300, 0, 0, 9610, 0, 0, 0),
(138366, 26369, 571, 1, 1, 0, 0, 3681.99, -2914.49, 245.482, 1.41372, 300, 300, 0, 0, 9610, 0, 0, 0),
(138367, 26369, 571, 1, 1, 0, 0, 3682.8, -2978.21, 252.732, 6.12611, 300, 300, 0, 0, 9610, 0, 0, 0),
(138368, 26369, 571, 1, 1, 0, 0, 3684, -3092.43, 271.195, 4.77271, 300, 300, 0, 0, 9610, 0, 0, 0),
(138369, 26369, 571, 1, 1, 0, 0, 3685.87, -3074.7, 281.569, 2.37, 300, 300, 0, 0, 9610, 0, 0, 2),
(138370, 26369, 571, 1, 1, 0, 0, 3693.7, -3401.12, 261.7, 3.49, 300, 300, 0, 0, 9610, 0, 0, 2),
(138371, 26369, 571, 1, 1, 0, 0, 3700.38, -3140.09, 296.259, 2.25148, 300, 300, 0, 0, 9610, 0, 0, 0),
(138372, 26369, 571, 1, 1, 0, 0, 3700.42, -3415.61, 261.213, 0.41, 300, 300, 0, 0, 9610, 0, 0, 2),
(138373, 26369, 571, 1, 1, 0, 0, 3701.73, -3450.2, 265.737, 2.82, 300, 300, 0, 0, 9610, 0, 0, 2),
(138374, 26369, 571, 1, 1, 0, 0, 3722.67, -2929.35, 236.626, 1.51262, 300, 300, 0, 0, 9610, 0, 0, 0),
(138375, 26369, 571, 1, 1, 0, 0, 3752.16, -3485.74, 269.291, 4.02, 300, 300, 0, 0, 9610, 0, 0, 2),
(138376, 26369, 571, 1, 1, 0, 0, 3780.03, -2745.65, 204.392, 2.14675, 300, 300, 0, 0, 9610, 0, 0, 0),
(138377, 26369, 571, 1, 1, 0, 0, 3785.36, -3839.29, 196.103, 5.43, 300, 300, 0, 0, 9610, 0, 0, 2),
(138378, 26369, 571, 1, 1, 0, 0, 3785.61, -2893.96, 281.421, 1.93, 300, 300, 0, 0, 9610, 0, 0, 2),
(138379, 26369, 571, 1, 1, 0, 0, 3787.07, -3812.23, 210.183, 2.10462, 300, 300, 0, 0, 9610, 0, 0, 2),
(138380, 26369, 571, 1, 1, 0, 0, 3792.64, -3478.79, 266.273, 4.01426, 300, 300, 0, 0, 9610, 0, 0, 0),
(138381, 26369, 571, 1, 1, 0, 0, 3792.93, -3379.17, 286.273, 1.72, 300, 300, 0, 0, 9610, 0, 0, 2),
(138382, 26369, 571, 1, 1, 0, 0, 3795.95, -3422.69, 275.935, 4.64258, 300, 300, 0, 0, 9610, 0, 0, 0),
(138383, 26369, 571, 1, 1, 0, 0, 3810.35, -3351.59, 286.885, 5.98648, 300, 300, 0, 0, 9610, 0, 0, 0),
(138384, 26369, 571, 1, 1, 0, 0, 3827.74, -2842.05, 260.298, 4.85583, 300, 300, 0, 0, 9610, 0, 0, 0),
(138385, 26369, 571, 1, 1, 0, 0, 3831.53, -2772.57, 230.675, 3.78, 300, 300, 0, 0, 9610, 0, 0, 2),
(138386, 26369, 571, 1, 1, 0, 0, 3834.69, -3739.97, 193.272, 6.08, 300, 300, 0, 0, 9610, 0, 0, 2),
(138387, 26369, 571, 1, 1, 0, 0, 3841.7, -3984.81, 195.898, 0.523599, 300, 300, 0, 0, 9610, 0, 0, 0),
(138388, 26369, 571, 1, 1, 0, 0, 3849.24, -2818.8, 245.243, 1.8675, 300, 300, 0, 0, 9610, 0, 0, 0),
(138389, 26369, 571, 1, 1, 0, 0, 3851.92, -3734.14, 193.801, 2.96, 300, 300, 0, 0, 9610, 0, 0, 2),
(138390, 26369, 571, 1, 1, 0, 0, 3854.28, -2788.58, 250.765, 1.92, 300, 300, 0, 0, 9610, 0, 0, 2),
(138391, 26369, 571, 1, 1, 0, 0, 3859.95, -3648.44, 251.083, 4.852, 300, 300, 0, 0, 9610, 0, 0, 0),
(138392, 26369, 571, 1, 1, 0, 0, 3866.03, -2773.96, 229.958, 3.49066, 300, 300, 0, 0, 9610, 0, 0, 0),
(138393, 26369, 571, 1, 1, 0, 0, 3869.72, -4041.85, 196.278, 2.00713, 300, 300, 0, 0, 9610, 0, 0, 0),
(138394, 26369, 571, 1, 1, 0, 0, 3874.93, -3428.76, 297.796, 3.21141, 300, 300, 0, 0, 9610, 0, 0, 0),
(138395, 26369, 571, 1, 1, 0, 0, 3877.49, -3461.68, 317.874, 2.87979, 300, 300, 0, 0, 9610, 0, 0, 0),
(138396, 26369, 571, 1, 1, 0, 0, 3889.43, -3391.85, 348.02, 3.49, 300, 300, 0, 0, 9610, 0, 0, 2),
(138397, 26369, 571, 1, 1, 0, 0, 3926.75, -4007.77, 205.866, 3.89, 300, 300, 0, 0, 9610, 0, 0, 2),
(138398, 26369, 571, 1, 1, 0, 0, 3928.72, -3655.99, 260.493, 3.03, 300, 300, 0, 0, 9610, 0, 0, 2),
(138399, 26369, 571, 1, 1, 0, 0, 3983.62, -4015.57, 207.083, 2.5, 300, 300, 0, 0, 9610, 0, 0, 2),
(138400, 26369, 571, 1, 1, 0, 0, 4009.55, -3373.58, 313.116, 2.43213, 300, 300, 0, 0, 9610, 0, 0, 2),
(138401, 26369, 571, 1, 1, 0, 0, 4013.71, -4080.55, 183.963, 1.88496, 300, 300, 0, 0, 9610, 0, 0, 0),
(138402, 26369, 571, 1, 1, 0, 0, 4047.37, -4046.71, 179.752, 0.698132, 300, 300, 0, 0, 9610, 0, 0, 0),
(138403, 26369, 571, 1, 1, 0, 0, 4049.77, -3424.31, 296.052, 4.22649, 300, 300, 0, 0, 9610, 0, 0, 0),
(138404, 26369, 571, 1, 1, 0, 0, 4050.9, -4039.24, 199.096, 3.65, 300, 300, 0, 0, 9610, 0, 0, 2),
(138405, 26369, 571, 1, 1, 0, 0, 4056.46, -3428.41, 288.593, 5.21853, 300, 300, 0, 0, 9610, 0, 0, 0),
(138406, 26369, 571, 1, 1, 0, 0, 4070.71, -3399.02, 297.132, 3.31613, 300, 300, 0, 0, 9610, 0, 0, 0),
(138407, 26369, 571, 1, 1, 0, 0, 4077.76, -3390.71, 302.728, 0.714418, 300, 300, 0, 0, 9610, 0, 0, 0),
(138408, 26369, 571, 1, 1, 0, 0, 4115.82, -3434.96, 288.09, 4.11898, 300, 300, 0, 0, 9610, 0, 0, 0),
(138409, 26369, 571, 1, 1, 0, 0, 4118.05, -3384.8, 296.021, 4.92183, 300, 300, 0, 0, 9610, 0, 0, 0),
(138410, 26369, 571, 1, 1, 0, 0, 4120.02, -4069.37, 177.147, 2.1293, 300, 300, 0, 0, 9610, 0, 0, 0),
(138411, 26369, 571, 1, 1, 0, 0, 4156.63, -3411.85, 309.339, 3.1, 300, 300, 0, 0, 9610, 0, 0, 2),
(138412, 26369, 571, 1, 1, 0, 0, 4176.83, -3988.12, 195.123, 4.05, 300, 300, 0, 0, 9610, 0, 0, 2),
(138413, 26369, 571, 1, 1, 0, 0, 4189.74, -3370.78, 308.3, 1.11701, 300, 300, 0, 0, 9610, 0, 0, 0),
(138414, 26369, 571, 1, 1, 0, 0, 4199.78, -3956.44, 195.919, 3.8, 300, 300, 0, 0, 9610, 0, 0, 2),
(138415, 26369, 571, 1, 1, 0, 0, 4210.94, -3369.76, 322.786, 1.31, 300, 300, 0, 0, 9610, 0, 0, 2),
(138416, 26369, 571, 1, 1, 0, 0, 4247.22, -3484.06, 292.999, 3.14159, 300, 300, 0, 0, 9610, 0, 0, 0),
(24036, 26369, 571, 1, 1, 0, 0, 4249.94, -3352.31, 312.401, 4.67152, 300, 300, 0, 0, 9610, 0, 0, 0),
(24044, 26369, 571, 1, 1, 0, 0, 4254.76, -3489.13, 285.333, 3.38863, 300, 300, 0, 0, 9610, 0, 0, 0),
(24082, 26369, 571, 1, 1, 0, 0, 4259.11, -3478.69, 290.326, 5.16617, 300, 300, 0, 0, 9610, 0, 0, 0),
(24164, 26369, 571, 1, 1, 0, 0, 4263.92, -3424.62, 305.376, 4.83456, 300, 300, 0, 0, 9610, 0, 0, 0),
(24279, 26369, 571, 1, 1, 0, 0, 4277.64, -3351.78, 316.87, 0.907571, 300, 300, 0, 0, 9610, 0, 0, 0),
(24338, 26369, 571, 1, 1, 0, 0, 4412.31, -3298.82, 329.142, 3.8, 300, 300, 0, 0, 9610, 0, 0, 2),
(24346, 26369, 571, 1, 1, 0, 0, 4463.63, -3385.2, 239.527, 3.2, 300, 300, 0, 0, 9610, 0, 0, 2);
INSERT INTO `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_pvp_state`, `emote`, `moveflags`, `auras`) VALUES
(138387, 0, 1, 1, 0, 0, 0, NULL), (138402, 0, 1, 1, 0, 0, 0, NULL), (138413, 0, 1, 1, 0, 0, 0, NULL), (119651, 0, 0, 1, 0, 0, 0, NULL), (119647, 0, 1, 1, 0, 0, 0, NULL),
(138395, 0, 1, 1, 0, 0, 0, NULL), (138364, 0, 0, 1, 0, 0, 0, NULL), (138381, 0, 0, 1, 0, 0, 0, NULL), (138393, 0, 1, 1, 0, 0, 0, NULL), (24279, 0, 1, 1, 0, 0, 0, NULL),
(138415, 0, 0, 1, 0, 0, 0, NULL), (138397, 0, 0, 1, 0, 0, 0, NULL), (138383, 0, 1, 1, 0, 0, 0, NULL), (138401, 0, 1, 1, 0, 0, 0, NULL), (24346, 0, 0, 1, 0, 0, 0, NULL),
(138341, 0, 1, 1, 0, 0, 0, NULL), (138412, 0, 0, 1, 0, 0, 0, NULL), (138338, 0, 0, 1, 0, 0, 0, NULL), (24338, 0, 0, 1, 0, 0, 0, NULL), (24036, 0, 1, 1, 0, 0, 0, NULL),
(24164, 0, 1, 1, 0, 0, 0, NULL), (138414, 0, 0, 1, 0, 0, 0, NULL), (138380, 0, 1, 1, 0, 0, 0, NULL), (138399, 0, 0, 1, 0, 0, 0, NULL), (138372, 0, 0, 1, 0, 0, 0, NULL),
(138358, 0, 1, 1, 0, 0, 0, NULL), (138365, 0, 1, 1, 0, 0, 0, NULL), (138363, 0, 1, 1, 0, 0, 0, NULL), (138373, 0, 0, 1, 0, 0, 0, NULL), (138361, 0, 1, 1, 0, 0, 0, NULL),
(138370, 0, 0, 1, 0, 0, 0, NULL), (138394, 0, 1, 1, 0, 0, 0, NULL), (138345, 0, 1, 1, 0, 0, 0, NULL), (138339, 0, 0, 1, 0, 0, 0, NULL), (138352, 0, 1, 1, 0, 0, 0, NULL),
(138371, 0, 1, 1, 0, 0, 0, NULL), (138400, 0, 0, 1, 0, 0, 0, NULL), (138407, 0, 1, 1, 0, 0, 0, NULL), (138406, 0, 1, 1, 0, 0, 0, NULL), (138409, 0, 1, 1, 0, 0, 0, NULL),
(138396, 0, 0, 1, 0, 0, 0, NULL), (138346, 0, 1, 1, 0, 0, 0, NULL), (138337, 0, 0, 1, 0, 0, 0, NULL), (138411, 0, 0, 1, 0, 0, 0, NULL), (138416, 0, 1, 1, 0, 0, 0, NULL),
(24082, 0, 1, 1, 0, 0, 0, NULL), (24044, 0, 1, 1, 0, 0, 0, NULL), (138408, 0, 1, 1, 0, 0, 0, NULL), (138405, 0, 1, 1, 0, 0, 0, NULL), (138382, 0, 1, 1, 0, 0, 0, NULL),
(138375, 0, 0, 1, 0, 0, 0, NULL), (138410, 0, 1, 1, 0, 0, 0, NULL), (138348, 0, 1, 1, 0, 0, 0, NULL), (138356, 0, 1, 1, 0, 0, 0, NULL), (138390, 0, 0, 1, 0, 0, 0, NULL),
(138367, 0, 1, 1, 0, 0, 0, NULL), (138357, 0, 0, 1, 0, 0, 0, NULL), (138362, 0, 1, 1, 0, 0, 0, NULL), (138368, 0, 1, 1, 0, 0, 0, NULL), (138360, 0, 0, 1, 0, 0, 0, NULL),
(138359, 0, 1, 1, 0, 0, 0, NULL), (138374, 0, 1, 1, 0, 0, 0, NULL), (138366, 0, 1, 1, 0, 0, 0, NULL), (138384, 0, 1, 1, 0, 0, 0, NULL), (138392, 0, 1, 1, 0, 0, 0, NULL),
(138378, 0, 0, 1, 0, 0, 0, NULL), (138385, 0, 1, 1, 0, 0, 0, NULL), (138376, 0, 1, 1, 0, 0, 0, NULL), (138354, 0, 1, 1, 0, 0, 0, NULL), (138351, 0, 1, 1, 0, 0, 0, NULL),
(119649, 0, 0, 1, 0, 0, 0, NULL), (138350, 0, 1, 1, 0, 0, 0, NULL), (119650, 0, 1, 1, 0, 0, 0, NULL), (138343, 0, 1, 1, 0, 0, 0, NULL), (138342, 0, 1, 1, 0, 0, 0, NULL),
(138340, 0, 0, 1, 0, 0, 0, NULL), (138344, 0, 1, 1, 0, 0, 0, NULL), (138347, 0, 1, 1, 0, 0, 0, NULL), (138349, 0, 1, 1, 0, 0, 0, NULL), (119648, 0, 1, 1, 0, 0, 0, NULL),
(138388, 0, 1, 1, 0, 0, 0, NULL), (138403, 0, 1, 1, 0, 0, 0, NULL), (138391, 0, 1, 1, 0, 0, 0, NULL), (138353, 0, 1, 1, 0, 0, 0, NULL);
DELETE FROM creature_movement WHERE id IN (138375,138390,138357,138339,138372,138399,138378,138385,138351,119649,138414,138340,138415,138397,138381,
138364,138411,138337,138396,24346,138370,24338,138400,119651,138412,138360,138373,138338,138355,138369,138379,138386,138389,138398,138377,138404);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,waittime,script_id) VALUES
(138375,1,3752.162,-3485.74,269.291,100,0,0),
(138375,2,3809.911,-3496.76,275.0061,100,0,0),
(138375,3,3846.165,-3474.037,302.9078,100,0,0),
(138375,4,3844.263,-3452.265,302.1799,100,0,0),
(138375,5,3792.122,-3452.178,281.7076,100,0,0),
(138390,1,3854.279,-2788.577,250.7652,100,0,0),
(138390,2,3849.514,-2765.407,250.7652,100,0,0),
(138390,3,3906.2,-2754.234,258.9918,100,0,0),
(138390,4,3917.527,-2775.818,267.1863,100,0,0),
(138390,5,3913.504,-2807.658,276.549,100,0,0),
(138357,1,3571.411,-3159.382,273.333,100,0,0),
(138357,2,3573.879,-3115.021,271.3885,100,0,0),
(138357,3,3640.425,-3105.268,291.7219,100,0,0),
(138357,4,3664.164,-3122.986,291.7219,100,0,0),
(138357,5,3619.522,-3147.627,291.7219,100,0,0),
(138339,1,3334.238,-3252.924,250.6674,100,0,0),
(138339,2,3339.637,-3275.57,250.6674,100,0,0),
(138339,3,3367.038,-3300.153,250.6674,100,0,0),
(138339,4,3387.306,-3306.503,250.6674,100,0,0),
(138339,5,3426.94,-3316.734,250.6674,100,0,0),
(138339,6,3453.907,-3324.285,250.6674,100,0,0),
(138339,7,3469.391,-3316.168,250.6674,100,0,0),
(138339,8,3477.575,-3297.475,250.6674,100,0,0),
(138339,9,3459.851,-3256.389,250.6674,100,0,0),
(138339,10,3438.047,-3235.035,250.6674,100,0,0),
(138339,11,3414.115,-3226.106,250.6674,100,0,0),
(138339,12,3368.877,-3228.388,250.6674,100,0,0),
(138339,13,3339.566,-3208.322,250.6674,100,0,0),
(138339,14,3320.866,-3173.62,250.6674,100,0,0),
(138339,15,3331.112,-3143.688,250.6674,100,0,0),
(138339,16,3336.831,-3137.303,250.6674,100,0,0),
(138339,17,3381.943,-3121.444,250.6674,100,0,0),
(138339,18,3396.084,-3115.255,250.6674,100,0,0),
(138339,19,3429.277,-3115.438,235.9452,100,0,0),
(138339,20,3453.812,-3156.812,250.6674,100,0,0),
(138339,21,3438.048,-3177.54,250.6674,100,0,0),
(138339,22,3404.048,-3185.616,250.6674,100,0,0),
(138339,23,3367.452,-3203.861,250.6674,100,0,0),
(138339,24,3340.74,-3230.323,250.6674,100,0,0),
(138372,1,3700.422,-3415.612,261.2131,100,0,0),
(138372,2,3728.742,-3402.956,268.3797,100,0,0),
(138372,3,3769.141,-3378.693,273.1019,100,0,0),
(138372,4,3737.607,-3363.771,273.7686,100,0,0),
(138372,5,3660.388,-3373.571,261.2131,100,0,0),
(138399,1,3983.619,-4015.573,207.0835,100,0,0),
(138399,2,3938.094,-3982.912,202.4169,100,0,0),
(138399,3,3934.513,-3912.329,199.6669,100,0,0),
(138399,4,4035.915,-3914.96,214.0835,100,0,0),
(138399,5,4040.348,-3990.716,207.0835,100,0,0),
(138378,1,3785.613,-2893.964,281.4205,100,0,0),
(138378,2,3765.583,-2835.144,281.4205,100,0,0),
(138378,3,3810.852,-2830.776,281.4205,100,0,0),
(138378,4,3850.154,-2854.366,281.4205,100,0,0),
(138378,5,3866.556,-2932.883,281.4205,100,0,0),
(138385,1,3831.535,-2772.567,230.6752,100,0,0),
(138385,2,3812.563,-2727.647,230.6752,100,0,0),
(138385,3,3797.911,-2692.709,216.7585,100,0,0),
(138385,4,3760.798,-2724.485,230.6752,100,0,0),
(138385,5,3795.066,-2770.079,230.6752,100,0,0),
(138351,1,3427.982,-2935.425,215.7097,100,0,0),
(138351,2,3392.399,-2894.222,215.7097,100,0,0),
(138351,3,3465.063,-2886.081,215.7097,100,0,0),
(138351,4,3473.95,-2937.604,215.7097,100,0,0),
(119649,1,3312.771,-3107.947,215.0654,100,0,0),
(119649,2,3385.052,-3059.228,215.0654,100,0,0),
(119649,3,3350.503,-3024.319,215.0654,100,0,0),
(119649,4,3291.562,-3069.354,215.0654,100,0,0),
(138414,1,4199.78,-3956.435,195.9189,100,0,0),
(138414,2,4141.124,-4004.271,195.9189,100,0,0),
(138414,3,4114.238,-3966.183,195.9189,100,0,0),
(138414,4,4149.523,-3878.402,195.9189,100,0,0),
(138340,1,3348.847,-3069.619,206.6226,100,0,0),
(138340,2,3349.817,-3136.695,211.8448,100,0,0),
(138340,3,3313.206,-3207.26,215.2337,100,0,0),
(138340,4,3263.849,-3150.047,199.3171,100,0,0),
(138415,1,4210.935,-3369.765,322.7862,100,0,0),
(138415,2,4219.959,-3334.138,322.7862,100,0,0),
(138415,3,4211.519,-3315.257,322.7862,100,0,0),
(138415,4,4160.774,-3354.688,322.7862,100,0,0),
(138415,5,4179.164,-3379.378,322.7862,100,0,0),
(138397,1,3926.747,-4007.767,205.8657,100,0,0),
(138397,2,3902.666,-4026.936,205.8657,100,0,0),
(138397,3,3847.505,-4005.278,205.8657,100,0,0),
(138397,4,3886.656,-3928.684,201.8657,100,0,0),
(138397,5,3970.192,-3918.479,210.0602,100,0,0),
(138381,1,3792.927,-3379.167,286.2733,100,0,0),
(138381,2,3788.364,-3345.359,285.1241,100,0,0),
(138381,3,3849.307,-3375.759,318.2731,100,0,0),
(138381,4,3831.083,-3424.418,311.69,100,0,0),
(138364,1,3674.592,-3347.611,272.0922,100,0,0),
(138364,2,3648.914,-3331.296,276.3699,100,0,0),
(138364,3,3621.45,-3373.485,260.0922,100,0,0),
(138364,4,3630.266,-3404.309,255.4256,100,0,0),
(138411,1,4156.634,-3411.855,309.3394,100,0,0),
(138411,2,4111.804,-3419.398,298.0053,100,0,0),
(138411,3,4085.711,-3451.946,292.9219,100,0,0),
(138411,4,4087.383,-3479.331,298.0053,100,0,0),
(138411,5,4124.369,-3465.521,298.0053,100,0,0),
(138337,1,3327.845,-3228.529,232.2204,100,0,0),
(138337,2,3337.645,-3221.313,221.862,100,0,0),
(138337,3,3354.321,-3206.485,221.862,100,0,0),
(138337,4,3378.804,-3193.718,221.862,100,0,0),
(138337,5,3404.871,-3185.386,221.862,100,0,0),
(138337,6,3427.188,-3183.345,221.862,100,0,0),
(138337,7,3446.074,-3192.583,232.2204,100,0,0),
(138337,8,3457.12,-3205.822,232.2204,100,0,0),
(138337,9,3455.67,-3221.284,232.2204,100,0,0),
(138337,10,3429.978,-3231.146,232.2204,100,0,0),
(138337,11,3415.608,-3233.761,232.2204,100,0,0),
(138337,12,3407.723,-3232.988,232.2204,100,0,0),
(138337,13,3389.054,-3232.599,232.2204,100,0,0),
(138337,14,3361.865,-3230.692,232.2204,100,0,0),
(138337,15,3345.987,-3225.64,232.2204,100,0,0),
(138337,16,3338.96,-3223.785,232.2204,100,0,0),
(138337,17,3328.51,-3217.221,232.2204,100,0,0),
(138337,18,3312.341,-3206.948,232.2204,100,0,0),
(138337,19,3284.612,-3216.367,232.2204,100,0,0),
(138337,20,3271.873,-3224.085,232.2204,100,0,0),
(138337,21,3276.189,-3242.292,232.2204,100,0,0),
(138337,22,3287.028,-3251.441,232.2204,100,0,0),
(138337,23,3306.832,-3250.315,232.2204,100,0,0),
(138337,24,3316.231,-3241.964,232.2204,100,0,0),
(138396,1,3889.434,-3391.852,348.0196,100,0,0),
(138396,2,3821.368,-3411.337,306.459,100,0,0),
(138396,3,3823.171,-3455.148,300.0424,100,0,0),
(138396,4,3929.919,-3433.126,300.0424,100,0,0),
(138396,5,4014.31,-3403.39,299.8202,100,0,0),
(138396,6,3973.32,-3347.355,307.07,100,0,0),
(24346,1,4463.627,-3385.196,239.5271,100,0,0),
(24346,2,4437.534,-3387.494,239.5271,100,0,0),
(24346,3,4422.833,-3334,308.0029,100,0,0),
(24346,4,4397.114,-3308.517,342.2422,100,0,0),
(24346,5,4432.025,-3317.399,326.277,100,0,0),
(24346,6,4447.913,-3349.725,286.8048,100,0,0),
(138370,1,3693.703,-3401.12,261.7003,100,0,0),
(138370,2,3646.434,-3414.502,258.6448,100,0,0),
(138370,3,3658.208,-3449.728,258.6448,100,0,0),
(138370,4,3701.233,-3441.576,258.6448,100,0,0),
(24338,1,4412.312,-3298.823,329.1422,100,0,0),
(24338,2,4386.781,-3318.789,329.1422,100,0,0),
(24338,3,4385.004,-3332.877,329.1422,100,0,0),
(24338,4,4420.667,-3344.999,333.1422,100,0,0),
(24338,5,4456.634,-3309.544,334.8644,100,0,0),
(138400,1,4009.55,-3373.58,313.116,100,0,0),
(138400,2,3995.45,-3327.33,320.615,100,0,0),
(138400,3,4036.79,-3310.01,315.496,100,0,0),
(138400,4,4085.28,-3340.71,317.742,100,0,0),
(138400,5,4103.1,-3374.78,314.575,100,0,0),
(138400,6,4067.62,-3407.11,315.168,100,0,0),
(119651,1,3318.993,-3310.035,281.0219,100,0,0),
(119651,2,3337.733,-3319.064,281.0219,100,0,0),
(119651,3,3359.45,-3340.649,281.0219,100,0,0),
(119651,4,3375.215,-3365.902,281.0219,100,0,0),
(119651,5,3395.243,-3392.01,281.0219,100,0,0),
(119651,6,3420.77,-3396.205,281.0219,100,0,0),
(119651,7,3433.453,-3393.079,281.0219,100,0,0),
(119651,8,3464.58,-3383.527,281.0219,100,0,0),
(119651,9,3494.739,-3407.185,281.0219,100,0,0),
(119651,10,3524.412,-3410.942,281.0219,100,0,0),
(119651,11,3538.339,-3394.052,281.0219,100,0,0),
(119651,12,3540.386,-3371.865,281.0219,100,0,0),
(119651,13,3522.275,-3355.73,281.0219,100,0,0),
(119651,14,3494.788,-3373.642,281.0219,100,0,0),
(119651,15,3473.49,-3388.32,281.0219,100,0,0),
(119651,16,3444.113,-3392.165,281.0219,100,0,0),
(119651,17,3416.624,-3385.449,281.0219,100,0,0),
(119651,18,3377.407,-3384.502,281.0219,100,0,0),
(119651,19,3351.954,-3374.65,281.0219,100,0,0),
(119651,20,3321.956,-3349.834,281.0219,100,0,0),
(119651,21,3292.945,-3322.276,281.0219,100,0,0),
(119651,22,3297.38,-3307.999,281.0219,100,0,0),
(119651,23,3302.155,-3305.588,281.0219,100,0,0),
(138412,1,4176.829,-3988.125,195.123,100,0,0),
(138412,2,4111.133,-4081.675,192.6508,100,0,0),
(138412,3,4079.486,-3997.377,192.6508,100,0,0),
(138412,4,4140.612,-3923.652,192.6508,100,0,0),
(138360,1,3655.369,-3144.833,292.0362,100,0,0),
(138360,2,3654.546,-3133.493,292.0362,100,0,0),
(138360,3,3690.373,-3126.089,286.703,100,0,0),
(138360,4,3738.612,-3173.817,287.3418,100,0,0),
(138360,5,3710.337,-3190.743,292.0362,100,0,0),
(138360,6,3681.573,-3194.704,292.0362,100,0,0),
(138360,7,3660.308,-3163.592,292.0362,100,0,0),
(138373,1,3701.728,-3450.197,265.7373,100,0,0),
(138373,2,3670.035,-3441.919,265.7373,100,0,0),
(138373,3,3650.14,-3408.165,265.7373,100,0,0),
(138373,4,3686.041,-3365.334,281.3206,100,0,0),
(138373,5,3737.743,-3394.755,273.8761,100,0,0),
(138338,1,3296.24,-3190.179,261.6602,100,0,0),
(138338,2,3280.402,-3187.312,261.6602,100,0,0),
(138338,3,3257.11,-3185.197,261.6602,100,0,0),
(138338,4,3244.573,-3195.855,261.6602,100,0,0),
(138338,5,3246.187,-3221.572,261.6602,100,0,0),
(138338,6,3266.007,-3243.169,261.6602,100,0,0),
(138338,7,3285.001,-3247.039,261.6602,100,0,0),
(138338,8,3312.027,-3237.618,261.6602,100,0,0),
(138338,9,3336.902,-3205.107,261.6602,100,0,0),
(138338,10,3374.171,-3192.79,261.6602,100,0,0),
(138338,11,3408.324,-3210.214,261.6602,100,0,0),
(138338,12,3432.771,-3248.006,261.6602,100,0,0),
(138338,13,3444.861,-3281.415,261.6602,100,0,0),
(138338,14,3413.379,-3306.67,261.6602,100,0,0),
(138338,15,3393.453,-3305.296,261.6602,100,0,0),
(138338,16,3371.892,-3294.499,261.6602,100,0,0),
(138338,17,3358.72,-3255.463,261.6602,100,0,0),
(138338,18,3371.507,-3210.602,261.6602,100,0,0),
(138338,19,3337.263,-3189.063,261.6602,100,0,0),
(138338,20,3325.755,-3186.956,261.6602,100,0,0),
(138355,1,3496.097,-2974.396,231.8758,100,0,0),
(138355,2,3482.208,-3014.814,236.2369,100,0,0),
(138355,3,3456.567,-2950.532,223.848,100,0,0),
(138355,4,3453.997,-2902.398,228.7924,100,0,0),
(138355,5,3491.402,-2899.798,225.1258,100,0,0),
(138369,1,3685.87,-3074.696,281.5692,100,0,0),
(138369,2,3663.085,-3050.605,273.9025,100,0,0),
(138369,3,3628.36,-3026.741,261.9025,100,0,0),
(138369,4,3609.474,-3051.221,266.0135,100,0,0),
(138369,5,3632.644,-3091.473,281.5692,100,0,0),
(138379,1,3787.075,-3812.233,210.1832,100,0,0),
(138379,2,3755.699,-3768.15,210.1832,100,0,0),
(138379,3,3814.738,-3734.54,204.4332,100,0,0),
(138379,4,3879.685,-3747.291,197.961,100,0,0),
(138379,5,3842.878,-3789.504,199.9054,100,0,0),
(138386,1,3834.686,-3739.971,193.2722,100,0,0),
(138386,2,3885.187,-3751.91,190.9389,100,0,0),
(138386,3,3875.22,-3795.594,194.1333,100,0,0),
(138386,4,3884.108,-3831.608,195.05,100,0,0),
(138386,5,3863.118,-3857.525,197.2722,100,0,0),
(138386,6,3830.157,-3838.979,197.8278,100,0,0),
(138389,1,3851.922,-3734.135,193.8011,100,0,0),
(138389,2,3805.745,-3728.873,193.8011,100,0,0),
(138389,3,3796.528,-3752.967,193.8011,100,0,0),
(138389,4,3795.674,-3792.933,193.8011,100,0,0),
(138389,5,3839.055,-3802.438,193.8011,100,0,0),
(138398,1,3928.715,-3655.985,260.4933,100,0,0),
(138398,2,3882.95,-3648.544,260.4933,100,0,0),
(138398,3,3872.207,-3674.038,260.4933,100,0,0),
(138398,4,3905.553,-3699.825,260.4933,100,0,0),
(138377,1,3785.363,-3839.288,196.1032,100,0,0),
(138377,2,3819.051,-3868.451,196.1032,100,0,0),
(138377,3,3829.34,-3926.003,196.1032,100,0,0),
(138377,4,3799.479,-3949.519,196.1032,100,0,0),
(138377,5,3763.624,-3928.004,196.1032,100,0,0),
(138377,6,3751.209,-3869.698,196.1032,100,0,0),
(138404,1,4050.903,-4039.242,199.096,100,0,0),
(138404,2,4003.29,-4062.07,199.096,100,0,0),
(138404,3,3950.933,-4021.744,199.096,100,0,0),
(138404,4,3980.619,-3960.743,199.096,100,0,0),
(138404,5,4038.387,-3996.608,199.096,100,0,0);
DELETE FROM creature_spawn_data WHERE guid IN (138375,138390,138357,138339,138372,138399,138378,138385,138351,119649,138414,138340,138415,138397,138381,138364,138411,
138337,138396,24346,138370,24338,138400,119651,138412,138360,138373,138338,138355,138369,138379,138386,138389,138398,138377,138404);
INSERT INTO creature_spawn_data (guid, Id) VALUES
(138375,1),(138390,1),(138357,1),(138339,1),(138372,1),(138399,1),(138378,1),(138385,1),(138351,1),(119649,1),(138414,1),(138340,1),
(138415,1),(138397,1),(138381,1),(138364,1),(138411,1),(138337,1),(138396,1),(24346,1),(138370,1),(24338,1),(138400,1),(119651,1),
(138412,1),(138360,1),(138373,1),(138338,1),(138355,1),(138369,1),(138379,1),(138386,1),(138389,1),(138398,1),(138377,1),(138404,1);

DELETE FROM creature WHERE guid IN (119706,119707);
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(119703, 26428, 571, 1, 1, 0, 0, 4068.25, -3892.61, 210.887, 0.525271, 300, 300, 0, 0, 8508, 7981, 0, 0),
(119704, 26428, 571, 1, 1, 0, 0, 3636.89, -3842.83, 191.261, 1.31798, 300, 300, 0, 0, 8508, 7981, 0, 2),
(119702, 26428, 571, 1, 1, 0, 0, 3495.18, -3699.41, 231.782, 4.1624, 300, 300, 0, 0, 8508, 7981, 0, 2),
(119705, 26428, 571, 1, 1, 0, 0, 3651.72, -3821.65, 191.106, 2.11301, 300, 300, 0, 0, 8508, 7981, 0, 2);
INSERT INTO `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_pvp_state`, `emote`, `moveflags`, `auras`) VALUES
(119703, 0, 0, 1, 0, 333, 0, NULL), (119704, 0, 0, 1, 0, 0, 0, NULL), (119702, 0, 0, 1, 0, 0, 0, NULL);
DELETE FROM creature_movement WHERE id IN (119705,119702,119704);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,waittime,script_id) VALUES
(119705,1,3645.65,-3810.67,190.754,100,0,0),
(119705,2,3651.79,-3821.88,191.115,100,0,0),
(119705,3,3657.99,-3826.5,191.161,100,0,0),
(119705,4,3670.57,-3835.52,190.807,100,0,0),
(119705,5,3676.47,-3844.14,191.094,100,0,0),
(119705,6,3671.19,-3862.54,190.886,100,0,0),
(119705,7,3676.78,-3844.04,191.123,100,0,0),
(119705,8,3670.47,-3835.47,190.821,100,0,0),
(119705,9,3658.3,-3826.73,191.16,100,0,0),
(119705,10,3651.91,-3821.93,191.111,100,0,0),
(119702,1,3492.72,-3710.67,232.115,100,0,0),
(119702,2,3494.04,-3721.87,231.785,100,0,0),
(119702,3,3498.96,-3734.04,231.059,100,0,0),
(119702,4,3506.41,-3741.62,230.462,100,0,0),
(119702,5,3522.67,-3748.52,229.23,100,0,0),
(119702,6,3525.03,-3758.01,227.931,100,0,0),
(119702,7,3526.22,-3776.73,225.041,100,0,0),
(119702,8,3529.25,-3789.05,224.64,100,0,0),
(119702,9,3531.41,-3803.82,224.199,100,0,0),
(119702,10,3531.52,-3820.06,223.222,100,0,0),
(119702,11,3530.84,-3834.04,220.71,100,0,0),
(119702,12,3525.46,-3848.47,218.037,100,0,0),
(119702,13,3523.05,-3860.92,215.043,100,0,0),
(119702,14,3523.29,-3870.62,212.399,100,0,0),
(119702,15,3526.73,-3880.58,209.041,100,0,0),
(119702,16,3532.57,-3887.49,206.593,100,0,0),
(119702,17,3541.21,-3891.68,204.538,100,0,0),
(119702,18,3549.28,-3893.17,202.386,100,0,0),
(119702,19,3559.38,-3894.37,200.165,100,0,0),
(119702,20,3562.67,-3898.52,199.4,100,0,0),
(119702,21,3563.79,-3906.93,199.397,100,0,0),
(119702,22,3568.54,-3912.42,199.051,100,0,0),
(119702,23,3579.39,-3913.5,197.701,100,0,0),
(119702,24,3587.42,-3912.28,196.541,100,0,0),
(119702,25,3590.62,-3917.97,196.443,100,0,0),
(119702,26,3587.88,-3912.67,196.491,100,0,0),
(119702,27,3579.98,-3913.18,197.592,100,0,0),
(119702,28,3568.83,-3911.75,198.985,100,0,0),
(119702,29,3563.58,-3906.3,199.404,100,0,0),
(119702,30,3563.02,-3898.57,199.351,100,0,0),
(119702,31,3559.89,-3894.18,200.067,100,0,0),
(119702,32,3548.46,-3893.05,202.595,100,0,0),
(119702,33,3538.48,-3890.46,205.307,100,0,0),
(119702,34,3533.03,-3887.6,206.472,100,0,0),
(119702,35,3526.23,-3880.09,209.28,100,0,0),
(119702,36,3523.27,-3870.65,212.394,100,0,0),
(119702,37,3522.97,-3861.61,214.876,100,0,0),
(119702,38,3525.41,-3848.96,217.935,100,0,0),
(119702,39,3530.78,-3834.24,220.672,100,0,0),
(119702,40,3531.95,-3819.65,223.267,100,0,0),
(119702,41,3531.5,-3803.79,224.191,100,0,0),
(119702,42,3529.28,-3789.03,224.64,100,0,0),
(119702,43,3526.55,-3776.94,225.011,100,0,0),
(119702,44,3525.37,-3756.08,228.232,100,0,0),
(119702,45,3522.81,-3748.7,229.213,100,0,0),
(119702,46,3506.67,-3741.71,230.439,100,0,0),
(119702,47,3499.07,-3733.51,231.036,100,0,0),
(119702,48,3494.22,-3722,231.749,100,0,0),
(119702,49,3492.9,-3711.21,232.087,100,0,0),
(119702,50,3495.04,-3699.9,231.713,100,0,0),
(119702,51,3503.36,-3685.03,232.078,100,0,0),
(119702,52,3495.15,-3699.79,231.697,100,0,0),
(119704,1,3633.12,-3857.07,191.163,100,0,0),
(119704,2,3631.37,-3874.41,190.34,100,0,0),
(119704,3,3631.36,-3881.97,189.461,100,0,0),
(119704,4,3624.98,-3884.61,190.541,100,0,0),
(119704,5,3615.98,-3891.26,192.323,100,0,0),
(119704,6,3609.58,-3896.26,193.637,100,0,0),
(119704,7,3596.63,-3899.78,196.01,100,0,0),
(119704,8,3590.8,-3897.39,196.763,100,0,0),
(119704,9,3581.53,-3889.72,197.781,100,0,0),
(119704,10,3581.42,-3887.3,197.879,100,0,0),
(119704,11,3581.55,-3889.44,197.792,100,0,0),
(119704,12,3590.88,-3897.77,196.738,100,0,0),
(119704,13,3596.56,-3899.64,196.029,100,0,0),
(119704,14,3605.86,-3898.07,194.427,100,0,0),
(119704,15,3617.54,-3891.43,191.878,100,0,0),
(119704,16,3631.18,-3882.46,189.456,100,0,0),
(119704,17,3631.39,-3870.23,190.685,100,0,0),
(119704,18,3633.1,-3857.24,191.158,100,0,0),
(119704,19,3636.99,-3842.62,191.162,100,0,0);

REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(20110, 26357, 571, 1, 1, 0, 0, 4037.91, -3732.01, 221.958, -0.388806, 300, 300, 0, 0, 10635, 0, 0, 0),
(20159, 26357, 571, 1, 1, 0, 0, 4182, -3754.17, 181.221, 3.14159, 300, 300, 0, 0, 10635, 0, 0, 0),
(20326, 26357, 571, 1, 1, 0, 0, 3954.73, -3894.94, 187.316, 5.90193, 300, 300, 5, 0, 10635, 0, 0, 1),
(20374, 26357, 571, 1, 1, 0, 0, 4193.2, -3900.78, 178.474, 2.27906, 300, 300, 0, 0, 10635, 0, 0, 0),
(20576, 26357, 571, 1, 1, 0, 0, 4115.98, -3681.53, 179.999, 0.652371, 300, 300, 0, 0, 10635, 0, 0, 0),
(20688, 26357, 571, 1, 1, 0, 0, 4120.37, -3727.39, 209.648, 5.70473, 300, 300, 0, 0, 10635, 0, 0, 0),
(20700, 26357, 571, 1, 1, 0, 0, 4060.21, -3898.46, 208.704, 0.787128, 300, 300, 0, 0, 10635, 0, 0, 0),
(20867, 26357, 571, 1, 1, 0, 0, 4026.54, -3822.49, 114.684, 3.42216, 300, 300, 5, 0, 10635, 0, 0, 1),
(20961, 26357, 571, 1, 1, 0, 0, 4021.14, -3823.2, 114.749, 3.00156, 300, 300, 5, 0, 10635, 0, 0, 1),
(21662, 26357, 571, 1, 1, 0, 0, 4057.42, -3824.15, 222.979, 3.77214, 300, 300, 0, 0, 10635, 0, 0, 0),
(21881, 26357, 571, 1, 1, 0, 0, 4002.97, -3833.01, 223.553, 2.65852, 300, 300, 0, 0, 10635, 0, 0, 0),
(119681, 26357, 571, 1, 1, 0, 0, 3669.34, -4025.81, 177.374, 0.122173, 300, 300, 0, 0, 10635, 0, 0, 0),
(119696, 26357, 571, 1, 1, 0, 0, 4075.43, -3958.61, 168.475, 1.41729, 300, 300, 0, 0, 10635, 0, 0, 0),
(119697, 26357, 571, 1, 1, 0, 0, 4109.14, -3902.34, 175.634, 2.59109, 300, 300, 0, 0, 10635, 0, 0, 0),
(119698, 26357, 571, 1, 1, 0, 0, 4082.49, -4015.53, 169.993, 1.87891, 300, 300, 0, 0, 10635, 0, 0, 0),
(119682, 26357, 571, 1, 1, 0, 0, 3559.6, -3910.66, 200.162, 0.296706, 300, 300, 0, 0, 10635, 0, 0, 0),
(119683, 26357, 571, 1, 1, 0, 0, 3540.68, -3769.28, 226.925, 5.044, 300, 300, 0, 0, 10635, 0, 0, 0),
(119684, 26357, 571, 1, 1, 0, 0, 3595.9, -3910.19, 196.431, 2.26893, 300, 300, 0, 0, 10635, 0, 0, 0),
(119685, 26357, 571, 1, 1, 0, 0, 3615.09, -3879.88, 194.275, 4.97419, 300, 300, 0, 0, 10635, 0, 0, 0),
(119686, 26357, 571, 1, 1, 0, 0, 3566.19, -3932.7, 202.843, 0.767945, 300, 300, 0, 0, 10635, 0, 0, 0),
(119699, 26357, 571, 1, 1, 0, 0, 4143.8, -3790.84, 194.68, 1.66442, 300, 300, 0, 0, 10635, 0, 0, 0),
(119687, 26357, 571, 1, 1, 0, 0, 3511.59, -3770.57, 227.247, 4.62512, 300, 300, 0, 0, 10635, 0, 0, 0),
(119688, 26357, 571, 1, 1, 0, 0, 3519.71, -3849.12, 219.129, 5.06145, 300, 300, 0, 0, 10635, 0, 0, 0),
(119689, 26357, 571, 1, 1, 0, 0, 3653.43, -3937.16, 183.867, 6.17846, 300, 300, 0, 0, 10635, 0, 0, 0),
(119690, 26357, 571, 1, 1, 0, 0, 3527.34, -3735.24, 230.93, 4.5204, 300, 300, 0, 0, 10635, 0, 0, 0),
(22158, 26357, 571, 1, 1, 0, 0, 4093.75, -3873.82, 217.438, 0.868326, 300, 300, 5, 0, 10635, 0, 0, 1),
(22239, 26357, 571, 1, 1, 0, 0, 3924.5, -3758.2, 165.428, 6.27974, 300, 300, 0, 0, 10635, 0, 0, 0),
(22245, 26357, 571, 1, 1, 0, 0, 4071.54, -3795.06, 223.808, -1.59857, 300, 300, 0, 0, 10635, 0, 0, 0),
(22254, 26357, 571, 1, 1, 0, 0, 4075.72, -4044.92, 174.3, 3.55729, 300, 300, 0, 0, 10635, 0, 0, 0),
(22264, 26357, 571, 1, 1, 0, 0, 3976.84, -4008.83, 174.65, 1.59979, 300, 300, 0, 0, 10635, 0, 0, 0),
(22278, 26357, 571, 1, 1, 0, 0, 4047.56, -4027.52, 174.185, 2.7658, 300, 300, 0, 0, 10635, 0, 0, 0),
(22315, 26357, 571, 1, 1, 0, 0, 3975.24, -4029.55, 178.65, 4.576, 300, 300, 0, 0, 10635, 0, 0, 0),
(22339, 26357, 571, 1, 1, 0, 0, 4004.09, -4021.7, 173.994, 5.62034, 300, 300, 0, 0, 10635, 0, 0, 0),
(119691, 26357, 571, 1, 1, 0, 0, 3507.77, -3885.6, 211.646, 0.174533, 300, 300, 0, 0, 10635, 0, 0, 0),
(119692, 26357, 571, 1, 1, 0, 0, 3691.75, -3849.97, 183.145, 5.95157, 300, 300, 0, 0, 10635, 0, 0, 0),
(119693, 26357, 571, 1, 1, 0, 0, 3661.86, -3861.65, 191.632, 0.541052, 300, 300, 0, 0, 10635, 0, 0, 0),
(119700, 26357, 571, 1, 1, 0, 0, 4215.03, -3785.73, 120.173, 2.5838, 300, 300, 0, 0, 10635, 0, 0, 0),
(119701, 26357, 571, 1, 1, 0, 0, 4192.73, -3905.34, 177.958, 1.59812, 300, 300, 0, 0, 10635, 0, 0, 0),
(20065, 26357, 571, 1, 1, 0, 0, 4074.56, -4024.75, 171.368, 1.86772, 300, 300, 0, 0, 10635, 0, 0, 0),
(119694, 26357, 571, 1, 1, 0, 0, 3477.05, -3671.7, 242.31, 5.41052, 300, 300, 0, 0, 10635, 0, 0, 0),
(119695, 26357, 571, 1, 1, 0, 0, 3497.1, -3657.63, 242.764, 5.18363, 300, 300, 0, 0, 10635, 0, 0, 0);
DELETE FROM creature_addon WHERE guid IN (119681,119682,119683,119684,119685,119686,119687,119688,119689,119690,119691,119692,119693,119694,119695);
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES
(119681,0,0,1,0,375,0,NULL), (119682,0,0,1,0,375,0,NULL), (119683,0,0,1,0,375,0,NULL), (119684,0,0,1,0,375,0,NULL), (119685,0,0,1,0,375,0,NULL),
(119686,0,0,1,0,375,0,NULL), (119687,0,0,1,0,375,0,NULL), (119688,0,0,1,0,375,0,NULL), (119689,0,0,1,0,375,0,NULL), (119690,0,0,1,0,375,0,NULL),
(119691,0,0,1,0,375,0,NULL), (119692,0,0,1,0,375,0,NULL), (119693,0,0,1,0,375,0,NULL), (119694,0,0,1,0,375,0,NULL), (119695,0,0,1,0,375,0,NULL);

UPDATE creature SET  currentwaypoint = 0 WHERE currentwaypoint =1;

REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(364, 853, 0, 1, 1, 0, 0, -6244.8, 125.788, 431.167, 0.663225, 300, 300, 0, 0, 11828, 0, 0, 0),
(7738, 853, 0, 1, 1, 0, 0, -6228, 345.671, 383.536, 4.712, 300, 300, 0, 0, 11828, 0, 0, 2),
(7741, 853, 0, 1, 1, 0, 0, -6233.77, 117.782, 431.417, 1.62316, 300, 300, 0, 0, 11828, 0, 0, 0),
(7742, 853, 0, 1, 1, 0, 0, -6230.06, 120.496, 430.972, 2.58309, 300, 300, 0, 0, 11828, 0, 0, 0),
(7743, 853, 0, 1, 1, 0, 0, -6226.1, 127.093, 431.097, 2.68781, 300, 300, 0, 0, 11828, 0, 0, 0),
(7756, 853, 0, 1, 1, 0, 0, -6213.2, 333.578, 383.914, 3.36848, 300, 300, 0, 0, 11828, 0, 0, 0),
(7780, 853, 0, 1, 1, 0, 0, -6183.11, 376.171, 395.938, 2.47837, 300, 300, 0, 0, 11828, 0, 0, 0),
(7787, 853, 0, 1, 1, 0, 0, -6170.6, 393.397, 398.906, 3.54302, 300, 300, 0, 0, 11828, 0, 0, 0),
(7831, 853, 0, 1, 1, 0, 0, -6115.09, 372.263, 395.626, 0.645772, 300, 300, 0, 0, 11828, 0, 0, 0),
(9022, 853, 0, 1, 1, 0, 0, -6086.53, 390.964, 395.625, 3.57792, 300, 300, 0, 0, 11828, 0, 0, 0);
DELETE FROM creature_movement WHERE id IN (7738,7742);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `script_id`, `comment`) VALUES
(7738, 1, -6224.85, 347.284, 383.579, 0, 0, 0, NULL),
(7738, 2, -6223.59, 352.337, 384.112, 0, 0, 0, NULL),
(7738, 3, -6221.42, 358.459, 384.896, 0, 0, 0, NULL),
(7738, 4, -6220.05, 363.974, 385.606, 0, 0, 0, NULL),
(7738, 5, -6217.25, 370.931, 386.704, 0, 0, 0, NULL),
(7738, 6, -6207.57, 375.451, 388.349, 0, 0, 0, NULL),
(7738, 7, -6199.8, 377.368, 390.035, 0, 0, 0, NULL),
(7738, 8, -6191.37, 379.448, 392.303, 0, 0, 0, NULL),
(7738, 9, -6182.32, 381.015, 395.413, 0, 0, 0, NULL),
(7738, 10, -6191.37, 379.448, 392.303, 0, 0, 0, NULL),
(7738, 11, -6199.8, 377.368, 390.035, 0, 0, 0, NULL),
(7738, 12, -6207.57, 375.451, 388.349, 0, 0, 0, NULL),
(7738, 13, -6217.25, 370.931, 386.704, 0, 0, 0, NULL),
(7738, 14, -6220.05, 363.974, 385.606, 0, 0, 0, NULL),
(7738, 15, -6221.42, 358.459, 384.896, 0, 0, 0, NULL),
(7738, 16, -6223.59, 352.337, 384.112, 0, 0, 0, NULL),
(7738, 17, -6224.85, 347.284, 383.579, 0, 0, 0, NULL);
UPDATE creature SET spawntimesecsmin = 300, spawntimesecsmax = 300 WHERE id =853;

DELETE FROM creature_movement WHERE id IN (127302,127293);
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(127302,1,-9008.89,-320.603,75.8279,2.8812,1000,5),
(127302,2,-8981.22,-335.138,73.3474,5.82645,0,0),
(127302,3,-8946.51,-338.891,71.1134,5.82409,0,0),
(127302,4,-8912.77,-352.085,72.5823,5.88143,0,0),
(127302,5,-8881.49,-355.84,73.1462,6.17595,10,6),
(127302,6,-8910.65,-346.602,71.1023,2.81837,0,0),
(127302,7,-8883.13,-352.739,72.9499,2.75397,0,0),
(127302,8,-8911.38,-347.166,71.3269,2.95582,0,0),
(127302,9,-8947.63,-337.566,70.9275,2.87728,0,0),
(127302,10,-9008.89,-320.603,75.8279,2.8812,5000,3801),
(127293,1,-8878.29,-410.994,65.6802,4.63836,1000,5),
(127293,2,-8880.02,-399.363,66.0983,2.83464,0,0),
(127293,3,-8898.18,-391.582,68.6285,3.16417,0,0),
(127293,4,-8914.49,-391.059,69.3006,2.22326,0,0),
(127293,5,-8928.27,-375.636,71.218,3.22857,0,0),
(127293,6,-8958.87,-373.826,72.3354,3.34245,5000,3801),
(127293,7,-8921.43,-376.858,71.1848,0.534655,0,0),
(127293,8,-8909.08,-366.763,72.135,6.05679,0,0),
(127293,9,-8870.04,-371.407,71.997,4.63836,0,0),
(127293,10,-8878.29,-410.994,65.6802,4.63836,10,6),
(127293,11,-8878.29,-410.994,65.6802,4.63836,5000,3801);
DELETE FROM dbscripts_on_creature_movement WHERE id = 3801;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(3801,0,20,1,7,24000,0,0,0x08,0,0,0,0,0,0,0,0,'(temp) randommovement on curent location');

DELETE FROM conditions WHERE condition_entry = 3517;
INSERT INTO conditions (condition_entry, type, value1, value2, value3, value4) VALUES (3517,1,1784,0,0,0);

UPDATE game_event_time SET end_time = '2050-12-30 22:00:00' WHERE end_time = '2020-12-30 22:00:00';
UPDATE game_event_time SET end_time = '2050-12-30 23:00:00' WHERE end_time = '2020-12-30 23:00:00';
UPDATE game_event_time SET end_time = '2050-12-31 22:59:59' WHERE end_time = '2020-12-31 22:59:59';
UPDATE game_event_time SET end_time = '2050-01-01 01:00:00' WHERE end_time = '2025-01-01 01:00:00';
UPDATE game_event_time SET end_time = '2050-12-31 23:59:00' WHERE end_time = '2030-12-31 23:59:00';
UPDATE game_event_time SET end_time = '2050-12-31 00:00:00' WHERE end_time = '2020-12-31 00:00:00';
UPDATE game_event_time SET end_time = '2050-12-31 01:00:00' WHERE end_time = '2020-12-31 01:00:00';
UPDATE game_event_time SET end_time = '2050-12-31 05:00:00' WHERE end_time = '2020-12-31 05:00:00';
UPDATE game_event_time SET end_time = '2050-12-30 20:00:00' WHERE end_time = '2020-12-30 20:00:00';
UPDATE game_event_time SET end_time = '2050-12-30 19:00:00' WHERE end_time = '2020-12-30 19:00:00';
UPDATE game_event_time SET end_time = '2050-12-30 02:00:00' WHERE end_time = '2020-12-30 02:00:00';
UPDATE game_event_time SET end_time = '2050-12-26 22:00:00' WHERE end_time = '2020-12-26 22:00:00';
UPDATE game_event_time SET end_time = '2050-12-20 20:00:00' WHERE end_time = '2020-12-20 20:00:00';
UPDATE game_event_time SET end_time = '2050-11-30 23:59:00' WHERE end_time = '2020-11-30 23:59:00';
UPDATE game_event_time SET end_time = '2050-10-31 23:59:00' WHERE end_time = '2020-10-31 23:59:00';
UPDATE game_event_time SET end_time = '2050-09-30 22:59:00' WHERE end_time = '2020-09-30 22:59:00';
UPDATE game_event_time SET end_time = '2050-08-31 22:59:00' WHERE end_time = '2020-08-31 22:59:00';
UPDATE game_event_time SET end_time = '2050-07-31 22:59:00' WHERE end_time = '2020-07-31 22:59:00';
UPDATE game_event_time SET end_time = '2050-06-30 22:59:00' WHERE end_time = '2020-06-30 22:59:00';
UPDATE game_event_time SET end_time = '2050-05-31 22:59:00' WHERE end_time = '2020-05-31 22:59:00';
UPDATE game_event_time SET end_time = '2050-04-30 22:59:00' WHERE end_time = '2020-04-30 22:59:00';
UPDATE game_event_time SET end_time = '2050-03-31 22:59:00' WHERE end_time = '2020-03-31 22:59:00';
UPDATE game_event_time SET end_time = '2050-02-28 23:59:00' WHERE end_time = '2020-02-29 23:59:00';
UPDATE game_event_time SET end_time = '2050-01-31 23:59:00' WHERE end_time = '2020-01-31 23:59:00';
UPDATE game_event_time SET end_time = '2050-12-31 22:00:00' WHERE end_time = '2010-12-31 22:00:00';

UPDATE creature_template SET MovementType = 2 WHERE Entry = 1332;
UPDATE creature SET position_x = -4802.89, position_y = -2635.94, position_z = 328.969, orientation = 6.18478, spawndist = 0, MovementType = 2 WHERE id = 1332;
DELETE FROM creature_movement_template WHERE entry = 1332;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(1332,1,-4800.73,-2637.72,328.456,100,0,0),
(1332,2,-4797.1,-2641.64,328.567,100,0,0),
(1332,3,-4794.19,-2646.7,328.426,100,0,0),
(1332,4,-4789.69,-2656.12,328.41,100,0,0),
(1332,5,-4788.04,-2666.82,328.714,100,0,0),
(1332,6,-4789.59,-2677.43,328.82,100,0,0),
(1332,7,-4792.13,-2684.83,328.507,100,0,0),
(1332,8,-4795.88,-2691.25,327.686,100,0,0),
(1332,9,-4800.03,-2697.67,326.962,100,0,0),
(1332,10,-4803.19,-2703.06,326.871,100,30000,0),
(1332,11,-4800.03,-2697.67,326.962,100,0,0),
(1332,12,-4795.88,-2691.25,327.686,100,0,0),
(1332,13,-4792.57,-2685.6,328.418,100,0,0),
(1332,14,-4789.66,-2677.66,328.833,100,0,0),
(1332,15,-4788.12,-2667.33,328.698,100,0,0),
(1332,16,-4789.64,-2656.55,328.42,100,0,0),
(1332,17,-4793.76,-2647.35,328.42,100,0,0),
(1332,18,-4796.69,-2642.33,328.556,100,0,0),
(1332,19,-4800.07,-2638.19,328.459,100,0,0),
(1332,20,-4802.5,-2636.06,328.968,100,0,0),
(1332,21,-4805.56,-2635.79,328.968,100,0,0),
(1332,22,-4814.29,-2636.04,327.144,100,0,0),
(1332,23,-4816.38,-2641.85,327.193,100,0,0),
(1332,24,-4816.95,-2645.89,327.099,100,0,0),
(1332,25,-4817.51,-2655.67,327.115,100,0,0),
(1332,26,-4817.71,-2662.3,327.128,100,0,0),
(1332,27,-4817.95,-2668.35,330.044,100,0,0),
(1332,28,-4818.68,-2676.13,333.946,100,0,0),
(1332,29,-4818.69,-2676.78,334,100,0,0),
(1332,30,-4817.16,-2678.29,334,100,0,0),
(1332,31,-4814.01,-2677.88,334,100,0,0),
(1332,32,-4810.96,-2676.28,334,100,0,0),
(1332,33,-4809.188,-2674.272,334,0.6457718,270000,0),
(1332,34,-4810.91,-2676.19,334,100,0,0),
(1332,35,-4813.97,-2677.89,334,100,0,0),
(1332,36,-4816.8,-2678.54,334,100,0,0),
(1332,37,-4818.68,-2676.89,334,100,0,0),
(1332,38,-4818.44,-2671.39,331.577,100,0,0),
(1332,39,-4817.67,-2662.55,327.13,100,0,0),
(1332,40,-4817.38,-2655.74,327.116,100,0,0),
(1332,41,-4817,-2648.09,327.099,100,0,0),
(1332,42,-4817.36,-2639.97,327.249,100,0,0),
(1332,43,-4814.87,-2636.35,327.169,100,0,0),
(1332,44,-4811.22,-2635.59,327.102,100,0,0),
(1332,45,-4805.66,-2635.83,328.969,100,0,0),
(1332,46,-4803.05,-2635.99,328.968,100,0,0);

DELETE FROM pool_creature WHERE pool_entry=1311;
DELETE FROM pool_template WHERE entry=1311;
DELETE FROM creature WHERE guid=18174;
DELETE FROM creature_movement WHERE id=17748;
DELETE FROM creature_movement_template WHERE entry=10825;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, orientation) VALUES
(10825, 1, 2432.24, -5062.68, 80.0662, 4.80509),
(10825, 2, 2435.17, -5025.6, 79.1069, 1.42788),
(10825, 3, 2424.1, -4992.43, 76.299, 1.9109),
(10825, 4, 2410.09, -4973.49, 76.1273, 2.20935),
(10825, 5, 2404.12, -4953.98, 74.8763, 1.8677),
(10825, 6, 2391.33, -4907.73, 77.0465, 1.85985),
(10825, 7, 2384.21, -4885.79, 82.4272, 1.90697),
(10825, 8, 2373.35, -4840.1, 77.5516, 1.88733),
(10825, 9, 2375.56, -4803.11, 81.6979, 1.5182),
(10825, 10, 2381.45, -4766.97, 74.8347, 1.42002),
(10825, 11, 2379.27, -4726.18, 75.7203, 1.64386),
(10825, 12, 2383.85, -4698.69, 73.5955, 1.40824),
(10825, 13, 2392.93, -4659.65, 76.5947, 1.39253),
(10825, 14, 2394.13, -4619.11, 73.6167, 1.54176),
(10825, 15, 2411.81, -4565.22, 75.5607, 1.26294),
(10825, 16, 2441.76, -4511.28, 75.4986, 1.06659),
(10825, 17, 2454.05, -4463.87, 74.7081, 1.3297),
(10825, 18, 2468.13, -4397.58, 75.0757, 1.36976),
(10825, 19, 2486.83, -4366.36, 75.2319, 1.02732),
(10825, 20, 2501.23, -4328.54, 74.6996, 1.20404),
(10825, 21, 2521.72, -4305.62, 77.4873, 0.78385),
(10825, 22, 2534.11, -4293.27, 74.9958, 0.78385),
(10825, 23, 2516.9, -4305.85, 77.2449, 3.71753),
(10825, 24, 2498.16, -4329.52, 74.5587, 4.05132),
(10825, 25, 2483.12, -4348.86, 77.5882, 4.05132),
(10825, 26, 2440.14, -4404.11, 76.2622, 4.05132),
(10825, 27, 2443.08, -4462.82, 74.2341, 4.87206),
(10825, 28, 2439.67, -4484.18, 74.3608, 4.50685),
(10825, 29, 2435.39, -4504.74, 77.6012, 4.50685),
(10825, 30, 2430.47, -4522.09, 75.3747, 4.38512),
(10825, 31, 2415.88, -4565.05, 74.7353, 4.38512),
(10825, 32, 2373.54, -4654.04, 77.6974, 4.28694),
(10825, 33, 2372.24, -4670.66, 75.7186, 4.66),
(10825, 34, 2376.36, -4728.09, 76.4781, 4.77781),
(10825, 35, 2381.16, -4801.43, 80.0164, 4.77781),
(10825, 36, 2382.63, -4833.23, 76.0634, 5.03699),
(10825, 37, 2389.92, -4883.03, 81.6866, 4.87913),
(10825, 38, 2394.29, -4904.28, 77.2246, 4.91447),
(10825, 39, 2409.14, -4968.48, 76.5356, 4.94196),
(10825, 40, 2436.96, -5029.48, 79.2512, 5.14223);

DELETE FROM creature_movement WHERE id=2094;
DELETE FROM creature_movement_template WHERE entry=14446;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, orientation) VALUES
(14446, 1, -10909, -3625.7, 16.1231, 2.57951),
(14446, 2, -10931.5, -3613.37, 19.6443, 3.08216),
(14446, 3, -10947.6, -3611.54, 21.7719, 4.10318),
(14446, 4, -10953.1, -3621.53, 23.4516, 4.77469),
(14446, 5, -10951.9, -3646, 24.8582, 4.12674),
(14446, 6, -10960.9, -3670.06, 27.7457, 2.90151),
(14446, 7, -10994.9, -3661.74, 24.635, 3.33348),
(14446, 8, -11014.2, -3666.86, 23.1082, 4.49979),
(14446, 9, -11020.9, -3689.35, 22.5442, 5.1988),
(14446, 10, -11016.2, -3697.82, 21.9328, 6.0431),
(14446, 11, -10988.7, -3703.19, 16.1436, 0.121193),
(14446, 12, -10968, -3699.65, 11.8002, 0.549235),
(14446, 13, -10936, -3676.05, 8.70095, 0.278272),
(14446, 14, -10901.7, -3682.79, 15.3641, 5.68574),
(14446, 15, -10867.9, -3705.79, 23.2219, 5.08491),
(14446, 16, -10858.3, -3730.9, 23.4227, 5.99597),
(14446, 17, -10837, -3740.34, 23.6262, 5.99597),
(14446, 18, -10830.1, -3742.94, 23.0092, 0.121193),
(14446, 19, -10811.6, -3740.44, 25.6689, 0.360741),
(14446, 20, -10803.3, -3737.07, 25.5452, 6.11378),
(14446, 21, -10789.5, -3743.49, 24.9093, 5.94885),
(14446, 22, -10808.1, -3736.24, 25.8225, 3.1332),
(14446, 23, -10831, -3735.96, 23.1383, 3.23923),
(14446, 24, -10847.2, -3737.99, 23.2522, 2.85438),
(14446, 25, -10874.3, -3730.46, 23.2361, 3.67905),
(14446, 26, -10899.3, -3745.41, 23.2198, 3.17639),
(14446, 27, -10928.6, -3747.37, 23.5871, 2.10825),
(14446, 28, -10944.9, -3726.04, 24.8629, 1.77839),
(14446, 29, -10950.2, -3723.04, 25.4121, 5.48153),
(14446, 30, -10928.5, -3745.84, 23.6266, 5.96455),
(14446, 31, -10922.7, -3747.3, 23.5185, 0.136895),
(14446, 32, -10887.1, -3738.32, 22.3733, 0.682747),
(14446, 33, -10863.8, -3718.61, 23.089, 2.05719),
(14446, 34, -10875.9, -3700.05, 20.6826, 2.6109),
(14446, 35, -10912.3, -3678.9, 12.5473, 2.61483),
(14446, 36, -10941.3, -3676.54, 8.36541, 3.77329),
(14446, 37, -10963.8, -3693.6, 9.56171, 3.31776),
(14446, 38, -10980, -3695.27, 13.9435, 3.6005),
(14446, 39, -10990.4, -3700.61, 16.5122, 3.13712),
(14446, 40, -11009.1, -3699.94, 21.3215, 2.5088),
(14446, 41, -11021.1, -3692.57, 22.0805, 1.47207),
(14446, 42, -11017.7, -3669.44, 22.74, 0.144749),
(14446, 43, -10972.5, -3654.7, 27.8381, 0.411788),
(14446, 44, -10952.3, -3643, 24.841, 1.53883),
(14446, 45, -10951.9, -3618.5, 23.0661, 1.02047),
(14446, 46, -10947.1, -3611.9, 21.7757, 6.1609),
(14446, 47, -10927.3, -3614.32, 19.2844, 5.67396),
(14446, 48, -10900.9, -3632, 16.5475, 2.28104);

UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask&~2048 WHERE Entry=15516;

UPDATE gameobject SET position_x = -10912.04, position_y = 1420.346, position_z = 42.52587, orientation = -0.1310418, rotation0 = -0.05685568, rotation1 = 0.0006389618, rotation2 = -0.06554317, rotation3 = 0.9962285 WHERE guid = 13717;
UPDATE gameobject SET position_x = -10910.86, position_y = 1420.136, position_z = 43.48199, orientation = 3.0175, rotation0 = -0.01899099, rotation1 = 0.09044456, rotation2 = 0.9936657, rotation3 = 0.06393455 WHERE guid = 13740;
UPDATE gameobject SET position_x = -10924.16, position_y = 995.3672, position_z = 34.95429, orientation = 3.138812, rotation0 = 0.004355907, rotation1 = 0.05669117, rotation2 = 0.9983816, rotation3 = 0.001145121 WHERE guid = 23096;
UPDATE gameobject SET position_x = -10924.99, position_y = 996.3398, position_z = 34.50686, orientation = -1.570796, rotation0 = 0, rotation1 = 0, rotation2 = -0.7071066, rotation3 = 0.7071069 WHERE guid = 13817;
UPDATE gameobject SET position_x = -10924.77, position_y = 996.4549, position_z = 35.67675, orientation = -1.483528, rotation0 = 0.0351038, rotation1 = -0.02625465, rotation2 = -0.6750803, rotation3 = 0.7364408 WHERE guid = 13714;
UPDATE gameobject SET position_x = -10925, position_y = 994.95, position_z = 36.3558, orientation = 0.08331253, rotation0 = -0.09091187, rotation1 = -0.01661682, rotation2 = 0.04028893, rotation3 = 0.9949049 WHERE guid = 25243;

UPDATE `quest_template` SET `PrevQuestId` = 12212 WHERE `entry` =12210;
UPDATE `creature` SET `position_x` = '3601.92', `position_y` = '-2937.93', `position_z` = '227.216', `orientation` = '4.27954', `MovementType` = 2 WHERE `guid` =108179;
DELETE FROM creature_movement WHERE id IN (108179);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,waittime,script_id) VALUES
(108179,1,3605.3,-2951.81,228.325,100,0,0),
(108179,2,3608.03,-2963.72,229.213,100,0,0),
(108179,3,3605.43,-2952.56,228.386,100,0,0),
(108179,4,3601.96,-2937.76,227.162,100,0,0),
(108179,5,3609.07,-2921.14,226.432,100,0,0),
(108179,6,3615.86,-2907.63,223.906,100,0,0),
(108179,7,3609.46,-2920.34,226.337,100,0,0),
(108179,8,3601.82,-2937.76,227.169,100,0,0);

DELETE FROM creature WHERE guid IN (19618);
INSERT INTO creature (guid, id, map, spawnmask, phasemask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) values
(19618,27072,571,1,1,0,0,3401.24,-2745.372,199.3911,1.884956,300,300,0,0,9940,0,0,0);
DELETE FROM creature_addon WHERE guid IN (108662,108668);
INSERT INTO creature_addon (guid,mount,bytes1,b2_0_sheath,b2_1_pvp_state,emote,moveflags,auras) VALUES (108662,0,0,1,1,0,0,47934), (108668,0,0,1,1,0,0,47934);
UPDATE creature SET spawndist = 0, MovementType = 2 WHERE guid IN (108662,108668,108666);
DELETE FROM creature_movement WHERE id IN (108662,108668,108666);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,waittime,script_id) VALUES
(108662,1,3413.05,-2843.45,201.185,100,3000,11),
(108662,2,3412.01,-2834.84,201.328,100,0,0),
(108662,3,3409.56,-2822.68,200.823,100,0,0),
(108662,4,3413.15,-2816.45,200.536,100,0,0),
(108662,5,3424.28,-2811.68,200.621,100,0,0),
(108662,6,3433.14,-2806.48,201.023,100,0,0),
(108662,7,3443.12,-2801.2,201.743,100,0,0),
(108662,8,3452.64,-2795.48,202.028,100,0,0),
(108662,9,3462.25,-2786.8,201.228,100,0,0),
(108662,10,3469.32,-2785.13,200.77,100,0,0),
(108662,11,3479.55,-2784.14,199.862,100,0,0),
(108662,12,3484.99,-2785.8,199.479,100,3000,0),
(108662,13,3479.46,-2784.14,199.872,100,0,0),
(108662,14,3469.53,-2785.09,200.736,100,0,0),
(108662,15,3462.8,-2786.58,201.181,100,0,0),
(108662,16,3453.1,-2795.05,202.075,100,0,0),
(108662,17,3443.76,-2800.88,201.747,100,0,0),
(108662,18,3433.72,-2806.07,201.051,100,0,0),
(108662,19,3425.05,-2811.2,200.636,100,0,0),
(108662,20,3413.45,-2816.11,200.534,100,0,0),
(108662,21,3409.68,-2822.25,200.796,100,0,0),
(108668,1,3403.52,-2746.48,199.301,100,1000,11),
(108668,2,3402.64,-2760.43,199.301,100,0,0),
(108668,3,3398.82,-2769.59,199.921,100,0,0),
(108668,4,3389.63,-2776.6,199.123,100,0,0),
(108668,5,3386.37,-2783,199.739,100,0,0),
(108668,6,3383.43,-2801.05,199.75,100,0,0),
(108668,7,3381.28,-2814.95,199.61,100,0,0),
(108668,8,3378.11,-2816.07,199.256,100,0,0),
(108668,9,3367.73,-2819.37,198.319,100,0,0),
(108668,10,3380.96,-2815.4,199.575,100,0,0),
(108668,11,3383.4,-2801.51,199.75,100,0,0),
(108668,12,3386.21,-2783.35,199.76,100,0,0),
(108668,13,3389.31,-2776.98,199.133,100,0,0),
(108668,14,3398.53,-2769.98,199.925,100,0,0),
(108668,15,3402.48,-2761.12,199.301,100,0,0),
(108666,1,3415.14,-2777.61,211.227,100,0,0),
(108666,2,3420.18,-2784.32,211.387,100,0,0),
(108666,3,3422.75,-2782.16,211.493,100,0,0),
(108666,4,3423.5,-2778.42,211.504,100,0,0),
(108666,5,3426.82,-2775.85,209.311,100,0,0),
(108666,6,3428.94,-2776.81,209.282,100,0,0),
(108666,7,3431.8,-2780.53,206.514,100,0,0),
(108666,8,3431.59,-2782.26,206.366,100,0,0),
(108666,9,3427.31,-2785.25,203.271,100,0,0),
(108666,10,3425.56,-2783.43,202.954,100,0,0),
(108666,11,3426.08,-2779.09,202.638,100,0,0),
(108666,12,3424.72,-2776.175,202.651,5.235988,30000,0),
(108666,13,3426.07,-2778.5,202.639,100,0,0),
(108666,14,3423.42,-2782.39,202.639,100,0,0),
(108666,15,3419.54,-2784.99,201.503,100,0,0),
(108666,16,3415.71,-2787.81,201.512,100,0,0),
(108666,17,3409.91,-2792.47,201.519,100,0,0),
(108666,18,3405.119,-2800.479,201.5026,1.204277,90000,0),
(108666,19,3409.44,-2793.11,201.521,100,0,0),
(108666,20,3415.28,-2788.18,201.516,100,0,0),
(108666,21,3420.86,-2784.1,201.501,100,0,0),
(108666,22,3422.92,-2782.66,202.616,100,0,0),
(108666,23,3425.39,-2783.2,202.779,100,0,0),
(108666,24,3426.82,-2785.16,203.269,100,0,0),
(108666,25,3431.09,-2782.65,206.364,100,0,0),
(108666,26,3431.98,-2780.8,206.372,100,0,0),
(108666,27,3429.47,-2777.2,209.243,100,0,0),
(108666,28,3427.05,-2775.85,209.28,100,0,0),
(108666,29,3423.93,-2777.91,211.467,100,0,0),
(108666,30,3423.15,-2781.73,211.5,100,0,0),
(108666,31,3420.48,-2784.21,211.398,100,0,0),
(108666,32,3415.56,-2777.4,211.236,100,0,0),
(108666,33,3410,-2781.17,211.176,100,0,0),
(108666,34,3400.23,-2788.21,211.224,100,0,0);
DELETE FROM spell_script_target WHERE entry=47933;
INSERT INTO spell_script_target (entry, type, targetEntry, inverseEffectMask) VALUES (47933, 1, 27072, 0);
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 27277);
DELETE FROM creature_template_addon WHERE entry = 27277;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES (27277,0,0,1,1,0,0,NULL);
DELETE FROM dbscripts_on_relay WHERE id IN (20529);
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20529,0,1,133,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Brom Armstrong EAI: emote'),
(20529,15000,1,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Brom Armstrong EAI:reset emote'),
(20529,17000,15,46400,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Brom Armstrong EAI:cast: Steam Weapon'),
(20529,21000,1,25,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Brom Armstrong EAI:emote');
DELETE FROM creature_addon WHERE guid IN (108753,108754,108755,108760,108752,108762,108761,108756,108763,108757);
INSERT INTO creature_addon (guid,mount,bytes1,b2_0_sheath,b2_1_pvp_state,emote,moveflags,auras) VALUES
(108753,0,0,1,0,133,0,NULL), (108754,0,8,1,0,0,0,NULL), (108755,0,8,1,0,0,0,NULL), (108760,0,0,1,0,133,0,NULL), (108752,0,0,1,0,133,0,NULL),
(108762,0,8,1,0,0,0,NULL), (108761,0,0,1,0,133,0,NULL), (108756,0,8,1,0,0,0,NULL), (108763,0,0,1,0,133,0,NULL), (108757,0,8,1,0,0,0,NULL);
UPDATE creature SET spawndist = 0, MovementType = 2 WHERE guid IN (108754,108755,108762,108756,108757);
DELETE FROM creature_movement WHERE id IN (108754,108755,108762,108756,108757);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,waittime,script_id) VALUES
(108754,1,3474.67,-2776.72,201.028,100,1000,11),
(108754,2,3474.67,-2776.72,201.028,100,1000,3),
(108755,1,3460.6,-2902.65,201.078,100,1000,11),
(108755,2,3460.6,-2902.65,201.078,100,1000,3),
(108762,1,3499.07,-2838.08,202.279,100,1000,11),
(108762,2,3499.07,-2838.08,202.279,100,1000,3),
(108756,1,3374.6,-2806,199.048,100,1000,11),
(108756,2,3374.6,-2806,199.048,100,1000,3),
(108757,1,3390.53,-2862.01,199.621,100,1000,11),
(108757,2,3390.53,-2862.01,199.621,100,1000,3);
DELETE FROM creature_addon WHERE guid IN (130263,116631,130255,130256,130270);
INSERT INTO creature_addon (guid,mount,bytes1,b2_0_sheath,b2_1_pvp_state,emote,moveflags,auras) VALUES
(130263,0,0,0,0,0,0,'29266'), (116631,0,0,0,0,0,0,'29266'), (130255,0,0,0,0,0,0,'29266'), (130256,0,0,0,0,0,0,'29266'), (130270,0,0,0,0,0,0,'29266');
UPDATE `creature` SET `position_x` = '3424.36', `position_y` = '-2680.88', `position_z` = '82.0611', `orientation` = '2.58309', `spawntimesecsmin` = '300', `spawntimesecsmax` = '300' WHERE `guid` =121044;
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 27783);
DELETE FROM creature_template_addon WHERE entry = 27783;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES (27783,2408,0,1,1,0,0,NULL);

DELETE FROM dbscripts_on_quest_end WHERE id = 12227;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(12227,0,0,0,0,0,0,0,0,2000000024,0,0,0,0,0,0,0,''),
(12227,10,31,27071,50,0,0,0,0,0,0,0,0,0,0,0,0,'search for 27071'),
(12227,100,20,2,0,0,27071,60,7,0,0,0,0,0,0,0,0,'buddy waypoints');
UPDATE quest_template SET CompleteScript = 12227 WHERE entry = 12227;
UPDATE `creature` SET `position_x` = '3401.92', `position_y` = '-2791.1', `position_z` = '201.604', `orientation` = '0.017453', `spawntimesecsmin` = 5, `spawntimesecsmax` = 5 WHERE `guid` =95661;
DELETE FROM creature_movement_template WHERE entry = 27071;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(27071,1,3401.915,-2791.102,201.604,0.01745329,10,9),
(27071,2,3414.189,-2795.065,201.508,100,3000,2707101),
(27071,3,3414.189,-2795.065,201.508,100,0,0),
(27071,4,3416.017,-2788.995,201.5216,100,0,0),
(27071,5,3422.458,-2782.987,202.6076,100,0,0),
(27071,6,3427.043,-2779.222,202.652,100,0,0),
(27071,7,3431.137,-2779.687,202.6578,100,10000,2707102);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (2707101,2707102);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2707101,0,0,0,0,0,0,0,0x04,2000000025,0,0,0,0,0,0,0,''),
(2707102,1000,28,8,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(2707102,7900,21,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(2707102,8000,18,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'');
DELETE FROM dbscript_string WHERE entry BETWEEN 2000000024 AND 2000000025;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000000024,'Alright Ben. We\'ve retrieved the amberseeds again. You know the drill.',0,0,0,0,NULL),
(2000000025,'I know, I know. Back in the bucket....',0,0,0,0,NULL);
UPDATE `creature` SET `position_z` = '202.61' WHERE `guid` =108674;
UPDATE gossip_menu_option SET action_script_id = 949201 WHERE menu_id = 9492;
DELETE FROM dbscripts_on_gossip WHERE id IN (949200,949201);
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(949201,0,15,48323,0,0,0,0,4,0,0,0,0,0,0,0,0,'Player cast: Indisposed'),
(949201,3000,15,47533,0,0,27326,30,4,0,0,0,0,0,0,0,0,'buddy cast: Camera Shake - Small'),
(949201,6000,15,48329,0,0,27326,30,4,0,0,0,0,0,0,0,0,'buddy cast: Dust Field'),
(949201,7000,3,0,0,0,27326,30,0x08,0,0,0,0,3455.729,-2801.702,202.6097,5.637414,'buddy move'),
(949201,10000,15,48329,0,0,27326,30,4,0,0,0,0,0,0,0,0,'buddy cast: Dust Field'),
(949201,11000,3,0,0,0,27326,30,0x08,0,0,0,0,3455.729,-2801.702,202.6097,5.637414,'buddy move'),
(949201,14000,15,48329,0,0,27326,30,4,0,0,0,0,0,0,0,0,'buddy cast: Dust Field'),
(949201,15000,3,0,0,0,27326,30,0x08,0,0,0,0,3455.729,-2801.702,202.6097,5.637414,'buddy move'),
(949201,18000,15,48329,0,0,27326,30,4,0,0,0,0,0,0,0,0,'buddy cast: Dust Field'),
(949201,19000,3,0,0,0,27326,30,0x08,0,0,0,0,3455.729,-2801.702,202.6097,5.637414,'buddy move'),
(949201,20000,34,995,0,0,0,0,0x08,0,0,0,0,0,0,0,0,'terminate if true'),
(949201,20100,15,48321,0,0,0,0,4,0,0,0,0,0,0,0,0,'Player cast: Create Amberseeds');
DELETE FROM dbscripts_on_gossip WHERE id = 949201 AND delay IN (5900,5910,9900,9910,13900,13910,17900,17910);
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, condition_id, comments) VALUES
(949201,5900,16,12670,0,0,0,0,4,0,0,0,0,0,0,0,0,3127,'Player play Sound - male'),
(949201,5910,16,12671,0,0,0,0,4,0,0,0,0,0,0,0,0,3128,'Player play Sound - femle'),
(949201,9900,16,12670,0,0,0,0,4,0,0,0,0,0,0,0,0,3127,'Player play Sound - male'),
(949201,9910,16,12671,0,0,0,0,4,0,0,0,0,0,0,0,0,3128,'Player play Sound - femle'),
(949201,13900,16,12670,0,0,0,0,4,0,0,0,0,0,0,0,0,3127,'Player play Sound - male'),
(949201,13910,16,12671,0,0,0,0,4,0,0,0,0,0,0,0,0,3128,'Player play Sound - femle'),
(949201,17900,16,12670,0,0,0,0,4,0,0,0,0,0,0,0,0,3127,'Player play Sound - male'),
(949201,17910,16,12671,0,0,0,0,4,0,0,0,0,0,0,0,0,3128,'Player play Sound - femle');
DELETE FROM dbscripts_on_event WHERE id = 17849;
DELETE FROM dbscripts_on_spell WHERE id = 48321 AND delay = 1000;

DELETE FROM creature WHERE guid IN (119604,119603,119602,119601,119600,119599,130649,130641,130640,130655,119605,119598,
130644,130642,130650,130645,130652,119597,119606,130627,119607,119608,119609,119610,130646,119596,119611,119594,119595,119593,119592);

UPDATE creature_template SET MinLevel=80, MaxLevel=80, Expansion=2, faction=14 WHERE entry=36568;
UPDATE creature_template SET UnitFlags=33555200, Expansion=2, faction=14 WHERE entry=36710;
UPDATE creature_template SET UnitFlags=33555200 WHERE entry=36530;
UPDATE creature_template SET faction=190 WHERE entry=15108;
DELETE FROM spell_script_target WHERE entry IN (69039,68644);
INSERT INTO spell_script_target VALUES (69039,1,36530,0), (68644,1,36530,0);

DELETE FROM dbscripts_on_quest_end WHERE id = 3741;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(3741,0,31,8963,20,0,0,0,0,0,0,0,0,0,0,0,0,'search for 8963'),
(3741,100,0,0,0,0,8963,30,7,2000000149,0,0,0,0,0,0,0,'buddy - text'),
(3741,3000,0,0,0,0,0,0,0,2000000150,0,0,0,0,0,0,0,'');
UPDATE quest_template SET CompleteScript = 3741 WHERE entry = 3741;
DELETE FROM dbscript_string WHERE entry IN (2000000149,2000000150);
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000000149,'Meow!',0,0,0,0,NULL), (2000000150,'I know how to speak kitty, and Effsee said thank you.',0,0,0,0,NULL);

DELETE FROM dbscripts_on_quest_end WHERE id = 689;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(689,1,1,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'reset emote'),
(689,1,21,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'active'),
(689,10,29,2,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'NPCFlags removed'),
(689,100,0,0,0,0,0,0,0,2000000183,0,0,0,0,0,0,0,''),
(689,1000,20,2,1,0,0,0,0x04,0,0,0,0,0,0,0,0,'Set Path = 1'),
(689,30000,0,0,0,0,0,0,0,2000000235,0,0,0,0,0,0,0,'');
UPDATE quest_template SET CompleteScript = 689 WHERE entry = 689;
DELETE FROM dbscript_string WHERE entry IN (2000000183,2000000228,2000000235);
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000000183,'I\'ll get to work right away, $n!',0,0,0,0,NULL),
(2000000228,'There you have it! The King should be quite pleased, if I do say so myself.',0,0,0,0,NULL),
(2000000235,'The King\'s guards should be along shortly to pick up the Memorial. In the meantime, come join me upstairs and let\'s finish our little chat, $n.',0,0,0,1,NULL);
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(901, 139852, 0, 1, 1, -5027.84, -1020.48, 502.209, 1.27409, 0, 0, 0.594823, 0.803857, 180, 180, 100, 1);
UPDATE creature_template_addon SET emote = 0 WHERE entry = 2790;
DELETE FROM creature_movement_template WHERE entry = 2790;
INSERT INTO creature_movement_template (entry, pathId, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(2790,0,1,-5033.81,-1022.23,508.876,3.86128,30000,279003),
(2790,0,2,-5031.04,-1019.72,508.876,6.07218,0,0),
(2790,0,3,-5028.21,-1020.5,508.876,5.89547,30000,279003),
(2790,0,4,-5028.75,-1022.3,508.876,4.39929,30000,279003),
(2790,0,5,-5031.95,-1021.62,508.876,3.63745,0,0),
(2790,1,1,-5032.05,-1014.75,509.04242,100,0,0),
(2790,1,2,-5030.37,-1009.28,505.265,100,0,0),
(2790,1,3,-5028.67,-1007.62,505.264,100,0,0),
(2790,1,4,-5023.85,-1009.02,502.209,100,0,0),
(2790,1,5,-5022.68,-1009.96,502.209,100,0,0),
(2790,1,6,-5027.2866,-1018.768,502.2091,4.34651,26000,279001),
(2790,1,7,-5022.68,-1009.96,502.209,100,0,0),
(2790,1,8,-5023.85,-1009.02,502.209,100,0,0),
(2790,1,9,-5028.67,-1007.62,505.264,100,0,0),
(2790,1,10,-5030.37,-1009.28,505.265,100,0,0),
(2790,1,11,-5032.05,-1014.75,509.04242,100,20,279002);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (279001,279002,279003);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(279001,0,13,0,0,0,139852,20,1,0,0,0,0,0,0,0,0,'activate object'),
(279001,2000,1,233,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(279001,7950,1,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(279001,8000,1,25,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(279001,8200,0,0,0,0,0,0,0x04,2000000228,0,0,0,0,0,0,0,''),
(279001,10000,3,0,0,0,0,0,0x04,0,0,0,0,0,0,0,1.26,''),
(279001,16000,1,2,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(279002,0,20,2,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Set Path = 0'),
(279002,10,29,2,1,0,0,0,0x04,0,0,0,0,0,0,0,0,'NPCFlags added'),
(279002,15,21,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'unactive'),
(279003,2000,1,233,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(279003,28000,1,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'');

DELETE FROM dbscripts_on_quest_end WHERE id = 683;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(683,0,0,0,0,0,0,0,0,2000000236,0,0,0,0,0,0,0,'');
UPDATE quest_template SET CompleteScript = 683 WHERE entry = 683;
DELETE FROM dbscript_string WHERE entry = 2000000236;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000000236,'%s carefully studies Sara Balloo\'s note and lets out a long, solemn sigh.',0,2,0,0,NULL);

DELETE FROM dbscripts_on_quest_end WHERE id = 637;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(637,0,0,0,0,0,0,0,0,2000000239,0,0,0,0,0,0,0,'');
UPDATE quest_template SET CompleteScript = 637 WHERE entry = 637;
DELETE FROM dbscript_string WHERE entry = 2000000239;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000000239,'This isn\'t fair!  My dearest Sully!  Come back to me!  No, $n!  Why did you bring me such news!',0,0,0,18,NULL);

DELETE FROM dbscripts_on_quest_end WHERE id = 1921;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1921,10,29,2,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'NPCFlags removed'),
(1921,100,0,0,0,0,0,0,0,2000000472,0,0,0,0,0,0,0,''),
(1921,3000,1,133,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(1921,8500,1,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(1921,9000,0,0,0,0,0,0,0,2000000672,0,0,0,0,0,0,0,''),
(1921,9500,29,2,1,0,0,0,0x04,0,0,0,0,0,0,0,0,'NPCFlags added');
UPDATE quest_template SET CompleteScript = 1921 WHERE entry = 1921;
DELETE FROM dbscript_string WHERE entry = 2000000472;
DELETE FROM dbscript_string WHERE entry = 2000000672;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000000472,'These are fine pieces, $n.  Let me get started on your robe.',0,0,7,1,NULL),
(2000000672,'That\'s it!  It\'s all finished, $n.',0,0,7,71,NULL);

DELETE FROM dbscripts_on_quest_start WHERE id = 1920;
INSERT INTO dbscripts_on_quest_start (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1920,0,0,0,0,0,0,0,0,2000000877,0,0,0,0,0,0,0,''),
(1920,10,3,0,0,0,0,0,0x04,0,0,0,0,0,0,0,6.056,''),
(1920,1000,1,25,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(1920,4000,3,0,0,0,0,0,0x04,0,0,0,0,0,0,0,4.7298,'');
UPDATE quest_template SET StartScript = 1920 WHERE entry = 1920;
DELETE FROM dbscript_string WHERE entry = 2000000877;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000000877,'Here, $n.  Take a chest of containment coffers and a cantation of manifestation.  You will need them for your mission.',0,0,7,1,NULL);
DELETE FROM dbscripts_on_quest_start WHERE id = 1960;
INSERT INTO dbscripts_on_quest_start (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1960,0,0,0,0,0,0,0,0,2000000878,0,0,0,0,0,0,0,''),
(1960,10,3,0,0,0,0,0,0x04,0,0,0,0,0,0,0,4.748,''),
(1960,1000,1,25,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(1960,4000,3,0,0,0,0,0,0x04,0,0,0,0,0,0,0,3.054,'');
UPDATE quest_template SET StartScript = 1960 WHERE entry = 1960;
DELETE FROM dbscript_string WHERE entry = 2000000878;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000000878,'Take a chest of containment coffers and a cantation of manifestation, $n.  You will need them for your mission.',0,0,0,1,NULL);
DELETE FROM dbscripts_on_go_template_use WHERE id = 122088;
INSERT INTO dbscripts_on_go_template_use (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(122088,5000,40,0,0,0,122088,50,7,0,0,0,0,0,0,0,0,'despawn self');
DELETE FROM spell_script_target WHERE entry IN (9012);
INSERT INTO spell_script_target (entry, type, targetEntry) VALUES (9012, 1, 6492);
UPDATE `creature` SET `position_x` = '1813.74', `position_y` = '56.4138', `position_z` = '-47.3038', `orientation` = '3.05433', `spawntimesecsmin` = '300', `spawntimesecsmax` = '300' WHERE `guid` =16227;
UPDATE `creature` SET `spawntimesecsmin` = '300', `spawntimesecsmax` = '300' WHERE `guid` =5846;
DELETE FROM creature_template_addon WHERE entry = 6492;
DELETE FROM creature WHERE guid IN (15337,19688,15353,19722);
INSERT INTO creature (guid, id, map, spawnmask, phasemask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) values
(15337,6492,0,1,1,0,0,1420.67,362.801,-66.0031,0.173832,180,180,5,0,356,0,0,1),
(19688,6492,0,1,1,0,0,1391.74,374.264,-66.028,0.986717,180,180,5,0,356,0,0,1),
(15353,6492,0,1,1,0,0,1386.27,358.274,-66.0081,4.72522,180,180,5,0,356,0,0,1),
(19722,6492,0,1,1,0,0,1400.71,361.956,-66.0357,6.10121,180,180,5,0,356,0,0,1);
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(40559, 105175, 0, 1, 1, -8985.57, 860.344, 30.7109, 3.08918, 0, 0, 0.999657, 0.0262016, 300, 300, 255, 1),
(21998, 105175, 0, 1, 1, -8985.31, 860.86, 30.704, 2.67035, 0, 0, 0.972369, 0.233448, 300, 300, 255, 1),
(8172, 105175, 0, 1, 1, -8984.55, 861.033, 30.6693, 2.72271, 0, 0, 0.972369, 0.233448, 30, 30, 100, 1),
(40562, 105175, 0, 1, 1, 1812.77, 51.5278, -46.3162, -2.05949, 0, 0, -0.857167, 0.515038, 300, 300, 255, 1),
(40561, 105175, 0, 1, 1, 1813.25, 51.0138, -46.3162, -2.46091, 0, 0, -0.942641, 0.333808, 300, 300, 255, 1),
(40560, 105175, 0, 1, 1, 1813.6, 50.2285, -46.3162, 2.51327, 0, 0, 0.951056, 0.309019, 30, 30, 100, 1);
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(3892, 105174, 0, 1, 1, -8987.37, 862.753, 30.6276, -2.56563, 0, 0, -0.968147, 0.250381, 30, 30, 100, 1),
(40563, 105174, 0, 1, 1, -8987.15, 861.843, 30.6623, 5.18363, 0, 0, -0.522498, 0.85264, 300, 300, 255, 1),
(21997, 105174, 0, 1, 1, -8986.73, 862.93, 30.6484, 3.64774, 0, 0, -0.968147, 0.250381, 300, 300, 255, 1),
(680, 105174, 0, 1, 1, -8986, 863.658, 30.635, 4.752, 0, 0, 0.692964, -0.720972, 30, 30, 0, 1),
(40565, 105174, 0, 1, 1, 1813.73, 52.6475, -46.3165, 2.32129, 0, 0, 0.91706, 0.398748, 30, 30, 100, 1),
(685, 105174, 0, 1, 1, 1814.28, 52.1381, -46.3165, 2.35619, 0, 0, 0.92388, 0.382683, 300, 300, 255, 1),
(40464, 105174, 0, 1, 1, 1814.54, 51.3096, -46.3164, 2.30383, 0, 0, 0.913544, 0.406739, 30, 30, 100, 1),
(40566, 105174, 0, 1, 1, 1814.59, 53.1667, -46.3167, 2.94961, 0, 0, 0.995396, 0.095844, 30, 30, 100, 1);

REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(22352, 27117, 571, 1, 1, 0, 0, 3167.26, -2581.26, 54.287, 1.92727, 120, 120, 0, 0, 11928, 0, 0, 0),
(22365, 27117, 571, 1, 1, 0, 0, 3350.33, -2635.46, 52.0887, 1.64076, 120, 120, 0, 0, 11928, 0, 0, 0),
(22374, 27117, 571, 1, 1, 0, 0, 3379.2, -2629.01, 52.1119, 2.72835, 120, 120, 0, 0, 11928, 0, 0, 2),
(22376, 27117, 571, 1, 1, 0, 0, 3359.84, -2635.93, 51.9186, 1.91154, 120, 120, 0, 0, 11928, 0, 0, 2),
(22380, 27117, 571, 1, 1, 0, 0, 3371.37, -2582.6, 52.471, 3.63816, 120, 120, 0, 0, 11928, 0, 0, 2),
(22455, 27117, 571, 1, 1, 0, 0, 3142.16, -2563.69, 55.4882, 5.97881, 120, 120, 0, 0, 11928, 0, 0, 0),
(22469, 27117, 571, 1, 1, 0, 0, 3159.24, -2559.13, 54.4132, 1.61563, 120, 120, 0, 0, 11928, 0, 0, 0),
(22470, 27117, 571, 1, 1, 0, 0, 3311.55, -2547.22, 55.5789, 3.735, 120, 120, 0, 0, 11928, 0, 0, 0),
(22474, 27117, 571, 1, 1, 0, 0, 3429.47, -2677.66, 78.2599, 2.11185, 120, 120, 0, 0, 11928, 0, 0, 0),
(22478, 27117, 571, 1, 1, 0, 0, 3421.56, -2683.77, 80.2807, 2.42601, 120, 120, 0, 0, 11928, 0, 0, 0),
(22493, 27117, 571, 1, 1, 0, 0, 3290.49, -2560.05, 57.0167, 4.29351, 120, 120, 0, 0, 11928, 0, 0, 0),
(108522, 27117, 571, 1, 1, 0, 0, 3292.25, -2540.28, 55.5751, 5.53269, 120, 120, 0, 0, 11928, 0, 0, 0),
(108523, 27117, 571, 1, 1, 0, 0, 3135.24, -2579.1, 56.6156, 0.488235, 120, 120, 0, 0, 11928, 0, 0, 0),
(108524, 27117, 571, 1, 1, 0, 0, 3311.05, -2613.38, 52.9887, 2.22091, 120, 120, 0, 0, 11928, 0, 0, 0),
(108525, 27117, 571, 1, 1, 0, 0, 3116.78, -2574.45, 55.9061, 0.0698132, 120, 120, 0, 0, 11928, 0, 0, 0),
(108526, 27117, 571, 1, 1, 0, 0, 3321.93, -2595.54, 52.6669, 3.24193, 120, 120, 0, 0, 11928, 0, 0, 0),
(108527, 27117, 571, 1, 1, 0, 0, 3353.44, -2600.49, 52.9091, 3.42085, 120, 120, 0, 0, 11928, 0, 0, 0),
(108528, 27117, 571, 1, 1, 0, 0, 3122.41, -2554.17, 54.7545, 4.74509, 120, 120, 0, 0, 11928, 0, 0, 0),
(108529, 27117, 571, 1, 1, 0, 0, 3348.13, -2570.4, 52.6533, 2.79253, 120, 120, 0, 0, 11928, 0, 0, 0),
(108530, 27117, 571, 1, 1, 0, 0, 3368.22, -2638.54, 52.3251, 1.85005, 120, 120, 0, 0, 11928, 0, 0, 0),
(108531, 27117, 571, 1, 1, 0, 0, 3309.08, -2606.18, 52.6453, 2.21117, 120, 120, 0, 0, 11928, 0, 0, 0),
(108532, 27117, 571, 1, 1, 0, 0, 3374.81, -2636.29, 52.2705, 2.40855, 120, 120, 0, 0, 11928, 0, 0, 0),
(25815, 27117, 571, 1, 1, 0, 0, 3317.59, -2605.72, 53.0364, 2.54685, 120, 120, 0, 0, 11928, 0, 0, 0),
(25836, 27117, 571, 1, 1, 0, 0, 3319.08, -2557.84, 54.5976, 2.44123, 120, 120, 0, 0, 11928, 0, 0, 0),
(25947, 27117, 571, 1, 1, 0, 0, 3329.66, -2621.73, 53.2181, 2.41726, 120, 120, 0, 0, 11928, 0, 0, 0),
(25989, 27117, 571, 1, 1, 0, 0, 3315.89, -2596.5, 52.6719, 2.65493, 120, 120, 0, 0, 11928, 0, 0, 0),
(26050, 27117, 571, 1, 1, 0, 0, 3383.04, -2601.69, 52.2272, 3.36848, 120, 120, 0, 0, 11928, 0, 0, 0),
(26091, 27117, 571, 1, 1, 0, 0, 3269.55, -2534.57, 54.0676, 4.97419, 120, 120, 0, 0, 11928, 0, 0, 0),
(26110, 27117, 571, 1, 1, 0, 0, 3322.99, -2635.77, 51.8127, 0.122173, 120, 120, 0, 0, 11928, 0, 0, 0);
DELETE FROM creature_addon WHERE guid IN (22352,22365,22374,22376,22380,22455,22469,22470,22493,108522,108525,108527,108529,108530,108532,25836,26050,26091,26110,108528,108523,25989,108531,108524,25815,108526,25947);
INSERT INTO creature_addon (guid,mount,bytes1,b2_0_sheath,b2_1_pvp_state,emote,moveflags,auras) VALUES
(22352,0,0,1,0,333,0,NULL), (22365,0,0,1,0,333,0,NULL), (22374,0,0,1,0,333,0,NULL), (22376,0,0,1,0,333,0,NULL), (22380,0,0,1,0,333,0,NULL), (22455,0,0,1,0,333,0,NULL),
(22469,0,0,1,0,333,0,NULL), (22470,0,0,1,0,333,0,NULL), (22493,0,0,1,0,333,0,NULL), (108522,0,0,1,0,333,0,NULL), (108525,0,0,1,0,333,0,NULL), (108527,0,0,1,0,333,0,NULL),
(108529,0,0,1,0,333,0,NULL), (108530,0,0,1,0,333,0,NULL), (108532,0,0,1,0,333,0,NULL), (25836,0,0,1,0,333,0,NULL), (26050,0,0,1,0,333,0,NULL), (26091,0,0,1,0,333,0,NULL),
(26110,0,0,1,0,333,0,NULL), (108528,0,0,1,0,333,0,NULL), (108523,0,0,1,0,333,0,NULL), (25989,0,0,1,0,333,0,NULL), (108531,0,0,1,0,333,0,NULL), (108524,0,0,1,0,333,0,NULL),
(25815,0,0,1,0,333,0,NULL), (108526,0,0,1,0,333,0,NULL), (25947,0,0,1,0,333,0,NULL);
DELETE FROM creature_movement WHERE id IN (22374,22376,22380);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,waittime,script_id) VALUES
(22374,1,3379.2,-2629.01,52.1119,2.72835,10000,5),
(22374,2,3354.75,-2619.17,52.4593,100,0,0),
(22374,3,3336.45,-2602.17,53.0415,100,0,0),
(22374,4,3317.42,-2592.26,52.5361,100,0,0),
(22374,5,3304.99,-2586.22,52.744,100,0,0),
(22374,6,3284.19,-2576.99,53.8591,100,0,0),
(22374,7,3268.65,-2569.3,53.1857,100,0,0),
(22374,8,3252.76,-2554.09,53.7184,100,5000,3),
(22376,1,3359.84,-2635.93,51.9186,1.91154,500,5),
(22376,2,3350.82,-2624.92,52.3896,100,0,0),
(22376,3,3341.01,-2617.04,53.2746,100,0,0),
(22376,4,3327.35,-2611.54,53.0455,100,0,0),
(22376,5,3315,-2609.5,52.8415,100,0,0),
(22376,6,3303.93,-2604.03,52.6656,100,5000,3),
(22380,1,3371.37,-2582.6,52.471,3.63816,2000,5),
(22380,2,3361.71,-2589.49,52.6809,100,0,0),
(22380,3,3346.47,-2592.19,52.5672,100,0,0),
(22380,4,3331.52,-2597.31,52.8414,100,0,0),
(22380,5,3316.79,-2597.13,52.7394,100,0,0),
(22380,6,3293.65,-2588.87,52.8776,100,0,0),
(22380,7,3275.48,-2591.61,53.1959,3.2219,5000,3);
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(108494, 27118, 571, 1, 1, 0, 0, 3343.36, -2574.13, 52.3209, 0.65348, 120, 120, 0, 0, 9940, 0, 0, 0),
(108495, 27118, 571, 1, 1, 0, 0, 3258.7, -2575.68, 53.1623, 0.593412, 120, 120, 0, 0, 9940, 0, 0, 0),
(108496, 27118, 571, 1, 1, 0, 0, 3309.56, -2594.26, 52.535, 5.73609, 120, 120, 0, 0, 9940, 0, 0, 0),
(108497, 27118, 571, 1, 1, 0, 0, 3242.62, -2573.21, 52.4246, 0.069651, 120, 120, 0, 0, 9940, 0, 0, 2),
(108498, 27118, 571, 1, 1, 0, 0, 3257.47, -2596.36, 51.8653, 0.306058, 120, 120, 0, 0, 9940, 0, 0, 2),
(108499, 27118, 571, 1, 1, 0, 0, 3299.04, -2597.04, 52.5871, 5.7455, 120, 120, 0, 0, 9940, 0, 0, 0),
(108500, 27118, 571, 1, 1, 0, 0, 3269.02, -2591.45, 53.073, 0.399369, 120, 120, 0, 0, 9940, 0, 0, 0),
(108501, 27118, 571, 1, 1, 0, 0, 3326.1, -2616.21, 52.824, 5.71986, 120, 120, 0, 0, 9940, 0, 0, 0),
(108502, 27118, 571, 1, 1, 0, 0, 3300.65, -2603.91, 52.7198, 5.88845, 120, 120, 0, 0, 9940, 0, 0, 0),
(108503, 27118, 571, 1, 1, 0, 0, 3261.47, -2580.03, 52.8436, 0.378914, 120, 120, 0, 0, 9940, 0, 0, 0),
(108504, 27118, 571, 1, 1, 0, 0, 3266.27, -2536.57, 53.6955, 5.18261, 120, 120, 0, 0, 9940, 0, 0, 2),
(108505, 27118, 571, 1, 1, 0, 0, 3308.57, -2540.42, 55.493, 5.01637, 120, 120, 0, 0, 9940, 0, 0, 0),
(108506, 27118, 571, 1, 1, 0, 0, 3347.69, -2602.33, 52.6668, 0.280925, 120, 120, 0, 0, 9940, 0, 0, 0),
(108507, 27118, 571, 1, 1, 0, 0, 3294.25, -2603.99, 52.6802, 6.02274, 120, 120, 0, 0, 9940, 0, 0, 0),
(108508, 27118, 571, 1, 1, 0, 0, 3377.09, -2601.45, 52.4833, 6.24803, 120, 120, 0, 0, 9940, 0, 0, 0),
(108509, 27118, 571, 1, 1, 0, 0, 3122.69, -2560.45, 55.3818, 1.50533, 120, 120, 0, 0, 9940, 0, 0, 0),
(108510, 27118, 571, 1, 1, 0, 0, 3165.78, -2577.31, 54.384, 5.04278, 120, 120, 0, 0, 9940, 0, 0, 0),
(108511, 27118, 571, 1, 1, 0, 0, 3123.34, -2575.19, 56.4688, 2.9701, 120, 120, 0, 0, 9940, 0, 0, 0),
(108512, 27118, 571, 1, 1, 0, 0, 3140.57, -2575.89, 56.4612, 3.21141, 120, 120, 0, 0, 9940, 0, 0, 0),
(108513, 27118, 571, 1, 1, 0, 0, 3147.9, -2565.55, 55.4399, 2.79253, 120, 120, 0, 0, 9940, 0, 0, 0),
(108514, 27118, 571, 1, 1, 0, 0, 3286.31, -2563.26, 56.9285, 0.649577, 120, 120, 0, 0, 9940, 0, 0, 0),
(108515, 27118, 571, 1, 1, 0, 0, 3308.19, -2587.79, 52.6659, 5.38157, 120, 120, 0, 0, 9940, 0, 0, 0),
(108516, 27118, 571, 1, 1, 0, 0, 3325.5, -2556.04, 54.1891, 3.37489, 120, 120, 0, 0, 9940, 0, 0, 0),
(108517, 27118, 571, 1, 1, 0, 0, 3158.88, -2553.5, 54.2303, 3.42085, 120, 120, 0, 0, 9940, 0, 0, 0),
(108518, 27118, 571, 1, 1, 0, 0, 3229.78, -2560.1, 52.2972, 5.58505, 120, 120, 0, 0, 9940, 0, 0, 0),
(108519, 27118, 571, 1, 1, 0, 0, 3256.86, -2554.46, 53.9446, 4.69782, 120, 120, 0, 0, 9940, 0, 0, 0),
(108520, 27118, 571, 1, 1, 0, 0, 3262.32, -2555.76, 54.2364, 5.37146, 120, 120, 0, 0, 9940, 0, 0, 0);
DELETE FROM creature_addon WHERE guid IN (108506,108517,108518,108519,108520,108508,108510,108512,108513,108511,108509,108514,108495,108505,108516,108494,108501,108503,108496,108502,108507,108499,108515,108500,108504,108497,108498);
INSERT INTO creature_addon (guid,mount,bytes1,b2_0_sheath,b2_1_pvp_state,emote,moveflags,auras) VALUES
(108506,0,0,1,0,333,0,NULL), (108517,0,0,1,0,333,0,NULL), (108518,0,0,1,0,333,0,NULL), (108519,0,0,1,0,333,0,NULL), (108520,0,0,1,0,333,0,NULL), (108508,0,0,1,0,333,0,NULL),
(108510,0,0,1,0,333,0,NULL), (108512,0,0,1,0,333,0,NULL), (108513,0,0,1,0,333,0,NULL), (108511,0,0,1,0,333,0,NULL), (108509,0,0,1,0,333,0,NULL), (108514,0,0,1,0,333,0,NULL),
(108495,0,0,1,0,333,0,NULL), (108505,0,0,1,0,333,0,NULL), (108516,0,0,1,0,333,0,NULL), (108494,0,0,1,0,333,0,NULL), (108501,0,0,1,0,333,0,NULL), (108503,0,0,1,0,333,0,NULL),
(108496,0,0,1,0,333,0,NULL), (108502,0,0,1,0,333,0,NULL), (108507,0,0,1,0,333,0,NULL), (108499,0,0,1,0,333,0,NULL), (108500,0,0,1,0,333,0,NULL), (108504,0,0,1,0,333,0,NULL),
(108515,0,0,1,0,333,0,NULL), (108497,0,0,1,0,333,0,NULL), (108498,0,0,1,0,333,0,NULL);
DELETE FROM creature_movement WHERE id IN (108497,108498,108504);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,waittime,script_id) VALUES
(108497,1,3242.623535,-2573.206055,52.424629,0.069651,20000,5),
(108497,2,3253.5,-2570.5,52.8562,100,0,0),
(108497,3,3263.9,-2572.51,52.6891,100,0,0),
(108497,4,3276.26,-2578.89,52.9414,100,0,0),
(108497,5,3292.6,-2586.26,53.0291,100,0,0),
(108497,6,3305.29,-2592.15,52.573,100,0,0),
(108497,7,3320.27,-2597.45,52.8113,100,0,0),
(108497,8,3333.48,-2603.33,53.1698,100,0,0),
(108497,9,3344.62,-2609.96,52.6999,100,0,0),
(108497,10,3358.91,-2624.3,52.1942,100,0,0),
(108497,11,3369.69,-2635.3,52.3373,100,5000,3),
(108498,1,3257.468262,-2596.364746,51.865253,0.306058,2000,5),
(108498,2,3270.94,-2593.85,53.0227,100,0,0),
(108498,3,3283.26,-2596.58,53.0475,100,0,0),
(108498,4,3300.26,-2605.94,52.8321,100,0,0),
(108498,5,3313.89,-2610.74,52.8078,100,0,0),
(108498,6,3332.6,-2613.36,53.2075,100,0,0),
(108498,7,3343.56,-2617.64,53.0786,100,0,0),
(108498,8,3349.02,-2631.91,52.2647,5.03023,5000,3),
(108504,1,3266.273926,-2536.572754,53.695496,5.182608,1000,5),
(108504,2,3271.44,-2553.71,54.6952,100,0,0),
(108504,3,3277.42,-2565.92,54.9292,100,0,0),
(108504,4,3288.74,-2575.52,54.5476,100,0,0),
(108504,5,3298.19,-2575.01,54.4351,100,0,0),
(108504,6,3311.87,-2572.05,53.1352,100,0,0),
(108504,7,3330.21,-2576.97,52.3815,100,0,0),
(108504,8,3343.83,-2582.58,52.6744,100,0,0),
(108504,9,3358.93,-2590.41,52.726,100,0,0),
(108504,10,3365.68,-2585.18,52.5784,100,5000,3);

UPDATE creature_template SET ExtraFlags=0 WHERE entry IN(24891);

UPDATE creature_template SET Leash=115, SpeedRun=1.71429, Detection=80 WHERE entry=16062;
UPDATE creature_template SET Leash=115, SpeedRun=1.71429, Detection=80 WHERE entry=16063;
UPDATE creature_template SET Leash=115, SpeedRun=1.71429, Detection=80 WHERE entry=16064;
UPDATE creature_template SET Leash=115, SpeedRun=1.71429, Detection=80 WHERE entry=16065;
UPDATE creature_template SET Leash=130 WHERE entry=15990;
UPDATE creature_template SET Leash=150 WHERE entry=16060;
UPDATE creature_template SET Leash=100, Detection=35 WHERE entry=16011;
UPDATE creature_template SET Leash=120, Detection=50 WHERE entry=15954;
UPDATE creature_template SET Leash=130 WHERE entry=15956;
UPDATE creature_template SET Leash=180, Detection=35 WHERE entry=15931;
UPDATE creature_template SET Detection=70 WHERE entry=15932;
UPDATE creature_template SET Detection=70 Where entry=15956;
UPDATE creature_template SET Detection=45 WHERE entry=15953;
UPDATE creature_template SET SpeedRun=1.68, Detection=60 WHERE entry=15952;
UPDATE creature_template SET Detection=40 WHERE entry=16028;
UPDATE creature_template SET SpeedRun=1.68, Detection=35 WHERE entry=16061;

DELETE FROM pool_template WHERE entry = 10;
INSERT INTO pool_template (entry, max_limit, description) VALUES (10,20,'Grizzly Hills - Wolfsbane Root - 189313');
DELETE FROM pool_gameobject_template WHERE pool_entry = 10;
INSERT INTO pool_gameobject_template (id, pool_entry, chance, description) VALUES (189313, 10, 0, 'Grizzly Hills - Wolfsbane Root - 189313');
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(51706, 189313, 571, 1, 1, 4212.35, -2556.24, 238.033, -1.97222, 0, 0, -0.833885, 0.551938, 300, 300, 100, 1),
(51707, 189313, 571, 1, 1, 4268.08, -2625.2, 246.517, 1.32645, 0, 0, 0.615661, 0.788011, 300, 300, 100, 1),
(51708, 189313, 571, 1, 1, 4286.69, -2610.54, 248.793, 0.226892, 0, 0, 0.113203, 0.993572, 300, 300, 100, 1),
(51709, 189313, 571, 1, 1, 4371.47, -2631.16, 254.471, -1.25664, 0, 0, -0.587786, 0.809016, 300, 300, 100, 1),
(51710, 189313, 571, 1, 1, 4288.42, -2645.13, 254.847, -3.00195, 0, 0, -0.997563, 0.0697646, 300, 300, 100, 1),
(51711, 189313, 571, 1, 1, 4309.4, -2689.75, 266.868, 2.3911, 0, 0, 0.930417, 0.366502, 300, 300, 100, 1),
(51715, 189313, 571, 1, 1, 4324.01, -2630.51, 254.477, 0.506145, 0, 0, 0.25038, 0.968148, 300, 300, 100, 1),
(51718, 189313, 571, 1, 1, 4271.55, -2682.73, 256.585, -0.034906, 0, 0, -0.0174521, 0.999848, 300, 300, 100, 1),
(51719, 189313, 571, 1, 1, 4354.21, -2653.53, 259.513, -1.46608, 0, 0, -0.669132, 0.743144, 300, 300, 100, 1),
(51720, 189313, 571, 1, 1, 4289.31, -2673.92, 259.085, -0.506145, 0, 0, -0.25038, 0.968148, 300, 300, 100, 1),
(51722, 189313, 571, 1, 1, 4269.22, -2392.16, 231.086, 2.87979, 0, 0, 0.991445, 0.130528, 300, 300, 100, 1),
(51723, 189313, 571, 1, 1, 4221.19, -2646.62, 242.384, 0.558504, 0, 0, 0.275637, 0.961262, 300, 300, 100, 1),
(51724, 189313, 571, 1, 1, 4174.01, -2649.11, 237.091, 3.14159, 0, 0, 1, 0.00000126759, 300, 300, 100, 1),
(51725, 189313, 571, 1, 1, 4199.68, -2649.86, 240.99, 2.74016, 0, 0, 0.979924, 0.199371, 300, 300, 100, 1),
(51739, 189313, 571, 1, 1, 4211.19, -2363.36, 229.523, 0.785397, 0, 0, 0.382683, 0.92388, 300, 300, 100, 1),
(51740, 189313, 571, 1, 1, 4230.84, -2404.67, 230.914, 1.13446, 0, 0, 0.537298, 0.843393, 300, 300, 100, 1),
(51742, 189313, 571, 1, 1, 4186.11, -2398.56, 231.397, 0.523598, 0, 0, 0.258819, 0.965926, 300, 300, 100, 1),
(51743, 189313, 571, 1, 1, 4174.34, -2601.43, 234.533, 2.19912, 0, 0, 0.891008, 0.453988, 300, 300, 100, 1),
(51744, 189313, 571, 1, 1, 4189.97, -2586.57, 236.355, -0.925024, 0, 0, -0.446198, 0.894934, 300, 300, 100, 1),
(51745, 189313, 571, 1, 1, 4165.32, -2492.82, 225.133, -2.79252, 0, 0, -0.984807, 0.173652, 300, 300, 100, 1),
(51746, 189313, 571, 1, 1, 4145.77, -2546.27, 227.063, -2.9845, 0, 0, -0.996917, 0.0784656, 300, 300, 100, 1),
(13614, 189313, 571, 1, 1, 4197.67, -2530.1, 232.952, -1.65806, 0, 0, -0.737276, 0.675591, 300, 300, 100, 1),
(13635, 189313, 571, 1, 1, 4159.58, -2438.43, 228.917, -2.33874, 0, 0, -0.920505, 0.390732, 300, 300, 100, 1),
(13636, 189313, 571, 1, 1, 4310.33, -2349.06, 224.606, 1.88495, 0, 0, 0.809016, 0.587786, 300, 300, 100, 1),
(13637, 189313, 571, 1, 1, 4184.83, -2470.08, 230.206, 2.28638, 0, 0, 0.909961, 0.414694, 300, 300, 100, 1),
(13638, 189313, 571, 1, 1, 4162.37, -2583.97, 231.911, 0.401425, 0, 0, 0.199367, 0.979925, 300, 300, 100, 1),
(13639, 189313, 571, 1, 1, 4152.55, -2488.3, 223.872, -1.72787, 0, 0, -0.760405, 0.649449, 300, 300, 100, 1),
(13640, 189313, 571, 1, 1, 4167.29, -2461.39, 229.074, -0.610864, 0, 0, -0.300705, 0.953717, 300, 300, 100, 1),
(13645, 189313, 571, 1, 1, 4138.93, -2448.44, 226.15, 1.69297, 0, 0, 0.748956, 0.66262, 300, 300, 100, 1),
(13646, 189313, 571, 1, 1, 4285.19, -2348.93, 226.843, -0.785397, 0, 0, -0.382683, 0.92388, 300, 300, 100, 1),
(13648, 189313, 571, 1, 1, 4335.33, -2375.92, 228.162, 2.09439, 0, 0, 0.866025, 0.500001, 300, 300, 100, 1),
(13650, 189313, 571, 1, 1, 4207.6, -2403.05, 230.602, 0.628317, 0, 0, 0.309016, 0.951057, 300, 300, 100, 1),
(13654, 189313, 571, 1, 1, 4345.33, -2356.93, 220.701, 0.994837, 0, 0, 0.477158, 0.878817, 300, 300, 100, 1),
(13656, 189313, 571, 1, 1, 4402.92, -2352.93, 214.863, -0.453785, 0, 0, -0.224951, 0.97437, 300, 300, 100, 1),
(13657, 189313, 571, 1, 1, 4412.8, -2318.25, 196.552, -0.087266, 0, 0, -0.0436192, 0.999048, 300, 300, 100, 1),
(13695, 189313, 571, 1, 1, 4439.01, -2293.36, 188.475, -0.95993, 0, 0, -0.461748, 0.887011, 300, 300, 100, 1),
(13712, 189313, 571, 1, 1, 4443.19, -2387.94, 218.856, -2.79252, 0, 0, -0.984807, 0.173652, 300, 300, 100, 1);

DELETE FROM `creature_template_addon` WHERE `entry` = 27424;
INSERT INTO `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_pvp_state`, `emote`, `moveflags`, `auras`) VALUES
(108398, 0, 0, 1, 0, 333, 0, NULL), (108394, 0, 0, 1, 0, 333, 0, NULL), (108404, 0, 0, 1, 0, 333, 0, NULL), (108410, 0, 0, 1, 0, 333, 0, NULL), (108402, 0, 0, 1, 0, 333, 0, NULL),
(108395, 0, 0, 1, 0, 0, 0, NULL), (108408, 0, 0, 1, 0, 333, 0, NULL), (108415, 0, 0, 1, 0, 333, 0, NULL), (108397, 0, 0, 1, 0, 333, 0, NULL), (108399, 0, 0, 1, 0, 333, 0, NULL),
(108400, 0, 0, 1, 0, 333, 0, NULL), (108414, 0, 0, 1, 0, 333, 0, NULL), (108413, 0, 0, 1, 0, 333, 0, NULL), (108403, 0, 0, 1, 0, 333, 0, NULL), (108406, 0, 0, 1, 0, 333, 0, NULL),
(108396, 0, 0, 1, 0, 333, 0, NULL), (108405, 0, 0, 1, 0, 333, 0, NULL), (108393, 0, 0, 1, 0, 0, 0, NULL), (108407, 0, 0, 1, 0, 333, 0, NULL), (108401, 0, 0, 1, 0, 333, 0, NULL),
(108412, 0, 0, 1, 0, 333, 0, NULL), (108411, 0, 0, 1, 0, 333, 0, NULL), (108409, 0, 0, 1, 0, 333, 0, NULL);

DELETE FROM dbscripts_on_creature_movement WHERE id IN (20,21);
INSERT INTO dbscripts_on_creature_movement (id,delay,command,datalong,datalong2,datalong3,buddy_entry,search_radius,data_flags,dataint,dataint2,dataint3,dataint4,x,y,z,o,comments) VALUES
(20,0,20,1,5,0,0,0,12,0,0,0,0,0,0,0,0,'GENERIC - Change Movement To 1 - Random (STATE) (around current location)'),
(21,0,20,1,5,24000,0,0,12,0,0,0,0,0,0,0,0,'GENERIC - Change Movement To 1 - Random (30secs TEMP) (around current location)');
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 26821);
DELETE FROM creature_template_addon WHERE entry = 26821;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES (26821,0,0,1,1,0,0,NULL);
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(120405, 26679, 571, 1, 1, 0, 0, 4286.67, -2503.58, 239.332, 5.28835, 300, 300, 0, 0, 9940, 0, 0, 0),
(120407, 26679, 571, 1, 1, 0, 0, 4294.29, -2518.77, 239.404, 1.50098, 300, 300, 0, 0, 9940, 0, 0, 0),
(120406, 26679, 571, 1, 1, 0, 0, 4331.42, -2649.89, 258.964, 2.40497, 300, 300, 10, 0, 9940, 0, 0, 1),
(120403, 26679, 571, 1, 1, 0, 0, 4310.5, -2433.07, 245.618, 4.69494, 300, 300, 0, 0, 9940, 0, 0, 0),
(120404, 26679, 571, 1, 1, 0, 0, 4230.07, -2530.27, 231.479, 1.48353, 300, 300, 0, 0, 9940, 0, 0, 0),
(120402, 26679, 571, 1, 1, 0, 0, 4380.03, -2477.07, 246.34, 4.19389, 300, 300, 5, 0, 9940, 0, 0, 1),
(120401, 26679, 571, 1, 1, 0, 0, 4302.09, -2505.69, 239.532, 3.45575, 300, 300, 0, 0, 9940, 0, 0, 0),
(120399, 26679, 571, 1, 1, 0, 0, 4389.98, -2604.78, 257.487, -2.18962, 300, 300, 5, 0, 9940, 0, 0, 1),
(120400, 26679, 571, 1, 1, 0, 0, 4328.59, -2541.38, 245.689, 1.0779, 300, 300, 0, 0, 9940, 0, 0, 0),
(131215, 26679, 571, 1, 1, 0, 0, 4315.01, -2577.15, 245.254, 5.31259, 300, 300, 0, 0, 9940, 0, 0, 2),
(131218, 26679, 571, 1, 1, 0, 0, 4327.13, -2469.56, 238.589, 1.02297, 300, 300, 0, 0, 9940, 0, 0, 2),
(18174, 26679, 571, 1, 1, 0, 0, 4339.45, -2431.14, 238.306, 5.55654, 300, 300, 5, 0, 9940, 0, 0, 1),
(19969, 26679, 571, 1, 1, 0, 0, 4213.85, -2585.19, 238.523, 2.25766, 300, 300, 7, 0, 9940, 0, 0, 1),
(131216, 26679, 571, 1, 1, 0, 0, 4316.28, -2489.05, 238.589, 4.28441, 300, 300, 0, 0, 9940, 0, 0, 2),
(19987, 26679, 571, 1, 1, 0, 0, 4408.01, -2559.22, 253.683, 3.83233, 300, 300, 5, 0, 9940, 0, 0, 1),
(22504, 26679, 571, 1, 1, 0, 0, 4270.15, -2580.15, 242.044, 3.26498, 300, 300, 5, 0, 9940, 0, 0, 1),
(22518, 26679, 571, 1, 1, 0, 0, 4353.89, -2597.01, 250.244, 0.063256, 300, 300, 7, 0, 9940, 0, 0, 1),
(22540, 26679, 571, 1, 1, 0, 0, 4262.15, -2478.68, 231.633, 4.08407, 300, 300, 0, 0, 9940, 0, 0, 0),
(22542, 26679, 571, 1, 1, 0, 0, 4247.72, -2488.21, 231.633, 0.191986, 300, 300, 0, 0, 9940, 0, 0, 0),
(22561, 26679, 571, 1, 1, 0, 0, 4238.55, -2448.54, 232.902, -1.83873, 300, 300, 5, 0, 9940, 0, 0, 1),
(22577, 26679, 571, 1, 1, 0, 0, 4256.48, -2496.44, 231.634, 1.37881, 300, 300, 0, 0, 9940, 0, 0, 0),
(131217, 26679, 571, 1, 1, 0, 0, 4243.64, -2493.45, 231.605, 0.133197, 300, 300, 0, 0, 9940, 0, 0, 2);
DELETE FROM `creature_template_addon` WHERE `entry` = 26679;
REPLACE INTO `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_pvp_state`, `emote`, `moveflags`, `auras`) VALUES
(120405, 0, 1, 1, 0, 0, 0, NULL), (120407, 0, 1, 1, 0, 0, 0, NULL), (120406, 0, 0, 1, 0, 0, 0, NULL), (120403, 0, 1, 1, 0, 0, 0, NULL), (120404, 0, 1, 1, 0, 0, 0, NULL),
(120402, 0, 0, 1, 0, 0, 0, NULL), (120401, 0, 1, 1, 0, 0, 0, NULL), (120399, 0, 0, 1, 0, 0, 0, NULL), (120400, 0, 1, 1, 0, 0, 0, NULL), (131215, 0, 0, 1, 0, 0, 0, NULL),
(131218, 0, 0, 1, 0, 0, 0, NULL), (18174, 0, 0, 1, 0, 0, 0, NULL), (19969, 0, 0, 1, 0, 0, 0, NULL), (131216, 0, 0, 1, 0, 0, 0, NULL), (19987, 0, 0, 1, 0, 0, 0, NULL),
(22504, 0, 0, 1, 0, 0, 0, NULL), (22518, 0, 0, 1, 0, 0, 0, NULL), (22540, 0, 1, 1, 0, 0, 0, NULL), (22542, 0, 1, 1, 0, 0, 0, NULL), (22561, 0, 0, 1, 0, 0, 0, NULL),
(22577, 0, 1, 1, 0, 0, 0, NULL), (131217, 0, 0, 1, 0, 0, 0, NULL);
DELETE FROM creature_movement WHERE id IN (131218,131215,131217,131216);
INSERT INTO creature_movement (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `script_id`, `comment`) VALUES
(131218, 1, 4339.12, -2458.67, 239.036, 100, 0, 0, NULL),
(131218, 2, 4349.94, -2446.95, 239.227, 100, 0, 0, NULL),
(131218, 3, 4339.5, -2458.27, 239.037, 100, 0, 0, NULL),
(131218, 4, 4327.48, -2469.46, 238.549, 100, 0, 0, NULL),
(131218, 5, 4320.56, -2480.59, 238.301, 100, 0, 0, NULL),
(131218, 6, 4325.66, -2481.2, 238.621, 100, 0, 0, NULL),
(131218, 7, 4337.39, -2482.7, 239.047, 100, 0, 0, NULL),
(131218, 8, 4347.58, -2487.04, 240.928, 100, 0, 0, NULL),
(131218, 9, 4351.13, -2495.77, 242.83, 100, 0, 0, NULL),
(131218, 10, 4352.76, -2503.53, 244.015, 100, 0, 0, NULL),
(131218, 11, 4352.86, -2513.14, 244.997, 100, 0, 0, NULL),
(131218, 12, 4352.08, -2519.9, 245.312, 100, 0, 0, NULL),
(131218, 13, 4353.22, -2530.95, 245.314, 100, 0, 0, NULL),
(131218, 14, 4361.13, -2533.98, 245.483, 100, 0, 0, NULL),
(131218, 15, 4353.67, -2531.64, 245.314, 100, 0, 0, NULL),
(131218, 16, 4352.1, -2520.7, 245.314, 100, 0, 0, NULL),
(131218, 17, 4352.86, -2513.75, 245.04, 100, 0, 0, NULL),
(131218, 18, 4352.96, -2504.33, 244.123, 100, 0, 0, NULL),
(131218, 19, 4351.36, -2496.66, 242.981, 100, 0, 0, NULL),
(131218, 20, 4348.01, -2487.86, 241.127, 100, 0, 0, NULL),
(131218, 21, 4338.21, -2482.77, 239.127, 100, 0, 0, NULL),
(131218, 22, 4320.5, -2480.91, 238.32, 100, 0, 0, NULL),
(131218, 23, 4327.01, -2469.9, 238.497, 100, 0, 0, NULL),
(131215, 1, 4329.09, -2595.16, 248.397, 5.27964, 0, 0, NULL),
(131215, 2, 4305.72, -2562.07, 242.821, 1.73749, 0, 0, NULL),
(131215, 3, 4306.09, -2557.91, 242.631, 0.945023, 0, 0, NULL),
(131215, 4, 4315.21, -2555.68, 244.468, 0.107788, 0, 0, NULL),
(131215, 5, 4327.17, -2555.26, 245.285, 5.981, 0, 0, NULL),
(131215, 6, 4346.52, -2575.05, 245.406, 2.31555, 7000, 0, NULL),
(131215, 7, 4328.83, -2556.13, 245.278, 2.52211, 0, 0, NULL),
(131215, 8, 4322.36, -2555.07, 245.13, 3.15828, 0, 0, NULL),
(131215, 9, 4314.43, -2555.28, 244.392, 3.34128, 0, 0, NULL),
(131215, 10, 4306.22, -2558.16, 242.666, 3.90991, 0, 0, NULL),
(131215, 11, 4304.46, -2561.71, 242.607, 4.8728, 0, 0, NULL),
(131215, 12, 4315.07, -2577.06, 245.147, 5.34561, 0, 0, NULL),
(131217, 1, 4245.27, -2503.52, 231.362, 100, 0, 0, NULL),
(131217, 2, 4239.7, -2514.49, 231.391, 100, 0, 0, NULL),
(131217, 3, 4233.04, -2522.71, 231.344, 100, 0, 0, NULL),
(131217, 4, 4239.4, -2515.26, 231.371, 100, 0, 0, NULL),
(131217, 5, 4245.23, -2504.31, 231.383, 100, 0, 0, NULL),
(131217, 6, 4243.29, -2493.8, 231.268, 100, 0, 0, NULL),
(131217, 7, 4240.86, -2488.36, 231.268, 100, 0, 0, NULL),
(131217, 8, 4234.15, -2482.95, 231.263, 100, 0, 0, NULL),
(131217, 9, 4240.52, -2487.94, 231.266, 100, 0, 0, NULL),
(131217, 10, 4243.42, -2493.68, 231.266, 100, 0, 0, NULL),
(131216, 1, 4305.66, -2503.89, 238.998, 100, 0, 0, NULL),
(131216, 2, 4312.52, -2495.18, 238.615, 100, 0, 0, NULL),
(131216, 3, 4318.3, -2483.23, 238.397, 100, 0, 0, NULL),
(131216, 4, 4318.12, -2475.79, 237.834, 100, 0, 0, NULL),
(131216, 5, 4314.15, -2470.42, 237.289, 100, 0, 0, NULL),
(131216, 6, 4303.63, -2468.92, 235.436, 100, 0, 0, NULL),
(131216, 7, 4293.62, -2470.05, 233.341, 100, 0, 0, NULL),
(131216, 8, 4281.54, -2472.81, 231.619, 100, 0, 0, NULL),
(131216, 9, 4274.29, -2472.72, 231.297, 100, 0, 0, NULL),
(131216, 10, 4267.64, -2468.9, 231.283, 100, 0, 0, NULL),
(131216, 11, 4263.43, -2459.21, 231.313, 100, 0, 0, NULL),
(131216, 12, 4258.68, -2445.85, 231.266, 100, 0, 0, NULL),
(131216, 13, 4256.2, -2437.05, 231.039, 100, 0, 0, NULL),
(131216, 14, 4258.49, -2445.22, 231.261, 100, 0, 0, NULL),
(131216, 15, 4263.16, -2458.61, 231.319, 100, 0, 0, NULL),
(131216, 16, 4267.04, -2468.21, 231.289, 100, 0, 0, NULL),
(131216, 17, 4273.5, -2472.46, 231.287, 100, 0, 0, NULL),
(131216, 18, 4285.03, -2470.92, 232.013, 100, 0, 0, NULL),
(131216, 19, 4292.93, -2470.13, 233.217, 100, 0, 0, NULL),
(131216, 20, 4302.92, -2468.81, 235.283, 100, 0, 0, NULL),
(131216, 21, 4313.39, -2469.94, 237.225, 100, 0, 0, NULL),
(131216, 22, 4317.95, -2475.46, 237.797, 100, 0, 0, NULL),
(131216, 23, 4318.24, -2482.81, 238.364, 100, 0, 0, NULL);
DELETE FROM creature_spawn_data_template WHERE Entry IN (20000,20001);
INSERT INTO creature_spawn_data_template (Entry,UnitFlags,Faction,ModelId,EquipmentId,CurHealth,CurMana,SpawnFlags) VALUES (20000,-1,0,0,58,0,0,0), (20001,-1,0,0,748,0,0,0);
DELETE FROM dbscripts_on_spell WHERE id = 47323;
INSERT INTO dbscripts_on_spell (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(47323,0,31,26708,5,0,0,0,0,0,0,0,0,0,0,0,0,'search for buddy'),
(47323,100,36,0,0,0,26708,7,1,0,0,0,0,0,0,0,0,'face buddy'),
(47323,110,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'emote');
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(108183, 26708, 571, 1, 1, 0, 0, 4375.9, -2549.44, 248.013, 1.25664, 300, 300, 0, 0, 9940, 0, 0, 2),
(108184, 26708, 571, 1, 1, 0, 0, 4346.52, -2557.32, 245.95, 4.83456, 300, 300, 0, 0, 9940, 0, 0, 0),
(108185, 26708, 571, 1, 1, 0, 0, 4370.69, -2519.09, 247.241, 3.9619, 300, 300, 0, 0, 9940, 0, 0, 0),
(108186, 26708, 571, 1, 1, 0, 0, 4304.03, -2459.82, 237.565, 6.05629, 300, 300, 0, 0, 9940, 0, 0, 0),
(108187, 26708, 571, 1, 1, 0, 0, 4306.41, -2460.54, 237.565, 3.00197, 300, 300, 0, 0, 9940, 0, 0, 2),
(108188, 26708, 571, 1, 1, 0, 0, 4270.56, -2441.69, 232.068, 3.28122, 300, 300, 0, 0, 9940, 0, 0, 0),
(108189, 26708, 571, 1, 1, 0, 0, 4290.42, -2424.3, 239.015, 5.96903, 300, 300, 0, 0, 9940, 0, 0, 0),
(108190, 26708, 571, 1, 1, 0, 0, 4356.05, -2467.29, 239.123, 4.08407, 300, 300, 0, 0, 9940, 0, 0, 0),
(108191, 26708, 571, 1, 1, 0, 0, 4330.14, -2498.41, 240.113, 5.96903, 300, 300, 0, 0, 9940, 0, 0, 0),
(108192, 26708, 571, 1, 1, 0, 0, 4422.81, -2587.03, 261.515, 1.13446, 300, 300, 0, 0, 9940, 0, 0, 0),
(108193, 26708, 571, 1, 1, 0, 0, 4359.36, -2445.49, 239.179, 0.593412, 300, 300, 0, 0, 9940, 0, 0, 0),
(108194, 26708, 571, 1, 1, 0, 0, 4231.62, -2508.47, 232.299, 0.593412, 300, 300, 0, 0, 9940, 0, 0, 0),
(108195, 26708, 571, 1, 1, 0, 0, 4259, -2517.85, 233.108, 2.14675, 300, 300, 0, 0, 9940, 0, 0, 2),
(108196, 26708, 571, 1, 1, 0, 0, 4322.48, -2614.92, 252.609, 4.01426, 300, 300, 0, 0, 9940, 0, 0, 0),
(108197, 26708, 571, 1, 1, 0, 0, 4375.39, -2547.9, 247.763, 5.23599, 300, 300, 0, 0, 9940, 0, 0, 2),
(108198, 26708, 571, 1, 1, 0, 0, 4258.13, -2516.61, 232.915, 5.2526, 300, 300, 0, 0, 9940, 0, 0, 2),
(30088, 26708, 571, 1, 1, 0, 0, 4232.56, -2507.15, 232.424, 4.08407, 300, 300, 0, 0, 9940, 0, 0, 2);
DELETE FROM `creature_template_addon` WHERE `entry` = 26708;
REPLACE INTO `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_pvp_state`, `emote`, `moveflags`, `auras`) VALUES
(108183, 0, 0, 1, 0, 0, 0, NULL), (108184, 0, 0, 1, 0, 69, 0, NULL), (108185, 0, 0, 1, 0, 69, 0, NULL), (108186, 0, 0, 1, 0, 0, 0, NULL), (108187, 0, 0, 1, 0, 0, 0, NULL),
(108188, 0, 0, 1, 0, 69, 0, NULL), (108189, 0, 0, 1, 0, 234, 0, NULL), (108190, 0, 0, 1, 0, 69, 0, NULL), (108191, 0, 0, 1, 0, 234, 0, NULL), (108192, 0, 0, 1, 0, 234, 0, NULL),
(108193, 0, 0, 1, 0, 69, 0, NULL), (108194, 0, 0, 1, 0, 0, 0, NULL), (108195, 0, 0, 1, 0, 0, 0, NULL), (108196, 0, 0, 1, 0, 234, 0, NULL), (108197, 0, 0, 1, 0, 0, 0, NULL),
(108198, 0, 0, 1, 0, 0, 0, NULL), (30088, 0, 0, 1, 0, 0, 0, NULL);
DELETE FROM creature_movement WHERE id IN (108195,108183,30088,108198,108197,108187);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,waittime,script_id) VALUES
(108195,1,4259,-2517.85,233.108,2.14675,65000,0),
(108195,2,4253.92,-2533.07,233.793,100,5000,21),
(108183,1,4375.9,-2549.44,248.013,1.25664,57000,0),
(108183,2,4388.29,-2546.44,249.836,100,5000,21),
(30088,1,4232.56,-2507.15,232.424,4.08407,40000,0),
(30088,2,4245.9,-2510.01,231.418,100,5000,21),
(108198,1,4258.1274,-2516.6072,232.915,5.2526,45000,0),
(108198,2,4254.92,-2503.95,231.37,100,5000,21),
(108197,1,4375.39,-2547.9,247.763,5.23599,65000,0),
(108197,2,4360.84,-2548.19,246.627,100,5000,21),
(108187,1,4306.41,-2460.54,237.565,3.00197,40000,0),
(108187,2,4312.04,-2479.34,237.856,100,5000,21);
DELETE FROM creature_spawn_data WHERE guid IN (108189,108191,108196,108192,108184,108185);
INSERT INTO creature_spawn_data (guid,Id) VALUES (108189,20000), (108191,20000), (108196,20000), (108192,20000), (108184,20001), (108185,20001);

UPDATE `quest_template` SET `PrevQuestId` = 0 WHERE `entry` =12300;

UPDATE `creature` SET `position_x` = '-6233.24', `position_y` = '-3855.97', `position_z` = '-58.6667', `orientation` = '0.903906', `spawntimesecsmin` = '300', `spawntimesecsmax` = '300' WHERE `guid` =25101;
DELETE FROM dbscripts_on_quest_end WHERE id = 1119;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1119,1,21,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'active'),
(1119,10,29,2,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'NPCFlags removed'),
(1119,100,9,261,15,0,0,0,0,0,0,0,0,0,0,0,0,'Resp object (15 secs)'),
(1119,600,3,0,0,0,0,0,0x04,0,0,0,0,0,0,0,4.7017,'face object'),
(1119,1000,0,0,0,0,0,0,0x04,2000000879,0,0,0,0,0,0,0,''),
(1119,5000,0,0,0,0,0,0,0x04,2000001029,0,0,0,0,0,0,0,''),
(1119,9000,28,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Stand state'),
(1119,9500,1,5,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'emote'),
(1119,10000,0,0,0,0,0,0,0x04,2000001100,0,0,0,0,0,0,0,''),
(1119,13000,3,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0.904,'face object'),
(1119,13100,29,2,1,0,0,0,0x04,0,0,0,0,0,0,0,0,'NPCFlags added'),
(1119,13150,28,8,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Kneel state'),
(1119,13200,21,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'unactive');
UPDATE quest_template SET CompleteScript = 1119 WHERE entry = 1119;
DELETE FROM dbscript_string WHERE entry IN (2000000879,2000001029,2000001100);
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000000879,'This stout sure smells strong!',0,0,0,0,NULL),
(2000001029,'Let\'s have just a small taste...',0,0,0,0,NULL),
(2000001100,'Wait!  What am I thinking!  We have a job to do with this stuff.',0,0,0,0,NULL);
DELETE FROM gameobject WHERE guid = 261;
DELETE FROM game_event_gameobject WHERE guid = 261;
DELETE FROM gameobject_battleground WHERE guid = 261;
INSERT INTO gameobject (guid, id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax, animprogress, state) VALUES
(261,19897,1,1,1,-6233.253,-3857.1125,-58.750053,3.2463472,0,0,-0.9986286,0.052353222,-15,-15,100,1);

UPDATE `creature` SET `position_x` = '-6223.58', `position_y` = '-3846.19', `position_z` = '-58.6667', `orientation` = '5.0091', `spawntimesecsmin` = '300', `spawntimesecsmax` = '300' WHERE `guid` =25125;
UPDATE `creature` SET `position_x` = '-6217.7', `position_y` = '-3948.85', `position_z` = '-58.6667', `orientation` = '1.71042', `spawntimesecsmin` = '300', `spawntimesecsmax` = '300' WHERE `guid` =25109;
DELETE FROM dbscripts_on_quest_end WHERE id IN (1120,1121);
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1120,100,0,0,0,0,0,0,0,2000001101,0,0,0,0,0,0,0,''),
(1120,1000,35,5,50,0,0,0,0,0,0,0,0,0,0,0,0,'Send Even 5'),
(1120,1500,15,20436,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'cast Drunken Pit Crew'),
(1121,100,0,0,0,0,0,0,0,2000001102,0,0,0,0,0,0,0,''),
(1121,1000,35,5,50,0,0,0,0,0,0,0,0,0,0,0,0,'Send Even 5'),
(1121,1500,15,20436,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'cast Drunken Pit Crew');
UPDATE quest_template SET CompleteScript = 1120 WHERE entry = 1120;
UPDATE quest_template SET CompleteScript = 1121 WHERE entry = 1121;
DELETE FROM dbscript_string WHERE entry BETWEEN 2000001101 AND 2000001102;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000001101,'Look at what $n brought us!  Let\'s drink up!',0,0,0,0,NULL),
(2000001102,'$N brought us booze!  Let\'s party!',0,0,0,0,NULL);
UPDATE creature SET spawndist=2, MovementType=1 WHERE guid IN (25165,25151);

UPDATE `creature` SET `position_x` = '-10573.7', `position_z` = '29.1669', `orientation` = '3.47011', `spawntimesecsmin` = '300', `spawntimesecsmax` = '300' WHERE `guid` =2598;
DELETE FROM dbscripts_on_quest_start WHERE id = 401;
INSERT INTO dbscripts_on_quest_start (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(401,1,29,2,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'NPCFlags removed'),
(401,10,21,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'active'),
(401,900,0,0,0,0,0,0,0x04,2000001103,0,0,0,0,0,0,0,''),
(401,1000,1,69,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'emote'),
(401,8000,1,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'emote'),
(401,8500,36,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'face Player'),
(401,9000,0,0,0,0,0,0,0x04,2000001104,0,0,0,0,0,0,0,''),
(401,9100,29,2,1,0,0,0,0x04,0,0,0,0,0,0,0,0,'NPCFlags added'),
(401,9900,3,0,0,0,0,0,0,0,0,0,0,0,0,0,3.47,'reset orientation'),
(401,10000,21,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'unactive');
UPDATE quest_template SET StartScript = 401 WHERE entry = 401;
DELETE FROM dbscript_string WHERE entry IN (2000001103,2000001104);
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000001103,'%s begins translating ...',0,2,7,0,NULL),
(2000001104,'$n, the translation is finished!',0,0,7,1,NULL);

UPDATE `creature` SET `position_x` = '522.449', `position_y` = '1652.3', `position_z` = '125.843', `orientation` = '4.86947', `spawntimesecsmin` = '300', `spawntimesecsmax` = '300' WHERE `guid` =14330;
DELETE FROM dbscripts_on_quest_end WHERE id = 429;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(429,0,29,2,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'NPCFlags removed'),
(429,10,0,0,0,0,0,0,0,2000001105,0,0,0,0,0,0,0,''),
(429,100,1,69,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'emote'),
(429,4900,29,2,1,0,0,0,0x04,0,0,0,0,0,0,0,0,'NPCFlags added'),
(429,5000,1,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'');
UPDATE quest_template SET CompleteScript = 429 WHERE entry = 429;
DELETE FROM dbscript_string WHERE entry = 2000001105;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000001105,'%s concocts a potion for $n.',0,2,0,0,NULL);

DELETE FROM dbscripts_on_quest_end WHERE id = 5341;
DELETE FROM dbscripts_on_quest_start WHERE id = 5342;
INSERT INTO dbscripts_on_quest_start (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(5342,0,0,0,0,0,0,0,0,2000000659,0,0,0,0,0,0,0,'');
UPDATE quest_template SET StartScript = 5342 WHERE entry = 5342;
UPDATE quest_template SET CompleteScript = 0 WHERE entry = 5341;
UPDATE dbscript_string SET emote = 22 WHERE entry = 2000000659;

UPDATE `creature` SET `position_x` = '4469.31', `position_y` = '-2261.68', `position_z` = '181.176', `orientation` = '6.05629', `spawntimesecsmin` = '300', `spawntimesecsmax` = '300' WHERE `guid` =119654;
DELETE FROM dbscripts_on_relay WHERE id IN (20530);
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20530,100,34,3518,0,0,0,0,0x08,0,0,0,0,0,0,0,0,'Part of Sergeant Bonesnap 27493 EAI: check if Player has Quest active - terminate if not'),
(20530,900,31,27497,90,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Sergeant Bonesnap 27493 EAI: search for 27497'),
(20530,1000,0,0,0,0,27497,100,0x04,2000001106,0,0,0,0,0,0,0,'Part of Sergeant Bonesnap 27493 EAI: buddy text');
DELETE FROM dbscript_string WHERE entry = 2000001106;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000001106,'Stop!  Put that knife away.  You don\'t have to do... whatever they sent you to do.  You\'re not like them yet!',0,0,0,274,NULL);
DELETE FROM conditions WHERE condition_entry = 3518;
INSERT INTO conditions (condition_entry, type, value1, value2, flags) VALUES (3518, 9, 12300, 0, 0);

DELETE FROM dbscripts_on_quest_end WHERE id = 827;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(827,0,15,5017,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(827,5500,15,4947,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(827,5600,1,34,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'emote'),
(827,5700,0,0,0,0,0,0,0x04,2000001107,0,0,0,0,0,0,0,''),
(827,5710,0,0,0,0,0,0,0x04,2000001108,0,0,0,0,0,0,0,''),
(827,9000,0,0,0,0,0,0,0,2000001109,0,0,0,0,0,0,0,'');
UPDATE quest_template SET CompleteScript = 827 WHERE entry = 827;
DELETE FROM dbscript_string WHERE entry BETWEEN 2000001107 AND 2000001109;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000001107,'%s is burned by unleashed magic!',0,2,0,0,NULL),
(2000001108,'Argh!',0,0,1,0,NULL),
(2000001109,'$N, unlocking the secret of these collars is beyond my skills...',0,0,1,1,NULL);

DELETE FROM dbscripts_on_quest_end WHERE id = 829;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(829,0,0,0,0,0,0,0,0x04,2000001110,0,0,0,0,0,0,0,''),
(829,3000,0,0,0,0,0,0,0,2000001111,0,0,0,0,0,0,0,'');
UPDATE quest_template SET CompleteScript = 829 WHERE entry = 829;
DELETE FROM dbscript_string WHERE entry BETWEEN 2000001110 AND 2000001111;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000001110,'%s inspects the Searing Collar...',0,2,0,0,NULL),
(2000001111,'The collar is indeed infused with demonic power, $N.  This bodes ill for our people.',0,0,1,0,NULL);

DELETE FROM `creature` WHERE `guid` = 27044;
UPDATE creature SET spawntimesecsmin = 300, spawntimesecsmax = 300, spawndist = 0, MovementType = 2 WHERE guid = 26331;
DELETE FROM creature_movement WHERE id IN (94729,26331);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,waittime,script_id) VALUES
(94729,1,-3444.82,2379.06,45.5005,100,0,0),
(94729,2,-3458.78,2373.03,45.8098,100,0,0),
(94729,3,-3469.69,2371.56,45.8892,100,0,0),
(94729,4,-3484.49,2377.69,47.635,100,0,0),
(94729,5,-3496.57,2381.58,49.7376,100,0,0),
(94729,6,-3507.98,2384.39,51.3419,100,0,0),
(94729,7,-3521.67,2388.07,54.8263,100,0,0),
(94729,8,-3529.99,2397.72,58.0181,100,0,0),
(94729,9,-3535.48,2408.73,60.5075,100,0,0),
(94729,10,-3535.84,2419.78,61.0249,100,0,0),
(94729,11,-3532.04,2430.7,59.6588,100,0,0),
(94729,12,-3530.96,2442.69,57.0554,100,0,0),
(94729,13,-3529.74,2454.1,58.1828,100,0,0),
(94729,14,-3527.28,2467.21,60.0334,100,0,0),
(94729,15,-3524.18,2478.36,58.0303,100,0,0),
(94729,16,-3521.19,2489.55,54.4044,100,0,0),
(94729,17,-3518.54,2498.1,52.8315,100,0,0),
(94729,18,-3524.2,2509.05,56.2128,100,0,0),
(94729,19,-3529.73,2521.3,60.1471,100,0,0),
(94729,20,-3535.93,2532.47,68.4802,100,0,0),
(94729,21,-3543.88,2542.95,73.7734,100,0,0),
(94729,22,-3549.28,2550.57,75.2648,100,0,0),
(94729,23,-3557.02,2560.98,75.766,100,0,0),
(94729,24,-3561.56,2567.14,77.7369,100,0,0),
(94729,25,-3558.1,2576.23,78.2838,100,0,0),
(94729,26,-3554.53,2582.89,80.9659,100,0,0),
(94729,27,-3550.85,2591.15,82.1056,100,0,0),
(94729,28,-3547.08,2599.9,82.9719,100,0,0),
(94729,29,-3536.11,2606.62,84.7292,100,0,0),
(94729,30,-3527.54,2611.77,83.1992,100,0,0),
(94729,31,-3514.36,2619.72,84.4215,100,0,0),
(94729,32,-3503.8,2626.26,84.8696,100,0,0),
(94729,33,-3503.08,2636.78,86.6175,100,0,0),
(94729,34,-3500.68,2659.01,88.5952,100,0,0),
(94729,35,-3500.27,2669.73,88.8587,100,0,0),
(94729,36,-3502.78,2682.55,90.3583,100,0,0),
(94729,37,-3504.5,2691.54,92.247,100,0,0),
(94729,38,-3506.32,2701.66,89.7475,100,0,0),
(94729,39,-3508.73,2713.36,89.4334,100,0,0),
(94729,40,-3498.98,2725.21,87.2176,100,0,0),
(94729,41,-3487.99,2739.12,86.183,100,0,0),
(94729,42,-3477.21,2745.45,85.4622,100,0,0),
(94729,43,-3463.57,2754.1,81.3744,100,0,0),
(94729,44,-3446.35,2764.6,78.7236,100,0,0),
(94729,45,-3444.84,2777.39,79.5474,100,0,0),
(94729,46,-3443.24,2792.24,82.1922,100,0,0),
(94729,47,-3442.17,2801.51,84.4853,100,0,0),
(94729,48,-3437.99,2809.23,84.2038,100,0,0),
(94729,49,-3428.83,2828.03,77.7336,100,0,0),
(94729,50,-3424.59,2836.66,79.4498,100,0,0),
(94729,51,-3419.41,2846.8,82.0314,100,0,0),
(94729,52,-3411.87,2844.63,80.5911,100,0,0),
(94729,53,-3402.33,2842.44,81.5253,100,0,0),
(94729,54,-3389.12,2839.41,81.9053,100,0,0),
(94729,55,-3370.61,2834.53,79.8607,100,0,0),
(94729,56,-3366.7,2830.79,77.9628,100,0,0),
(94729,57,-3361.15,2825.79,74.1914,100,0,0),
(94729,58,-3351.79,2817.23,73.1108,100,0,0),
(94729,59,-3342.45,2808.62,69.3829,100,0,0),
(94729,60,-3335.23,2801.86,69.8373,100,0,0),
(94729,61,-3321.2,2798.73,70.9464,100,0,0),
(94729,62,-3304.03,2795.11,68.7138,100,0,0),
(94729,63,-3287.45,2790.97,69.5143,100,0,0),
(94729,64,-3274.24,2788.02,70.4814,100,0,0),
(94729,65,-3258.02,2783.66,71.3382,100,0,0),
(94729,66,-3258.88,2771.19,68.8334,100,0,0),
(94729,67,-3259.51,2759.16,65.4326,100,0,0),
(94729,68,-3260.1,2751.91,65.8245,100,0,0),
(94729,69,-3271.58,2753.33,64.2919,100,0,0),
(94729,70,-3285.5,2755.51,64.8285,100,0,0),
(94729,71,-3300.08,2757.48,65.0401,100,0,0),
(94729,72,-3317.81,2762.54,67.3042,100,0,0),
(94729,73,-3329.33,2765.28,69.7745,100,0,0),
(94729,74,-3341.64,2768.7,70.2338,100,0,0),
(94729,75,-3356.37,2760.65,70.4198,100,0,0),
(94729,76,-3364.26,2756.05,70.9674,100,0,0),
(94729,77,-3376.76,2748.58,68.3061,100,0,0),
(94729,78,-3375.56,2736.8,69.2947,100,0,0),
(94729,79,-3375.87,2725.34,69.02,100,0,0),
(94729,80,-3376.53,2715.84,68.9938,100,0,0),
(94729,81,-3377.88,2706.32,69.2744,100,0,0),
(94729,82,-3384.62,2693.74,68.8684,100,0,0),
(94729,83,-3393.8,2678.78,69.2522,100,0,0),
(94729,84,-3400.25,2668.17,69.7994,100,0,0),
(94729,85,-3399.01,2654.05,68.0771,100,0,0),
(94729,86,-3398.3,2642.96,66.305,100,0,0),
(94729,87,-3397.52,2631.31,66.4574,100,0,0),
(94729,88,-3396.88,2621.91,64.8187,100,0,0),
(94729,89,-3407.12,2617.96,64.5484,100,0,0),
(94729,90,-3420.72,2613.31,67.1953,100,0,0),
(94729,91,-3437.19,2607,70.2352,100,0,0),
(94729,92,-3447,2601.79,73.5314,100,0,0),
(94729,93,-3460.97,2594.47,74.905,100,0,0),
(94729,94,-3474.21,2587.57,75.4839,100,0,0),
(94729,95,-3488.2,2580.9,74.6755,100,0,0),
(94729,96,-3500.27,2574.97,73.9154,100,0,0),
(94729,97,-3514.13,2567.85,73.0168,100,0,0),
(94729,98,-3519.36,2557.22,72.5273,100,0,0),
(94729,99,-3525.27,2545.66,71.3379,100,0,0),
(94729,100,-3530.4,2536.31,68.9001,100,0,0),
(94729,101,-3523.98,2529.67,63.1795,100,0,0),
(94729,102,-3512.45,2515.95,54.6698,100,0,0),
(94729,103,-3501.15,2502.53,55.8038,100,0,0),
(94729,104,-3484.86,2507.34,54.7959,100,0,0),
(94729,105,-3470.62,2511.84,52.2904,100,0,0),
(94729,106,-3458.54,2515.4,47.4927,100,0,0),
(94729,107,-3458.92,2511.24,47.5494,100,0,0),
(94729,108,-3460.25,2495.53,45.7243,100,0,0),
(94729,109,-3461.31,2484.86,44.9693,100,0,0),
(94729,110,-3463.41,2467.43,44.1079,100,0,0),
(94729,111,-3457.6,2464.92,44.4958,100,0,0),
(94729,112,-3452.61,2463.37,42.6844,100,0,0),
(94729,113,-3440.56,2459.69,41.3306,100,0,0),
(94729,114,-3429.9,2458.33,42.1302,100,0,0),
(94729,115,-3412.94,2455.6,39.5677,100,0,0),
(94729,116,-3399.55,2454.48,37.4034,100,0,0),
(94729,117,-3390.12,2443.76,36.5497,100,0,0),
(94729,118,-3380.03,2431.9,34.5727,100,0,0),
(94729,119,-3371.3,2421.19,30.9649,100,0,0),
(94729,120,-3381.93,2408.8,35.3178,100,0,0),
(94729,121,-3393.44,2395.62,36.275,100,0,0),
(94729,122,-3401.74,2385.94,37.9694,100,0,0),
(94729,123,-3418.06,2385.54,40.7661,100,0,0),
(94729,124,-3431.35,2383.14,43.6883,100,0,0),
(26331,1,-5776.78,1439.23,54.5482,100,0,0),
(26331,2,-5784.15,1430.67,52.3479,100,0,0),
(26331,3,-5776.18,1439.83,54.7064,100,0,0),
(26331,4,-5764.66,1452.45,56.3884,100,0,0),
(26331,5,-5761.62,1462.35,56.3677,100,0,0),
(26331,6,-5756.13,1477.73,59.0412,100,0,0),
(26331,7,-5754.35,1483.24,61.0807,100,0,0),
(26331,8,-5753.79,1491.52,63.973,100,0,0),
(26331,9,-5752.88,1502.49,65.3064,100,0,0),
(26331,10,-5751.65,1514.94,67.5228,100,0,0),
(26331,11,-5746.96,1524.35,69.7342,100,0,0),
(26331,12,-5739.45,1536.92,68.5799,100,0,0),
(26331,13,-5729.43,1544.22,69.3286,100,0,0),
(26331,14,-5713.31,1555.85,70.4584,100,0,0),
(26331,15,-5702.88,1564.76,70.119,100,0,0),
(26331,16,-5685.64,1579.35,70.7687,100,0,0),
(26331,17,-5672.85,1586.52,70.3194,100,0,0),
(26331,18,-5656.92,1595.69,72.0251,100,0,0),
(26331,19,-5649.98,1601.91,72.8527,100,0,0),
(26331,20,-5646.91,1610.03,74.4077,100,0,0),
(26331,21,-5646.43,1616.16,75.3892,100,0,0),
(26331,22,-5638.18,1622.1,74.6925,100,0,0),
(26331,23,-5624.26,1627.98,74.3726,100,0,0),
(26331,24,-5615.39,1631.91,76.4659,100,0,0),
(26331,25,-5604.16,1638.77,77.0893,100,0,0),
(26331,26,-5594.22,1645.07,76.9206,100,0,0),
(26331,27,-5581.36,1652.68,74.509,100,0,0),
(26331,28,-5570.1,1659.67,73.72,100,0,0),
(26331,29,-5560.05,1665.79,70.0778,100,0,0),
(26331,30,-5550.32,1671.33,68.7562,100,0,0),
(26331,31,-5540.88,1676.64,64.4473,100,0,0),
(26331,32,-5529.16,1668.56,58.3191,100,0,0),
(26331,33,-5521.28,1662.89,53.7486,100,0,0),
(26331,34,-5510.41,1654.99,54.2182,100,0,0),
(26331,35,-5502.58,1644.53,54.9985,100,0,0),
(26331,36,-5494.3,1630.79,51.9143,100,0,0),
(26331,37,-5489.58,1623.4,49.7064,100,0,0),
(26331,38,-5480.99,1614.45,49.7806,100,0,0),
(26331,39,-5471.42,1603.98,47.8866,100,0,0),
(26331,40,-5462.27,1593.63,46.872,100,0,0),
(26331,41,-5443.39,1593.57,47.402,100,0,0),
(26331,42,-5425,1593.22,44.7333,100,0,0),
(26331,43,-5414.59,1600.3,46.7082,100,0,0),
(26331,44,-5401.82,1608.92,49.8811,100,0,0),
(26331,45,-5390.14,1616.95,50.5814,100,0,0),
(26331,46,-5377.36,1619.06,49.2405,100,0,0),
(26331,47,-5364.73,1621.58,44.9341,100,0,0),
(26331,48,-5353.55,1623.16,45.015,100,0,0),
(26331,49,-5344.73,1613.92,44.2479,100,0,0),
(26331,50,-5335.44,1602.95,44.7351,100,0,0),
(26331,51,-5325.51,1591.69,44.8613,100,0,0),
(26331,52,-5315.68,1583.11,47.7566,100,0,0),
(26331,53,-5301.31,1570.46,52.6908,100,0,0),
(26331,54,-5294.35,1571.09,55.7462,100,0,0),
(26331,55,-5282.25,1571.82,59.2272,100,0,0),
(26331,56,-5269.39,1572.5,59.4731,100,0,0),
(26331,57,-5253.9,1572.86,56.1081,100,0,0),
(26331,58,-5241.52,1573.95,55.7927,100,0,0),
(26331,59,-5225.26,1575.43,53.8311,100,0,0),
(26331,60,-5211.17,1577.12,55.1541,100,0,0),
(26331,61,-5198.25,1568.44,58.0814,100,0,0),
(26331,62,-5188.7,1561.75,59.3931,100,0,0),
(26331,63,-5180.04,1555.08,56.6725,100,0,0),
(26331,64,-5163.93,1552.58,52.4147,100,0,0),
(26331,65,-5148.42,1549.72,52.4295,100,0,0),
(26331,66,-5138.25,1560,56.1287,100,0,0),
(26331,67,-5132.21,1566.09,57.6965,100,0,0),
(26331,68,-5124.94,1573.08,58.1972,100,0,0),
(26331,69,-5117.85,1579.98,59.6402,100,0,0),
(26331,70,-5112.23,1588.34,63.4508,100,0,0),
(26331,71,-5103.35,1602.16,69.2277,100,0,0),
(26331,72,-5096.95,1611.92,71.5742,100,0,0),
(26331,73,-5084.23,1612.72,68.9709,100,0,0),
(26331,74,-5072.01,1613.16,65.4804,100,0,0),
(26331,75,-5058.03,1613.65,67.3236,100,0,0),
(26331,76,-5071.83,1613.16,65.4545,100,0,0),
(26331,77,-5084.52,1612.68,69.0518,100,0,0),
(26331,78,-5096.92,1612.07,71.6041,100,0,0),
(26331,79,-5103.55,1602.24,69.2749,100,0,0),
(26331,80,-5111.99,1588.91,63.7265,100,0,0),
(26331,81,-5119.05,1578.6,59.5855,100,0,0),
(26331,82,-5127.71,1570.37,57.3352,100,0,0),
(26331,83,-5134.12,1564.1,57.4088,100,0,0),
(26331,84,-5148.62,1549.54,52.3784,100,0,0),
(26331,85,-5163.28,1552.59,52.4746,100,0,0),
(26331,86,-5180.08,1555.17,56.6997,100,0,0),
(26331,87,-5188.34,1561.55,59.3843,100,0,0),
(26331,88,-5197.72,1568.19,58.2428,100,0,0),
(26331,89,-5210.31,1577.07,55.2827,100,0,0),
(26331,90,-5224.9,1575.58,53.8302,100,0,0),
(26331,91,-5244.69,1573.58,55.7274,100,0,0),
(26331,92,-5260.43,1572.6,57.4846,100,0,0),
(26331,93,-5269.01,1572.78,59.4934,100,0,0),
(26331,94,-5282.62,1571.94,59.1887,100,0,0),
(26331,95,-5300.96,1570.57,52.8248,100,0,0),
(26331,96,-5315.57,1583.1,47.7644,100,0,0),
(26331,97,-5326.48,1592.46,44.7925,100,0,0),
(26331,98,-5335.26,1602.75,44.7563,100,0,0),
(26331,99,-5344.67,1613.86,44.2415,100,0,0),
(26331,100,-5353.64,1623.36,45.048,100,0,0),
(26331,101,-5364.7,1621.63,44.9242,100,0,0),
(26331,102,-5376.53,1619.37,48.9775,100,0,0),
(26331,103,-5390.14,1617.08,50.5674,100,0,0),
(26331,104,-5401.03,1609.55,50.055,100,0,0),
(26331,105,-5414.09,1600.71,46.9393,100,0,0),
(26331,106,-5424.65,1593.17,44.6516,100,0,0),
(26331,107,-5443.09,1593.82,47.4005,100,0,0),
(26331,108,-5462.32,1593.68,46.875,100,0,0),
(26331,109,-5476.79,1610.04,49.1464,100,0,0),
(26331,110,-5489.62,1623.48,49.7263,100,0,0),
(26331,111,-5498.4,1637.46,53.9742,100,0,0),
(26331,112,-5502.79,1645.05,55.0385,100,0,0),
(26331,113,-5509.92,1654.76,54.3334,100,0,0),
(26331,114,-5520.73,1662.75,53.5821,100,0,0),
(26331,115,-5529.18,1668.57,58.3311,100,0,0),
(26331,116,-5540.58,1676.71,64.368,100,0,0),
(26331,117,-5550.37,1671.29,68.7768,100,0,0),
(26331,118,-5559.13,1666.3,69.8391,100,0,0),
(26331,119,-5569.92,1659.97,73.6833,100,0,0),
(26331,120,-5580.62,1653.32,74.4714,100,0,0),
(26331,121,-5597.02,1643.27,77.2114,100,0,0),
(26331,122,-5609.89,1635.32,76.718,100,0,0),
(26331,123,-5619.74,1629.6,75.0569,100,0,0),
(26331,124,-5638.34,1622.06,74.6897,100,0,0),
(26331,125,-5646.41,1616.67,75.4259,100,0,0),
(26331,126,-5649.55,1602.45,72.9392,100,0,0),
(26331,127,-5656.7,1595.77,72.0126,100,0,0),
(26331,128,-5673.21,1586.15,70.2957,100,0,0),
(26331,129,-5685.29,1579.67,70.7651,100,0,0),
(26331,130,-5702.72,1565.01,70.151,100,0,0),
(26331,131,-5712.96,1556.03,70.4222,100,0,0),
(26331,132,-5729.33,1544.27,69.3338,100,0,0),
(26331,133,-5738.49,1537.83,68.6979,100,0,0),
(26331,134,-5746.89,1524.51,69.7433,100,0,0),
(26331,135,-5751.8,1514.77,67.4633,100,0,0),
(26331,136,-5752.82,1503.26,65.3854,100,0,0),
(26331,137,-5753.86,1491.17,63.8981,100,0,0),
(26331,138,-5755.84,1478.37,59.3043,100,0,0),
(26331,139,-5761.51,1462.86,56.3543,100,0,0),
(26331,140,-5764.45,1452.92,56.425,100,0,0);

DELETE FROM dbscripts_on_quest_start WHERE id = 12308;
INSERT INTO dbscripts_on_quest_start (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(12308,1,13,0,0,0,188706,10,1,0,0,0,0,0,0,0,0,'use object'),
(12308,100,35,5,20,0,0,0,0x04,0,0,0,0,0,0,0,0,'Send event AI 5'),
(12308,200,18,0,20,0,0,0,0x04,0,0,0,0,0,0,0,0,'despawn self');
UPDATE quest_template SET StartScript = 12308 WHERE entry = 12308;
UPDATE creature SET position_z = 253.044, spawntimesecsmin = 60, spawntimesecsmax = 60 WHERE id = 27499;
UPDATE creature_template SET UnitFlags = 512 WHERE entry = 27411;
DELETE FROM creature_movement_template WHERE entry = 27411;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(27411,1,4398.481,-2501.865,253.3859,100,0,0),
(27411,2,4389.731,-2501.865,252.3859,100,0,0),
(27411,3,4382.731,-2502.365,247.1359,100,0,0),
(27411,4,4381.731,-2497.865,247.6359,100,0,0),
(27411,5,4384.231,-2493.365,247.8859,100,0,0),
(27411,6,4389.981,-2489.365,248.1359,100,0,0),
(27411,7,4395.981,-2484.365,249.6359,100,0,0),
(27411,8,4405.981,-2482.865,249.3859,100,0,0),
(27411,9,4418.481,-2483.865,247.3859,100,0,0),
(27411,10,4423.112,-2486.405,246.6237,100,100000,0);
DELETE FROM dbscripts_on_relay WHERE id IN (20531);
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20531,1,21,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Freed Alliance Scout 27411 EAI: Active'),
(20531,100,0,0,0,0,0,0,0x04,2000001120,0,0,0,0,0,0,0,'Part of Freed Alliance Scout 27411 EAI: text'),
(20531,5000,0,0,0,0,0,0,0x04,2000001121,0,0,0,0,0,0,0,'Part of Freed Alliance Scout 27411 EAI: text'),
(20531,13000,0,0,0,0,0,0,0x04,2000001122,0,0,0,0,0,0,0,'Part of Freed Alliance Scout 27411 EAI: text'),
(20531,16000,25,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Freed Alliance Scout 27411 EAI: RUN ON'),
(20531,17000,20,2,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Freed Alliance Scout 27411 EAI: waypoints'),
(20531,27000,15,48651,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Freed Alliance Scout 27411 EAI: Cast 48651'),
(20531,27010,0,0,0,0,0,0,0x04,2000001123,0,0,0,0,0,0,0,'Part of Freed Alliance Scout 27411 EAI: text'),
(20531,28500,15,46598,0,0,27409,20,1,0,0,0,0,0,0,0,0,'Part of Freed Alliance Scout 27411 EAI: Cast 46598'),
(20531,31000,0,0,0,0,0,0,0x04,2000001124,0,0,0,0,0,0,0,'Part of Freed Alliance Scout 27411 EAI: text'),
(20531,31010,20,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Freed Alliance Scout 27411 EAI: idle');
DELETE FROM dbscript_string WHERE entry BETWEEN 2000001120 AND 2000001124;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000001120,'Were you bitten?',0,0,7,274,NULL),
(2000001121,'Answer me!  Were you bloody bitten?',0,1,7,5,NULL),
(2000001122,'You don\'t even know, do you?  The trappers?  They\'re not human... we have to get out of here!  Come, quick!',0,0,7,25,NULL),
(2000001123,'Take Ducal\'s horse, he\'s one of them now!',0,0,7,25,NULL),
(2000001124,'There\'s lamp oil in the back - make use of it.  The fiends hate fire!',0,0,7,0,NULL);
UPDATE creature_template SET RegenerateStats = 0 WHERE entry = 27409;
DELETE FROM creature_movement_template WHERE entry = 27409;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(27409,1,4427.231,-2487.371,246.8763,100,0,0),
(27409,2,4439.731,-2474.871,244.1263,100,0,0),
(27409,3,4450.231,-2462.371,242.1263,100,0,0),
(27409,4,4460.981,-2445.371,238.1263,100,0,0),
(27409,5,4480.481,-2433.121,235.3763,100,0,0),
(27409,6,4482.481,-2424.871,234.8763,100,0,0),
(27409,7,4490.731,-2418.371,232.3763,100,0,0),
(27409,8,4500.8,-2412.266,230.2234,100,0,0),
(27409,9,4513.243,-2393.173,222.9229,100,0,0),
(27409,10,4520.99,-2374.492,214.0873,100,0,0),
(27409,11,4526.62,-2353.265,201.4655,100,0,0),
(27409,12,4519.878,-2331.47,190.61,100,0,0),
(27409,13,4501.87,-2310.048,181.36,100,0,0),
(27409,14,4484.828,-2303.546,184.2819,100,0,0),
(27409,15,4457.375,-2298.078,184.2495,100,0,0),
(27409,16,4443.514,-2294.442,187.6245,100,0,0),
(27409,17,4415.563,-2290.887,190.543,100,0,0),
(27409,18,4399.667,-2282.816,191.5332,100,0,0),
(27409,19,4370.157,-2274.146,187.6582,100,0,0),
(27409,20,4335.205,-2275.038,191.9844,100,0,0),
(27409,21,4312.232,-2275.153,201.7034,100,0,0),
(27409,22,4284.226,-2269.068,210.916,100,0,0),
(27409,23,4253.256,-2270.764,213.4014,100,0,0),
(27409,24,4221.248,-2277.436,215.2603,100,0,0),
(27409,25,4192.213,-2285.628,220.3296,100,0,0),
(27409,26,4160.2,-2271.898,222.928,100,0,0),
(27409,27,4124.312,-2270.597,220.7406,100,0,0),
(27409,28,4094.865,-2275.65,218.8955,100,0,0),
(27409,29,4081.022,-2267.798,216.8792,100,0,0),
(27409,30,4065.489,-2259.489,215.865,100,0,0),
(27409,31,4052.476,-2255.44,217.74,100,0,0),
(27409,32,4034.528,-2256.881,218.365,100,0,0),
(27409,33,4021.582,-2250.545,217.322,100,0,0),
(27409,34,3981.944,-2264.207,215.8422,100,0,0),
(27409,35,3966.277,-2269.288,215.3362,100,0,0),
(27409,36,3952.277,-2269.18,212.3362,100,0,0),
(27409,37,3931.951,-2275.707,209.6468,100,0,0),
(27409,38,3922.466,-2283.316,212.2762,100,0,0),
(27409,39,3919.914,-2303.723,209.9463,100,0,0),
(27409,40,3915.415,-2330.356,207.5713,100,0,0),
(27409,41,3908.574,-2356.284,206.1923,100,0,0),
(27409,42,3900.811,-2363.353,206.1923,100,0,0),
(27409,43,3888.022,-2367.574,203.0645,100,0,0),
(27409,44,3867.874,-2372.798,196.4395,100,0,0),
(27409,45,3834.913,-2387.753,188.0473,100,0,0),
(27409,46,3822.484,-2403.545,184.3428,100,0,0),
(27409,47,3816.375,-2418.095,184.8428,100,0,0),
(27409,48,3809.167,-2438.242,185.5716,100,0,0),
(27409,49,3807.758,-2460.549,189.0716,100,0,0),
(27409,50,3808.832,-2480.51,191.8877,100,0,0),
(27409,51,3808.766,-2499.933,195.8877,100,0,0),
(27409,52,3812.021,-2517.952,195.5489,100,0,0),
(27409,53,3817.274,-2532.323,196.7989,100,0,0),
(27409,54,3827.198,-2550.149,196.7685,100,0,0),
(27409,55,3839.727,-2589.692,197.6144,100,0,0),
(27409,56,3847.184,-2605.915,200.2676,100,0,0),
(27409,57,3867.583,-2639.472,202.9787,100,0,0),
(27409,58,3880.854,-2651.817,203.4787,100,0,0),
(27409,59,3886.737,-2662.271,207.4787,100,0,0),
(27409,60,3901.978,-2675.315,213.5333,100,0,0),
(27409,61,3915.575,-2697.126,221.1583,100,0,0),
(27409,62,3900.599,-2742.796,218.7976,100,0,0),
(27409,63,3882.249,-2751.73,222.1409,100,0,0),
(27409,64,3867.24,-2762.568,224.3909,100,0,0),
(27409,65,3852.218,-2771.269,227.9414,100,0,0),
(27409,66,3831.533,-2772.025,226.0874,100,0,0),
(27409,67,3806.802,-2768.314,218.9624,100,0,0),
(27409,68,3785.613,-2774.697,215.3641,100,0,0),
(27409,69,3770.177,-2774.803,211.9891,100,0,0),
(27409,70,3759.599,-2784.104,209.3598,100,0,0),
(27409,71,3746.166,-2796.062,209.7348,100,0,0),
(27409,72,3729.369,-2802.187,209.745,100,0,0),
(27409,73,3712.04,-2814.039,212.87,100,0,0),
(27409,74,3700.114,-2824.23,216.87,100,0,0),
(27409,75,3689.32,-2830.224,217.3856,100,0,0),
(27409,76,3676.646,-2840.348,217.8673,100,0,0),
(27409,77,3666.938,-2851.039,216.7423,100,0,0),
(27409,78,3655.657,-2858.144,215.9471,100,0,0),
(27409,79,3634.925,-2860.837,214.8221,100,0,0),
(27409,80,3599.046,-2859.078,207.3933,100,0,0),
(27409,81,3578.333,-2849.693,200.6433,100,10,2740901),
(27409,82,3543.305,-2829.962,196.7771,100,0,0),
(27409,83,3519.925,-2829.613,200.75,100,0,0),
(27409,84,3493.143,-2828.536,201.3407,100,0,0),
(27409,85,3460.065,-2817.23,201.8686,100,0,0),
(27409,86,3445.913,-2811.972,202.2436,100,100000,2740902);
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 2740901 AND 2740902;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2740901,0,35,5,100,0,0,0,0x04,0,0,0,0,0,0,0,0,'Send Event A'),
(2740902,100,15,50471,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Credit'),
(2740902,1000,15,50491,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Dismount Passengers 1 & 2'),
(2740902,2000,18,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'despawn');
DELETE FROM dbscripts_on_relay WHERE id IN (20532,20533,20534);
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20532,1,21,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of  Ducal\'s Horse 27409 EAI: Active'),
(20532,10,25,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of  Ducal\'s Horse 27409 EAI: RUN ON'),
(20532,2000,20,2,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of  Ducal\'s Horse 27409 EAI: waypoints'),
(20533,100,15,48681,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of  Ducal\'s Horse 27409 EAI: Cast 48681'),
(20533,500,15,48681,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of  Ducal\'s Horse 27409 EAI: Cast 48681'),
(20534,100,15,48681,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of  Ducal\'s Horse 27409 EAI: Cast 48681'),
(20534,500,15,48681,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of  Ducal\'s Horse 27409 EAI: Cast 48681'),
(20534,900,15,48681,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of  Ducal\'s Horse 27409 EAI: Cast 48681');
DELETE FROM npc_spellclick_spells WHERE npc_entry IN (27409);
INSERT INTO npc_spellclick_spells (npc_entry, spell_id, quest_start, quest_start_active, quest_end, cast_flags, condition_id) VALUES (27409,48678,12308,1,12308,1,0);
DELETE FROM creature_template_spells WHERE entry IN (27409);
INSERT INTO creature_template_spells (entry,setId,spell1,spell2,spell3) VALUES (27409,0,48677,48768,48783);
DELETE FROM spell_script_target WHERE entry IN(48682,48683);
DELETE FROM creature_cooldowns WHERE Entry IN(27409);
INSERT INTO creature_cooldowns(Entry, SpellId, CooldownMin, CooldownMax) VALUES (27409,48677,5000,5000);
UPDATE creature_template SET Detection = 40, visibilityDistanceType = 3 WHERE entry = 27417;

DELETE FROM dbscripts_on_quest_end WHERE id = 1945;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1945,0,29,2,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'NPCFlags removed'),
(1945,100,0,0,0,0,0,0,0,2000001112,0,0,0,0,0,0,0,''),
(1945,2000,1,69,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'emote'),
(1945,6000,1,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(1945,8000,0,0,0,0,0,0,0,2000001119,0,0,0,0,0,0,0,''),
(1945,8100,29,2,1,0,0,0,0x04,0,0,0,0,0,0,0,0,'NPCFlags added');
UPDATE quest_template SET CompleteScript = 1945 WHERE entry = 1945;
DELETE FROM dbscript_string WHERE entry IN (2000001112,2000001119);
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000001112,'I shall now begin the robe...',0,0,1,0,NULL),
(2000001119,'Your robe is complete, $n.',0,0,0,2,NULL);
UPDATE conditions SET value2 = 300 WHERE condition_entry =3104;

DELETE FROM dbscripts_on_quest_end WHERE id = 1058;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1058,0,29,2,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'NPCFlags removed'),
(1058,10,21,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'active'),
(1058,100,3,0,0,0,0,0,0x04,0,0,0,0,0,0,0,4.293,''),
(1058,300,1,15,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'emote'),
(1058,500,0,0,0,0,0,0,0,2000001125,0,0,0,0,0,0,0,''),
(1058,3000,1,11,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'emote'),
(1058,3010,35,5,30,0,0,0,0x04,0,0,0,0,0,0,0,0,'start Event 5'),
(1058,3100,0,0,0,0,0,0,0,2000001126,0,0,0,0,0,0,0,''),
(1058,3500,9,609,15,0,0,0,0,0,0,0,0,0,0,0,0,'Resp object (15 secs)'),
(1058,7000,1,10,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'emote'),
(1058,7000,20,2,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'waypoints');
UPDATE `creature` SET `position_x` = '-272.48', `position_y` = '-394.084', `position_z` = '17.2051', `orientation` = '6.19592', `spawntimesecsmin` = '300', `spawntimesecsmax` = '300' WHERE `guid` =36136;
DELETE FROM creature_movement_template WHERE entry = 3995;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(3995,1,-268.79712,-394.27063,17.07457,100,0,0),
(3995,2,-267.84824,-397.92206,17.001093,100,0,0),
(3995,3,-272.5236,-401.22406,17.499857,100,0,0),
(3995,4,-275.462,-400.0495,17.976725,100,0,0),
(3995,5,-277.5242,-398.8621,18.28247,100,0,0),
(3995,6,-279.3214,-397.80872,18.781836,100,0,0),
(3995,7,-279.39975,-395.97427,19.134645,100,0,0),
(3995,8,-276.39703,-393.34952,18.26975,100,0,0),
(3995,9,-273.21127,-392.59613,17.57163,100,0,0),
(3995,10,-272.48004,-394.0844,17.189602,100,5000,399501);
DELETE FROM dbscripts_on_creature_movement WHERE id = 399501;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(399501,0,1,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'reset emote'),
(399501,500,1,11,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'emote'),
(399501,700,0,0,0,0,0,0,0x04,2000001127,0,0,0,0,0,0,0,''),
(399501,2000,3,0,0,0,0,0,0x04,0,0,0,0,0,0,0,6.196,''),
(399501,2100,29,2,1,0,0,0,0x04,0,0,0,0,0,0,0,0,'NPCFlags added'),
(399501,2400,20,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'idle'),
(399501,2500,21,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'unactive');
UPDATE quest_template SET CompleteScript = 1058 WHERE entry = 1058;
DELETE FROM dbscript_string WHERE entry BETWEEN 2000001125 AND 2000001127;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000001125,'%s drops the animal parts into the bubbling cauldron.',0,2,0,0,NULL),
(2000001126,'Ah, feel the magic seep into the cave, my little elves... muhahaha.',0,0,1,0,NULL),
(2000001127,'So much for the power of nature... muhahahaha.',0,0,1,0,NULL);
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(22580, 4072, 1, 1, 1, 0, 0, -265.448, -399.296, 17.2284, 3.735, 60, 60, 0, 0, 484, 0, 0, 0),
(22586, 4072, 1, 1, 1, 0, 0, -267.003, -403.446, 17.5948, 2.3911, 60, 60, 0, 0, 484, 0, 0, 0),
(36030, 4072, 1, 1, 1, 0, 0, -278.16, -401.357, 18.9558, 0.017453, 60, 60, 0, 0, 484, 0, 0, 0);
DELETE FROM gameobject WHERE guid = 609;
DELETE FROM game_event_gameobject WHERE guid = 609;
DELETE FROM gameobject_battleground WHERE guid = 609;
INSERT INTO gameobject (guid, id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax, animprogress, state) VALUES
(609,19544,1,1,1,-274.03995,-396.29688,18.082935,3.9095414,0,0,-0.92718315,0.3746083,-15,-15,255,1);

DELETE FROM dbscripts_on_quest_start WHERE id = 2841;
INSERT INTO dbscripts_on_quest_start (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2841,1,31,3413,30,0,0,0,0,0,0,0,0,0,0,0,0,'search for 3413'),
(2841,10,0,0,0,0,3413,40,0,2000001128,0,0,0,0,0,0,0,'');
UPDATE quest_template SET StartScript = 2841 WHERE entry = 2841;
UPDATE `creature` SET `position_x` = '2036.63', `position_y` = '-4739.49', `position_z` = '29.2431', `orientation` = '3.83972', `spawntimesecsmin` = '300', `spawntimesecsmax` = '300' WHERE `guid` =40216;
DELETE FROM dbscript_string WHERE entry = 2000001128;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000001128,'Come and have a talk with me if you\'re going to go to Gnomeregan, $N!',0,4,0,0,NULL);

UPDATE `creature_template_addon` SET `b2_1_pvp_state` = 0, `auras` = 11966 WHERE `entry` =5850;
UPDATE creature_template SET SchoolImmuneMask=4 WHERE entry IN(5850);
UPDATE creature_template SET SchoolImmuneMask=8 WHERE entry IN(5855);
UPDATE creature_template SET SchoolImmuneMask=8 WHERE entry IN(5720);
UPDATE creature_template SET SchoolImmuneMask=16 WHERE entry IN(8521);
UPDATE quest_template SET SrcSpell=2791 WHERE entry IN(3636);

UPDATE `creature` SET `position_x` = -3909.3005, `position_y` = -2856.9355, `position_z` = 46.41275, spawndist = 0, MovementType = 2 WHERE `guid` = 125221;
DELETE FROM `creature_movement` WHERE `id` = 125221;
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `script_id`, `comment`) VALUES
(125221, 01, -3909.3005, -2856.9355, 46.41275, 100, 0, 0, NULL),
(125221, 02, -3906.187, -2867.874, 46.41446, 100, 0, 0, NULL),
(125221, 03, -3909.3196, -2874.797, 46.39367, 100, 0, 0, NULL),
(125221, 04, -3914.744, -2881.5515, 46.496876, 100, 0, 0, NULL),
(125221, 05, -3926.162, -2886.2568, 46.444557, 100, 0, 0, NULL),
(125221, 06, -3938.5088, -2879.9492, 46.47544, 100, 0, 0, NULL),
(125221, 07, -3945.682, -2873.5781, 46.35539, 100, 0, 0, NULL),
(125221, 08, -3944.7664, -2860.962, 46.425735, 100, 0, 0, NULL),
(125221, 09, -3938.0845, -2851.2046, 46.40167, 100, 0, 0, NULL),
(125221, 10, -3929.1172, -2846.212, 46.545048, 100, 0, 0, NULL),
(125221, 11, -3916.8933, -2848.7935, 46.485435, 100, 0, 0, NULL);
UPDATE `creature` SET `position_x` = -3946.4036, `position_y` = -2836.2786, `position_z` = 41.08114, spawndist = 0, MovementType = 2 WHERE `guid` = 125081;
DELETE FROM `creature_movement` WHERE `id` = 125081;
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `script_id`, `comment`) VALUES
(125081, 01, -3946.4036, -2836.2786, 41.08114, 100, 0, 0, NULL),
(125081, 02, -3951.7878, -2844.3376, 42.45614, 100, 0, 0, NULL),
(125081, 03, -3956.1008, -2849.0186, 42.95614, 100, 0, 0, NULL),
(125081, 04, -3959.5422, -2858.741, 42.95614, 100, 0, 0, NULL),
(125081, 05, -3963.6611, -2870.6353, 42.03979, 100, 0, 0, NULL),
(125081, 06, -3963.165, -2879.7202, 42.41479, 100, 0, 0, NULL),
(125081, 07, -3957.4705, -2887.4875, 41.16479, 100, 0, 0, NULL),
(125081, 08, -3949.28, -2890.755, 40.41479, 100, 0, 0, NULL),
(125081, 09, -3957.4705, -2887.4875, 41.16479, 100, 0, 0, NULL),
(125081, 10, -3963.165, -2879.7202, 42.41479, 100, 0, 0, NULL),
(125081, 11, -3963.6611, -2870.6353, 42.03979, 100, 0, 0, NULL),
(125081, 12, -3959.5422, -2858.741, 42.95614, 100, 0, 0, NULL),
(125081, 13, -3956.1008, -2849.0186, 42.95614, 100, 0, 0, NULL),
(125081, 14, -3951.7878, -2844.3376, 42.45614, 100, 0, 0, NULL);
DELETE FROM `creature` WHERE `guid` = 22618;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(22618, 23637, 1, 1, 0, 0, -3920.3186, -2808.2334, 37.33238, 2.635447263717651367, 120, 240, 0, 0, 1500, 0, 0, 2);
DELETE FROM `creature_movement` WHERE `id` = 22618;
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `script_id`, `comment`) VALUES
(22618, 01, -3920.3186, -2808.2334, 37.33238, 100, 0, 0, NULL),
(22618, 02, -3928.622, -2796.3804, 36.05622, 100, 0, 0, NULL),
(22618, 03, -3937.8652, -2785.8535, 34.772415, 100, 0, 0, NULL),
(22618, 04, -3938.9775, -2776.9534, 34.147415, 100, 5000, 0, NULL),
(22618, 05, -3938.0022, -2785.6926, 34.772415, 100, 0, 0, NULL),
(22618, 06, -3928.7598, -2796.2207, 36.05622, 100, 0, 0, NULL),
(22618, 07, -3921.4016, -2811.4963, 37.721928, 100, 0, 0, NULL),
(22618, 08, -3923.3804, -2857.1501, 46.476215, 100, 5000, 0, NULL);

DELETE FROM dbscripts_on_quest_end WHERE id = 1482;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1482,0,29,2,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'NPCFlags removed'),
(1482,10,21,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'active'),
(1482,100,0,0,0,0,0,0,0,2000001133,0,0,0,0,0,0,0,''),
(1482,3000,0,0,0,0,0,0,0,2000001134,0,0,0,0,0,0,0,''),
(1482,6000,10,5773,24000,0,0,0,0x08,0,0,0,0,-1162.5685,1897.8347,88.96961,5.5179,'summon: Jugkar Grim\'rod\'s Image'),
(1482,6100,3,0,0,0,5773,30,7,0,0,0,0,-1152.5128,1888.1758,88.95251,100,'buddy 1: move'),
(1482,9100,1,25,0,0,5773,30,7,0,0,0,0,0,0,0,0,'buddy 1: emote'),
(1482,11000,0,0,0,0,5773,30,7,2000001135,0,0,0,0,0,0,0,'buddy 1: text'),
(1482,13000,10,5772,15000,0,0,0,0x08,0,0,0,0,-1156.7789,1898.3978,88.94284,5.115,'summon: Lord Azrethoc\'s Image'),
(1482,13100,3,0,0,0,5772,30,7,0,0,0,0,-1154.3131,1892.609,88.95251,100,'buddy 2: move'),
(1482,17000,0,0,0,0,5772,30,7,2000001136,0,0,0,0,0,0,0,'buddy 2: text'),
(1482,20000,15,7961,0,0,5772,30,7,0,0,0,0,0,0,0,0,'buddy 2: cast: 7961'),
(1482,23000,0,0,0,0,5772,30,7,2000001137,0,0,0,0,0,0,0,'buddy 2: text'),
(1482,24000,0,0,0,0,5772,30,7,2000001138,0,0,0,0,0,0,0,'buddy 2: text'),
(1482,27000,1,11,0,0,5772,30,7,0,0,0,0,0,0,0,0,'buddy 2: emote'),
(1482,28000,0,0,0,0,5773,30,7,2000001139,0,0,0,0,0,0,0,'buddy 1: text'),
(1482,32000,0,0,0,0,0,0,0,2000001140,0,0,0,0,0,0,0,''),
(1482,32100,21,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'unactive'),
(1482,32200,29,2,1,0,0,0,0x04,0,0,0,0,0,0,0,0,'NPCFlags added');
UPDATE quest_template SET CompleteScript = 1482 WHERE entry = 1482;
DELETE FROM dbscript_string WHERE entry BETWEEN 2000001133 AND 2000001140;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000001133,'This should only take a moment, $N.',0,0,1,1,NULL),
(2000001134,'I call your true name, Azrethoc. Show your visage to me!',0,0,8,5,NULL),
(2000001135,'Pathetic Forsaken weakling. You wish to see my master? So be it.',0,0,1,0,NULL),
(2000001136,'Who dares to seek me out?!',0,0,8,0,NULL),
(2000001137,'Insects!',0,0,8,0,NULL),
(2000001138,'Come! Come to your deaths--if you dare!',0,0,8,0,NULL),
(2000001139,'Yes, come. My master and I shall be waiting.',0,0,1,0,NULL),
(2000001140,'An interesting turning of events.',0,0,1,1,NULL);
UPDATE creature_template SET UnitFlags = 33555200, MinLevel = 40, MaxLevel = 40 WHERE entry = 5773;
UPDATE creature_template SET Faction = 90, UnitFlags = 33555200, MinLevel = 40, MaxLevel = 40 WHERE entry = 5772;

UPDATE creature_template SET Faction = 83, UnitFlags = 768 WHERE entry = 4972;

DELETE FROM dbscripts_on_event WHERE id = 727;
INSERT INTO dbscripts_on_event (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES 
(727,1,31,4504,100,0,0,0,0x08,0,0,0,0,0,0,0,0,'search for buddy - 4504 - only one available'),
(727,100,10,4504,600000,0,0,0,0x08,0,0,0,0,234.22688,-239.22664,141.32474,2.84,'summon: Frostmaw');
DELETE FROM creature_movement_template WHERE entry = 4504;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(4504,1,221.10156,-254.34375,145.13052,100,0,0),
(4504,2,221.40279,-262.92282,145.25552,100,0,0),
(4504,3,229.7501,-267.23904,145.87318,100,0,0),
(4504,4,241.35802,-267.15924,144.7831,100,0,0),
(4504,5,247.68039,-266.39713,144.98044,100,0,0),
(4504,6,261.16113,-267.38702,144.8716,100,15000,450401),
(4504,7,248.05843,-267.17468,145.08376,100,0,0),
(4504,8,242.37035,-266.9359,144.5908,100,0,0),
(4504,9,237.8304,-267.07703,145.80971,100,0,0),
(4504,10,229.01921,-267.1084,145.80151,100,0,0),
(4504,11,222.44646,-260.98682,145.13052,100,0,0),
(4504,12,222.2341,-253.12283,144.81778,100,0,0),
(4504,13,230.49452,-242.26663,142.41824,100,1000,450402);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (450401,450402);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(450401,100,0,0,0,0,0,0,0x04,2000001129,0,0,0,0,0,0,0,''),
(450402,100,0,0,0,0,0,0,0x04,2000001130,0,0,0,0,0,0,0,''),
(450402,200,18,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'despawn self');
DELETE FROM dbscript_string WHERE entry BETWEEN 2000001129 AND 2000001130;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000001129,'%s devours the carcass!',0,2,0,0,NULL),
(2000001130,'%s disappears into the snow.',0,2,0,0,NULL);
UPDATE creature_template SET MovementType = 2 WHERE entry = 4504;

DELETE FROM dbscripts_on_quest_end WHERE id = 1371;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1371,1,31,5723,30,0,0,0,0x08,0,0,0,0,0,0,0,0,'search for buddy - 5723 - only one available'),
(1371,10,21,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'active'),
(1371,100,3,0,0,0,0,0,0x04,0,0,0,0,0,0,0,5.4279,''),
(1371,300,0,0,0,0,0,0,0,2000001141,0,0,0,0,0,0,0,''),
(1371,700,10,5723,20000,0,0,0,0x08,0,132,0,0,-1587.3715,857.94293,112.21583,2.042,'summon: Warug\'s Target Dummy'), -- has faction 132
(1371,10000,0,0,0,0,0,0,0,2000001142,0,0,0,0,0,0,0,''),
(1371,14000,1,35,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(1371,15000,15,8329,0,0,5723,30,7,0,0,0,0,0,0,0,0,''),
(1371,15300,0,0,0,0,0,0,0,2000001143,0,0,0,0,0,0,0,''),
(1371,16000,3,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0.8726,''),
(1371,16500,21,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'unactive');
UPDATE quest_template SET CompleteScript = 1371 WHERE entry = 1371;
DELETE FROM dbscript_string WHERE entry BETWEEN 2000001141 AND 2000001143;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000001141,'Hah!  Let us see the wooden human wave!',0,0,0,0,NULL),
(2000001142,'%s laughs.',0,2,0,0,NULL),
(2000001143,'Hahah!  That was funny!  Funny wooden human!',0,0,0,0,NULL);
DELETE FROM creature_template_addon WHERE entry = 5723;
INSERT INTO creature_template_addon VALUES (5723,0,0,1,0,0,0,'4048');
DELETE FROM dbscripts_on_creature_death WHERE id = 5723;
INSERT INTO dbscripts_on_creature_death (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(5723,0,18,4000,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'despawn self');

DELETE FROM npc_vendor WHERE entry = 6776;
UPDATE creature_template SET NpcFlags = 0 WHERE entry = 6776;
DELETE FROM creature WHERE guid = 39500;
UPDATE creature SET position_x = 2718.5, position_y = -106.26, position_z = 96.052, spawndist = 5, MovementType = 1 WHERE guid = 40965;

# 14033_01_mangos_command.sql
DELETE FROM command WHERE name IN ('combatstop', 'combat stop', 'gm', 'gm visible', 'gm chat', 'character deleted list', 'gm setview', 'movement movespeed', 'movement movegens', 'gm ingame', 'gm mountup');
INSERT INTO `command`(`name`, `security`, `help`) VALUES
('combat stop', 2, 'Syntax: .combatstop [$playername]\r\nStop combat for selected character. If selected non-player then command applied to self. If $playername provided then attempt applied to online player $playername.'),
('gm', 3, 'Syntax: .gm [on/off]\r\n\r\nEnable or Disable in game GM MODE or show current state of on/off not provided.'),
('gm visible', 3, 'Syntax: .gm visible on/off\r\n\r\nOutput current visibility state or make GM visible(on) and invisible(off) for other players.'),
('gm chat', 3, 'Syntax: .gm chat [on/off]\r\n\r\nEnable or disable chat GM MODE (show gm badge in messages) or show current state of on/off not provided.'),
('character deleted list', 4, 'Syntax: .character deleted list [#guid|$name]\r\n\r\nShows a list with all deleted characters.\r\nIf $name is supplied, only characters with that string in their name will be selected, if #guid is supplied, only the character with that GUID will be selected.'),
('gm setview', 3, 'Syntax: .gm setview\r\n\r\nSet farsight view on selected unit. Select yourself to set view back.'),
('movement movespeed', 2, 'Syntax: .movement movespeed  Show speed of selected creature.'),
('movement movegens', 2, 'Syntax: .movement movegens  Show movement generators stack for selected creature or player.'),
('gm ingame', 3, 'Syntax: .gm ingame\r\n\r\nDisplay a list of available in game Game Masters.'),
('gm mountup', 3, 'Syntax: .gm mountup [fast|slow|#displayid|target]\r\n\r\nIf #displayid is provided, visually mounts your character on a provided creature likeness. If your target is a creature and corresponding arg is provided, visually mounts your character on the likeness of targeted creature. In other cases this command mounts your character on a random unusual land mount according to provided or omitted args.');

DELETE FROM pet_levelstats WHERE creature_entry = 32663;
INSERT INTO pet_levelstats (creature_entry, level, hp, mana, armor, str, agi, sta, inte, spi) VALUES
(32663,1,42,0,7,0,0,0,0,0),
(32663,2,55,0,8,0,0,0,0,0),
(32663,3,71,0,33,0,0,0,0,0),
(32663,4,86,0,68,0,0,0,0,0),
(32663,5,102,0,111,0,0,0,0,0),
(32663,6,120,0,165,0,0,0,0,0),
(32663,7,137,0,230,0,0,0,0,0),
(32663,8,156,0,306,0,0,0,0,0),
(32663,9,176,0,387,0,0,0,0,0),
(32663,10,198,0,463,0,0,0,0,0),
(32663,11,222,0,528,0,0,0,0,0),
(32663,12,247,0,562,0,0,0,0,0),
(32663,13,273,0,596,0,0,0,0,0),
(32663,14,300,0,630,0,0,0,0,0),
(32663,15,328,0,665,0,0,0,0,0),
(32663,16,356,0,700,0,0,0,0,0),
(32663,17,386,0,734,0,0,0,0,0),
(32663,18,417,0,768,0,0,0,0,0),
(32663,19,449,0,802,0,0,0,0,0),
(32663,20,484,0,836,0,0,0,0,0),
(32663,21,521,0,872,0,0,0,0,0),
(32663,22,562,0,906,0,0,0,0,0),
(32663,23,605,0,940,0,0,0,0,0),
(32663,24,651,0,975,0,0,0,0,0),
(32663,25,699,0,1008,0,0,0,0,0),
(32663,26,750,0,1043,0,0,0,0,0),
(32663,27,800,0,1078,0,0,0,0,0),
(32663,28,853,0,1111,0,0,0,0,0),
(32663,29,905,0,1145,0,0,0,0,0),
(32663,30,955,0,1179,0,0,0,0,0),
(32663,31,1006,0,1213,0,0,0,0,0),
(32663,32,1057,0,1249,0,0,0,0,0),
(32663,33,1110,0,1281,0,0,0,0,0),
(32663,34,1163,0,1317,0,0,0,0,0),
(32663,35,1220,0,1349,0,0,0,0,0),
(32663,36,1277,0,1456,0,0,0,0,0),
(32663,37,1336,0,1568,0,0,0,0,0),
(32663,38,1395,0,1684,0,0,0,0,0),
(32663,39,1459,0,1808,0,0,0,0,0),
(32663,40,1524,0,1938,0,0,0,0,0),
(32663,41,1585,0,2074,0,0,0,0,0),
(32663,42,1651,0,2218,0,0,0,0,0),
(32663,43,1716,0,2369,0,0,0,0,0),
(32663,44,1782,0,2528,0,0,0,0,0),
(32663,45,1848,0,2695,0,0,0,0,0),
(32663,46,1919,0,2750,0,0,0,0,0),
(32663,47,1990,0,2804,0,0,0,0,0),
(32663,48,2062,0,2857,0,0,0,0,0),
(32663,49,2138,0,2912,0,0,0,0,0),
(32663,50,2215,0,2966,0,0,0,0,0),
(32663,51,2292,0,3018,0,0,0,0,0),
(32663,52,2371,0,3074,0,0,0,0,0),
(32663,53,2453,0,3128,0,0,0,0,0),
(32663,54,2533,0,3180,0,0,0,0,0),
(32663,55,2614,0,3234,0,0,0,0,0),
(32663,56,2699,0,3289,0,0,0,0,0),
(32663,57,2784,0,3342,0,0,0,0,0),
(32663,58,3989,0,3396,0,0,0,0,0),
(32663,59,4142,0,3449,0,0,0,0,0),
(32663,60,4979,0,3750,0,0,0,0,0),
(32663,61,5158,0,4047,0,0,0,0,0),
(32663,62,5341,0,4344,0,0,0,0,0),
(32663,63,5527,0,4641,0,0,0,0,0),
(32663,64,5715,0,4937,0,0,0,0,0),
(32663,65,5914,0,5234,0,0,0,0,0),
(32663,66,6116,0,5531,0,0,0,0,0),
(32663,67,6326,0,5829,0,0,0,0,0),
(32663,68,6542,0,6126,0,0,0,0,0),
(32663,69,6761,0,6423,0,0,0,0,0),
(32663,70,6986,0,6719,0,0,0,0,0),
(32663,71,7181,0,7018,0,0,0,0,0),
(32663,72,7380,0,7318,0,0,0,0,0),
(32663,73,7588,0,7618,0,0,0,0,0),
(32663,74,7804,0,7918,0,0,0,0,0),
(32663,75,8025,0,8219,0,0,0,0,0),
(32663,76,8247,0,8520,226,84,339,62,102),
(32663,77,8480,0,8822,249,91,344,62,104),
(32663,78,8715,0,9124,0,0,0,0,0),
(32663,79,8960,0,9426,0,0,0,0,0),
(32663,80,9215,0,9729,0,0,0,0,0);
#(32663,81,9474,0,10033,0,0,0,0,0),
#(32663,82,9741,0,10356,0,0,0,0,0),
#(32663,83,10019,0,10673,0,0,0,0,0),
#(32663,84,10300,0,10990,0,0,0,0,0),
#(32663,85,10595,0,11307,0,0,0,0,0);
DELETE FROM creature_template_spells WHERE entry = 32663;
INSERT INTO creature_template_spells(entry, spell1, spell2, spell3, spell4, spell5, spell6, spell7, spell8) VALUES (32663,0,0,0,47031,0,0,0,0);

DELETE FROM dbscripts_on_gossip WHERE id IN (930100);
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(930100,0,15,61545,0,0,0,0,0,0,0,0,0,0,0,0,0,'Summon Budd'),
(930100,900,48,768,1,0,32663,50,7|0x20,0,0,0,0,0,0,0,0,'Budd - set correct UnitFlags'),
(930100,1000,15,47014,0,0,32663,50,32,0,0,0,0,0,0,0,0,'Budd - Cast Budd\s Attention Span'),
(930100,1100,15,47025,0,0,32663,50,7|0x20,0,0,0,0,0,0,0,0,'Budd - Cast Attention Span'),
(930100,1300,15,47019,0,0,32663,50,7|0x20,0,0,0,0,0,0,0,0,'Budd - Cast Budd Pet Periodic Trigger'),
(930100,1500,18,0,0,0,0,0,4,0,0,0,0,0,0,0,0,'despawn static Budd'),
(930100,2000,0,0,0,0,32663,50,7|0x20,2000001144,0,0,0,0,0,0,0,'Budd - say');
DELETE FROM spell_script_target WHERE entry IN (47035);
INSERT INTO spell_script_target (entry,type,targetEntry,inverseEffectMask) VALUES (47035,1,26425,6), (47035,1,26447,6);
DELETE FROM dbscripts_on_relay WHERE id = 20535;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20535,100,15,47035,0,0,32663,5,7|0x20,0,0,0,0,0,0,0,0,'Part of Drakkari Warrior/Shaman EAI: buddy Cast 47035');
DELETE FROM dbscripts_on_spell WHERE id IN (47027);
INSERT INTO dbscripts_on_spell (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(47027,0,0,20222,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'32663 - Random OOC Texts');
DELETE FROM dbscript_string WHERE entry BETWEEN 2000001144 AND 2000001150;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000001144,'Ey, mon! Take me to mah troll bruddas!',0,0,0,0,NULL),
(2000001145,'Time to play some troll tag, mon!',0,0,0,0,NULL),
(2000001146,'My troll bruddas be in for some real fun today, mon!',0,0,0,0,NULL),
(2000001147,'Hee hee hee! Dis gunna be some fun, mon!',0,0,0,0,NULL),
(2000001148,'You sure we be goin\' da right way, mon?',0,0,0,0,NULL),
(2000001149,'<sniff, sniff> I can smell \'em, mon.',0,0,0,0,NULL),
(2000001150,'Nuttin\' says luvin\' like a little tap on da noggin.',0,0,0,0,NULL);
DELETE FROM dbscript_random_templates WHERE id = 20222;
INSERT INTO dbscript_random_templates (id, type, target_id, chance, comments) VALUES
(20222,0,2000001145,0,'32663 - Random OOC Texts'),
(20222,0,2000001146,0,'32663 - Random OOC Texts'),
(20222,0,2000001147,0,'32663 - Random OOC Texts'),
(20222,0,2000001148,0,'32663 - Random OOC Texts'),
(20222,0,2000001149,0,'32663 - Random OOC Texts'),
(20222,0,2000001150,0,'32663 - Random OOC Texts');

DELETE FROM dbscripts_on_quest_start WHERE id = 9539;
INSERT INTO dbscripts_on_quest_start (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(9539,1,34,3519,0,0,0,0,6,0,0,0,0,0,0,0,0,'aura check - terminate if present on Player'),
(9539,10,15,30437,0,0,0,0,6,0,0,0,0,0,0,0,0,'Cast: Stillpine Ancestor Akida TRIGGER');
UPDATE quest_template SET StartScript = 9539 WHERE entry = 9539;
DELETE FROM dbscripts_on_quest_end WHERE id = 9539;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(9539,0,14,30426,0,0,0,0,6,0,0,0,0,0,0,0,0,'Remove aura from Player');
UPDATE quest_template SET CompleteScript = 9539 WHERE entry = 9539;
DELETE FROM conditions WHERE condition_entry = 3519;
INSERT INTO conditions (condition_entry, type, value1, value2, flags) VALUES (3519,1,30426,1,0);
DELETE FROM dbscripts_on_relay WHERE id IN (19997);
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(19997,1,21,1,0,0,0,0,2,0,0,0,0,0,0,0,0,'Part of Stillpine Ancestor Akida 17379 EAI: Active'),
(19997,500,25,1,0,0,0,0,2,0,0,0,0,0,0,0,0,'Part of Stillpine Ancestor Akida 17379 EAI: RUN ON'),
(19997,1000,36,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Part of Stillpine Ancestor Akida 17379 EAI: face Player'),
(19997,3000,0,0,0,0,0,0,2,2000001602,0,0,0,0,0,0,0,'Part of Stillpine Ancestor Akida 17379 EAI: text'),
(19997,4000,20,2,0,0,0,0,2,0,0,0,0,0,0,0,0,'Part of Stillpine Ancestor Akida 17379 EAI: movement chenged to 2:waypoint');
DELETE FROM creature_movement_template WHERE entry = 17379;
INSERT INTO creature_movement_template (entry, pathId, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(17379,0,1,-4156.91,-12516.1,45.0017,100,0,0),
(17379,0,2,-4134.95,-12516.6,44.8959,100,0,0),
(17379,0,3,-4123.49,-12517.2,44.8246,100,0,0),
(17379,0,4,-4097.6,-12522.4,42.0019,100,0,0),
(17379,0,5,-4077.12,-12530.6,43.7753,100,0,0),
(17379,0,6,-4060.63,-12538.1,44.1549,100,0,0),
(17379,0,7,-4050.65,-12546.2,42.2335,100,0,0),
(17379,0,8,-4034.49,-12560.5,44.9926,100,0,0),
(17379,0,9,-4016.73,-12579.5,49.464,100,0,0),
(17379,0,10,-4003.06,-12595.4,53.3469,100,0,0),
(17379,0,11,-3989.72,-12611.6,59.1497,100,0,0),
(17379,0,12,-3970.6,-12636.3,64.4018,100,0,0),
(17379,0,13,-3959.1,-12651.6,71.234,100,0,0),
(17379,0,14,-3945.98,-12669.7,75.8562,100,0,0),
(17379,0,15,-3937.34,-12685.6,81.0235,100,0,0),
(17379,0,16,-3925.95,-12719,89.6782,100,0,0),
(17379,0,17,-3915.91,-12743.4,98.6952,100,15000,1737901);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (1737901,1737902);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1737901,2000,36,0,0,0,17361,50,1,0,0,0,0,0,0,0,0,'face Player'),
(1737901,3000,0,0,0,0,0,0,0,2000001603,0,0,0,0,0,0,0,''),
(1737901,8000,15,30428,0,0,0,0,4,0,0,0,0,0,0,0,0,''),
(1737901,8100,21,0,0,0,0,0,4,0,0,0,0,0,0,0,0,'unactive'),
(1737901,9000,18,0,0,0,0,0,4,0,0,0,0,0,0,0,0,'');
DELETE FROM dbscripts_on_quest_start WHERE id = 9540;
INSERT INTO dbscripts_on_quest_start (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(9540,1,34,3520,0,0,0,0,6,0,0,0,0,0,0,0,0,'aura check - terminate if present on Player'),
(9540,10,15,30442,0,0,0,0,6,0,0,0,0,0,0,0,0,'Cast: Stillpine Ancestor Coo TRIGGER');
UPDATE quest_template SET StartScript = 9540 WHERE entry = 9540;
DELETE FROM dbscripts_on_quest_end WHERE id = 9540;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(9540,0,14,30429,0,0,0,0,6,0,0,0,0,0,0,0,0,'Remove aura from Player');
UPDATE quest_template SET CompleteScript = 9540 WHERE entry = 9540;
DELETE FROM conditions WHERE condition_entry = 3520;
INSERT INTO conditions (condition_entry, type, value1, value2, flags) VALUES (3520,1,30429,1,0);
DELETE FROM dbscripts_on_relay WHERE id IN (19996);
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(19996,1,21,1,0,0,0,0,2,0,0,0,0,0,0,0,0,'Part of Stillpine Ancestor Coo 17391 EAI: Active'),
(19996,1000,36,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Part of Stillpine Ancestor Coo 17391 EAI: face Player'),
(19996,3000,0,0,0,0,0,0,2,2000001604,0,0,0,0,0,0,0,'Part of Stillpine Ancestor Coo 17391 EAI: text'),
(19996,6000,3,0,0,0,0,0,2,0,0,0,0,-3925.63,-12752,97.7171,4.78528,'Part of Stillpine Ancestor Coo 17391 EAI: move'),
(19996,8000,3,0,0,0,0,0,2,0,0,0,0,-3925.8,-12755.8,99.4512,4.87481,'Part of Stillpine Ancestor Coo 17391 EAI: move'),
(19996,10000,3,0,0,0,0,0,2,0,0,0,0,-3924.27,-12761.5,101.829,4.9861,'Part of Stillpine Ancestor Coo 17391 EAI: move'),
(19996,13000,0,0,0,0,0,0,2,2000001605,0,0,0,0,0,0,0,'Part of Stillpine Ancestor Coo 17391 EAI: text'),
(19996,17000,15,36456,0,0,0,0,2,0,0,0,0,0,0,0,0,'Part of Stillpine Ancestor Coo 17391 EAI: Player Cast 36456'),
(19996,17100,20,2,0,0,0,0,2,0,0,0,0,0,0,0,0,'Part of Stillpine Ancestor Coo 17391 EAI: movement chenged to 2:waypoint');
DELETE FROM creature_movement_template WHERE entry = 17391;
INSERT INTO creature_movement_template (entry, pathId, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(17391,0,1,-3924.27,-12761.5,101.829,4.9861,7000,1739101),
(17391,0,2,-3923.5,-12795,107.213,4.87004,0,0),
(17391,0,3,-3923.5,-12795,107.213,4.87004,2000,1739102);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (1739101,1739102);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1739101,2000,0,0,0,0,0,0,0x04,2000001606,0,0,0,0,0,0,0,''),
(1739101,3000,0,0,0,0,0,0,0x04,2000001607,0,0,0,0,0,0,0,''),
(1739101,4000,23,17019,0,0,0,0,0x04|0x08,0,0,0,0,0,0,0,0,'morph'),
(1739101,5000,39,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(1739102,100,21,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'unactive'),
(1739102,1000,18,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'despawn Self');
DELETE FROM dbscripts_on_quest_start WHERE id = 9541;
INSERT INTO dbscripts_on_quest_start (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(9541,1,34,3521,0,0,0,0,6,0,0,0,0,0,0,0,0,'aura check - terminate if present on Player'),
(9541,10,15,30443,0,0,0,0,6,0,0,0,0,0,0,0,0,'Cast: Stillpine Ancestor Tikti TRIGGER');
UPDATE quest_template SET StartScript = 9541 WHERE entry = 9541;
DELETE FROM dbscripts_on_quest_end WHERE id = 9541;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(9541,0,14,30432,0,0,0,0,6,0,0,0,0,0,0,0,0,'Remove aura from Player');
UPDATE quest_template SET CompleteScript = 9541 WHERE entry = 9541;
DELETE FROM conditions WHERE condition_entry = 3521;
INSERT INTO conditions (condition_entry, type, value1, value2, flags) VALUES (3521,1,30432,1,0);
DELETE FROM dbscripts_on_relay WHERE id IN (19995);
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(19995,1,21,1,0,0,0,0,2,0,0,0,0,0,0,0,0,'Part of Stillpine Ancestor Tikti 17392 EAI: Active'),
(19995,1000,36,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Part of Stillpine Ancestor Tikti 17392 EAI: face Player'),
(19995,2000,0,0,0,0,0,0,2,2000001608,0,0,0,0,0,0,0,'Part of Stillpine Ancestor Tikti 17392 EAI: text'),
(19995,3000,20,2,0,0,0,0,2,0,0,0,0,0,0,0,0,'Part of Stillpine Ancestor Tikti 17392 EAI: movement chenged to 2:waypoint');
DELETE FROM creature_movement_template WHERE entry = 17392;
INSERT INTO creature_movement_template (entry, pathId, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(17392,0,1,-3885.67,-13096.5,3.56423,1.65068,13000,1739201),
(17392,0,2,-3913.36,-13055.2,-4.82595,100,0,0),
(17392,0,3,-3951.4,-13033.9,-8.45508,100,2000,1739102);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (1739201);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1739201,2000,0,0,0,0,0,0,0x04,2000001609,0,0,0,0,0,0,0,''),
(1739201,7000,35,5,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Send Event AI 5'),
(1739201,9000,0,0,0,0,0,0,0x04,2000001610,0,0,0,0,0,0,0,''),
(1739201,11000,15,30431,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'');
DELETE FROM dbscripts_on_quest_start WHERE id = 9542;
INSERT INTO dbscripts_on_quest_start (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(9542,1,34,3522,0,0,0,0,6,0,0,0,0,0,0,0,0,'aura check - terminate if present on Player'),
(9542,10,15,30444,0,0,0,0,6,0,0,0,0,0,0,0,0,'Cast: Stillpine Ancestor Yor TRIGGER');
UPDATE quest_template SET StartScript = 9542 WHERE entry = 9542;
DELETE FROM dbscripts_on_quest_end WHERE id = 9542;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(9542,0,14,30445,0,0,0,0,6,0,0,0,0,0,0,0,0,'Remove aura from Player');
UPDATE quest_template SET CompleteScript = 9542 WHERE entry = 9542;
DELETE FROM conditions WHERE condition_entry = 3522;
INSERT INTO conditions (condition_entry, type, value1, value2, flags) VALUES (3522,1,30445,1,0);
UPDATE creature_template SET SpeedWalk=2.5/2.5, SpeedRun=6/7 WHERE entry = 17393;
DELETE FROM dbscripts_on_relay WHERE id IN (19994,19993);
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(19994,1,21,1,0,0,0,0,2,0,0,0,0,0,0,0,0,'Part of Stillpine Ancestor Yor 17393 EAI: Active'),
(19994,1000,36,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Part of Stillpine Ancestor Yor 17393 EAI: face Player'),
(19994,2000,0,0,0,0,0,0,2,2000001611,0,0,0,0,0,0,0,'Part of Stillpine Ancestor Yor 17393 EAI: text'),
(19994,3000,20,2,0,0,0,0,2,0,0,0,0,0,0,0,0,'Part of Stillpine Ancestor Tikti 17392 EAI: movement chenged to 2:waypoint'),
(19993,0,0,0,0,0,0,0,2,2000001614,0,0,0,0,0,0,0,'Part of Stillpine Ancestor Yor 17393 EAI: text');
DELETE FROM creature_movement_template WHERE entry = 17393;
INSERT INTO creature_movement_template (entry, pathId, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(17393,0,1,-4646.63,-13015.4,-1.38673,1.6751,4000,1739301),
(17393,0,2,-4679.14,-12985,0.5803,1.93085,12000,1739302),
(17393,0,3,-4679.14,-12985,0.5803,100,100,5),
(17393,0,4,-4680.61,-12963.3,2.66436,100,0,0),
(17393,0,5,-4681.2,-12949.7,5.54,100,0,0),
(17393,0,6,-4682.73,-12929.5,3.47035,100,0,0),
(17393,0,7,-4667.73,-12909.8,1.50962,100,0,0),
(17393,0,8,-4647.96,-12887.9,2.97161,100,0,0),
(17393,0,9,-4639.09,-12877.2,4.9471,100,0,0),
(17393,0,10,-4630.71,-12855.1,4.28118,100,0,0),
(17393,0,11,-4620.17,-12829.9,6.06746,100,0,0),
(17393,0,12,-4612,-12814,7.12509,100,0,0),
(17393,0,13,-4601.96,-12795.7,3.27105,100,0,0),
(17393,0,14,-4588.53,-12774.2,7.44323,100,0,0),
(17393,0,15,-4575.77,-12760.8,6.10979,100,0,0),
(17393,0,16,-4563.73,-12744.2,9.99685,100,0,0),
(17393,0,17,-4554.96,-12729,12.2105,100,0,0),
(17393,0,18,-4547.41,-12712.1,9.81412,100,0,0),
(17393,0,19,-4538.2,-12689.2,12.5838,100,0,0),
(17393,0,20,-4533.22,-12668.1,16.8651,100,0,0),
(17393,0,21,-4532.96,-12656.8,15.2664,100,0,0),
(17393,0,22,-4532.78,-12637.9,16.5789,100,0,0),
(17393,0,23,-4533.02,-12619.1,12.0263,100,0,0),
(17393,0,24,-4532.77,-12592.5,14.642,100,0,0),
(17393,0,25,-4535.16,-12572.5,11.9603,100,0,0),
(17393,0,26,-4521.38,-12547.2,8.20642,100,0,0),
(17393,0,27,-4506.74,-12520.5,2.71515,100,0,0),
(17393,0,28,-4492.57,-12495.4,4.36968,100,0,0),
(17393,0,29,-4476.92,-12469.2,2.26036,100,0,0),
(17393,0,30,-4462.38,-12438.4,2.68436,100,0,0),
(17393,0,31,-4430.42,-12442,2.38524,100,0,0),
(17393,0,32,-4419.91,-12429.3,3.2091,100,0,0),
(17393,0,33,-4408.61,-12400.1,5.02559,100,0,0),
(17393,0,34,-4414.42,-12370.4,5.99229,100,0,0),
(17393,0,35,-4423.44,-12345,8.29463,100,0,0),
(17393,0,36,-4435.58,-12315.7,10.3162,100,0,0),
(17393,0,37,-4457.19,-12304.2,12.3064,100,0,0),
(17393,0,38,-4475.24,-12294,13.9122,100,0,0),
(17393,0,39,-4490.89,-12279.7,15.2792,1.9232,0,0),
(17393,0,40,-4503.42,-12249.6,16.3871,1.97033,0,0),
(17393,0,41,-4510.15,-12229.8,17.1362,1.87215,0,0),
(17393,0,42,-4513.27,-12209.5,16.9777,1.70329,0,0),
(17393,0,43,-4513.64,-12189.1,16.9593,100,0,0),
(17393,0,44,-4502.99,-12158,16.1291,100,0,0),
(17393,0,45,-4508.94,-12122.7,16.9898,100,0,0),
(17393,0,46,-4505.31,-12095.6,18.8873,100,0,0),
(17393,0,47,-4500.36,-12071.2,21.4168,100,0,0),
(17393,0,48,-4516.81,-12050.5,24.2492,100,0,0),
(17393,0,49,-4528.22,-12037.5,26.0347,100,0,0),
(17393,0,50,-4531.9,-12008.6,28.4037,100,0,0),
(17393,0,51,-4538.61,-11984.4,29.7635,100,0,0),
(17393,0,52,-4543.79,-11963.5,29.1954,100,0,0),
(17393,0,53,-4537.48,-11934.2,27.0094,100,0,0),
(17393,0,54,-4533.18,-11906.3,22.686,100,0,0),
(17393,0,55,-4504.71,-11879,17.5661,100,0,0),
(17393,0,56,-4500.36,-11845.7,15.0063,100,0,0),
(17393,0,57,-4510.63,-11816.8,13.8306,100,0,0),
(17393,0,58,-4531.7,-11786.6,15.5384,100,0,0),
(17393,0,59,-4555.94,-11756.9,17.6289,100,0,0),
(17393,0,60,-4546.7,-11735.9,19.533,100,0,0),
(17393,0,61,-4535.96,-11712.4,18.2368,100,0,0),
(17393,0,62,-4519.88,-11702.4,17.8815,100,0,0),
(17393,0,63,-4507,-11694.5,13.2184,100,0,0),
(17393,0,64,-4490.14,-11673,10.8723,100,0,0),
(17393,0,65,-4486.34,-11658,10.6353,1.51827,10000,1739303);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (1739301,1739302,1739303);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1739301,2000,15,30446,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(1739302,2000,0,0,0,0,0,0,0x04,2000001612,0,0,0,0,0,0,0,''),
(1739302,5000,15,30447,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(1739302,5100,35,5,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Send Event AI 5'),
(1739302,6000,25,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'RUN ON'),
(1739302,7000,0,0,0,0,0,0,0x04,2000001613,0,0,0,0,0,0,0,''),
(1739303,100,35,6,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Send Event AI 6'),
(1739303,5000,21,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'unactive'),
(1739303,5500,18,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'despawn Self');

DELETE FROM creature_movement_template WHERE entry=4627;
INSERT INTO creature_movement_template VALUES
(4627,0,1,-159.547,2178.11,128.944,0,0,0,'Arugal Voidwalker - top of stairs'),
(4627,0,2,-171.113,2182.69,129.255,0,0,0,''),
(4627,0,3,-177.613,2175.59,128.161,0,0,0,''),
(4627,0,4,-185.396,2178.35,126.413,0,0,0,''),
(4627,0,5,-184.004,2188.31,124.122,0,0,0,''),
(4627,0,6,-172.781,2188.71,121.611,0,0,0,''),
(4627,0,7,-173.245,2176.93,119.085,0,0,0,''),
(4627,0,8,-183.145,2176.04,116.995,0,0,0,''),
(4627,0,9,-185.551,2185.77,114.784,0,0,0,''),
(4627,0,10,-177.502,2190.75,112.681,0,0,0,''),
(4627,0,11,-171.218,2182.61,110.314,0,0,0,''),
(4627,0,12,-173.857,2175.1,109.255,0,0,0,'Arugal Voidwalker - bottom of stairs'),
(4627,0,13,-171.218,2182.61,110.314,0,0,0,''),
(4627,0,14,-177.502,2190.75,112.681,0,0,0,''),
(4627,0,15,-185.551,2185.77,114.784,0,0,0,''),
(4627,0,16,-183.145,2176.04,116.995,0,0,0,''),
(4627,0,17,-173.245,2176.93,119.085,0,0,0,''),
(4627,0,18,-172.781,2188.71,121.611,0,0,0,''),
(4627,0,19,-184.004,2188.31,124.122,0,0,0,''),
(4627,0,20,-185.396,2178.35,126.413,0,0,0,''),
(4627,0,21,-177.613,2175.59,128.161,0,0,0,''),
(4627,0,22,-171.113,2182.69,129.255,0,0,0,''),
(4627,0,23,-159.547,2178.11,128.944,0,0,0,'');

DELETE FROM dbscripts_on_creature_movement WHERE id IN (1450012);

UPDATE creature_template SET UnitFlags=33554432 WHERE entry=14989;

DELETE FROM dbscripts_on_event WHERE id = 3084; 
INSERT INTO dbscripts_on_event (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(3084,1,31,8446,100,0,0,0,0x08,0,0,0,0,0,0,0,0,'search for 8446 - terminate if alive'),
(3084,10,31,8392,100,0,0,0,0x08,0,0,0,0,0,0,0,0,'search for 8392 - terminate if alive'),
(3084,1000,10,8446,300000,0,0,0,0x08,0,0,0,0,2232.997,-7296.536,23.60208,0.4773213,'summon: Xiggs Fuselighter\'s Flyingmachine'),
(3084,29000,10,8392,300000,0,0,0,0x08,1,0,0,0,2250.676,-7222.611,14.00366,1.343904,'summon: Pilot Xiggs Fuselighter'),
(3084,29900,31,8392,100,0,0,0,0,0,0,0,0,0,0,0,0,'search for 8392'),
(3084,30000,0,0,0,0,8392,50,3,2000001131,0,0,0,0,0,0,0,'Pilot Xiggs Fuselighter: text');
DELETE FROM dbscript_string WHERE entry = 2000001131;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000001131,'Been waitin\' for ya, $n. Glad to see you\'ve come through. Do you have the shipment?',0,0,0,3,NULL);
DELETE FROM creature WHERE guid IN (53469,78161);
UPDATE creature_template SET UnitFlags = 33536 WHERE Entry =8446;
UPDATE creature_template SET UnitFlags = 33280 WHERE Entry =8392;
UPDATE creature_template SET InhabitType = 4, MovementType = 2 WHERE entry = 8446;
DELETE FROM creature_movement_template WHERE entry = 8446;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(8446,1,2256.533,-7223.155,15.21833,100,5000,3);

DELETE FROM dbscripts_on_quest_end WHERE id = 5154;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(5154,0,0,0,0,0,0,0,0,2000001151,0,0,0,0,0,0,0,''),
(5154,100,15,17285,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Cast: Enchant Annals of Darrowshire'),
(5154,5000,0,0,0,0,0,0,0,2000001152,0,0,0,0,0,0,0,'');
UPDATE quest_template SET CompleteScript = 5154 WHERE entry = 5154;
DELETE FROM dbscript_string WHERE entry BETWEEN 2000001151 AND 2000001152;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000001151,'Let\'s find out the whole story.  That\'s going to take some magic...',0,0,0,0,NULL),
(2000001152,'There, it is done.  The book has been enhanced...',0,0,0,0,NULL);
UPDATE gameobject SET spawntimesecsmin = 60, spawntimesecsmax = 60 WHERE id = 176150;
UPDATE gameobject SET spawntimesecsmin = 60, spawntimesecsmax = 60 WHERE id = 176151;

DELETE FROM dbscripts_on_quest_end WHERE id = 2939;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2939,0,0,0,0,0,0,0,0,2000001235,0,0,0,0,0,0,0,'');
UPDATE quest_template SET CompleteScript = 2939 WHERE entry = 2939;
DELETE FROM dbscript_string WHERE entry = 2000001235;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000001235,'Take a look around, $n. Perhaps you will find something that I have missed.',0,0,0,1,NULL);

DELETE FROM dbscripts_on_quest_end WHERE id = 927;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(927,0,0,0,0,0,0,0,0x04,2000001236,0,0,0,0,0,0,0,''),
(927,3000,0,0,0,0,0,0,0,2000001153,0,0,0,0,0,0,0,'');
UPDATE quest_template SET CompleteScript = 927 WHERE entry = 927;
DELETE FROM dbscript_string WHERE entry IN (2000001236,2000001153);
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000001236,'%s examines the Moss-twined Heart...',0,2,0,0,NULL),
(2000001153,'$n, underneath the moss, this heart looks like a seed!',0,0,7,1,NULL);

DELETE FROM dbscripts_on_quest_end WHERE id = 5247;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(5247,0,29,3,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'NPCFlags removed'),
(5247,10,21,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'active'),
(5247,100,0,0,0,0,0,0,0,2000001155,0,0,0,0,0,0,0,''),
(5247,200,3,0,0,0,0,0,0x04,0,0,0,0,3234.2898,-4260.3384,98.44359,100,''),
(5247,5000,9,627,30,0,0,0,0,0,0,0,0,0,0,0,0,'Resp object (25 secs)'),
(5247,7000,13,0,0,0,178229,30,1|0x08,0,0,0,0,0,0,0,0,''),
(5247,8000,13,0,0,0,178229,30,1|0x08,0,0,0,0,0,0,0,0,''),
(5247,9000,13,0,0,0,178229,30,1|0x08,0,0,0,0,0,0,0,0,''),
(5247,10000,13,0,0,0,178229,30,1|0x08,0,0,0,0,0,0,0,0,''),
(5247,10100,0,0,0,0,0,0,0,2000001156,0,0,0,0,0,0,0,''),
(5247,11000,13,0,0,0,178229,30,1|0x08,0,0,0,0,0,0,0,0,''),
(5247,12000,13,0,0,0,178229,30,1|0x08,0,0,0,0,0,0,0,0,''),
(5247,13000,13,0,0,0,178229,30,1|0x08,0,0,0,0,0,0,0,0,''),
(5247,14000,13,0,0,0,178229,30,1|0x08,0,0,0,0,0,0,0,0,''),
(5247,15000,13,0,0,0,178229,30,1|0x08,0,0,0,0,0,0,0,0,''),
(5247,16000,13,0,0,0,178229,30,1|0x08,0,0,0,0,0,0,0,0,''),
(5247,17000,15,18953,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Cast: Ranshalla Waiting'),
(5247,25000,14,18953,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(5247,27000,3,0,0,0,0,0,0x04,0,0,0,0,3232.2751,-4256.4795,98.139175,100,''),
(5247,30000,3,0,0,0,0,0,0x04,0,0,0,0,0,0,0,3.787,''),
(5247,30100,0,0,0,0,0,0,0,2000001157,0,0,0,0,0,0,0,''),
(5247,30200,29,3,1,0,0,0,0x04,0,0,0,0,0,0,0,0,'NPCFlags added'),
(5247,30300,21,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'unactive');
UPDATE quest_template SET CompleteScript = 5247 WHERE entry = 5247;
UPDATE creature SET position_x = 3232.15, position_y = -4256.49, position_z = 98.206, orientation = 3.78736, spawntimesecsmin = 300, spawntimesecsmax = 300 WHERE guid =2757;
DELETE FROM dbscript_string WHERE entry BETWEEN 2000001155 AND 2000001157;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000001155,'Please wait while I attempt to bind the shards together so that they will be whole once again.',0,0,0,0,NULL),
(2000001156,'Ishnu... Oshalan thara dormil... Anu\'dorin...',0,0,0,0,NULL),
(2000001157,'Yes, I was able to reseal the relic, $N.',0,0,0,2,NULL);
DELETE FROM gameobject WHERE guid = 627;
DELETE FROM game_event_gameobject WHERE guid = 627;
DELETE FROM gameobject_battleground WHERE guid = 627;
INSERT INTO gameobject (guid, id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax, animprogress, state) VALUES
(627,178229,0,1,1,3235.7976,-4263.0615,100.51884,-0.6981315,0,0,-0.627202003,0.9396927,-30,-30,255,1);

DELETE FROM dbscripts_on_quest_end WHERE id = 1052;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1052,0,29,2,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'NPCFlags removed'),
(1052,10,21,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'active'),
(1052,100,0,0,0,0,0,0,0x04,2000001158,0,0,0,0,0,0,0,''),
(1052,101,1,69,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(1052,6000,0,0,0,0,0,0,0,2000001159,0,0,0,0,0,0,0,''),
(1052,7900,1,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(1052,8000,3,0,0,0,0,0,0x04,0,0,0,0,-848.237,-577.42706,18.545984,100,''),
(1052,15000,0,0,0,0,0,0,0,2000001160,0,0,0,0,0,0,0,''),
(1052,18000,9,646,20,0,0,0,0,0,0,0,0,0,0,0,0,'Resp object (20 secs)'),
(1052,22000,42,0,0,0,0,0,0x04,1906,0,0,0,0,0,0,0,'temp equip'),
(1052,22100,1,25,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(1052,23000,13,0,0,0,19534,30,1,0,0,0,0,0,0,0,0,''),
(1052,25000,3,0,0,0,0,0,0x04,0,0,0,0,-844.87805,-580.2844,18.545902,100,''),
(1052,28000,3,0,0,0,0,0,0x04,0,0,0,0,0,0,0,2.391,''),
(1052,30000,42,0,0,0,0,0,0x04,12883,12860,0,0,0,0,0,0,'equip'),
(1052,30200,29,2,1,0,0,0,0x04,0,0,0,0,0,0,0,0,'NPCFlags added'),
(1052,30300,21,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'unactive');
UPDATE quest_template SET CompleteScript = 1052 WHERE entry = 1052;
UPDATE creature SET position_x = -844.878, position_y = -580.284, position_z = 18.5459, orientation = 2.3911, spawntimesecsmin = 300, spawntimesecsmax = 300 WHERE guid =12117;
DELETE FROM dbscript_string WHERE entry BETWEEN 2000001158 AND 2000001160;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000001158,'%s breaks the seal on Anton\'s letter and begins to read it.',0,2,0,0,NULL),
(2000001159,'By the Light! This is not good. There\'s something you don\'t understand, $n.',0,0,0,0,NULL),
(2000001160,'%s throws Anton\'s letter down on the table.',0,2,0,0,NULL);
DELETE FROM gameobject WHERE guid = 646;
DELETE FROM game_event_gameobject WHERE guid = 646;
DELETE FROM gameobject_battleground WHERE guid = 646;
INSERT INTO gameobject (guid, id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax, animprogress, state) VALUES
(646,19534,0,1,1,-848.559,-576.3889,19.670116,-0.31415844,0,0,-0.15643406,0.98768836,-20,-20,255,1);

UPDATE creature SET position_x = 215.07, position_y = 1242.78, position_z = 197.284, orientation = 3.33358, spawntimesecsmin = 300, spawntimesecsmax = 300 WHERE guid =37484;

DELETE FROM dbscripts_on_quest_end WHERE id = 1692;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1692,0,29,2,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'NPCFlags removed'),
(1692,10,21,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'active'),
(1692,100,0,0,0,0,0,0,0x04,2000001175,0,0,0,0,0,0,0,''),
(1692,4000,0,0,0,0,0,0,0,2000001176,0,0,0,0,0,0,0,''),
(1692,4100,29,2,1,0,0,0,0x04,0,0,0,0,0,0,0,0,'NPCFlags added'),
(1692,4200,21,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'unactive');
UPDATE quest_template SET CompleteScript = 1692 WHERE entry = 1692;
DELETE FROM dbscript_string WHERE entry BETWEEN 2000001175 AND 2000001176;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000001175,'%s begins crafting...',0,2,0,0,NULL),
(2000001176,'It is done.  I have your weapon, $n.',0,0,0,1,NULL);
UPDATE `creature` SET `position_x` = '9918.03', `position_y` = '2308.6', `position_z` = '1330.87', `orientation` = '1.71042', `spawntimesecsmin` = '300', `spawntimesecsmax` = '300' WHERE `guid` =46611;
UPDATE `creature` SET `position_x` = '9994.09', `position_y` = '2331.89', `position_z` = '1330.87', `orientation` = '3.14159', `spawntimesecsmin` = '300', `spawntimesecsmax` = '300' WHERE `guid` =46705;

DELETE FROM dbscripts_on_quest_end WHERE id = 1007;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1007,0,29,2,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'NPCFlags removed'),
(1007,10,21,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'active'),
(1007,100,3,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0.174,''),
(1007,101,28,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'stand state'),
(1007,110,0,0,0,0,0,0,0x04,2000001161,0,0,0,0,0,0,0,''),
(1007,2000,28,8,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'kneel state'),
(1007,3000,9,668,20,0,0,0,0,0,0,0,0,0,0,0,0,'Resp object (20 secs)'),
(1007,7000,0,0,0,0,0,0,0x04,2000001272,0,0,0,0,0,0,0,''),
(1007,10000,1,15,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(1007,11000,0,0,0,0,0,0,0x04,2000001177,0,0,0,0,0,0,0,''),
(1007,14000,28,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'stand state'),
(1007,17000,36,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'face Player'),
(1007,19000,0,0,0,0,0,0,0,2000001273,0,0,0,0,0,0,0,''),
(1007,21000,29,2,1,0,0,0,0x04,0,0,0,0,0,0,0,0,'NPCFlags added'),
(1007,22000,3,0,0,0,0,0,0x04,0,0,0,0,0,0,0,1.22,''),
(1007,24000,28,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'sit state'),
(1007,24500,21,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'unactive');
UPDATE quest_template SET CompleteScript = 1007 WHERE entry = 1007;
DELETE FROM dbscript_string WHERE entry IN (2000001161,2000001177,2000001272,2000001273);
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000001161,'This statuette must hold a hidden compartment...',0,0,7,1,NULL),
(2000001177,'It\'s locked!  NO!!',0,0,7,0,NULL),
(2000001272,'%s searches the ancient statuette.',0,2,0,0,NULL),
(2000001273,'$N, I am in need of your help once again.',0,0,7,1,NULL);
UPDATE creature_template_addon SET b2_0_sheath = 0 WHERE entry = 3846;
DELETE FROM gameobject WHERE guid = 668;
DELETE FROM game_event_gameobject WHERE guid = 668;
DELETE FROM gameobject_battleground WHERE guid = 668;
INSERT INTO gameobject (guid, id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax, animprogress, state) VALUES
(668,18603,1,1,1,3471.955,847.0674,5.366816,0.90757024,0,0,0.4383707,0.89879423,-20,-20,255,1);
UPDATE `creature` SET `position_x` = '3470.04', `position_y` = '847.092', `position_z` = '5.45882', `orientation` = '1.22173', `spawntimesecsmin` = '300', `spawntimesecsmax` = '300' WHERE `guid` =41638;

DELETE FROM dbscripts_on_quest_end WHERE id = 346;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(346,110,0,0,0,0,0,0,0,2000001274,0,0,0,0,0,0,0,'');
UPDATE quest_template SET CompleteScript = 346 WHERE entry = 346;
DELETE FROM dbscript_string WHERE entry = 2000001274;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000001274,'Thank you, $N.  May the Light bless you, $Gbrother:sister;, and guide your path.',0,0,7,1,NULL);
UPDATE `creature` SET `position_x` = '-8623.24', `position_y` = '766.655', `position_z` = '97.4033', `orientation` = '0.837758' WHERE `guid` =6322;
UPDATE `creature` SET `position_x` = '-8874.87', `position_y` = '-186.332', `position_z` = '82.1206', `orientation` = '1.309', `spawntimesecsmin` = '300', `spawntimesecsmax` = '300' WHERE `guid` =6017;

DELETE FROM dbscripts_on_quest_end WHERE id = 1681;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1681,0,0,0,0,0,0,0,0x04,2000001315,0,0,0,0,0,0,0,''),
(1681,100,1,173,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(1681,5000,1,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(1681,7000,36,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'face Player'),
(1681,8000,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(1681,8100,0,0,0,0,0,0,0,2000001316,0,0,0,0,0,0,0,''),
(1681,12000,3,0,0,0,0,0,0x04,0,0,0,0,0,0,0,4.607,'');
UPDATE quest_template SET CompleteScript = 1681 WHERE entry = 1681;
DELETE FROM dbscript_string WHERE entry BETWEEN 2000001315 AND 2000001316;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000001315,'%s begins to work...',0,2,0,0,NULL),
(2000001316,'$N!  I\'m finished!',0,0,7,0,NULL);
UPDATE `creature` SET `position_x` = '-4793.38', `position_y` = '-1098.17', `position_z` = '498.89', `orientation` = '4.60767', `spawntimesecsmin` = '300', `spawntimesecsmax` = '300' WHERE `guid` =9566;
UPDATE `quest_template` SET `NextQuestId` = '0' WHERE `entry` IN (1679,1681);
UPDATE `quest_template` SET `NextQuestId` = '0' WHERE `entry` IN (1683,1692);

UPDATE creature SET position_x = 8644.208, position_y = 853.2105, position_z = 22.355267, orientation = 1.50239, spawndist = 0, MovementType = 2 WHERE guid = 94694;
DELETE FROM creature_movement WHERE id = 94694;
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,waittime,script_id) VALUES
(94694,1,8647.808,868.63934,23.212633,100,0,0),
(94694,2,8657.981,873.3514,22.37611,100,0,0),
(94694,3,8670.864,876.9106,22.123152,100,0,0),
(94694,4,8680.514,881.326,23.230516,100,0,0),
(94694,5,8685.484,889.3323,22.422583,100,0,0),
(94694,6,8686.014,904.0842,21.40408,100,0,0),
(94694,7,8687.324,922.13214,16.083908,100,0,0),
(94694,8,8689.776,930.66925,15.553102,100,0,0),
(94694,9,8696.605,941.5968,13.781057,100,0,0),
(94694,10,8696.757,949.54407,13.006399,100,0,0),
(94694,11,8695.549,956.4781,12.202627,100,0,0),
(94694,12,8691.133,966.0688,11.514212,100,0,0),
(94694,13,8684.711,974.0922,10.755286,100,0,0),
(94694,14,8676.798,984.3464,8.006629,100,0,0),
(94694,15,8682.726,987.4831,9.514258,100,0,0),
(94694,16,8689.632,988.9705,11.368621,100,0,0),
(94694,17,8682.726,987.4831,9.514258,100,0,0),
(94694,18,8676.798,984.3464,8.006629,100,0,0),
(94694,19,8684.711,974.0922,10.755286,100,0,0),
(94694,20,8691.133,966.0688,11.514212,100,0,0),
(94694,21,8695.549,956.4781,12.202627,100,0,0),
(94694,22,8696.757,949.54407,13.006399,100,0,0),
(94694,23,8696.605,941.5968,13.781057,100,0,0),
(94694,24,8689.776,930.66925,15.553102,100,0,0),
(94694,25,8687.324,922.13214,16.083908,100,0,0),
(94694,26,8686.014,904.0842,21.40408,100,0,0),
(94694,27,8685.484,889.3323,22.422583,100,0,0),
(94694,28,8680.514,881.326,23.230516,100,0,0),
(94694,29,8670.864,876.9106,22.123152,100,0,0),
(94694,30,8657.981,873.3514,22.37611,100,0,0),
(94694,31,8647.808,868.63934,23.212633,100,0,0),
(94694,32,8644.208,853.2105,22.355267,100,0,0);

DELETE FROM dbscripts_on_quest_end WHERE id = 1701;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1701,0,29,2,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'NPCFlags removed'),
(1701,10,21,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'active'),
(1701,100,3,0,0,0,0,0,0x04,0,0,0,0,-8426.77,605.469,95.0252,1.41756,''),
(1701,3000,0,0,0,0,0,0,0x04,2000001317,0,0,0,0,0,0,0,''),
(1701,3100,1,233,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(1701,8000,1,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(1701,10000,3,0,0,0,0,0,0x04,0,0,0,0,-8427,600.092,94.706,3.281,''),
(1701,13000,3,0,0,0,0,0,0x04,0,0,0,0,0,0,0,3.281,''),
(1701,13100,0,0,0,0,0,0,0x04,2000001318,0,0,0,0,0,0,0,''),
(1701,13200,29,2,1,0,0,0,0x04,0,0,0,0,0,0,0,0,'NPCFlags added'),
(1701,13500,21,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'unactive');
UPDATE quest_template SET CompleteScript = 1701 WHERE entry = 1701;
DELETE FROM dbscript_string WHERE entry BETWEEN 2000001317 AND 2000001318;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000001317,'%s begins to work...',0,2,0,0,NULL),
(2000001318,'Finished!  And the results are amazing.  I must convey them to my associates Grimand, Mathiel and Klockmort!',0,0,7,1,NULL);

DELETE FROM dbscripts_on_quest_start WHERE id = 1699;
INSERT INTO dbscripts_on_quest_start (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1699,0,15,8554,0,0,0,0,0,0,0,0,0,0,0,0,0,'Cast: Drinking Barleybrew Scalder'),
(1699,1000,0,0,0,0,0,0,0,2000001319,0,0,0,0,0,0,0,'');
UPDATE quest_template SET StartScript = 1699 WHERE entry = 1699;
DELETE FROM dbscripts_on_quest_end WHERE id = 1699;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1699,0,29,2,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'NPCFlags removed'),
(1699,10,21,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'active'),
(1699,110,0,0,0,0,0,0,0,2000001320,0,0,0,0,0,0,0,''),
(1699,3000,0,0,0,0,0,0,0,2000001321,0,0,0,0,0,0,0,''),
(1699,5000,0,0,0,0,0,0,0,2000001321,0,0,0,0,0,0,0,''),
(1699,7000,0,0,0,0,0,0,0,2000001321,0,0,0,0,0,0,0,''),
(1699,7100,29,2,1,0,0,0,0x04,0,0,0,0,0,0,0,0,'NPCFlags added'),
(1699,7200,21,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'unactive');
UPDATE quest_template SET CompleteScript = 1699 WHERE entry = 1699;
DELETE FROM dbscript_string WHERE entry BETWEEN 2000001319 AND 2000001321;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000001319,'Good luck, $N!',0,0,7,4,NULL),
(2000001320,'$N ran the Gauntlet!  Three cheers for $N!',0,1,7,22,NULL),
(2000001321,'Hip hip, hoorah!',0,0,7,4,NULL);
UPDATE `creature` SET `position_x` = '-9222.58', `position_y` = '-2147.87', `position_z` = '63.814', `orientation` = '3.92699', `spawntimesecsmin` = '300', `spawntimesecsmax` = '300' WHERE `guid` =5552;

DELETE FROM dbscripts_on_quest_end WHERE id = 1961;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1961,10,29,2,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'NPCFlags removed'),
(1961,100,0,0,0,0,0,0,0,2000001322,0,0,0,0,0,0,0,''),
(1961,1000,3,0,0,0,0,0,0x04,0,0,0,0,0,0,0,4.78,''),
(1961,2000,1,133,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(1961,8500,1,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(1961,9000,0,0,0,0,0,0,0,2000001323,0,0,0,0,0,0,0,''),
(1961,9100,3,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0.458,''),
(1961,9500,29,2,1,0,0,0,0x04,0,0,0,0,0,0,0,0,'NPCFlags added');
UPDATE quest_template SET CompleteScript = 1961 WHERE entry = 1961;
DELETE FROM dbscript_string WHERE entry BETWEEN 2000001322 AND 2000001323;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000001322,'One moment while I stitch this together..',0,0,1,1,NULL),
(2000001323,'There.  I am finished with your robe, $N.',0,0,1,1,NULL);
UPDATE `creature` SET `position_x` = '1681.49', `position_y` = '194.356', `position_z` = '-62.0865', `orientation` = '0.458519', `spawntimesecsmin` = '300', `spawntimesecsmax` = '300' WHERE `guid` =15878;

INSERT INTO spell_proc_event(entry,procEx) VALUES (39440,0x0010000);

#UPDATE spell_bonus_data SET direct_bonus=0.8 WHERE entry IN(6143,543);

UPDATE `creature_onkill_reputation` SET `RewOnKillRepValue1` = 2 WHERE `creature_id` IN (21136,21137,21138,21139);
UPDATE `creature_onkill_reputation` SET `RewOnKillRepValue1` = 3 WHERE `creature_id` IN (22164,22165,22166,22168);

UPDATE creature_template SET UnitFlags=33555200 WHERE entry IN(23758);

UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask&~4 WHERE entry IN(24239);

UPDATE spell_bonus_data SET dot_bonus='0.125' WHERE entry=26573;

UPDATE quest_template SET DetailsEmote1 = 2 WHERE entry = 8347;
UPDATE quest_template SET DetailsEmote1 = 25, DetailsEmote2 = 25 WHERE entry = 8334;
UPDATE quest_template SET DetailsEmote1 = 1, DetailsEmote2 = 1 WHERE entry = 8335;
UPDATE quest_template SET DetailsEmote1 = 25 WHERE entry = 8346;

UPDATE `creature_template` SET `ModelId1` = 7950 WHERE `entry` = 18263;

UPDATE `spell_target_position` SET `target_position_x` = 795, `target_position_y` = 15, `target_position_z` = 50.14333, `target_orientation` = 3.14159 WHERE `Id` = 36958; -- 21274
UPDATE `spell_target_position` SET `target_position_x` = 785, `target_position_y` = 11, `target_position_z` = 50.14333, `target_orientation` = 3.14159 WHERE `Id` = 36959; -- 21270
UPDATE `spell_target_position` SET `target_position_x` = 781, `target_position_y` = 5, `target_position_z` = 50.14333, `target_orientation` = 3.14159 WHERE `Id` = 36960; -- 21272
UPDATE `spell_target_position` SET `target_position_x` = 776, `target_position_y` = -0.7, `target_position_z` = 50.14333, `target_orientation` = 3.14159 WHERE `Id` = 36961; -- 21269
UPDATE `spell_target_position` SET `target_position_x` = 781, `target_position_y` = -6, `target_position_z` = 50.14333, `target_orientation` = 3.14159 WHERE `Id` = 36962; -- 21273
UPDATE `spell_target_position` SET `target_position_x` = 785, `target_position_y` = -13, `target_position_z` = 50.14333, `target_orientation` = 3.14159 WHERE `Id` = 36963; -- 21271
UPDATE `spell_target_position` SET `target_position_x` = 795, `target_position_y` = -17, `target_position_z` = 50.14333, `target_orientation` = 3.14159 WHERE `Id` = 36964; -- 21268

UPDATE creature_template SET UnitFlags=32832 WHERE entry IN(17306,18436);
UPDATE creature_template SET UnitFlags=64 WHERE entry IN(17307,18435);

DELETE FROM npc_text WHERE id=10573;
DELETE FROM npc_text_broadcast_text WHERE Id=10573;
INSERT INTO npc_text_broadcast_text(Id,Prob0,Prob1,Prob2,Prob3,Prob4,Prob5,Prob6,Prob7,BroadcastTextId0,BroadcastTextId1,BroadcastTextId2,BroadcastTextId3,BroadcastTextId4,BroadcastTextId5,BroadcastTextId6,BroadcastTextId7) VALUES
(10573,1,0,0,0,0,0,0,0,19759,0,0,0,0,0,0,0);
UPDATE creature_template SET UnitFlags=320 WHERE entry IN(22076);
UPDATE `creature` SET `spawntimesecsmin` = 25, `spawntimesecsmax` = 25 WHERE `guid` =92210;

DELETE FROM spell_proc_event WHERE entry=1784;
INSERT INTO spell_proc_event(entry,procEx) VALUES (1784,0x0010000);

DELETE FROM spell_bonus_data WHERE entry = 8129;
INSERT INTO spell_bonus_data(entry,direct_bonus) VALUES (8129,0);

DELETE FROM dbscripts_on_go_template_use WHERE id IN(184722,184715);
DELETE FROM spell_script_target WHERE entry IN(36546);
INSERT INTO spell_script_target(entry, type, targetEntry, inverseEffectMask) VALUES ('36546', '0', '184722', '0');
UPDATE creature_template SET Faction=7 WHERE entry IN(21306);
DELETE FROM dbscripts_on_creature_movement WHERE id IN(2130801);
INSERT INTO dbscripts_on_creature_movement(id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
('2130801', '0', '0', '15', '36555', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Summon Scarab'),
('2130801', '1500', '0', '15', '36555', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Summon Scarab'),
('2130801', '3000', '0', '15', '36555', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Summon Scarab'),
('2130801', '4500', '0', '15', '36555', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Summon Scarab');
DELETE FROM creature_template_addon WHERE entry IN(21306);
INSERT INTO creature_template_addon(entry, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES
('21306', '0', '0', '1', '0', '0', '0', '36556 36559 31309');
UPDATE `gameobject` SET `position_x` = '-970.813', `position_y` = '2172', `position_z` = '15.5428', `orientation` = '-2.33874', `rotation2` = '-0.920505', `rotation3` = '0.390732' WHERE `guid` =38693;

DELETE FROM dbscripts_on_quest_start WHERE id IN(9962,9970,9972,9967,9977,9973) AND command=29 AND datalong=3;

DELETE FROM gameobject WHERE guid = 670;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
('670','177281','530','1','-1848.971680','4645.113770','8.658392','-0.235619','0','0','0','0','900','900','100','1');

UPDATE dbscripts_on_quest_start SET delay=0 WHERE command=31 AND id IN(9977);

UPDATE spell_proc_event SET procFlags=0x000AAAA8 WHERE entry=41635;

INSERT INTO gameobject(guid, id, map, spawnMask, position_x,position_y,position_z,orientation,rotation0,rotation1,rotation2,rotation3,spawntimesecsmin,spawntimesecsmax,animprogress,state) VALUES
(677,184640,530,1,-732.279541015625, 2670.98876953125, 94.58748626708984375, -0.54105061292648315, 0, 0, -0.26723766326904296, 0.96363067626953125,300,300,255,1),
(679,184640,530,1,143.4166717529296875, 2673.3603515625, 85.30139923095703125, 3.019413232803344726, 0, 0, 0.998134613037109375, 0.061051756143569946,300,300,255,1);

UPDATE item_template SET spellppmRate_2=5 WHERE entry IN(30318);

UPDATE spell_proc_event SET procFlags=procFlags&~0x00040000 WHERE entry IN(28744);

DELETE FROM dbscripts_on_relay WHERE id IN (19990,19991,19992);
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(19990,0,42,0,0,0,0,0,0,12421,0,0,0,0,0,0,0,'Cabal Ritualist - Equip Staff 1'),
(19991,0,42,0,0,0,0,0,0,14618,0,0,0,0,0,0,0,'Cabal Ritualist - Equip Staff 2'),
(19992,0,42,0,0,0,0,0,0,13718,0,0,0,0,0,0,0,'Cabal Ritualist - Equip Sword');
DELETE FROM creature_template_spells WHERE entry = 18794;
INSERT INTO creature_template_spells (entry,setId,spell1,spell2,spell3,spell4,spell5,spell6) VALUES
(18794,0,0,0,0,0,12540,0), (18794,1,0,0,0,9574,20795,0), (18794,2,0,0,0,15497,15532,0), (18794,3,0,0,0,33487,33832,0);

DELETE FROM dbscripts_on_quest_end WHERE id = 1220;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1220,0,3,0,0,0,0,0,0x04,0,0,0,0,0,0,0,2.1118,''),
(1220,300,0,0,0,0,0,0,0x04,2000001324,0,0,0,0,0,0,0,''),
(1220,500,9,688,20,0,0,0,0,0,0,0,0,0,0,0,0,'Resp object (20 secs)'),
(1220,3000,0,0,0,0,0,0,0x04,2000001325,0,0,0,0,0,0,0,''),
(1220,3200,1,5,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(1220,6000,36,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Face Player'),
(1220,6500,0,0,0,0,0,0,0,2000001326,0,0,0,0,0,0,0,''),
(1220,9000,15,6245,0,0,0,0,0,0,0,0,0,0,0,0,0,'Cast: Force Target - Salute'),
(1220,12200,1,66,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(1220,16000,3,0,0,0,0,0,0x04,0,0,0,0,0,0,0,1.1519,'');
UPDATE quest_template SET CompleteScript = 1220 WHERE entry = 1220;
DELETE FROM dbscript_string WHERE entry BETWEEN 2000001324 AND 2000001326;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000001324,'%s places the scroll on the table, and reads...',0,2,0,0,NULL),
(2000001325,'By the Light!  This cursed spy was a good one!  I\'m glad he\'s dead.',0,0,7,0,NULL),
(2000001326,'Thank you for this report, $N.  It is now clear that we must tighten our patrols near Theramore.',0,0,7,0,NULL);
UPDATE `creature` SET `position_x` = '-3735.06', `position_y` = '-4556.2', `position_z` = '27.2108', `orientation` = '1.15192', `spawntimesecsmin` = '300', `spawntimesecsmax` = '300' WHERE `guid` =53637;
DELETE FROM `creature` WHERE `guid` = 27422;
DELETE FROM gameobject WHERE guid = 688;
DELETE FROM game_event_gameobject WHERE guid = 688;
DELETE FROM gameobject_battleground WHERE guid = 688;
INSERT INTO gameobject (guid, id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax, animprogress, state) VALUES
(688,21128,1,1,1,-3735.523,-4554.6035,28.552734,0.4712385,0,0,0.23344517,0.97236997,-20,-20,255,1);

UPDATE creature_template SET MovementType = 3 WHERE Entry = 26510;
DELETE FROM creature_movement_template WHERE entry = 26510;
INSERT INTO creature_movement_template (entry, pathid, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(26510,0,1,2619.24,1135.3,-18.0645,100,100,5),
(26510,0,2,2619.57,1134.35,-18.0645,100,0,0),
(26510,0,3,2619.52,1134.33,-13.2949,100,0,0),
(26510,0,4,2621.95,1108.13,-13.2949,100,0,0),
(26510,0,5,2629.06,1055.42,-20.406,100,0,0),
(26510,0,6,2675.39,1014.85,-27.7949,100,0,0),
(26510,0,7,2641.32,970.041,-24.8783,100,0,0),
(26510,0,8,2629.31,980.431,-25.5172,100,0,0),
(26510,0,9,2646.95,1003.27,-25.5172,100,0,0),
(26510,0,10,2646.95,1003.27,-25.5172,100,300000,2651001);
DELETE FROM dbscripts_on_creature_movement WHERE id = 2651001;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2651001,1000,1,35,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2651001,1500,40,0,0,0,188386,20,7,0,0,0,0,0,0,0,0,''),
(2651001,2000,15,35309,0,0,23837,50,7,0,0,0,0,0,0,0,0,''),
(2651001,2500,18,0,0,0,23837,20,7,0,0,0,0,0,0,0,0,''),
(2651001,4000,20,1,15,300000,0,0,12,0,0,0,0,0,0,0,0,''),
(2651001,5000,2,59,32768,0,0,0,4,0,0,0,0,0,0,0,0,'');

DELETE FROM dbscripts_on_quest_start WHERE id = 12007;
INSERT INTO dbscripts_on_quest_start (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(12007,1000,0,0,0,0,0,0,0,2000001327,0,0,0,0,0,0,0,'');
UPDATE quest_template SET StartScript = 12007 WHERE entry = 12007;
DELETE FROM dbscript_string WHERE entry = 2000001327;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000001327,'I\'ll be waitin\' for ya, mon.',0,4,0,0,NULL);

DELETE FROM gossip_menu WHERE entry IN (300, 301, 302);
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES (302, 799, 0, 0), (301, 798, 0, 0);
UPDATE creature_template SET gossipMenuId=301 WHERE entry=3850;
UPDATE creature_template SET gossipMenuId=302 WHERE entry=3849;
UPDATE `gossip_menu_option` SET `menu_id` = 302 WHERE `menu_id` =300 AND `id` =0;
DELETE FROM npc_text WHERE ID IN (798, 799);
DELETE FROM npc_text_broadcast_text WHERE Id IN (798, 799);
INSERT INTO npc_text_broadcast_text (Id, Prob0, Prob1, Prob2, Prob3, Prob4, Prob5, Prob6, Prob7, BroadcastTextId0, BroadcastTextId1, BroadcastTextId2, BroadcastTextId3, BroadcastTextId4, BroadcastTextId5, BroadcastTextId6, BroadcastTextId7) VALUES
(798, 1, 0, 0, 0, 0, 0, 0, 0, 2801, 0, 0, 0, 0, 0, 0, 0),
(799, 1, 0, 0, 0, 0, 0, 0, 0, 2803, 0, 0, 0, 0, 0, 0, 0);

INSERT INTO `questgiver_greeting` (`Entry`,`Type`,`Text`,`EmoteId`,`EmoteDelay`) VALUES (715,0,'Another fine day in the jungle!  It\'s going to be quite a hunt, I can feel it.  Once Barnil is done cleaning the guns, I\'m taking the hunting party deep into the twisting vines.  Not such a bad way for an old war vet to spend his retirement, eh?',0,0);
INSERT INTO `questgiver_greeting` (`Entry`,`Type`,`Text`,`EmoteId`,`EmoteDelay`) VALUES (3848,0,'The balance of nature is a delicate one, and easily tipped.  Are you brave enough to make things right?',1,0);

UPDATE creature_template SET NpcFlags = 1, GossipMenuId = 15000 WHERE Entry = 6109;
UPDATE creature_template SET NpcFlags = 1, GossipMenuId = 15013 WHERE Entry = 15481;
DELETE FROM gossip_menu WHERE entry BETWEEN 15000 AND 15013;
INSERT INTO gossip_menu (entry,text_id,script_id,condition_id) VALUES
(15000, 7880, 0, 0),
(15000, 7885, 0, 3526),
(15000, 7901, 0, 3524),
(15001, 7886, 0, 0),
(15002, 7887, 0, 0),
(15003, 7888, 0, 0),
(15004, 7889, 0, 0),
(15005, 7890, 0, 0),
(15006, 7891, 0, 0),
(15007, 7892, 0, 0),
(15008, 7893, 0, 0),
(15009, 7894, 0, 0),
(15010, 7895, 0, 0),
(15011, 7896, 0, 0),
(15012, 7897, 1501201, 0),
(15013, 7881, 0, 0),
(15013, 7885, 0, 3526),
(15013, 7901, 0, 3524);
DELETE FROM gossip_menu_option WHERE menu_id BETWEEN 15000 AND 15013;
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_broadcast_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, box_broadcast_text, condition_id) VALUES
('15000','0','0','I am a treasure hunter in search of powerful artifacts. Give them to me and you will not be harmed.','11016','1','1','-1','0','1500001','0','0',NULL,'0','0'), -- ClassicDB 15000
('15000','1','0','How did you know? I mean, yes... Yes I am looking for that shard. Do you have it?','11034','1','1','15001','0','0','0','0',NULL,'0','3526'),
('15001','0','0','Alright. Where?','11036','1','1','15002','0','0','0','0',NULL,'0','0'),
('15002','0','0','By Bronzebeard\'s... um, beard! What are you talking about?','0','1','1','15003','0','0','0','0',NULL,'0','0'),
('15003','0','0','Fish? You gave a piece of what could be the key to saving all life on Kalimdor to a fish?','11040','1','1','15004','0','0','0','0',NULL,'0','0'),
('15004','0','0','A minnow? The oceans are filled with minnows! There could be a hundred million million minnows out there!','0','1','1','15005','0','0','0','0',NULL,'0','0'),
('15005','0','0','...','11044','1','1','15006','0','0','0','0',NULL,'0','0'),
('15006','0','0','You put the piece on a minnow and placed the minnow somewhere in the waters of the sea between here and the Eastern Kingdoms? And this minnow has special powers?','11046','1','1','15007','0','0','0','0',NULL,'0','0'),
('15007','0','0','You\'re insane.','11048','1','1','15008','0','0','0','0',NULL,'0','0'),
('15008','0','0','I\'m all ears.','0','1','1','15009','0','0','0','0',NULL,'0','0'),
('15009','0','0','Come again.','11052','1','1','15010','0','0','0','0',NULL,'0','0'),
('15010','0','0','Ok, let me get this straight. You put the scepter entrusted to your Flight by Anachronos on a minnow of your own making and now you expect me to build an... an arcanite buoy or something... to force your minnow out of hiding? AND potentially incur the wrath of an Elemental Lord? Did I miss anything? Perhaps I am to do this without any clothes on, during a solar eclipse, on a leap year?','0','1','1','15011','0','0','0','0',NULL,'0','0'),
('15011','0','0','FINE! And how, dare I ask, am I supposed to acquire an arcanite buoy?','11057','1','1','15012','0','0','0','0',NULL,'0','0'),
('15012','0','0','But...','0','1','1','-1','0','1501202','0','0',NULL,'0','0'),
('15013','1','0','How did you know? I mean, yes... Yes I am looking for that shard. Do you have it?','11034','1','1','15001','0','0','0','0',NULL,'0','3526');
DELETE FROM dbscripts_on_gossip WHERE id IN (1500001,1501201,1501202);
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1500001,0,26,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Azuregos attacks player'),
(1501201,0,17,20949,1,0,0,0,0,0,0,0,0,0,0,0,0,'creates item Magical Ledger'),
(1501202,0,0,0,0,0,0,0,0,2000001328,0,0,0,0,0,0,0,'Azuregos says Good Day');
DELETE FROM conditions WHERE condition_entry BETWEEN 3523 AND 3526;
INSERT INTO conditions (condition_entry,type,value1,value2,value3,value4,flags) VALUES
(3523,8,8555,0,0,0,0), (3524,2,20949,1,0,0,0), (3525,23,20949,1,0,0,1), (3526,-1,3525,3523,0,0,0);
DELETE FROM dbscript_string WHERE entry = 2000001328;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000001328,'I SAID GOOD DAY!',0,1,0,0,NULL);

UPDATE `creature_template` SET `Faction` = 1793, `UnitFlags` = 32768 WHERE `entry` = 24955;
REPLACE INTO `creature_template_addon` (`entry`, `bytes1`, `b2_0_sheath`, `b2_1_pvp_state`, `emote`, `auras`) VALUES
(24918, 8, 1, 16, 0, NULL), (24919, 0, 1, 16, 0, NULL), (24921, 0, 1, 16, 0, NULL), (24933, 0, 1, 16, 383, '32567'), (24955, 0, 1, 16, 0, NULL);
UPDATE `creature` SET `position_x` = '875.694', `position_y` = '2535.02', `position_z` = '298.075', `orientation` = '2.86234', `spawntimesecsmin` = '300', `spawntimesecsmax` = '300' WHERE `guid` =100313;
DELETE FROM `creature_addon` WHERE `guid` IN (SELECT `guid` FROM `creature` WHERE `id` IN (24918,24919,24921,24933));
UPDATE `creature` SET `position_x` = '943.49', `position_y` = '2269.77', `position_z` = '306.747', `orientation` = '3.28122', `MovementType` = '0' WHERE `guid` =74349;
DELETE FROM `creature_movement_template` WHERE `entry` = 18728;
DELETE FROM `creature` WHERE `guid` = 19054;
DELETE FROM `creature` WHERE `guid` = 19065;
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(99682, 24918, 530, 1, 1, 0, 0, 729.496, 2338.85, 275.142, 0.802851, 120, 300, 0, 0, 7300, 9465, 0, 0),
(100317, 24918, 530, 1, 1, 0, 0, 749.579, 2456.75, 275.142, 3.78736, 120, 300, 0, 0, 7300, 9465, 0, 0),
(100324, 24918, 530, 1, 1, 0, 0, 719.354, 2455.54, 275.142, 5.67232, 120, 300, 0, 0, 7300, 9465, 0, 0),
(100325, 24918, 530, 1, 1, 0, 0, 693.39, 2462.06, 275.185, 4.03171, 120, 300, 0, 0, 7300, 9465, 0, 0),
(100326, 24918, 530, 1, 1, 0, 0, 695.219, 2432.9, 275.164, 2.42601, 120, 300, 0, 0, 7300, 9465, 0, 0),
(100323, 24918, 530, 1, 1, 0, 0, 666.762, 2345.96, 273.911, 0.767945, 120, 300, 0, 0, 7300, 9465, 0, 0),
(100322, 24918, 530, 1, 1, 0, 0, 693.193, 2335.1, 275.039, 2.00713, 120, 300, 0, 0, 7300, 9465, 0, 0),
(100320, 24918, 530, 1, 1, 0, 0, 793.7, 2282.82, 281.453, 5.34071, 120, 300, 0, 0, 7300, 9465, 0, 0),
(100321, 24918, 530, 1, 1, 0, 0, 794.351, 2254.55, 281.445, 0.890118, 120, 300, 0, 0, 7300, 9465, 0, 0);
UPDATE `creature` SET `spawntimesecsmin` = '120' WHERE `id` =24918;
DELETE FROM `creature_movement` WHERE `id` IN (SELECT `guid` FROM `creature` WHERE `id` = 24919);
DELETE FROM `creature` WHERE `guid` = 99716;
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(99708, 24919, 530, 1, 1, 0, 0, 796.451, 2239.1, 281.465, 1.07044, 120, 300, 0, 0, 5200, 3155, 0, 2),
(99707, 24919, 530, 1, 1, 0, 0, 712.838, 2563.02, 279.908, 1.07044, 120, 300, 0, 0, 5200, 3155, 0, 2),
(99706, 24919, 530, 1, 1, 0, 0, 819.469, 2269.54, 279.311, 3.70694, 120, 300, 0, 0, 5200, 3155, 0, 2),
(99705, 24919, 530, 1, 1, 0, 0, 789.62, 2469.27, 289.315, 3.03005, 120, 300, 0, 0, 5200, 3155, 0, 2),
(99704, 24919, 530, 1, 1, 0, 0, 849.918, 2410.45, 281.415, 0.710029, 120, 300, 0, 0, 5200, 3155, 0, 2),
(99709, 24919, 530, 1, 1, 0, 0, 837.602, 2162.71, 278.099, 0.744647, 120, 300, 5, 0, 5200, 3155, 0, 1),
(99710, 24919, 530, 1, 1, 0, 0, 849.512, 2225.13, 289.466, 3.08923, 120, 300, 0, 0, 5200, 3155, 0, 0),
(99711, 24919, 530, 1, 1, 0, 0, 841.577, 2313.24, 289.348, 3.00197, 120, 300, 0, 0, 5200, 3155, 0, 0),
(99712, 24919, 530, 1, 1, 0, 0, 883.136, 2289.25, 298.047, 3.28122, 120, 300, 0, 0, 5200, 3155, 0, 0),
(99713, 24919, 530, 1, 1, 0, 0, 882.204, 2252.73, 299.886, 3.19395, 120, 300, 0, 0, 5200, 3155, 0, 0),
(99714, 24919, 530, 1, 1, 0, 0, 823.215, 2487.33, 293.143, 3.59538, 120, 300, 0, 0, 5200, 3155, 0, 0),
(99715, 24919, 530, 1, 1, 0, 0, 807.472, 2513.33, 294.945, 3.75246, 120, 300, 0, 0, 5200, 3155, 0, 0);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `script_id`, `comment`) VALUES
(99708, 1, 796.451, 2239.1, 281.465, 100, 0, 0, NULL),
(99708, 2, 818.185, 2214.7, 281.472, 100, 0, 0, NULL),
(99708, 3, 828.185, 2206.38, 281.572, 100, 0, 0, NULL),
(99707, 1, 712.838, 2563.02, 279.908, 100, 0, 0, NULL),
(99707, 2, 716.826, 2549.42, 281.293, 100, 0, 0, NULL),
(99707, 3, 710.802, 2538.4, 281.111, 100, 0, 0, NULL),
(99707, 4, 702.468, 2522.21, 276.97, 100, 0, 0, NULL),
(99707, 5, 704.42, 2502.77, 277.125, 100, 0, 0, NULL),
(99707, 6, 708.142, 2490.21, 278.97, 100, 0, 0, NULL),
(99707, 7, 697.242, 2484.79, 281.574, 100, 0, 0, NULL),
(99707, 8, 685.678, 2474.66, 280.242, 100, 0, 0, NULL),
(99707, 9, 671.926, 2459.21, 275.56, 100, 0, 0, NULL),
(99707, 10, 666.722, 2395.18, 275.66, 100, 0, 0, NULL),
(99707, 11, 701.561, 2361.56, 275.098, 100, 0, 0, NULL),
(99707, 12, 715.282, 2346.63, 275.098, 100, 0, 0, NULL),
(99707, 13, 720.391, 2325.9, 275.184, 100, 0, 0, NULL),
(99707, 14, 745.228, 2296.32, 281.379, 100, 0, 0, NULL),
(99707, 15, 764.48, 2275.63, 281.392, 100, 0, 0, NULL),
(99707, 16, 787.955, 2252.67, 281.465, 100, 0, 0, NULL),
(99707, 17, 793.728, 2217.8, 281.396, 100, 0, 0, NULL),
(99707, 18, 797.922, 2197.9, 276.445, 100, 0, 0, NULL),
(99707, 19, 789.26, 2181.36, 272.513, 100, 0, 0, NULL),
(99707, 20, 797.922, 2197.9, 276.445, 100, 0, 0, NULL),
(99707, 21, 793.728, 2217.8, 281.396, 100, 0, 0, NULL),
(99707, 22, 787.955, 2252.67, 281.465, 100, 0, 0, NULL),
(99707, 23, 764.48, 2275.63, 281.392, 100, 0, 0, NULL),
(99707, 24, 745.228, 2296.32, 281.379, 100, 0, 0, NULL),
(99707, 25, 720.391, 2325.9, 275.184, 100, 0, 0, NULL),
(99707, 26, 715.282, 2346.63, 275.098, 100, 0, 0, NULL),
(99707, 27, 701.561, 2361.56, 275.098, 100, 0, 0, NULL),
(99707, 28, 666.722, 2395.18, 275.66, 100, 0, 0, NULL),
(99707, 29, 671.926, 2459.21, 275.56, 100, 0, 0, NULL),
(99707, 30, 685.678, 2474.66, 280.242, 100, 0, 0, NULL),
(99707, 31, 697.242, 2484.79, 281.574, 100, 0, 0, NULL),
(99707, 32, 708.142, 2490.21, 278.97, 100, 0, 0, NULL),
(99707, 33, 704.42, 2502.77, 277.125, 100, 0, 0, NULL),
(99707, 34, 702.468, 2522.21, 276.97, 100, 0, 0, NULL),
(99707, 35, 710.802, 2538.4, 281.111, 100, 0, 0, NULL),
(99707, 36, 716.826, 2549.42, 281.293, 100, 0, 0, NULL),
(99706, 1, 839.43, 2270.68, 280.97, 100, 0, 0, NULL),
(99706, 2, 856.441, 2270.89, 285.449, 100, 0, 0, NULL),
(99706, 3, 882.455, 2269.99, 297.41, 100, 0, 0, NULL),
(99706, 4, 819.469, 2269.54, 279.311, 100, 0, 0, NULL),
(99706, 5, 882.455, 2269.99, 297.41, 100, 0, 0, NULL),
(99706, 6, 856.441, 2270.89, 285.449, 100, 0, 0, NULL),
(99705, 1, 789.62, 2469.27, 289.315, 100, 0, 0, NULL),
(99705, 2, 804.403, 2452.14, 289.714, 100, 0, 0, NULL),
(99705, 3, 814.369, 2444.63, 289.217, 100, 0, 0, NULL),
(99705, 4, 830.958, 2442.77, 290.275, 100, 0, 0, NULL),
(99705, 5, 852.413, 2442.34, 290.133, 100, 0, 0, NULL),
(99705, 6, 867.035, 2456.66, 286.162, 100, 0, 0, NULL),
(99705, 7, 877.701, 2463.61, 289.446, 100, 0, 0, NULL),
(99705, 8, 867.035, 2456.66, 286.162, 100, 0, 0, NULL),
(99705, 9, 852.413, 2442.34, 290.133, 100, 0, 0, NULL),
(99705, 10, 830.958, 2442.77, 290.275, 100, 0, 0, NULL),
(99705, 11, 814.369, 2444.63, 289.217, 100, 0, 0, NULL),
(99705, 12, 804.403, 2452.14, 289.714, 100, 0, 0, NULL),
(99704, 1, 849.918, 2410.45, 281.415, 100, 0, 0, NULL),
(99704, 2, 852.224, 2392.5, 281.41, 100, 0, 0, NULL),
(99704, 3, 852.793, 2380.98, 279.463, 100, 0, 0, NULL),
(99704, 4, 848.47, 2369.03, 281.41, 100, 0, 0, NULL),
(99704, 5, 829.637, 2352.83, 281.466, 100, 0, 0, NULL),
(99704, 6, 811.32, 2339.8, 281.466, 100, 0, 0, NULL),
(99704, 7, 792.098, 2319.68, 281.463, 100, 0, 0, NULL),
(99704, 8, 780.123, 2303.21, 281.463, 100, 0, 0, NULL),
(99704, 9, 792.098, 2319.68, 281.463, 100, 0, 0, NULL),
(99704, 10, 811.32, 2339.8, 281.466, 100, 0, 0, NULL),
(99704, 11, 829.637, 2352.83, 281.466, 100, 0, 0, NULL),
(99704, 12, 848.47, 2369.03, 281.41, 100, 0, 0, NULL),
(99704, 13, 852.793, 2380.98, 279.463, 100, 0, 0, NULL),
(99704, 14, 852.224, 2392.5, 281.41, 100, 0, 0, NULL);

DELETE FROM dbscripts_on_quest_start WHERE id = 5344;
INSERT INTO dbscripts_on_quest_start (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(5344,0,0,0,0,0,0,0,0x04,2000001329,0,0,0,0,0,0,0,'');
UPDATE quest_template SET StartScript = 5344 WHERE entry = 5344;
DELETE FROM dbscript_string WHERE entry = 2000001329;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000001329,'The fortune is mine, Alexi! Your end comes soon!',0,0,0,22,NULL);
UPDATE `creature` SET `position_x` = '966.428', `position_y` = '-1451.72', `position_z` = '63.7999', `orientation` = '4.20624' WHERE `guid` =14771;

REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(22647, 24921, 530, 1, 1, 0, 0, 12051.3, -7062.43, 33.4256, 1.67552, 300, 300, 0, 0, 5468, 0, 0, 0),
(22678, 24921, 530, 1, 1, 0, 0, 12032.8, -7069.58, 33.7594, 3.07178, 300, 300, 0, 0, 5468, 0, 0, 0),
(22690, 24921, 530, 1, 1, 0, 0, 12032.7, -7080.29, 35.0818, 1.90241, 300, 300, 0, 0, 5468, 0, 0, 0),
(22709, 24921, 530, 1, 1, 0, 0, 12024.9, -7054.29, 34.8471, 0.855211, 300, 300, 0, 0, 5468, 0, 0, 0),
(22751, 24921, 530, 1, 1, 0, 0, 12015.1, -7070.65, 36.3386, 2.30383, 300, 300, 0, 0, 5468, 0, 0, 0),
(22758, 24921, 530, 1, 1, 0, 0, 12008.7, -7064.46, 36.2081, 3.40339, 300, 300, 0, 0, 5468, 0, 0, 0),
(22878, 24921, 530, 1, 1, 0, 0, 12706.4, -7222.82, 41.895, 1.48353, 300, 300, 0, 0, 5468, 0, 0, 0),
(22882, 24921, 530, 1, 1, 0, 0, 12696.1, -7229.04, 45.7966, 5.89921, 300, 300, 0, 0, 5468, 0, 0, 0),
(22963, 24921, 530, 1, 1, 0, 0, 12681.7, -7245.03, 42.0947, 0.471239, 300, 300, 0, 0, 5468, 0, 0, 0),
(22997, 24921, 530, 1, 1, 0, 0, 839.199, 2112.72, 271.515, 3.92699, 300, 300, 0, 0, 5468, 0, 0, 0);
DELETE FROM `creature_movement` WHERE `id` IN (SELECT `guid` FROM `creature` WHERE `id` = 22323);
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(82545, 22323, 530, 1, 1, 0, 0, 679.607, 2408.13, 275.515, 4.46554, 120, 300, 0, 0, 0, 0, 0, 2),
(82551, 22323, 530, 1, 1, 0, 0, 690.316, 2578.27, 276.819, 0.933742, 120, 300, 5, 0, 0, 0, 0, 1),
(82546, 22323, 530, 1, 1, 0, 0, 703.972, 2375.87, 275.048, 4.06733, 120, 300, 0, 0, 0, 0, 0, 2),
(82552, 22323, 530, 1, 1, 0, 0, 712.439, 2512.7, 277.577, 0.0371286, 120, 300, 5, 0, 0, 0, 0, 1),
(82547, 22323, 530, 1, 1, 0, 0, 726.174, 2408.9, 276.176, 1.96874, 120, 300, 0, 0, 0, 0, 0, 2),
(82553, 22323, 530, 1, 1, 0, 0, 729.454, 2557.94, 279.81, 2.8479, 120, 300, 5, 0, 0, 0, 0, 1),
(82554, 22323, 530, 1, 1, 0, 0, 746.634, 2513.04, 275.735, 4.68213, 120, 300, 5, 0, 0, 0, 0, 1),
(82555, 22323, 530, 1, 1, 0, 0, 773.122, 2262.28, 282.028, 3.22473, 120, 300, 5, 0, 0, 0, 0, 1),
(82556, 22323, 530, 1, 1, 0, 0, 777.397, 2066.1, 272.829, 4.33345, 120, 300, 5, 0, 0, 0, 0, 1),
(82557, 22323, 530, 1, 1, 0, 0, 779.805, 2025.52, 272.724, 2.08223, 120, 300, 5, 0, 0, 0, 0, 1),
(82558, 22323, 530, 1, 1, 0, 0, 779.815, 2137.84, 272.479, 6.13372, 120, 300, 5, 0, 0, 0, 0, 1),
(82559, 22323, 530, 1, 1, 0, 0, 790.112, 2415.9, 281.392, 1.83335, 120, 300, 5, 0, 0, 0, 0, 1),
(82560, 22323, 530, 1, 1, 0, 0, 796.947, 2534.29, 295.917, 1.74533, 120, 300, 5, 0, 0, 0, 0, 1),
(82561, 22323, 530, 1, 1, 0, 0, 803.282, 2371.62, 281.493, 1.63629, 120, 300, 5, 0, 0, 0, 0, 1),
(82562, 22323, 530, 1, 1, 0, 0, 805.013, 2171.16, 272.545, 1.55763, 120, 300, 5, 0, 0, 0, 0, 1),
(82563, 22323, 530, 1, 1, 0, 0, 806.654, 2471.27, 290.114, 2.16464, 120, 300, 5, 0, 0, 0, 0, 1),
(82548, 22323, 530, 1, 1, 0, 0, 810.844, 2123.51, 271.518, 0.704021, 120, 300, 0, 0, 0, 0, 0, 2),
(82564, 22323, 530, 1, 1, 0, 0, 812.533, 2553.2, 293.69, 4.74659, 120, 300, 5, 0, 0, 0, 0, 1),
(82549, 22323, 530, 1, 1, 0, 0, 824.17, 2092.21, 271.471, 1.72684, 120, 300, 0, 0, 0, 0, 0, 2),
(82565, 22323, 530, 1, 1, 0, 0, 830.298, 2454.67, 287.69, 5.01209, 120, 300, 5, 0, 0, 0, 0, 1),
(82566, 22323, 530, 1, 1, 0, 0, 835.823, 2222.47, 288.053, 5.26474, 120, 300, 5, 0, 0, 0, 0, 1),
(82567, 22323, 530, 1, 1, 0, 0, 838.632, 2395.83, 281.504, 0.712459, 120, 300, 5, 0, 0, 0, 0, 1),
(82550, 22323, 530, 1, 1, 0, 0, 852.978, 2114.79, 270.125, 0.221236, 120, 300, 0, 0, 0, 0, 0, 2),
(82568, 22323, 530, 1, 1, 0, 0, 863.034, 2247.81, 294.686, 4.13377, 120, 300, 5, 0, 0, 0, 0, 1),
(82569, 22323, 530, 1, 1, 0, 0, 870.909, 2558.56, 296.109, 5.11266, 120, 300, 5, 0, 0, 0, 0, 1),
(82570, 22323, 530, 1, 1, 0, 0, 872.981, 2069.24, 272.227, 4.33345, 120, 300, 5, 0, 0, 0, 0, 1),
(23016, 22323, 530, 1, 1, 0, 0, 876.59, 2168.81, 279.876, 5.33303, 120, 300, 5, 0, 0, 0, 0, 1),
(23093, 22323, 530, 1, 1, 0, 0, 877.578, 2279.06, 294.53, 1.82762, 120, 300, 5, 0, 0, 0, 0, 1),
(23145, 22323, 530, 1, 1, 0, 0, 904.055, 2231.69, 303.629, 0.124355, 120, 300, 5, 0, 0, 0, 0, 1);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `script_id`, `comment`) VALUES
(82546, 1, 703.972, 2375.87, 275.048, 0.310768, 0, 0, NULL),
(82546, 2, 711.636, 2378.34, 275.592, 0.310768, 0, 0, NULL),
(82546, 3, 716.419, 2380.99, 272.341, 0.546388, 0, 0, NULL),
(82546, 4, 719.999, 2384.13, 274.307, 0.784364, 0, 0, NULL),
(82546, 5, 723.521, 2388.63, 275.41, 0.942229, 0, 0, NULL),
(82546, 6, 726.04, 2392.29, 276.604, 0.982284, 0, 0, NULL),
(82546, 7, 728.087, 2397.22, 275.028, 1.25796, 0, 0, NULL),
(82546, 8, 728.682, 2401.48, 274.634, 1.49593, 0, 0, NULL),
(82546, 9, 728.466, 2406.12, 275.169, 1.69386, 0, 0, NULL),
(82546, 10, 727.066, 2410.55, 276.223, 1.92947, 0, 0, NULL),
(82546, 11, 724.352, 2414.59, 275.907, 2.2452, 0, 0, NULL),
(82546, 12, 722.525, 2416.87, 274.881, 2.2452, 0, 0, NULL),
(82546, 13, 720.713, 2418.35, 274.529, 2.46669, 0, 0, NULL),
(82546, 14, 716.975, 2421.34, 277.177, 2.46669, 0, 0, NULL),
(82546, 15, 714.783, 2423.09, 277.773, 2.46669, 0, 0, NULL),
(82546, 16, 711.318, 2425.87, 275.804, 2.46669, 0, 0, NULL),
(82546, 17, 707.324, 2427.73, 275.403, 2.78006, 0, 0, NULL),
(82546, 18, 703.216, 2428.48, 275.167, 3.05574, 0, 0, NULL),
(82546, 19, 698.686, 2427.65, 275.135, 3.44922, 0, 0, NULL),
(82546, 20, 694.942, 2425.59, 274.873, 3.76495, 0, 0, NULL),
(82546, 21, 691.81, 2423.34, 273.396, 3.76495, 0, 0, NULL),
(82546, 22, 689.245, 2420.97, 274.229, 3.96052, 0, 0, NULL),
(82546, 23, 685.975, 2417.48, 276.107, 3.96052, 0, 0, NULL),
(82546, 24, 683.66, 2413.84, 275.497, 4.19614, 0, 0, NULL),
(82546, 25, 681.469, 2409.98, 276.117, 4.19614, 0, 0, NULL),
(82546, 26, 679.742, 2406.94, 275.407, 4.19614, 0, 0, NULL),
(82546, 27, 677.567, 2402.94, 274.87, 4.43175, 0, 0, NULL),
(82546, 28, 677.36, 2396.83, 275.272, 5.02316, 0, 0, NULL),
(82546, 29, 680.055, 2390.77, 275.318, 5.21872, 0, 0, NULL),
(82546, 30, 682.824, 2386.59, 275.217, 5.33653, 0, 0, NULL),
(82546, 31, 685.852, 2383.37, 274.938, 5.5321, 0, 0, NULL),
(82546, 32, 689.336, 2380.82, 274.842, 5.68996, 0, 0, NULL),
(82546, 33, 691.756, 2379.19, 274.237, 5.68996, 0, 0, NULL),
(82546, 34, 693.892, 2377.75, 273.619, 5.68996, 0, 0, NULL),
(82546, 35, 696.812, 2376.61, 274.761, 5.96564, 0, 0, NULL),
(82547, 1, 726.174, 2408.9, 276.176, 1.96874, 0, 0, NULL),
(82547, 2, 722.791, 2414.82, 276.54, 2.18473, 0, 0, NULL),
(82547, 3, 720.432, 2417.4, 274.4, 2.38029, 0, 0, NULL),
(82547, 4, 715.872, 2421.74, 277.481, 2.38029, 0, 0, NULL),
(82547, 5, 713.056, 2423.17, 277.026, 2.72194, 0, 0, NULL),
(82547, 6, 707.616, 2425.59, 275.472, 2.72194, 0, 0, NULL),
(82547, 7, 702.663, 2427.67, 275.294, 2.87745, 0, 0, NULL),
(82547, 8, 696.946, 2426.02, 275.095, 3.43508, 0, 0, NULL),
(82547, 9, 693.295, 2423.41, 274.499, 3.82385, 0, 0, NULL),
(82547, 10, 691.084, 2421.49, 273.462, 3.85527, 0, 0, NULL),
(82547, 11, 687.698, 2417.64, 275.139, 4.01313, 0, 0, NULL),
(82547, 12, 683.264, 2412.37, 275.341, 4.01313, 0, 0, NULL),
(82547, 13, 679.808, 2408.26, 275.505, 4.01313, 0, 0, NULL),
(82547, 14, 677.572, 2403.82, 274.973, 4.40662, 0, 0, NULL),
(82547, 15, 677.509, 2398.34, 275.115, 4.95561, 0, 0, NULL),
(82547, 16, 679.962, 2391.42, 275.322, 5.11348, 0, 0, NULL),
(82547, 17, 683.962, 2385.55, 275.132, 5.3491, 0, 0, NULL),
(82547, 18, 686.043, 2382.74, 274.94, 5.3491, 0, 0, NULL),
(82547, 19, 690.594, 2377.98, 274.59, 5.66168, 0, 0, NULL),
(82547, 20, 693.107, 2376.78, 273.585, 5.93736, 0, 0, NULL),
(82547, 21, 697.717, 2375.12, 274.877, 5.93736, 0, 0, NULL),
(82547, 22, 702.069, 2374.7, 275.054, 0.047659, 0, 0, NULL),
(82547, 23, 705.8, 2375.56, 275.134, 0.323334, 0, 0, NULL),
(82547, 24, 710.227, 2377.05, 275.396, 0.323334, 0, 0, NULL),
(82547, 25, 712.81, 2378.54, 275.593, 0.794573, 0, 0, NULL),
(82547, 26, 716.733, 2382.53, 272.139, 0.794573, 0, 0, NULL),
(82547, 27, 720.578, 2386.45, 274.829, 0.794573, 0, 0, NULL),
(82547, 28, 722.589, 2389.16, 275.402, 0.990138, 0, 0, NULL),
(82547, 29, 725.15, 2393.06, 276.432, 0.990138, 0, 0, NULL),
(82547, 30, 726.718, 2396.7, 275.232, 1.22576, 0, 0, NULL),
(82547, 31, 727.429, 2398.67, 274.811, 1.22576, 0, 0, NULL),
(82547, 32, 727.583, 2400.88, 274.672, 1.52735, 0, 0, NULL),
(82547, 33, 727.714, 2403.91, 275.075, 1.52735, 0, 0, NULL),
(82545, 1, 679.607, 2408.13, 275.515, 4.46554, 0, 0, NULL),
(82545, 2, 677.541, 2400.87, 274.946, 4.85666, 0, 0, NULL),
(82545, 3, 678.927, 2395.34, 275.264, 5.01217, 0, 0, NULL),
(82545, 4, 679.93, 2392.23, 275.251, 5.17004, 0, 0, NULL),
(82545, 5, 681.961, 2388.15, 275.372, 5.28785, 0, 0, NULL),
(82545, 6, 684.97, 2383.71, 274.984, 5.56117, 0, 0, NULL),
(82545, 7, 690.925, 2379.25, 274.374, 5.75909, 0, 0, NULL),
(82545, 8, 694.463, 2377.45, 273.667, 5.83684, 0, 0, NULL),
(82545, 9, 695.756, 2376.93, 274.388, 6.07246, 0, 0, NULL),
(82545, 10, 701.245, 2375.79, 275.05, 6.23033, 0, 0, NULL),
(82545, 11, 706.482, 2375.7, 275.153, 0.302925, 0, 0, NULL),
(82545, 12, 711.215, 2377.33, 275.438, 0.616299, 0, 0, NULL),
(82545, 13, 716.927, 2381.38, 272.248, 0.616299, 0, 0, NULL),
(82545, 14, 719.359, 2383.2, 273.801, 0.851919, 0, 0, NULL),
(82545, 15, 722.331, 2386.65, 275.481, 1.00978, 0, 0, NULL),
(82545, 16, 724.193, 2389.62, 275.891, 1.00978, 0, 0, NULL),
(82545, 17, 726.662, 2393.59, 276.493, 1.12995, 0, 0, NULL),
(82545, 18, 728.872, 2399.21, 274.473, 1.32787, 0, 0, NULL),
(82545, 19, 729.293, 2402.68, 274.717, 1.52579, 0, 0, NULL),
(82545, 20, 728.52, 2407.61, 275.214, 1.79911, 0, 0, NULL),
(82545, 21, 726.606, 2411.07, 275.995, 2.11248, 0, 0, NULL),
(82545, 22, 723.957, 2415.48, 276.199, 2.11248, 0, 0, NULL),
(82545, 23, 721.531, 2418.13, 274.696, 2.3858, 0, 0, NULL),
(82545, 24, 718.388, 2421.09, 276.384, 2.3858, 0, 0, NULL),
(82545, 25, 717.355, 2422.04, 277.072, 2.50361, 0, 0, NULL),
(82545, 26, 712.82, 2425.33, 276.266, 2.70153, 0, 0, NULL),
(82545, 27, 708.791, 2427.19, 275.148, 2.8594, 0, 0, NULL),
(82545, 28, 704.638, 2428.37, 275.363, 2.97721, 0, 0, NULL),
(82545, 29, 698.914, 2428.63, 275.059, 3.5262, 0, 0, NULL),
(82545, 30, 697.251, 2427.79, 275.059, 3.84193, 0, 0, NULL),
(82545, 31, 693.323, 2424.48, 274.191, 3.84193, 0, 0, NULL),
(82545, 32, 688.677, 2420.57, 274.58, 3.84193, 0, 0, NULL),
(82545, 33, 685.374, 2417.78, 276.457, 3.84193, 0, 0, NULL),
(82545, 34, 683.098, 2414.4, 275.706, 4.1553, 0, 0, NULL),
(82545, 35, 681.059, 2411.13, 275.887, 4.1553, 0, 0, NULL),
(82550, 1, 852.978, 2114.79, 270.125, 100, 0, 0, NULL),
(82550, 2, 852.432, 2120.48, 271.807, 100, 0, 0, NULL),
(82550, 3, 850.606, 2124.14, 272.242, 100, 0, 0, NULL),
(82550, 4, 847.168, 2129.69, 273.133, 100, 0, 0, NULL),
(82550, 5, 844.04, 2132.09, 271.963, 100, 0, 0, NULL),
(82550, 6, 839.46, 2134.1, 270.573, 100, 0, 0, NULL),
(82550, 7, 835.315, 2135.67, 273.687, 100, 0, 0, NULL),
(82550, 8, 831.261, 2136.05, 274.269, 100, 0, 0, NULL),
(82550, 9, 826.048, 2135.51, 273.344, 100, 0, 0, NULL),
(82550, 10, 822.351, 2134.96, 272.622, 100, 0, 0, NULL),
(82550, 11, 817.149, 2131.8, 272.708, 100, 0, 0, NULL),
(82550, 12, 810.844, 2123.51, 271.518, 100, 0, 0, NULL),
(82550, 13, 808.251, 2120.05, 270.703, 100, 0, 0, NULL),
(82550, 14, 805.314, 2116.13, 271.872, 100, 0, 0, NULL),
(82550, 15, 805.567, 2108.93, 272.176, 100, 0, 0, NULL),
(82550, 16, 805.939, 2105.21, 272.341, 100, 0, 0, NULL),
(82550, 17, 807.775, 2101.8, 270.51, 100, 0, 0, NULL),
(82550, 18, 810.516, 2097.45, 272.373, 100, 0, 0, NULL),
(82550, 19, 814.883, 2094.68, 272.222, 100, 0, 0, NULL),
(82550, 20, 818.081, 2093.25, 272.093, 100, 0, 0, NULL),
(82550, 21, 820.707, 2092.72, 269.765, 100, 0, 0, NULL),
(82550, 22, 824.17, 2092.21, 271.471, 100, 0, 0, NULL),
(82550, 23, 828.241, 2092.44, 272.615, 100, 0, 0, NULL),
(82550, 24, 832.714, 2093.75, 273.203, 100, 0, 0, NULL),
(82550, 25, 836.777, 2095.52, 273.922, 100, 0, 0, NULL),
(82550, 26, 840.756, 2097.94, 272.143, 100, 0, 0, NULL),
(82550, 27, 844.796, 2100.22, 270.439, 100, 0, 0, NULL),
(82550, 28, 847.4, 2102, 271.376, 100, 0, 0, NULL),
(82550, 29, 849.775, 2104.4, 273.431, 100, 0, 0, NULL),
(82550, 30, 852.535, 2109.63, 272.614, 100, 0, 0, NULL),
(82550, 31, 853.084, 2112.12, 271.936, 100, 0, 0, NULL),
(82549, 1, 824.17, 2092.21, 271.471, 100, 0, 0, NULL),
(82549, 2, 828.241, 2092.44, 272.615, 100, 0, 0, NULL),
(82549, 3, 832.714, 2093.75, 273.203, 100, 0, 0, NULL),
(82549, 4, 836.777, 2095.52, 273.922, 100, 0, 0, NULL),
(82549, 5, 840.756, 2097.94, 272.143, 100, 0, 0, NULL),
(82549, 6, 844.796, 2100.22, 270.439, 100, 0, 0, NULL),
(82549, 7, 847.4, 2102, 271.376, 100, 0, 0, NULL),
(82549, 8, 849.775, 2104.4, 273.431, 100, 0, 0, NULL),
(82549, 9, 852.535, 2109.63, 272.614, 100, 0, 0, NULL),
(82549, 10, 853.084, 2112.12, 271.936, 100, 0, 0, NULL),
(82549, 11, 852.978, 2114.79, 270.125, 100, 0, 0, NULL),
(82549, 12, 852.432, 2120.48, 271.807, 100, 0, 0, NULL),
(82549, 13, 850.606, 2124.14, 272.242, 100, 0, 0, NULL),
(82549, 14, 847.168, 2129.69, 273.133, 100, 0, 0, NULL),
(82549, 15, 844.04, 2132.09, 271.963, 100, 0, 0, NULL),
(82549, 16, 839.46, 2134.1, 270.573, 100, 0, 0, NULL),
(82549, 17, 835.315, 2135.67, 273.687, 100, 0, 0, NULL),
(82549, 18, 831.261, 2136.05, 274.269, 100, 0, 0, NULL),
(82549, 19, 826.048, 2135.51, 273.344, 100, 0, 0, NULL),
(82549, 20, 822.351, 2134.96, 272.622, 100, 0, 0, NULL),
(82549, 21, 817.149, 2131.8, 272.708, 100, 0, 0, NULL),
(82549, 22, 810.844, 2123.51, 271.518, 100, 0, 0, NULL),
(82549, 23, 808.251, 2120.05, 270.703, 100, 0, 0, NULL),
(82549, 24, 805.314, 2116.13, 271.872, 100, 0, 0, NULL),
(82549, 25, 805.567, 2108.93, 272.176, 100, 0, 0, NULL),
(82549, 26, 805.939, 2105.21, 272.341, 100, 0, 0, NULL),
(82549, 27, 807.775, 2101.8, 270.51, 100, 0, 0, NULL),
(82549, 28, 810.516, 2097.45, 272.373, 100, 0, 0, NULL),
(82549, 29, 814.883, 2094.68, 272.222, 100, 0, 0, NULL),
(82549, 30, 818.081, 2093.25, 272.093, 100, 0, 0, NULL),
(82549, 31, 820.707, 2092.72, 269.765, 100, 0, 0, NULL),
(82548, 1, 810.844, 2123.51, 271.518, 100, 0, 0, NULL),
(82548, 2, 808.251, 2120.05, 270.703, 100, 0, 0, NULL),
(82548, 3, 805.314, 2116.13, 271.872, 100, 0, 0, NULL),
(82548, 4, 805.567, 2108.93, 272.176, 100, 0, 0, NULL),
(82548, 5, 805.939, 2105.21, 272.341, 100, 0, 0, NULL),
(82548, 6, 807.775, 2101.8, 270.51, 100, 0, 0, NULL),
(82548, 7, 810.516, 2097.45, 272.373, 100, 0, 0, NULL),
(82548, 8, 814.883, 2094.68, 272.222, 100, 0, 0, NULL),
(82548, 9, 818.081, 2093.25, 272.093, 100, 0, 0, NULL),
(82548, 10, 820.707, 2092.72, 269.765, 100, 0, 0, NULL),
(82548, 11, 824.17, 2092.21, 271.471, 100, 0, 0, NULL),
(82548, 12, 828.241, 2092.44, 272.615, 100, 0, 0, NULL),
(82548, 13, 832.714, 2093.75, 273.203, 100, 0, 0, NULL),
(82548, 14, 836.777, 2095.52, 273.922, 100, 0, 0, NULL),
(82548, 15, 840.756, 2097.94, 272.143, 100, 0, 0, NULL),
(82548, 16, 844.796, 2100.22, 270.439, 100, 0, 0, NULL),
(82548, 17, 847.4, 2102, 271.376, 100, 0, 0, NULL),
(82548, 18, 849.775, 2104.4, 273.431, 100, 0, 0, NULL),
(82548, 19, 852.535, 2109.63, 272.614, 100, 0, 0, NULL),
(82548, 20, 853.084, 2112.12, 271.936, 100, 0, 0, NULL),
(82548, 21, 852.978, 2114.79, 270.125, 100, 0, 0, NULL),
(82548, 22, 852.432, 2120.48, 271.807, 100, 0, 0, NULL),
(82548, 23, 850.606, 2124.14, 272.242, 100, 0, 0, NULL),
(82548, 24, 847.168, 2129.69, 273.133, 100, 0, 0, NULL),
(82548, 25, 844.04, 2132.09, 271.963, 100, 0, 0, NULL),
(82548, 26, 839.46, 2134.1, 270.573, 100, 0, 0, NULL),
(82548, 27, 835.315, 2135.67, 273.687, 100, 0, 0, NULL),
(82548, 28, 831.261, 2136.05, 274.269, 100, 0, 0, NULL),
(82548, 29, 826.048, 2135.51, 273.344, 100, 0, 0, NULL),
(82548, 30, 822.351, 2134.96, 272.622, 100, 0, 0, NULL),
(82548, 31, 817.149, 2131.8, 272.708, 100, 0, 0, NULL);

DELETE FROM dbscripts_on_quest_end WHERE id = 602;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(602,0,29,2,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'NPCFlags removed'),
(602,10,21,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'active'),
(602,100,15,3659,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Cast: Mage Sight'),
(602,5000,0,0,0,0,0,0,0,2000001330,0,0,0,0,0,0,0,''),
(602,5100,29,2,1,0,0,0,0x04,0,0,0,0,0,0,0,0,'NPCFlags added'),
(602,5200,21,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'unactive');
UPDATE quest_template SET CompleteScript = 602 WHERE entry = 602;
DELETE FROM dbscript_string WHERE entry = 2000001330;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000001330,'How interesting... the Stone possesses great magical potential, but in a purely raw form...',0,0,7,0,NULL);
UPDATE `creature` SET `position_x` = '34.8848', `position_y` = '255.874', `position_z` = '42.0349', `orientation` = '3.21141', `spawntimesecsmin` = '300', `spawntimesecsmax` = '300' WHERE `guid` =13610;

DELETE FROM dbscripts_on_quest_end WHERE id = 1179;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1179,0,36,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'face Player'),
(1179,100,1,2,0,0,0,0,0,0,0,0,0,0,0,0,0,'emote'),
(1179,600,0,0,0,0,0,0,0,2000001331,0,0,0,0,0,0,0,''),
(1179,1000,15,6655,0,0,0,0,0,0,0,0,0,0,0,0,0,'Cast: Force Target - Bow'),
(1179,5000,3,0,0,0,0,0,0x04,0,0,0,0,0,0,0,6.04,'');
UPDATE quest_template SET CompleteScript = 1179 WHERE entry = 1179;
DELETE FROM dbscript_string WHERE entry = 2000001331;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000001331,'Thanks for the helmets, $N.  These will really reduce our medical bills...',0,0,0,0,NULL);
UPDATE `creature` SET `position_x` = '-6228.86', `position_y` = '-3871.63', `position_z` = '-58.6667', `orientation` = '6.03884', `spawntimesecsmin` = '300', `spawntimesecsmax` = '300' WHERE `guid` =25111;

DELETE FROM dbscripts_on_quest_end WHERE id = 848;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(848,0,29,2,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'NPCFlags removed'),
(848,10,21,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'active'),
(848,100,3,0,0,0,0,0,0x04,0,0,0,0,0,0,0,4.356,''),
(848,1000,0,0,0,0,0,0,0,2000001332,0,0,0,0,0,0,0,''),
(848,2000,13,0,0,0,4166,30,1|0x08,0,0,0,0,0,0,0,0,'object: custom anim'),
(848,7000,3,0,0,0,0,0,0x04,0,0,0,0,0,0,0,6.23,''),
(848,7100,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'emote'),
(848,7200,0,0,0,0,0,0,0,2000001333,0,0,0,0,0,0,0,''),
(848,7300,29,3,1,0,0,0,0x04,0,0,0,0,0,0,0,0,'NPCFlags added'),
(848,7400,21,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'unactive');
UPDATE quest_template SET CompleteScript = 848 WHERE entry = 848;
DELETE FROM dbscript_string WHERE entry BETWEEN 2000001332 AND 2000001333;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000001332,'%s places the spores within his alchemical instruments...',0,2,0,0,NULL),
(2000001333,'Ah, good.  These spores have rendered nicely.  Thank you, $N.',0,0,0,0,NULL);
UPDATE `creature` SET `position_x` = '-424.542', `position_y` = '-2589.88', `position_z` = '95.9052', `orientation` = '6.23082', `spawntimesecsmin` = '300', `spawntimesecsmax` = '300' WHERE `guid` =35709;

DELETE FROM dbscripts_on_quest_end WHERE id = 1452;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1452,0,29,2,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'NPCFlags removed'),
(1452,10,21,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'active'),
(1452,100,0,0,0,0,0,0,0,2000001334,0,0,0,0,0,0,0,''),
(1452,4000,3,0,0,0,0,0,0x04,0,0,0,0,219.01102,-2614.0579,160.5317,100,'move'),
(1452,6000,1,133,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'emote'),
(1452,12000,1,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'emote'),
(1452,12500,0,0,0,0,0,0,0,2000001335,0,0,0,0,0,0,0,''),
(1452,13000,3,0,0,0,0,0,0x04,0,0,0,0,221.79509,-2613.766,160.41942,100,'move'),
(1452,15000,1,92,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'emote'),
(1452,15700,0,0,0,0,0,0,0,2000001336,0,0,0,0,0,0,0,''),
(1452,19000,3,0,0,0,0,0,0x04,0,0,0,0,223.71512,-2609.9314,160.19234,100,'move'),
(1452,19000,1,93,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'emote'),
(1452,21900,1,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'emote'),
(1452,22000,28,7,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(1452,22100,0,0,0,0,0,0,0,2000001337,0,0,0,0,0,0,0,''),
(1452,22200,0,0,0,0,0,0,0,2000001338,0,0,0,0,0,0,0,''),
(1452,27000,28,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(1452,27100,1,93,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'emote'),
(1452,29000,3,0,0,0,0,0,0x04,0,0,0,0,219.59831,-2612.208,160.44882,100,'move'),
(1452,32000,3,0,0,0,0,0,0x04,0,0,0,0,0,0,0,1.152,'move'),
(1452,34000,1,92,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'emote'),
(1452,34100,0,0,0,0,0,0,0,2000001339,0,0,0,0,0,0,0,''),
(1452,38000,29,2,1,0,0,0,0x04,0,0,0,0,0,0,0,0,'NPCFlags added'),
(1452,38100,0,0,0,0,0,0,0,2000001340,0,0,0,0,0,0,0,''),
(1452,39000,1,92,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'emote'),
(1452,40000,21,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'unactive');
UPDATE quest_template SET CompleteScript = 1452 WHERE entry = 1452;
DELETE FROM dbscript_string WHERE entry BETWEEN 2000001334 AND 2000001340;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000001334,'Time to brew up a Kalimdor Kocktail! Hiccup!',0,0,7,0,NULL),
(2000001335,'That should do it! Hiccup!',0,0,7,0,NULL),
(2000001336,'%s chugs his drink.',0,2,0,0,NULL),
(2000001337,'Hiccup!',0,0,7,0,NULL),
(2000001338,'Ok, who pushed me down? Was it you, $n? Someone turn the lights back on. Hiccup!',0,0,7,0,NULL),
(2000001339,'One more sip of the ol\' fire water and I\'ll be ready to talk. Hiccup! Cheers!',0,0,7,0,NULL),
(2000001340,'So, $n, I\'m ready to tell you what happened in the Swamp of Sorrows. Hiccup!',0,0,7,0,NULL);
UPDATE `creature` SET `position_x` = '219.598', `position_y` = '-2612.21', `position_z` = '160.449', `orientation` = '1.15192', `spawntimesecsmin` = '300', `spawntimesecsmax` = '300' WHERE `guid` =13915;

UPDATE `gameobject` SET `position_x` = '-2940.56', `position_y` = '-3885.85', `position_z` = '34.8837', `orientation` = '-1.8675', `rotation2` = '-0.803856', `rotation3` = '0.594824', `spawntimesecsmin` = '5', `spawntimesecsmax` = '5' WHERE `guid` =837;
UPDATE `quest_template` SET `NextQuestId` = 0 WHERE `entry` IN (1238,1240,1262,1519);
UPDATE `quest_template` SET `RequiredRaces` = 130 WHERE `entry` IN (1517,1518,1463);
UPDATE `quest_template` SET `RequiredRaces` = 32 WHERE `entry` IN (1520,1521,1462);
UPDATE `quest_template` SET `PrevQuestId` = 1240 WHERE `entry` =1261;
UPDATE `creature` SET `position_x` = '-3106.37', `position_y` = '-2823.56', `position_z` = '34.5374', `orientation` = '4.43314', `spawntimesecsmin` = '300', `spawntimesecsmax` = '300' WHERE `guid` =28466;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '-50' WHERE `item` IN (6257,6258,6259);

DELETE FROM dbscripts_on_quest_start WHERE id = 4961;
INSERT INTO dbscripts_on_quest_start (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(4961,0,29,3,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'NPCFlags removed'),
(4961,10,21,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'active'),
(4961,100,0,0,0,0,0,0,0,2000001341,0,0,0,0,0,0,0,''),
(4961,100,20,2,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'waypoints');
UPDATE quest_template SET StartScript = 4961 WHERE entry = 4961;
INSERT INTO `dbscript_string` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`, `sound`, `type`, `language`, `emote`, `broadcast_text_id`, `comment`) VALUES
(2000001341, 'Gird yourself $N, for the demon in this orb is a fel beast.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, NULL);
UPDATE creature_template SET MovementType = 0 WHERE entry = 6546;
UPDATE `creature` SET `position_x` = '-4031.56', `position_y` = '-3392.97', `position_z` = '38.9974', `orientation` = '2.1293', `spawntimesecsmin` = '300', `spawntimesecsmax` = '300' WHERE `guid` =27041;
UPDATE creature SET spawndist = 0, MovementType = 0 WHERE id = 6546;
DELETE FROM creature_movement_template WHERE entry = 6546;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(6546,1,-4035.4854,-3384.7908,38.98468,100,0,0),
(6546,2,-4037.8967,-3379.5305,37.762386,100,0,0),
(6546,3,-4037.5156,-3378.611,37.69769,100,0,0),
(6546,4,-4034.8137,-3376.969,38.02606,100,0,0),
(6546,5,-4028.1155,-3377.3867,38.25469,100,0,0),
(6546,6,-4024.8733,-3379.4058,38.25469,100,0,0),
(6546,7,-4020.3528,-3381.6677,38.25469,100,10000,654601),
(6546,8,-4038.0925,-3378.3247,37.594173,100,0,0),
(6546,9,-4031.5637,-3392.9675,38.99676,100,0,0),
(6546,10,-4031.56,-3392.97,38.9974,100,0,0),
(6546,11,-4031.56,-3392.97,38.9974,2.129,2000,654602);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (654601,654602);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(654601,100,25,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'RUN ON'),
(654601,2000,15,9097,0,0,0,0,0,0,0,0,0,0,0,0,0,'cast: Summon Demon of the Orb'),
(654602,1,25,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'RUN OFF'),
(654602,10,29,3,1,0,0,0,0x04,0,0,0,0,0,0,0,0,'NPCFlags added'),
(654602,50,20,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'idle'),
(654602,100,21,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'unactive');
UPDATE creature_template SET Faction = 14, EquipmentTemplateId = 730 WHERE entry = 6549;

DELETE FROM creature WHERE guid = 8790;
DELETE FROM creature WHERE guid = 8853;
DELETE FROM creature WHERE guid = 8890;
DELETE FROM creature WHERE guid = 54505;
DELETE FROM creature WHERE guid = 53065;
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(8753, 2506, 0, 1, 1, 0, 0, -5415.97, -2996.45, 350.51, 3.48619, 300, 300, 5, 0, 1910, 0, 0, 1),
(8994, 2507, 0, 1, 1, 0, 0, -5253.02, -3041.88, 338.01, 2.2509, 300, 300, 5, 0, 1910, 0, 0, 1),
(8977, 2508, 0, 1, 1, 0, 0, -5261.83, -2973.67, 346.573, 0.034754, 300, 300, 5, 0, 1910, 0, 0, 1),
(8955, 2509, 0, 1, 1, 0, 0, -5271.79, -2929.11, 350.227, 2.54521, 300, 300, 5, 0, 1910, 0, 0, 1),
(8872, 2510, 0, 1, 1, 0, 0, -5346.88, -2962.26, 323.759, 4.82375, 300, 300, 3, 0, 1910, 0, 0, 1),
(8947, 2511, 0, 1, 1, 0, 0, -5293.88, -3068.29, 343.834, 0.064079, 300, 300, 5, 0, 1910, 0, 0, 1),
(8743, 2512, 0, 1, 1, 0, 0, -5433.44, -2952.09, 350.478, 1.50046, 300, 300, 7, 0, 1910, 0, 0, 1),
(8882, 2513, 0, 1, 1, 0, 0, -5305.82, -2970.57, 346.63, 3.66186, 300, 300, 0, 0, 1910, 0, 0, 2),
(8930, 2514, 0, 1, 1, 0, 0, -5307.23, -3031.26, 324.285, 4.82194, 300, 300, 5, 0, 1910, 0, 0, 1),
(8899, 2515, 0, 1, 1, 0, 0, -5353.41, -3063.57, 344.984, 4.78405, 300, 300, 5, 0, 1910, 0, 0, 1),
(8919, 2516, 0, 1, 1, 0, 0, -5310.92, -2912.51, 339.342, 1.32645, 300, 300, 0, 0, 1910, 0, 0, 0),
(8881, 2517, 0, 1, 1, 0, 0, -5349.04, -2982.27, 323.87, 4.20276, 300, 300, 3, 0, 1910, 0, 0, 1),
(8833, 2518, 0, 1, 1, 0, 0, -5389.03, -3027.92, 348.55, 4.15255, 300, 300, 5, 0, 1910, 0, 0, 1),
(657, 2519, 0, 1, 1, 0, 0, -12347.4, 161.425, 3.23635, 1.26347, 300, 300, 0, 0, 1678, 0, 0, 0);
UPDATE creature_template SET MovementType = 2 WHERE Entry = 2513;
DELETE FROM creature_movement WHERE id IN (8743,8882,54505);
DELETE FROM creature_movement_template WHERE entry = 2513;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(2513,1,-5305.818,-2970.573,346.63016,3.66186,60000,0),
(2513,2,-5292.368,-2966.6975,350.6925,100,0,0);
UPDATE creature SET position_x = -5245.689453, position_y = -2999.479004, position_z = 331.008484, spawntimesecsmin = 300, spawntimesecsmax = 300, spawndist = 5, MovementType = 1 WHERE id = 1338;
DELETE FROM creature_movement WHERE id = 9010;
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(8800, 1278, 0, 1, 1, 0, 0, -5385.4, -2874.93, 341.098, 3.8275, 300, 300, 0, 0, 1910, 0, 0, 2),
(8935, 1337, 0, 1, 1, 0, 0, -5305.85, -2984.95, 340.724, 5.85614, 300, 300, 0, 0, 1910, 0, 0, 0),
(8895, 1340, 0, 1, 1, 0, 0, -5367.58, -2936.21, 327.64, 2.33269, 300, 300, 0, 0, 1910, 0, 0, 2);
UPDATE creature_template SET MovementType = 2 WHERE Entry = 1340;
DELETE FROM creature_movement WHERE id IN (8895);
DELETE FROM creature_movement_template WHERE entry = 1340;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(1340,1,-5367.582,-2936.2083,327.6403,100,0,0),
(1340,2,-5383.0415,-2920.7136,333.789,100,0,0),
(1340,3,-5392.748,-2909.121,338.15594,100,0,0),
(1340,4,-5397.4463,-2902.0103,339.67352,100,0,0),
(1340,5,-5402.143,-2894.7766,341.5991,100,0,0),
(1340,6,-5398.1035,-2903.051,339.6159,100,0,0),
(1340,7,-5391.07,-2913.002,336.7763,100,0,0),
(1340,8,-5379.58,-2925.7773,331.9743,100,0,0),
(1340,9,-5365.318,-2938.39,326.82092,100,0,0),
(1340,10,-5356.2173,-2949.9868,324.00916,100,0,0),
(1340,11,-5351.3276,-2961.7864,323.88416,100,0,0),
(1340,12,-5347.1963,-2976.2473,324.37387,100,0,0),
(1340,13,-5340.868,-2988.347,323.74887,100,0,0),
(1340,14,-5338.276,-2999.2102,323.84335,100,0,0),
(1340,15,-5336.951,-3009.508,324.22464,100,0,0),
(1340,16,-5333.172,-3018.8977,324.24454,100,0,0),
(1340,17,-5328.7725,-3022.3794,324.07828,100,0,0),
(1340,18,-5320.26,-3023.7024,324.20767,100,0,0),
(1340,19,-5306.8794,-3024.5286,324.07632,100,0,0),
(1340,20,-5286.1562,-3022.7673,324.2688,100,0,0),
(1340,21,-5269.3535,-3013.7205,325.20947,100,0,0),
(1340,22,-5259.6807,-3006.779,327.50864,100,0,0),
(1340,23,-5272.7666,-3015.8997,324.79834,100,0,0),
(1340,24,-5281.762,-3021.1375,324.18945,100,0,0),
(1340,25,-5292.693,-3022.9146,324.24927,100,0,0),
(1340,26,-5306.523,-3024.0059,324.07632,100,0,0),
(1340,27,-5316.5415,-3025.1194,324.07632,100,0,0),
(1340,28,-5325.3706,-3024.2166,324.07632,100,0,0),
(1340,29,-5331.681,-3020.5056,324.0424,100,0,0),
(1340,30,-5336.662,-3013.1345,324.33255,100,0,0),
(1340,31,-5338.3804,-3001.6204,323.97122,100,0,0),
(1340,32,-5339.8306,-2989.3547,323.74887,100,0,0),
(1340,33,-5343.668,-2982.284,324.07114,100,0,0),
(1340,34,-5348.254,-2973.2366,324.37387,100,0,0),
(1340,35,-5350.712,-2960.7065,323.78235,100,0,0),
(1340,36,-5357.532,-2946.7402,324.30432,100,0,0);
UPDATE creature_template SET MovementType = 2 WHERE Entry = 1278;
DELETE FROM creature_movement WHERE id IN (8800);
DELETE FROM creature_movement_template WHERE entry = 1278;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(1278,1,-5385.401,-2874.934,341.09842,100,0,0),
(1278,2,-5393.8423,-2884.0344,341.91898,100,0,0),
(1278,3,-5396.5483,-2889.0977,341.91898,100,0,0),
(1278,4,-5400.0684,-2890.885,342.00314,1.571,60000,0),
(1278,5,-5402.481,-2884.2573,342.6362,100,0,0),
(1278,6,-5396.956,-2881.7124,342.03714,100,0,0),
(1278,7,-5385.517,-2874.8918,341.09354,100,0,0),
(1278,8,-5376.2427,-2867.6233,340.66898,100,0,0),
(1278,9,-5367.3916,-2861.6072,340.53302,100,0,0),
(1278,10,-5358.194,-2859.1604,339.8609,100,0,0),
(1278,11,-5346.847,-2858.043,340.30157,100,0,0),
(1278,12,-5322.527,-2861.0005,339.5642,100,0,0),
(1278,13,-5311.0107,-2864.3875,339.42285,100,0,0),
(1278,14,-5297.2744,-2870.3196,339.08035,100,0,0),
(1278,15,-5285.6504,-2877.588,338.8467,100,0,0),
(1278,16,-5275.1274,-2882.3528,338.84476,100,0,0),
(1278,17,-5262.815,-2883.9531,339.22354,100,0,0),
(1278,18,-5247.65,-2884.1675,339.26114,100,0,0),
(1278,19,-5240.0635,-2880.8137,338.97354,100,0,0),
(1278,20,-5221.147,-2866.3352,337.4262,100,0,0),
(1278,21,-5205.6313,-2855.375,336.35687,100,0,0),
(1278,22,-5191.6562,-2850.122,335.83655,100,0,0),
(1278,23,-5166.758,-2844.8057,334.48743,100,0,0),
(1278,24,-5191.9155,-2850.2246,335.78894,100,0,0),
(1278,25,-5203.2573,-2854.864,336.13348,100,0,0),
(1278,26,-5214.619,-2861.625,336.9355,100,0,0),
(1278,27,-5227.9976,-2871.2993,338.06952,100,0,0),
(1278,28,-5241.155,-2882.0657,338.97354,100,0,0),
(1278,29,-5246.8105,-2883.6885,339.20377,100,0,0),
(1278,30,-5256.9976,-2884.8328,339.34854,100,0,0),
(1278,31,-5271.8325,-2883.1067,339.00516,100,0,0),
(1278,32,-5279.9434,-2881.1145,338.71976,100,0,0),
(1278,33,-5288.963,-2875.438,338.84476,100,0,0),
(1278,34,-5298.9004,-2869.2915,339.21976,100,0,0),
(1278,35,-5327.9663,-2859.7532,339.76318,100,0,0),
(1278,36,-5345.935,-2858.2246,340.2359,100,0,0),
(1278,37,-5360.096,-2859.9106,340.00812,100,0,0),
(1278,38,-5366.2983,-2860.871,340.49396,100,0,0),
(1278,39,-5372.3315,-2864.812,340.58868,100,0,0);

DELETE FROM creature_movement WHERE id IN (SELECT guid FROM creature WHERE id = 27615);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (811);
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(108583, 27615, 571, 1, 1, 0, 0, 4218.68, -2050.13, 238.779, 1.46838, 300, 300, 0, 0, 9610, 3309, 0, 0),
(108584, 27615, 571, 1, 1, 0, 0, 4220.81, -2042.35, 237.855, 5.58505, 300, 300, 0, 0, 9610, 3309, 0, 0),
(108585, 27615, 571, 1, 1, 0, 0, 4223.8, -2077.02, 239.221, 0.872665, 300, 300, 0, 0, 9610, 3309, 0, 0),
(108586, 27615, 571, 1, 1, 0, 0, 4239.87, -2034.41, 237.735, 5.47552, 300, 300, 5, 0, 9610, 3309, 0, 1),
(108587, 27615, 571, 1, 1, 0, 0, 4247.47, -2078.64, 239.172, 1.91986, 300, 300, 0, 0, 9610, 3309, 0, 0),
(108588, 27615, 571, 1, 1, 0, 0, 4256.32, -2038.26, 237.945, 2.02552, 300, 300, 0, 0, 9610, 3309, 0, 0),
(108589, 27615, 571, 1, 1, 0, 0, 4257.13, -2037.14, 238.054, 4.01426, 300, 300, 0, 0, 9610, 3309, 0, 0),
(108590, 27615, 571, 1, 1, 0, 0, 4259.87, -2074.33, 239.579, 2.46091, 300, 300, 0, 0, 9610, 3309, 0, 0);
DELETE FROM dbscripts_on_relay WHERE id = 20536;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20536,0,31,27452,30,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Scourge Deathspeaker EAI: search for 27452'),
(20536,100,15,49119,4,0,27452,35,1,0,0,0,0,0,0,0,0,'Part of Scourge Deathspeaker EAI: cast Fire Beam');
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(118753, 27613, 571, 1, 1, 0, 0, 4181.99, -1865.26, 217.478, 2.54818, 300, 300, 5, 0, 9610, 0, 0, 1),
(118754, 27613, 571, 1, 1, 0, 0, 4196.47, -1878.61, 204.547, 3.56047, 300, 300, 5, 0, 9610, 0, 0, 1),
(118755, 27613, 571, 1, 1, 0, 0, 4110.58, -1858.25, 203.779, 0.401426, 300, 300, 5, 0, 9610, 0, 0, 1),
(118756, 27613, 571, 1, 1, 0, 0, 4113.65, -1926.78, 204.117, 0.20944, 300, 300, 5, 0, 9610, 0, 0, 1),
(118757, 27613, 571, 1, 1, 0, 0, 4159.88, -1831.71, 198.609, 0.174533, 300, 300, 5, 0, 9610, 0, 0, 1),
(118758, 27613, 571, 1, 1, 0, 0, 4288.23, -1827.15, 207.161, 2.09439, 300, 300, 5, 0, 9610, 0, 0, 1),
(118759, 27613, 571, 1, 1, 0, 0, 4153.55, -2035.39, 217.162, 2.42601, 300, 300, 5, 0, 9610, 0, 0, 1),
(118760, 27613, 571, 1, 1, 0, 0, 4178.56, -1850.96, 204.417, 0.628319, 300, 300, 5, 0, 9610, 0, 0, 1),
(118761, 27613, 571, 1, 1, 0, 0, 4235.37, -1789.27, 201.845, 4.03171, 300, 300, 5, 0, 9610, 0, 0, 1),
(118762, 27613, 571, 1, 1, 0, 0, 4283.22, -2113.59, 213.092, 5.75959, 300, 300, 5, 0, 9610, 0, 0, 1),
(19054, 27613, 571, 1, 1, 0, 0, 4214.82, -1984.52, 210.501, 6.12611, 300, 300, 5, 0, 9610, 0, 0, 1),
(19065, 27613, 571, 1, 1, 0, 0, 4291.76, -2147.24, 211.808, 3.00197, 300, 300, 5, 0, 9610, 0, 0, 1),
(22759, 27613, 571, 1, 1, 0, 0, 4305.95, -2065.41, 211.635, 3.76991, 300, 300, 5, 0, 9610, 0, 0, 1),
(23150, 27613, 571, 1, 1, 0, 0, 4134.57, -1980.37, 212.297, 0.506145, 300, 300, 5, 0, 9610, 0, 0, 1),
(23289, 27613, 571, 1, 1, 0, 0, 4176.44, -1961.3, 208.383, 1.36136, 300, 300, 5, 0, 9610, 0, 0, 1),
(23328, 27613, 571, 1, 1, 0, 0, 4272.4, -1975.88, 206.636, 0.244346, 300, 300, 5, 0, 9610, 0, 0, 1),
(23345, 27613, 571, 1, 1, 0, 0, 4143.56, -2013.14, 213.327, 2.19912, 300, 300, 5, 0, 9610, 0, 0, 1),
(23403, 27613, 571, 1, 1, 0, 0, 4269.8, -1892.84, 202.928, 2.18166, 300, 300, 5, 0, 9610, 0, 0, 1),
(23411, 27613, 571, 1, 1, 0, 0, 4151.74, -2146.89, 222.923, 0, 300, 300, 0, 0, 9610, 0, 0, 0),
(23505, 27613, 571, 1, 1, 0, 0, 4216.52, -2156.42, 217.654, 2.82743, 300, 300, 0, 0, 9610, 0, 0, 0),
(23632, 27613, 571, 1, 1, 0, 0, 4179.76, -2145.4, 216.224, 1.50098, 300, 300, 0, 0, 9610, 0, 0, 0);
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 26457);
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(23655, 26457, 571, 1, 1, 0, 0, 4129.57, -2109.26, 219.831, 4.69112, 300, 300, 5, 0, 9940, 0, 0, 1),
(23665, 26457, 571, 1, 1, 0, 0, 4145.16, -2004.62, 212.526, 0.29144, 300, 300, 5, 0, 9940, 0, 0, 1),
(23710, 26457, 571, 1, 1, 0, 0, 4175.63, -1830.74, 199.056, 0.060377, 300, 300, 7, 0, 9940, 0, 0, 1),
(23748, 26457, 571, 1, 1, 0, 0, 4194.22, -1805.2, 200.181, 3.66044, 300, 300, 5, 0, 9940, 0, 0, 1),
(23750, 26457, 571, 1, 1, 0, 0, 4134.98, -2044.59, 218.517, 2.00058, 300, 300, 5, 0, 9940, 0, 0, 1),
(23770, 26457, 571, 1, 1, 0, 0, 4249.09, -2142.87, 215.433, 2.29548, 300, 300, 0, 0, 9940, 0, 0, 0),
(23781, 26457, 571, 1, 1, 0, 0, 4206.74, -1982.74, 209.325, 4.45462, 300, 300, 5, 0, 9940, 0, 0, 1),
(23820, 26457, 571, 1, 1, 0, 0, 4242.94, -1833.94, 203.776, 5.5627, 300, 300, 0, 0, 9940, 0, 0, 0),
(23866, 26457, 571, 1, 1, 0, 0, 4302.88, -2001.13, 204.049, 5.3812, 300, 300, 0, 0, 9940, 0, 0, 0),
(118753, 26457, 571, 1, 1, 0, 0, 4240.29, -1910.17, 201.851, 1.54627, 300, 300, 0, 0, 9940, 0, 0, 2),
(23899, 26457, 571, 1, 1, 0, 0, 4250.91, -1891.1, 201.863, 1.54983, 300, 300, 5, 0, 9940, 0, 0, 1),
(23901, 26457, 571, 1, 1, 0, 0, 4230.66, -1935.01, 202.311, 6.21135, 300, 300, 5, 0, 9940, 0, 0, 1),
(23903, 26457, 571, 1, 1, 0, 0, 4254.06, -1957.63, 204.323, 0.568114, 300, 300, 7, 0, 9940, 0, 0, 1),
(118762, 26457, 571, 1, 1, 0, 0, 4277.73, -1935.01, 202.274, 5.11833, 300, 300, 5, 0, 9940, 0, 0, 1),
(118761, 26457, 571, 1, 1, 0, 0, 4269.51, -1861.48, 202.995, 4.01114, 300, 300, 0, 0, 9940, 0, 0, 0),
(118760, 26457, 571, 1, 1, 0, 0, 4156.8, -2096.97, 216.51, 1.83711, 300, 300, 5, 0, 9940, 0, 0, 1),
(118759, 26457, 571, 1, 1, 0, 0, 4292.23, -2114.72, 213.27, 0.365268, 300, 300, 5, 0, 9940, 0, 0, 1),
(118754, 26457, 571, 1, 1, 0, 0, 4248.52, -1989.76, 206.698, 4.59092, 300, 300, 0, 0, 9940, 0, 0, 2),
(118755, 26457, 571, 1, 1, 0, 0, 4180.34, -1954.6, 206.767, 1.05257, 300, 300, 5, 0, 9940, 0, 0, 1),
(118756, 26457, 571, 1, 1, 0, 0, 4147.6, -2149.44, 222.658, 3.69605, 300, 300, 5, 0, 9940, 0, 0, 1),
(118757, 26457, 571, 1, 1, 0, 0, 4190.44, -2140.55, 216.631, 0.426564, 300, 300, 0, 0, 9940, 0, 0, 0),
(118758, 26457, 571, 1, 1, 0, 0, 4216.68, -2157.4, 217.742, 1.73368, 300, 300, 0, 0, 9940, 0, 0, 0);
DELETE FROM creature_movement WHERE id IN (118753,118754);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,waittime,script_id) VALUES
(118753,1,4245.87,-1906.5,201.629,100,1000,0),
(118753,2,4240.57,-1909.83,201.809,100,0,0),
(118753,3,4239.99,-1924.36,201.812,100,0,0),
(118753,4,4255.31,-1922.98,202.393,100,0,0),
(118753,5,4256.36,-1911.08,201.922,100,1000,0),
(118753,6,4255.73,-1922.54,202.386,100,0,0),
(118753,7,4240.39,-1924.41,201.828,100,0,0),
(118753,8,4240.18,-1910.32,201.798,100,0,0),
(118754,1,4247.6,-2001.2,216.915,100,0,0),
(118754,2,4246.4,-2011.14,226.646,100,0,0),
(118754,3,4245.42,-2017.3,232.99,100,0,0),
(118754,4,4244.67,-2021.89,237.319,100,0,0),
(118754,5,4246.06,-2012.09,227.651,100,0,0),
(118754,6,4247.3,-2002.27,217.963,100,0,0),
(118754,7,4248.73,-1989.75,206.714,100,0,0),
(118754,8,4250.21,-1974.9,205.976,100,0,0),
(118754,9,4248.7,-1989.26,206.688,100,0,0);
DELETE FROM dbscripts_on_relay WHERE id = 20537;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20537,0,31,27613,40,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Diseased Drakkari EAI: search for 27613'),
(20537,10,37,0,0,0,27613,45,1,0,0,0,0,0,0,0,0,'Part of Diseased Drakkari EAI: move towards target'),
(20537,5000,15,48141,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Diseased Drakkari EAI: cast 48141'),
(20537,10000,14,48141,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Diseased Drakkari EAI: cancel 48141');
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(23904, 27452, 571, 1, 1, 0, 0, 3325.45, -1770.32, 87.829, 4.69494, 300, 300, 0, 0, 42, 0, 0, 0),
(23908, 27452, 571, 1, 1, 0, 0, 3327.74, -1752.95, 88.0006, 5.06145, 300, 300, 0, 0, 42, 0, 0, 0),
(23938, 27452, 571, 1, 1, 0, 0, 3332.04, -1749.54, 89.0348, 2.60054, 300, 300, 0, 0, 42, 0, 0, 0),
(23944, 27452, 571, 1, 1, 0, 0, 3332.48, -1771.13, 88.5309, 3.9968, 300, 300, 0, 0, 42, 0, 0, 0),
(23977, 27452, 571, 1, 1, 0, 0, 3348.23, -1758.29, 89.946, 5.07891, 300, 300, 0, 0, 42, 0, 0, 0),
(24350, 27452, 571, 1, 1, 0, 0, 3349.3, -1751.44, 89.9793, 1.98968, 300, 300, 0, 0, 42, 0, 0, 0),
(24386, 27452, 571, 1, 1, 0, 0, 4075.54, -3537.06, 252.73, 3.33358, 300, 300, 0, 0, 42, 0, 0, 0),
(24432, 27452, 571, 1, 1, 0, 0, 4098.73, -3533.03, 257.393, 3.7001, 300, 300, 0, 0, 42, 0, 0, 0),
(24444, 27452, 571, 1, 1, 0, 0, 4113.41, -3532.94, 262.33, 3.89208, 300, 300, 0, 0, 42, 0, 0, 0),
(24486, 27452, 571, 1, 1, 0, 0, 4192.65, -4034.28, 170.86, 0, 300, 300, 0, 0, 42, 0, 0, 0),
(24492, 27452, 571, 1, 1, 0, 0, 4201.51, -4176.42, 212.079, 2.80998, 300, 300, 0, 0, 42, 0, 0, 0),
(24552, 27452, 571, 1, 1, 0, 0, 4206.9, -4159.97, 204.567, 0.15708, 300, 300, 0, 0, 42, 0, 0, 0),
(24595, 27452, 571, 1, 1, 0, 0, 4212.21, -4135.26, 192.324, 0.331613, 300, 300, 0, 0, 42, 0, 0, 0),
(24636, 27452, 571, 1, 1, 0, 0, 4217.25, -4102.71, 188.669, 1.85005, 300, 300, 0, 0, 42, 0, 0, 0),
(24714, 27452, 571, 1, 1, 0, 0, 4235.06, -4172.3, 210.94, 0.069813, 300, 300, 0, 0, 42, 0, 0, 0),
(24804, 27452, 571, 1, 1, 0, 0, 4237.75, -3995.98, 180.242, 0.767945, 300, 300, 0, 0, 42, 0, 0, 0),
(24899, 27452, 571, 1, 1, 0, 0, 4250.64, -4024.37, 176.758, 3.38594, 300, 300, 0, 0, 42, 0, 0, 0),
(24916, 27452, 571, 1, 1, 0, 0, 4263.01, -3999.87, 173.595, 4.69494, 300, 300, 0, 0, 42, 0, 0, 0),
(24960, 27452, 571, 1, 1, 0, 0, 4265.46, -4019.01, 170.356, 3.85718, 300, 300, 0, 0, 42, 0, 0, 0),
(24966, 27452, 571, 1, 1, 0, 0, 4368.38, -4072.42, 183.355, 0.20944, 300, 300, 0, 0, 42, 0, 0, 0),
(25113, 27452, 571, 1, 1, 0, 0, 4381.13, -4007.31, 180.324, 0.453786, 300, 300, 0, 0, 42, 0, 0, 0),
(25295, 27452, 571, 1, 1, 0, 0, 4399.3, -4041.36, 178.301, 5.51524, 300, 300, 0, 0, 42, 0, 0, 0),
(25424, 27452, 571, 1, 1, 0, 0, 4403.59, -3972.87, 179.893, 4.15388, 300, 300, 0, 0, 42, 0, 0, 0),
(25432, 27452, 571, 1, 1, 0, 0, 4406.48, -3995.67, 178.846, 0.628319, 300, 300, 0, 0, 42, 0, 0, 0),
(25516, 27452, 571, 1, 1, 0, 0, 4409.64, -4020.05, 177.759, 5.2709, 300, 300, 0, 0, 42, 0, 0, 0),
(25540, 27452, 571, 1, 1, 0, 0, 4423.85, -3968.57, 181.05, 2.42601, 300, 300, 0, 0, 42, 0, 0, 0),
(25544, 27452, 571, 1, 1, 0, 0, 4431.26, -3996.6, 181.077, 0.925025, 300, 300, 0, 0, 42, 0, 0, 0),
(25624, 27452, 571, 1, 1, 0, 0, 4439.4, -3960.03, 182.997, 3.76991, 300, 300, 0, 0, 42, 0, 0, 0),
(25659, 27452, 571, 1, 1, 0, 0, 4560.25, -3943.96, 228.393, 2.42601, 300, 300, 0, 0, 42, 0, 0, 0);

DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id IN (26582,26583));
DELETE FROM creature_movement WHERE id IN (SELECT guid FROM creature WHERE id IN (26582,26583));
DELETE FROM creature WHERE id IN (26582,26583);
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(108591, 26591, 571, 1, 1, 0, 0, 4788.37, -4870.19, 26.5013, 4.03171, 300, 300, 0, 0, 4979, 0, 0, 0),
(108592, 26591, 571, 1, 1, 0, 0, 4786.58, -4794.1, 26.1094, 2.42601, 300, 300, 0, 0, 4979, 0, 0, 0),
(108593, 26591, 571, 1, 1, 0, 0, 4782.35, -4864.59, 26.4858, 3.97935, 300, 300, 0, 0, 4979, 0, 0, 0),
(108594, 26591, 571, 1, 1, 0, 0, 4383.53, -2913.72, 311.292, 3.40339, 300, 300, 0, 0, 4979, 0, 0, 0),
(108595, 26591, 571, 1, 1, 0, 0, 4754.5, -4831.37, 26.0424, 2.3911, 300, 300, 0, 0, 4979, 0, 0, 0),
(108596, 26591, 571, 1, 1, 0, 0, 3822.58, -1992.68, 209.032, 2.05949, 300, 300, 0, 0, 4979, 0, 0, 0),
(108597, 26591, 571, 1, 1, 0, 0, 4831.21, -4751.46, 33.3858, 5.70723, 300, 300, 0, 0, 4979, 0, 0, 0),
(108582, 26591, 571, 1, 1, 0, 0, 4567.75, -2044.33, 184.255, 5.21853, 300, 300, 0, 0, 4979, 0, 0, 2),
(108598, 26591, 571, 1, 1, 0, 0, 4776.33, -4859.3, 26.4873, 4.01426, 300, 300, 0, 0, 4979, 0, 0, 0),
(108599, 26591, 571, 1, 1, 0, 0, 4797.2, -4781.92, 26.1813, 2.44346, 300, 300, 0, 0, 4979, 0, 0, 0),
(108600, 26591, 571, 1, 1, 0, 0, 4836.25, -4838.98, 25.9536, 5.5676, 300, 300, 0, 0, 4979, 0, 0, 0),
(108601, 26591, 571, 1, 1, 0, 0, 3990.57, -3193.16, 284.082, 0.733038, 300, 300, 0, 0, 4979, 0, 0, 0),
(108602, 26591, 571, 1, 1, 0, 0, 4791.92, -4787.97, 26.1774, 2.37365, 300, 300, 0, 0, 4979, 0, 0, 0),
(108603, 26591, 571, 1, 1, 0, 0, 4834.21, -4806, 25.941, 0.855211, 300, 300, 0, 0, 4979, 0, 0, 0),
(108604, 26591, 571, 1, 1, 0, 0, 4809.35, -4869.25, 25.9381, 5.61996, 300, 300, 0, 0, 4979, 0, 0, 0),
(108605, 26591, 571, 1, 1, 0, 0, 4759.78, -4825.21, 25.9276, 2.42601, 300, 300, 0, 0, 4979, 0, 0, 0),
(108606, 26591, 571, 1, 1, 0, 0, 4814.79, -4863.33, 25.9497, 5.5676, 300, 300, 0, 0, 4979, 0, 0, 0),
(108607, 26591, 571, 1, 1, 0, 0, 4765.21, -4819.26, 25.8564, 2.40855, 300, 300, 0, 0, 4979, 0, 0, 0),
(108608, 26591, 571, 1, 1, 0, 0, 3997.59, -3191.42, 282.535, 0.680678, 300, 300, 0, 0, 4979, 0, 0, 0),
(108609, 26591, 571, 1, 1, 0, 0, 4828.29, -4800.58, 25.9504, 0.855211, 300, 300, 0, 0, 4979, 0, 0, 0),
(108610, 26591, 571, 1, 1, 0, 0, 4841.8, -4832.77, 25.9465, 5.53269, 300, 300, 0, 0, 4979, 0, 0, 0),
(108611, 26591, 571, 1, 1, 0, 0, 4847.14, -4826.82, 25.9427, 5.53269, 300, 300, 0, 0, 4979, 0, 0, 0),
(108612, 26591, 571, 1, 1, 0, 0, 4756.01, -4841.66, 26.962, 3.9968, 300, 300, 0, 0, 4979, 0, 0, 0),
(108613, 26591, 571, 1, 1, 0, 0, 4846.41, -4816.81, 25.9386, 0.907571, 300, 300, 0, 0, 4979, 0, 0, 0),
(108614, 26591, 571, 1, 1, 0, 0, 4840.46, -4811.38, 25.9486, 0.855211, 300, 300, 0, 0, 4979, 0, 0, 0),
(108615, 26591, 571, 1, 1, 0, 0, 4820.24, -4857.11, 25.9478, 5.5676, 300, 300, 0, 0, 4979, 0, 0, 0),
(108616, 26591, 571, 1, 1, 0, 0, 4807.28, -4781.23, 26.1825, 0.890118, 300, 300, 0, 0, 4979, 0, 0, 0),
(108617, 26591, 571, 1, 1, 0, 0, 4376.39, -2915.61, 310.703, 5.63741, 300, 300, 0, 0, 4979, 0, 0, 0),
(108618, 26591, 571, 1, 1, 0, 0, 2710.49, -2321.16, 22.7234, 4.74729, 300, 300, 0, 0, 4979, 0, 0, 0),
(12762, 26591, 571, 1, 1, 0, 0, 4804.12, -4875.36, 25.8084, 5.53269, 300, 300, 0, 0, 4979, 0, 0, 0),
(12768, 26591, 571, 1, 1, 0, 0, 4794.06, -4875.93, 25.7976, 3.97935, 300, 300, 0, 0, 4979, 0, 0, 0);
DELETE FROM creature_movement WHERE id IN (108582);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,waittime,script_id) VALUES
(108582,1,4567.75,-2044.33,184.255,5.21853,100,12),
(108582,2,4567.75,-2044.33,184.255,5.21853,1000,3);
DELETE FROM dbscript_random_templates WHERE id = 20223;
INSERT INTO dbscript_random_templates (id, type, target_id, chance, comments) VALUES
(20223,1,20538,0,'26591 - Random Script 1'),
(20223,1,20539,0,'26591 - Random Script 2'),
(20223,1,20540,0,'26591 - Random Script 3'),
(20223,1,20541,0,'26591 - Random Script 4'),
(20223,1,20542,0,'26591 - Random Script 5'),
(20223,1,20543,0,'26591 - Random Script 6'),
(20223,1,20544,0,'26591 - Random Script 7'),
(20223,1,20545,0,'26591 - Random Script 8'),
(20223,1,20546,0,'26591 - Random Script 9'),
(20223,1,20547,0,'26591 - Random Script 10'),
(20223,1,20548,0,'26591 - Random Script 11'),
(20223,1,20549,0,'26591 - Random Script 12');
DELETE FROM dbscripts_on_relay WHERE id BETWEEN 20538 AND 20549;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20538,0,10,26582,180000,1,0,0,0x08,1,0,0,0,4680.76,-2045.16,189.722,3.13925,'Part of Pacer Bunny - Drak Theron Exterior EAI: summon 26582 - path 1'),
(20539,0,10,26582,180000,2,0,0,0x08,1,0,0,0,4680.76,-2045.16,189.722,3.13925,'Part of Pacer Bunny - Drak Theron Exterior EAI: summon 26582 - path 2'),
(20540,0,10,26582,180000,3,0,0,0x08,1,0,0,0,4680.76,-2045.16,189.722,3.13925,'Part of Pacer Bunny - Drak Theron Exterior EAI: summon 26582 - path 3'),
(20541,0,10,26582,180000,4,0,0,0x08,1,0,0,0,4680.76,-2045.16,189.722,3.13925,'Part of Pacer Bunny - Drak Theron Exterior EAI: summon 26582 - path 4'),
(20542,0,10,26582,180000,5,0,0,0x08,1,0,0,0,4680.76,-2045.16,189.722,3.13925,'Part of Pacer Bunny - Drak Theron Exterior EAI: summon 26582 - path 5'),
(20543,0,10,26582,180000,6,0,0,0x08,1,0,0,0,4680.76,-2045.16,189.722,3.13925,'Part of Pacer Bunny - Drak Theron Exterior EAI: summon 26582 - path 6'),
(20544,0,10,26583,180000,1,0,0,0x08,1,0,0,0,4680.76,-2045.16,189.722,3.13925,'Part of Pacer Bunny - Drak Theron Exterior EAI: summon 26583 - path 1'),
(20545,0,10,26583,180000,2,0,0,0x08,1,0,0,0,4680.76,-2045.16,189.722,3.13925,'Part of Pacer Bunny - Drak Theron Exterior EAI: summon 26583 - path 2'),
(20546,0,10,26583,180000,3,0,0,0x08,1,0,0,0,4680.76,-2045.16,189.722,3.13925,'Part of Pacer Bunny - Drak Theron Exterior EAI: summon 26583 - path 3'),
(20547,0,10,26583,180000,4,0,0,0x08,1,0,0,0,4680.76,-2045.16,189.722,3.13925,'Part of Pacer Bunny - Drak Theron Exterior EAI: summon 26583 - path 4'),
(20548,0,10,26583,180000,5,0,0,0x08,1,0,0,0,4680.76,-2045.16,189.722,3.13925,'Part of Pacer Bunny - Drak Theron Exterior EAI: summon 26583 - path 5'),
(20549,0,10,26583,180000,6,0,0,0x08,1,0,0,0,4680.76,-2045.16,189.722,3.13925,'Part of Pacer Bunny - Drak Theron Exterior EAI: summon 26583 - path 6');
UPDATE creature_template SET MovementType = 2 WHERE entry IN (26582,26583);
DELETE FROM creature_movement_template WHERE entry IN (26582,26583);
INSERT INTO creature_movement_template (entry, pathId, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(26582,1,1,4691.6,-2046.95,195.139,100,0,0),
(26582,1,2,4674.26,-2047.4,186.84,100,0,0),
(26582,1,3,4669.41,-2047.44,184.192,100,0,0),
(26582,1,4,4656.64,-2050.07,184.213,100,0,0),
(26582,1,5,4644.58,-2060.09,184.18,100,0,0),
(26582,1,6,4627.95,-2062.7,184.182,100,0,0),
(26582,1,7,4611.42,-2062.83,184.184,100,0,0),
(26582,1,8,4598.45,-2062.36,184.187,100,0,0),
(26582,1,9,4582.29,-2062.45,184.187,100,0,0),
(26582,1,10,4570.54,-2062.86,184.16,100,0,0),
(26582,1,11,4562.26,-2063.6,184.166,100,0,0),
(26582,1,12,4548.27,-2064.09,176.275,100,0,0),
(26582,1,13,4533.51,-2064.27,167.876,100,0,0),
(26582,1,14,4521.95,-2063.93,161.29,100,0,0),
(26582,1,15,4506.95,-2063.87,160.823,100,0,0),
(26582,1,16,4495.83,-2065.19,160.823,100,0,0),
(26582,1,17,4487.82,-2076.43,160.823,100,0,0),
(26582,1,18,4486.77,-2087.48,160.823,100,0,0),
(26582,1,19,4492.43,-2098.76,160.824,100,0,0),
(26582,1,20,4506.2,-2109.47,160.825,100,0,0),
(26582,1,21,4522.34,-2119.37,160.831,100,0,0),
(26582,1,22,4533.45,-2128.02,160.863,100,0,0),
(26582,1,23,4541.23,-2141.36,160.843,100,0,0),
(26582,1,24,4549.95,-2154.7,160.843,100,0,0),
(26582,1,25,4550.54,-2174.73,160.844,100,0,0),
(26582,1,26,4550.98,-2193.93,164.225,100,0,0),
(26582,1,27,4546.76,-2206.98,167.204,100,0,0),
(26582,1,28,4531.46,-2216.79,169.58,100,0,0),
(26582,1,29,4522.15,-2228.33,172.646,100,100,1),
(26582,2,1,4669.35,-2047.2,184.192,100,0,0),
(26582,2,2,4651.56,-2051.42,184.368,100,0,0),
(26582,2,3,4643.48,-2058.4,184.183,100,0,0),
(26582,2,4,4630.66,-2060.41,183.864,100,0,0),
(26582,2,5,4615.46,-2060.64,184.182,100,0,0),
(26582,2,6,4601.36,-2060.73,184.44,100,0,0),
(26582,2,7,4590.86,-2060.77,184.187,100,0,0),
(26582,2,8,4576.06,-2061.01,184.179,100,0,0),
(26582,2,9,4562.61,-2061.07,184.166,100,0,0),
(26582,2,10,4551.13,-2061.26,177.886,100,0,0),
(26582,2,11,4538.89,-2061.42,170.924,100,0,0),
(26582,2,12,4522.37,-2061.29,161.519,100,0,0),
(26582,2,13,4506.34,-2061.99,160.823,100,0,0),
(26582,2,14,4495.5,-2063.89,160.823,100,0,0),
(26582,2,15,4489.86,-2077.39,160.823,100,0,0),
(26582,2,16,4488.48,-2090.83,160.823,100,0,0),
(26582,2,17,4501.43,-2105.16,160.827,100,0,0),
(26582,2,18,4509.77,-2116.35,160.829,100,0,0),
(26582,2,19,4508.52,-2133.01,163.224,100,0,0),
(26582,2,20,4502.23,-2143.87,165.435,100,0,0),
(26582,2,21,4485.13,-2153.15,168.45,100,0,0),
(26582,2,22,4468.39,-2158.99,173.914,100,0,0),
(26582,2,23,4456.74,-2161.08,176.661,100,0,0),
(26582,2,24,4434.54,-2161.72,182.601,100,100,1),
(26582,3,1,4669.89,-2045.38,184.315,100,0,0),
(26582,3,2,4657.33,-2049.33,184.368,100,0,0),
(26582,3,3,4645.39,-2059.51,184.181,100,0,0),
(26582,3,4,4629.27,-2061.32,183.863,100,0,0),
(26582,3,5,4615.91,-2061.15,184.182,100,0,0),
(26582,3,6,4596.93,-2059.86,184.187,100,0,0),
(26582,3,7,4581.16,-2059.7,184.187,100,0,0),
(26582,3,8,4563.06,-2060.07,184.166,100,0,0),
(26582,3,9,4547.67,-2060.61,175.917,100,0,0),
(26582,3,10,4522.19,-2060.17,161.411,100,0,0),
(26582,3,11,4499.5,-2062.45,160.823,100,0,0),
(26582,3,12,4483.27,-2069.79,160.823,100,0,0),
(26582,3,13,4467.7,-2076.28,163.124,100,0,0),
(26582,3,14,4452.8,-2080.13,164.347,100,0,0),
(26582,3,15,4429.04,-2085.91,167.602,100,0,0),
(26582,3,16,4415.67,-2090.91,170.746,100,100,1),
(26582,4,1,4669.33,-2043.6,184.193,100,0,0),
(26582,4,2,4658.68,-2041.4,183.771,100,0,0),
(26582,4,3,4647.83,-2034.7,184.184,100,0,0),
(26582,4,4,4639.85,-2031.59,184.184,100,0,0),
(26582,4,5,4628.02,-2030.18,184.183,100,0,0),
(26582,4,6,4610.67,-2029.56,184.186,100,0,0),
(26582,4,7,4594.34,-2029.11,184.012,100,0,0),
(26582,4,8,4580.36,-2028.48,184.186,100,0,0),
(26582,4,9,4563.11,-2027.98,184.166,100,0,0),
(26582,4,10,4548.47,-2027.36,176.203,100,0,0),
(26582,4,11,4534.09,-2027.08,168.016,100,0,0),
(26582,4,12,4522.41,-2026.87,161.37,100,0,0),
(26582,4,13,4507.95,-2026.31,160.829,100,0,0),
(26582,4,14,4495.84,-2022.33,160.823,100,0,0),
(26582,4,15,4493.14,-2008.55,160.823,100,0,0),
(26582,4,16,4492.95,-1993.52,160.823,100,0,0),
(26582,4,17,4502.66,-1975.68,160.823,100,0,0),
(26582,4,18,4518.95,-1958.73,160.823,100,0,0),
(26582,4,19,4532.44,-1943.64,160.823,100,0,0),
(26582,4,20,4539.1,-1926.84,161.35,100,0,0),
(26582,4,21,4543.54,-1909.03,163.359,100,0,0),
(26582,4,22,4544.35,-1892.52,165.7,100,0,0),
(26582,4,23,4545.07,-1878.16,165.435,100,100,1),
(26582,5,1,4670.35,-2042.83,184.532,100,0,0),
(26582,5,2,4659.21,-2040.21,184.371,100,0,0),
(26582,5,3,4646.73,-2032.58,184.184,100,0,0),
(26582,5,4,4639.03,-2029.31,184.182,100,0,0),
(26582,5,5,4621.75,-2028.03,184.183,100,0,0),
(26582,5,6,4606.18,-2027.64,184.186,100,0,0),
(26582,5,7,4590.5,-2027.51,184.187,100,0,0),
(26582,5,8,4575.59,-2026.86,184.186,100,0,0),
(26582,5,9,4562.63,-2026.43,184.166,100,0,0),
(26582,5,10,4547.24,-2025.69,175.498,100,0,0),
(26582,5,11,4532.97,-2025.22,167.372,100,0,0),
(26582,5,12,4523.07,-2025.03,161.738,100,0,0),
(26582,5,13,4506.94,-2024.56,160.823,100,0,0),
(26582,5,14,4493.84,-2018.39,160.823,100,0,0),
(26582,5,15,4488.98,-2001.06,160.823,100,0,0),
(26582,5,16,4486.97,-1964.18,161.847,100,0,0),
(26582,5,17,4479.07,-1942.91,161.68,100,0,0),
(26582,5,18,4468.99,-1923.26,161.972,100,0,0),
(26582,5,19,4457.01,-1903.59,162.548,100,100,1),
(26582,6,1,4668.83,-2044.18,184.193,100,0,0),
(26582,6,2,4655.9,-2042.19,183.773,100,0,0),
(26582,6,3,4647.84,-2033.52,184.184,100,0,0),
(26582,6,4,4635.95,-2029.73,184.182,100,0,0),
(26582,6,5,4621.99,-2029.17,184.183,100,0,0),
(26582,6,6,4604.44,-2029.25,184.187,100,0,0),
(26582,6,7,4587.26,-2029.01,184.187,100,0,0),
(26582,6,8,4572.98,-2028.93,184.184,100,0,0),
(26582,6,9,4563.18,-2028.84,184.166,100,0,0),
(26582,6,10,4542.46,-2028.43,172.789,100,0,0),
(26582,6,11,4523.14,-2027.83,161.791,100,0,0),
(26582,6,12,4499.16,-2025.88,160.823,100,0,0),
(26582,6,13,4480.53,-2020.81,160.875,100,0,0),
(26582,6,14,4458.27,-2017.5,162.309,100,0,0),
(26582,6,15,4423.92,-2019.88,160.78,100,100,1),
(26583,1,1,4691.6,-2046.95,195.139,100,0,0),
(26583,1,2,4674.26,-2047.4,186.84,100,0,0),
(26583,1,3,4669.41,-2047.44,184.192,100,0,0),
(26583,1,4,4656.64,-2050.07,184.213,100,0,0),
(26583,1,5,4644.58,-2060.09,184.18,100,0,0),
(26583,1,6,4627.95,-2062.7,184.182,100,0,0),
(26583,1,7,4611.42,-2062.83,184.184,100,0,0),
(26583,1,8,4598.45,-2062.36,184.187,100,0,0),
(26583,1,9,4582.29,-2062.45,184.187,100,0,0),
(26583,1,10,4570.54,-2062.86,184.16,100,0,0),
(26583,1,11,4562.26,-2063.6,184.166,100,0,0),
(26583,1,12,4548.27,-2064.09,176.275,100,0,0),
(26583,1,13,4533.51,-2064.27,167.876,100,0,0),
(26583,1,14,4521.95,-2063.93,161.29,100,0,0),
(26583,1,15,4506.95,-2063.87,160.823,100,0,0),
(26583,1,16,4495.83,-2065.19,160.823,100,0,0),
(26583,1,17,4487.82,-2076.43,160.823,100,0,0),
(26583,1,18,4486.77,-2087.48,160.823,100,0,0),
(26583,1,19,4492.43,-2098.76,160.824,100,0,0),
(26583,1,20,4506.2,-2109.47,160.825,100,0,0),
(26583,1,21,4522.34,-2119.37,160.831,100,0,0),
(26583,1,22,4533.45,-2128.02,160.863,100,0,0),
(26583,1,23,4541.23,-2141.36,160.843,100,0,0),
(26583,1,24,4549.95,-2154.7,160.843,100,0,0),
(26583,1,25,4550.54,-2174.73,160.844,100,0,0),
(26583,1,26,4550.98,-2193.93,164.225,100,0,0),
(26583,1,27,4546.76,-2206.98,167.204,100,0,0),
(26583,1,28,4531.46,-2216.79,169.58,100,0,0),
(26583,1,29,4522.15,-2228.33,172.646,100,100,1),
(26583,2,1,4669.35,-2047.2,184.192,100,0,0),
(26583,2,2,4651.56,-2051.42,184.368,100,0,0),
(26583,2,3,4643.48,-2058.4,184.183,100,0,0),
(26583,2,4,4630.66,-2060.41,183.864,100,0,0),
(26583,2,5,4615.46,-2060.64,184.182,100,0,0),
(26583,2,6,4601.36,-2060.73,184.44,100,0,0),
(26583,2,7,4590.86,-2060.77,184.187,100,0,0),
(26583,2,8,4576.06,-2061.01,184.179,100,0,0),
(26583,2,9,4562.61,-2061.07,184.166,100,0,0),
(26583,2,10,4551.13,-2061.26,177.886,100,0,0),
(26583,2,11,4538.89,-2061.42,170.924,100,0,0),
(26583,2,12,4522.37,-2061.29,161.519,100,0,0),
(26583,2,13,4506.34,-2061.99,160.823,100,0,0),
(26583,2,14,4495.5,-2063.89,160.823,100,0,0),
(26583,2,15,4489.86,-2077.39,160.823,100,0,0),
(26583,2,16,4488.48,-2090.83,160.823,100,0,0),
(26583,2,17,4501.43,-2105.16,160.827,100,0,0),
(26583,2,18,4509.77,-2116.35,160.829,100,0,0),
(26583,2,19,4508.52,-2133.01,163.224,100,0,0),
(26583,2,20,4502.23,-2143.87,165.435,100,0,0),
(26583,2,21,4485.13,-2153.15,168.45,100,0,0),
(26583,2,22,4468.39,-2158.99,173.914,100,0,0),
(26583,2,23,4456.74,-2161.08,176.661,100,0,0),
(26583,2,24,4434.54,-2161.72,182.601,100,100,1),
(26583,3,1,4669.89,-2045.38,184.315,100,0,0),
(26583,3,2,4657.33,-2049.33,184.368,100,0,0),
(26583,3,3,4645.39,-2059.51,184.181,100,0,0),
(26583,3,4,4629.27,-2061.32,183.863,100,0,0),
(26583,3,5,4615.91,-2061.15,184.182,100,0,0),
(26583,3,6,4596.93,-2059.86,184.187,100,0,0),
(26583,3,7,4581.16,-2059.7,184.187,100,0,0),
(26583,3,8,4563.06,-2060.07,184.166,100,0,0),
(26583,3,9,4547.67,-2060.61,175.917,100,0,0),
(26583,3,10,4522.19,-2060.17,161.411,100,0,0),
(26583,3,11,4499.5,-2062.45,160.823,100,0,0),
(26583,3,12,4483.27,-2069.79,160.823,100,0,0),
(26583,3,13,4467.7,-2076.28,163.124,100,0,0),
(26583,3,14,4452.8,-2080.13,164.347,100,0,0),
(26583,3,15,4429.04,-2085.91,167.602,100,0,0),
(26583,3,16,4415.67,-2090.91,170.746,100,100,1),
(26583,4,1,4669.33,-2043.6,184.193,100,0,0),
(26583,4,2,4658.68,-2041.4,183.771,100,0,0),
(26583,4,3,4647.83,-2034.7,184.184,100,0,0),
(26583,4,4,4639.85,-2031.59,184.184,100,0,0),
(26583,4,5,4628.02,-2030.18,184.183,100,0,0),
(26583,4,6,4610.67,-2029.56,184.186,100,0,0),
(26583,4,7,4594.34,-2029.11,184.012,100,0,0),
(26583,4,8,4580.36,-2028.48,184.186,100,0,0),
(26583,4,9,4563.11,-2027.98,184.166,100,0,0),
(26583,4,10,4548.47,-2027.36,176.203,100,0,0),
(26583,4,11,4534.09,-2027.08,168.016,100,0,0),
(26583,4,12,4522.41,-2026.87,161.37,100,0,0),
(26583,4,13,4507.95,-2026.31,160.829,100,0,0),
(26583,4,14,4495.84,-2022.33,160.823,100,0,0),
(26583,4,15,4493.14,-2008.55,160.823,100,0,0),
(26583,4,16,4492.95,-1993.52,160.823,100,0,0),
(26583,4,17,4502.66,-1975.68,160.823,100,0,0),
(26583,4,18,4518.95,-1958.73,160.823,100,0,0),
(26583,4,19,4532.44,-1943.64,160.823,100,0,0),
(26583,4,20,4539.1,-1926.84,161.35,100,0,0),
(26583,4,21,4543.54,-1909.03,163.359,100,0,0),
(26583,4,22,4544.35,-1892.52,165.7,100,0,0),
(26583,4,23,4545.07,-1878.16,165.435,100,100,1),
(26583,5,1,4670.35,-2042.83,184.532,100,0,0),
(26583,5,2,4659.21,-2040.21,184.371,100,0,0),
(26583,5,3,4646.73,-2032.58,184.184,100,0,0),
(26583,5,4,4639.03,-2029.31,184.182,100,0,0),
(26583,5,5,4621.75,-2028.03,184.183,100,0,0),
(26583,5,6,4606.18,-2027.64,184.186,100,0,0),
(26583,5,7,4590.5,-2027.51,184.187,100,0,0),
(26583,5,8,4575.59,-2026.86,184.186,100,0,0),
(26583,5,9,4562.63,-2026.43,184.166,100,0,0),
(26583,5,10,4547.24,-2025.69,175.498,100,0,0),
(26583,5,11,4532.97,-2025.22,167.372,100,0,0),
(26583,5,12,4523.07,-2025.03,161.738,100,0,0),
(26583,5,13,4506.94,-2024.56,160.823,100,0,0),
(26583,5,14,4493.84,-2018.39,160.823,100,0,0),
(26583,5,15,4488.98,-2001.06,160.823,100,0,0),
(26583,5,16,4486.97,-1964.18,161.847,100,0,0),
(26583,5,17,4479.07,-1942.91,161.68,100,0,0),
(26583,5,18,4468.99,-1923.26,161.972,100,0,0),
(26583,5,19,4457.01,-1903.59,162.548,100,100,1),
(26583,6,1,4668.83,-2044.18,184.193,100,0,0),
(26583,6,2,4655.9,-2042.19,183.773,100,0,0),
(26583,6,3,4647.84,-2033.52,184.184,100,0,0),
(26583,6,4,4635.95,-2029.73,184.182,100,0,0),
(26583,6,5,4621.99,-2029.17,184.183,100,0,0),
(26583,6,6,4604.44,-2029.25,184.187,100,0,0),
(26583,6,7,4587.26,-2029.01,184.187,100,0,0),
(26583,6,8,4572.98,-2028.93,184.184,100,0,0),
(26583,6,9,4563.18,-2028.84,184.166,100,0,0),
(26583,6,10,4542.46,-2028.43,172.789,100,0,0),
(26583,6,11,4523.14,-2027.83,161.791,100,0,0),
(26583,6,12,4499.16,-2025.88,160.823,100,0,0),
(26583,6,13,4480.53,-2020.81,160.875,100,0,0),
(26583,6,14,4458.27,-2017.5,162.309,100,0,0),
(26583,6,15,4423.92,-2019.88,160.78,100,100,1);

UPDATE creature_template SET MovementType = 2 WHERE entry = 10881;
UPDATE creature SET position_x = -1258.878, position_y = 53.962566, position_z = 126.969604, spawndist = 0, MovementType = 2 WHERE id = 10881;
DELETE FROM creature_movement WHERE id IN (SELECT guid FROM creature WHERE id = 10881);
DELETE FROM creature_movement_template WHERE entry = 10881;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(10881,1,-1258.878,53.962566,126.969604,100,0,0),
(10881,2,-1246.9214,65.498535,127.314575,100,0,0),
(10881,3,-1224.9215,87.38759,131.42007,100,0,0),
(10881,4,-1210.0996,106.45025,134.02478,100,0,0),
(10881,5,-1205.4197,118.94437,134.62341,100,0,0),
(10881,6,-1210.4836,129.97784,134.47864,100,0,0),
(10881,7,-1224.1403,138.96002,133.51216,100,0,0),
(10881,8,-1242.7533,133.13496,132.38449,100,0,0),
(10881,9,-1263.6498,129.13365,131.77036,100,0,0),
(10881,10,-1278.4678,122.21289,131.34344,100,0,0),
(10881,11,-1292.0016,108.51972,131.21844,100,0,0),
(10881,12,-1279.579,89.99417,129.15378,100,0,0),
(10881,13,-1265.1466,72.79845,127.73132,100,0,0),
(10881,14,-1246.938,66.752495,127.50574,100,0,0),
(10881,15,-1225.2654,87.69873,131.45486,100,0,0),
(10881,16,-1209.452,106.00795,134.10266,100,0,0),
(10881,17,-1204.6263,118.88873,134.81384,100,0,0),
(10881,18,-1209.9927,130.29185,134.53772,100,0,0),
(10881,19,-1224.5853,137.18607,133.47163,100,0,0),
(10881,20,-1242.8,133.86388,132.55144,100,0,0),
(10881,21,-1264.6481,129.59421,131.83456,100,0,0),
(10881,22,-1291.852,107.38696,131.2923,100,0,0),
(10881,23,-1263.6343,73.05393,127.68298,100,0,0),
(10881,24,-1271.1027,62.49056,127.41394,100,0,0),
(10881,25,-1297.4215,60.88097,128.78162,100,0,0),
(10881,26,-1323.3235,55.73557,129.12485,100,0,0),
(10881,27,-1331.5046,43.56836,129.24985,100,0,0),
(10881,28,-1328.7695,28.182346,129.32643,100,0,0),
(10881,29,-1321.5947,15.010742,130.22414,100,0,0),
(10881,30,-1313.2676,5.03125,132.57643,100,0,0),
(10881,31,-1298.2849,0.096191,133.16522,100,0,0),
(10881,32,-1285.0809,-2.094455,134.23892,100,0,0),
(10881,33,-1278.8915,-16.228027,140.63223,100,0,0),
(10881,34,-1279.4957,-21.175594,142.65372,100,0,0),
(10881,35,-1280.5413,-31.30919,146.36734,100,0,0),
(10881,36,-1280.6606,-36.26666,148.2692,100,0,0),
(10881,37,-1281.3783,-47.740993,152.14688,100,0,0),
(10881,38,-1281.7482,-58.54069,155.19382,100,0,0),
(10881,39,-1282.2838,-70.57406,157.78886,100,0,0),
(10881,40,-1267.4594,-79.44803,162.63017,100,0,0),
(10881,41,-1254.8102,-78.07655,162.99677,100,0,0),
(10881,42,-1230.3444,-67.61344,162.36197,100,0,0),
(10881,43,-1228.4113,-82.74897,162.67325,100,0,0),
(10881,44,-1219.8137,-97.4598,162.8417,100,0,0),
(10881,45,-1201.5387,-100.09386,162.89145,100,0,0),
(10881,46,-1192.1188,-91.5574,162.72011,100,0,0),
(10881,47,-1185.5045,-81.63634,162.54579,100,0,0),
(10881,48,-1184.0348,-66.65267,161.89906,100,0,0),
(10881,49,-1188.6537,-50.857475,161.88515,100,0,0),
(10881,50,-1200.2048,-36.68023,162.40787,100,0,0),
(10881,51,-1212.2988,-33.86388,163.08316,100,0,0),
(10881,52,-1222.895,-45.217556,162.96524,100,0,0),
(10881,53,-1229.6758,-59.198895,162.7106,100,0,0),
(10881,54,-1232.1641,-69.4713,162.50626,100,0,0),
(10881,55,-1253.0083,-78.41298,162.99677,100,0,0),
(10881,56,-1267.7615,-80.29845,162.65508,100,0,0),
(10881,57,-1282.3258,-71.691734,158.1978,100,0,0),
(10881,58,-1282.0757,-58.58692,155.54141,100,0,0),
(10881,59,-1282.3276,-48.19157,152.46475,100,0,0),
(10881,60,-1281.4308,-31.95459,146.76236,100,0,0),
(10881,61,-1279.5905,-15.625922,140.13492,100,0,0),
(10881,62,-1286.704,-1.506185,134.09781,100,0,0),
(10881,63,-1300.445,0.512207,133.07643,100,0,0),
(10881,64,-1314.4199,5.9609375,132.32643,100,0,0),
(10881,65,-1328.3633,27.155544,129.32643,100,0,0),
(10881,66,-1332.2041,43.451225,129.24985,100,0,0),
(10881,67,-1323.8455,55.51096,129.12485,100,0,0),
(10881,68,-1297.5516,61.62397,128.66028,100,0,0),
(10881,69,-1271.4805,63.266655,127.550415,100,0,0);

UPDATE creature_template SET InhabitType = 3 WHERE entry = 3084;
UPDATE creature_template SET InhabitType = 3 WHERE entry = 8361;
UPDATE creature_template SET InhabitType = 3 WHERE entry = 10881;
UPDATE creature_template SET InhabitType = 3 WHERE entry = 14440;
UPDATE creature_template SET InhabitType = 3 WHERE entry = 14441;

UPDATE creature_template SET MovementType = 2 WHERE entry = 10617;
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(26103, 10617, 1, 1, 1, 0, 0, -4767.42, -1299.01, -48.5161, 0.847854, 300, 300, 0, 0, 787, 0, 0, 2);
DELETE FROM creature_movement WHERE id IN (SELECT guid FROM creature WHERE id = 10617);
DELETE FROM creature_movement_template WHERE entry = 10617;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(10617,1,-4762.87,-1290.9,-48.6797,100,0,0),
(10617,2,-4754.58,-1277.63,-50.6039,100,0,0),
(10617,3,-4750.82,-1269.29,-52.2448,100,0,0),
(10617,4,-4741.58,-1258.54,-53.7598,100,0,0),
(10617,5,-4735.05,-1252.42,-53.4866,100,0,0),
(10617,6,-4721.58,-1252.87,-52.9961,100,0,0),
(10617,7,-4709.37,-1255.09,-52.4231,100,0,0),
(10617,8,-4690.41,-1256.69,-51.4558,100,0,0),
(10617,9,-4678.65,-1255.36,-51.7615,100,0,0),
(10617,10,-4667.25,-1254.01,-52.466,100,0,0),
(10617,11,-4654.91,-1250.31,-52.4423,100,0,0),
(10617,12,-4643.63,-1246.97,-52.7652,100,0,0),
(10617,13,-4628.66,-1252.25,-52.7201,100,0,0),
(10617,14,-4616.46,-1241.26,-53.1128,100,5000,1061701),
(10617,15,-4626.84,-1262.57,-52.0868,100,0,0),
(10617,16,-4637.04,-1273.22,-51.5857,100,0,0),
(10617,17,-4653.8,-1273.06,-50.0272,100,0,0),
(10617,18,-4658.19,-1272.9,-46.3666,100,0,0),
(10617,19,-4665.41,-1271.61,-46.3562,100,0,0),
(10617,20,-4671.28,-1267.43,-46.5963,100,0,0),
(10617,21,-4674.24,-1265.18,-51.4084,100,0,0),
(10617,22,-4680.75,-1261.73,-51.8471,100,0,0),
(10617,23,-4691.09,-1256.76,-51.4453,100,0,0),
(10617,24,-4709.3,-1254.97,-52.4102,100,0,0),
(10617,25,-4722.44,-1258.81,-52.9406,100,0,0),
(10617,26,-4734.65,-1265.81,-52.9127,100,0,0),
(10617,27,-4745.46,-1274.24,-51.3062,100,0,0),
(10617,28,-4751.99,-1280.63,-50.0035,100,0,0),
(10617,29,-4761.07,-1291.7,-48.6704,100,0,0),
(10617,30,-4766.74,-1303.36,-48.8624,100,0,0),
(10617,31,-4769.98,-1308.49,-48.8379,100,0,0),
(10617,32,-4777.39,-1322.74,-50.3743,100,0,0),
(10617,33,-4780.99,-1339.72,-52.8541,100,0,0),
(10617,34,-4784.1,-1354.8,-54.2935,100,0,0),
(10617,35,-4785.88,-1367.56,-52.2551,100,0,0),
(10617,36,-4781,-1372.93,-53.9151,100,0,0),
(10617,37,-4776.42,-1379.06,-53.0418,100,0,0),
(10617,38,-4773.6,-1383.34,-49.3428,100,0,0),
(10617,39,-4765.87,-1393.87,-47.2024,100,0,0),
(10617,40,-4754.02,-1402.46,-46.9377,100,0,0),
(10617,41,-4742.59,-1411.48,-46.9652,100,0,0),
(10617,42,-4735.06,-1420.87,-46.1592,100,0,0),
(10617,43,-4728.02,-1430.98,-45.7671,100,0,0),
(10617,44,-4730.37,-1442.77,-45.2195,100,0,0),
(10617,45,-4733.4,-1451.67,-44.1099,100,0,0),
(10617,46,-4736.8,-1458.3,-42.0975,100,0,0),
(10617,47,-4739.06,-1462.05,-35.3445,100,0,0),
(10617,48,-4745.12,-1474.65,-32.3466,100,0,0),
(10617,49,-4749.83,-1486.33,-30.2629,100,0,0),
(10617,50,-4754.76,-1493.1,-28.5038,100,0,0),
(10617,51,-4762.78,-1502.21,-28.3459,100,0,0),
(10617,52,-4769.68,-1509.69,-30.622,100,0,0),
(10617,53,-4779.17,-1519.21,-35.1878,100,0,0),
(10617,54,-4787.49,-1527.52,-39.9632,100,0,0),
(10617,55,-4798.53,-1539.43,-47.1777,100,0,0),
(10617,56,-4800.74,-1550.22,-49.6023,100,0,0),
(10617,57,-4801.46,-1563.07,-50.506,100,0,0),
(10617,58,-4801.51,-1577.16,-50.661,100,0,0),
(10617,59,-4802.65,-1588.86,-50.0771,100,0,0),
(10617,60,-4803.91,-1602.15,-48.6559,100,0,0),
(10617,61,-4805.31,-1614.1,-47.8287,100,0,0),
(10617,62,-4805.77,-1629.11,-48.7066,100,0,0),
(10617,63,-4806.35,-1642.45,-50.0611,100,0,0),
(10617,64,-4807.43,-1655.94,-49.8544,100,0,0),
(10617,65,-4809.23,-1672.74,-50.3566,100,0,0),
(10617,66,-4810.51,-1690.9,-47.9159,100,0,0),
(10617,67,-4810.67,-1694.72,-44.2828,100,0,0),
(10617,68,-4809.47,-1706.22,-42.963,100,0,0),
(10617,69,-4809.96,-1711.92,-38.5216,100,0,0),
(10617,70,-4809.18,-1725.9,-38.8019,100,0,0),
(10617,71,-4809.61,-1738.11,-39.3492,100,0,0),
(10617,72,-4809.8,-1745.01,-40.4676,100,0,0),
(10617,73,-4810.62,-1752.8,-39.0753,100,0,0),
(10617,74,-4812.43,-1761.96,-41.4678,100,0,0),
(10617,75,-4815.08,-1774.18,-43.0852,100,0,0),
(10617,76,-4816.44,-1779.48,-51.6232,100,0,0),
(10617,77,-4818.44,-1789.74,-53.0767,100,0,0),
(10617,78,-4820.45,-1797.03,-53.4675,100,0,0),
(10617,79,-4823.54,-1804.13,-53.5845,100,0,0),
(10617,80,-4831.06,-1813.64,-53.5474,100,0,0),
(10617,81,-4842.63,-1824.62,-52.9696,100,0,0),
(10617,82,-4851.74,-1833.32,-52.2464,100,0,0),
(10617,83,-4858.13,-1839.32,-51.6507,100,0,0),
(10617,84,-4861.8,-1859.12,-52.8664,100,0,0),
(10617,85,-4864.77,-1877.93,-52.3363,100,0,0),
(10617,86,-4870.83,-1896.66,-52.701,100,0,0),
(10617,87,-4859.21,-1909.67,-50.9842,100,0,0),
(10617,88,-4852.1,-1914.64,-49.6981,100,0,0),
(10617,89,-4839.1,-1923.89,-45.7409,100,0,0),
(10617,90,-4832.56,-1939.56,-44.9175,100,0,0),
(10617,91,-4821.57,-1949.36,-47.1689,100,0,0),
(10617,92,-4810.46,-1959.17,-50.2137,100,0,0),
(10617,93,-4798.88,-1969.86,-55.3912,100,0,0),
(10617,94,-4804.38,-1989.92,-57.8066,100,0,0),
(10617,95,-4805.93,-2005.89,-57.3834,100,0,0),
(10617,96,-4812.79,-2016.67,-53.3367,100,0,0),
(10617,97,-4820.51,-2028.25,-47.6869,100,0,0),
(10617,98,-4826.51,-2036.37,-43.4982,100,0,0),
(10617,99,-4828.14,-2052.06,-40.412,100,0,0),
(10617,100,-4828.48,-2062.22,-38.6444,100,0,0),
(10617,101,-4827.77,-2070.78,-35.9613,100,0,0),
(10617,102,-4826.91,-2077.35,-32.0554,100,0,0),
(10617,103,-4834.92,-2084.33,-32.3006,100,0,0),
(10617,104,-4842.25,-2090.4,-32.8852,100,0,0),
(10617,105,-4847.06,-2094.54,-34.8957,100,0,0),
(10617,106,-4858.75,-2105.11,-35.2734,100,0,0),
(10617,107,-4872.07,-2119.49,-39.0922,100,0,0),
(10617,108,-4890.22,-2133.85,-48.8776,100,0,0),
(10617,109,-4898.74,-2140.63,-51.8866,100,0,0),
(10617,110,-4903.88,-2149.28,-54.1434,100,0,0),
(10617,111,-4917.84,-2162.09,-57.1251,100,0,0),
(10617,112,-4925.18,-2168.72,-56.9019,100,0,0),
(10617,113,-4951.44,-2170.82,-54.822,100,5000,1061701),
(10617,114,-4934.4,-2163.67,-56.3254,100,0,0),
(10617,115,-4921.63,-2155.44,-56.5118,100,0,0),
(10617,116,-4912.51,-2149.1,-55.3021,100,0,0),
(10617,117,-4903.45,-2141.89,-52.5473,100,0,0),
(10617,118,-4889.77,-2134.03,-48.7321,100,0,0),
(10617,119,-4881.52,-2129.66,-44.6736,100,0,0),
(10617,120,-4871.5,-2118.21,-38.5877,100,0,0),
(10617,121,-4864.01,-2108.72,-35.4712,100,0,0),
(10617,122,-4853.92,-2095.11,-34.8263,100,0,0),
(10617,123,-4843.04,-2083.07,-35.4653,100,0,0),
(10617,124,-4834.66,-2072.32,-37.2541,100,0,0),
(10617,125,-4836.62,-2059.32,-38.5542,100,0,0),
(10617,126,-4831.27,-2045,-40.725,100,0,0),
(10617,127,-4826.83,-2036.59,-43.3441,100,0,0),
(10617,128,-4816.93,-2022.68,-50.4599,100,0,0),
(10617,129,-4809.74,-2011.88,-55.2954,100,0,0),
(10617,130,-4803.08,-2003.41,-58.4719,100,0,0),
(10617,131,-4801.53,-1992.7,-59.1603,100,0,0),
(10617,132,-4799.79,-1979.27,-57.4096,100,0,0),
(10617,133,-4798.65,-1969.35,-55.3039,100,0,0),
(10617,134,-4809.27,-1958.87,-50.3312,100,0,0),
(10617,135,-4821.95,-1949.19,-47.0702,100,0,0),
(10617,136,-4832.74,-1939.28,-44.9174,100,0,0),
(10617,137,-4838.95,-1924.09,-45.7189,100,0,0),
(10617,138,-4851.15,-1921.47,-48.1112,100,0,0),
(10617,139,-4859.52,-1909.22,-51.03,100,0,0),
(10617,140,-4870.69,-1897.17,-52.7311,100,0,0),
(10617,141,-4868.65,-1880.78,-52.4395,100,0,0),
(10617,142,-4863,-1861.24,-52.5905,100,0,0),
(10617,143,-4862.35,-1843.71,-51.1472,100,0,0),
(10617,144,-4861.98,-1823.18,-50.5827,100,0,0),
(10617,145,-4870.94,-1815.14,-46.4883,100,0,0),
(10617,146,-4876.9,-1810.19,-43.0211,100,0,0),
(10617,147,-4887.3,-1801.67,-37.5103,100,0,0),
(10617,148,-4894.4,-1796.36,-35.5578,100,0,0),
(10617,149,-4901.85,-1791.9,-35.2927,100,0,0),
(10617,150,-4909.29,-1787.8,-37.0464,100,0,0),
(10617,151,-4917.12,-1783.24,-40.568,100,0,0),
(10617,152,-4930.02,-1769.28,-50.6485,100,0,0),
(10617,153,-4942.14,-1754.84,-56.3727,100,0,0),
(10617,154,-4953.43,-1742.4,-59.128,100,0,0),
(10617,155,-4960.54,-1732.61,-60.8708,100,0,0),
(10617,156,-4963.6,-1720.32,-61.7408,100,0,0),
(10617,157,-4954.52,-1707.27,-60.6511,100,0,0),
(10617,158,-4948.62,-1695.86,-58.6911,100,0,0),
(10617,159,-4945.08,-1684.56,-56.0222,100,0,0),
(10617,160,-4945.63,-1675.2,-53.5091,100,0,0),
(10617,161,-4951.83,-1663.77,-51.1068,100,0,0),
(10617,162,-4956.56,-1654.66,-49.4891,100,0,0),
(10617,163,-4962.06,-1644.07,-47.5364,100,0,0),
(10617,164,-4964.88,-1634.84,-45.3193,100,0,0),
(10617,165,-4965.39,-1624.6,-44.3409,100,0,0),
(10617,166,-4964.83,-1614.35,-43.423,100,0,0),
(10617,167,-4966.18,-1598.84,-42.7216,100,0,0),
(10617,168,-4968.21,-1585.54,-43.5183,100,0,0),
(10617,169,-4971.85,-1567.42,-46.3785,100,0,0),
(10617,170,-4971.91,-1555.11,-47.0273,100,0,0),
(10617,171,-4971.44,-1544.76,-47.2648,100,0,0),
(10617,172,-4961.82,-1539.2,-45.645,100,0,0),
(10617,173,-4949.42,-1530.54,-45.9231,100,0,0),
(10617,174,-4938.19,-1521.57,-47.2585,100,0,0),
(10617,175,-4929.36,-1514.08,-47.9293,100,0,0),
(10617,176,-4921.01,-1502.88,-48.8692,100,0,0),
(10617,177,-4913.23,-1493.09,-49.0953,100,0,0),
(10617,178,-4905.47,-1483.28,-49.4829,100,0,0),
(10617,179,-4899.87,-1475.35,-49.8728,100,0,0),
(10617,180,-4890.58,-1459.06,-51.205,100,0,0),
(10617,181,-4883.49,-1442.4,-50.9922,100,0,0),
(10617,182,-4880.09,-1434.51,-50.178,100,0,0),
(10617,183,-4875.23,-1423.4,-50.5274,100,0,0),
(10617,184,-4869.7,-1413.77,-52.7385,100,0,0),
(10617,185,-4864.16,-1404.36,-53.2205,100,0,0),
(10617,186,-4852.39,-1394.22,-53.2897,100,0,0),
(10617,187,-4840.55,-1384.5,-53.7503,100,0,0),
(10617,188,-4828.11,-1374.96,-54.0438,100,0,0),
(10617,189,-4816.54,-1366.6,-54.3355,100,0,0),
(10617,190,-4807.17,-1359.8,-53.898,100,0,0),
(10617,191,-4796.35,-1351.06,-53.5693,100,0,0),
(10617,192,-4788.23,-1339.58,-51.9457,100,0,0),
(10617,193,-4783.36,-1332.61,-51.3326,100,0,0),
(10617,194,-4781.02,-1326.86,-50.6824,100,0,0),
(10617,195,-4778.92,-1317.78,-49.4474,100,0,0),
(10617,196,-4776.57,-1309.04,-48.3167,100,0,0),
(10617,197,-4767.59,-1299.04,-48.8752,100,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (1061701);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1061701,100,20,1,10,55000,0,0,0x04|0x08,0,0,0,0,0,0,0,0,'RandomMovement(55secs TEMP) (around current location)');

DELETE FROM `spell_script_target` WHERE `entry` = 8202 AND `type` = 0 AND `targetEntry` = 63674;

UPDATE creature_model_info SET bounding_radius=3,combat_reach=4.5 WHERE modelid IN(6686);

DELETE FROM creature_template_addon WHERE entry IN(24723,25562);
UPDATE creature_template SET UnitFlags=32832,SpeedWalk=2.22222/2.5,SpeedRun=10/7,MechanicImmuneMask=MechanicImmuneMask&~(33554432) WHERE entry IN(24723,25562);
UPDATE creature_template SET SpeedRun=7/7,SpeedWalk=2.5/2.5 WHERE entry IN(24559,24555);
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask&~(33554432) WHERE entry IN(24664,24857);
UPDATE spell_target_position SET target_position_x = 148.5, target_position_y = 181, target_position_z = -16.7, target_orientation=4.79965 WHERE Id IN(44218);
UPDATE `creature_template` SET `InhabitType` = 4 WHERE `entry` = 25545;

UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = 100 WHERE `entry` =186744 AND `item` =24685;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = 1, `groupid` = 2 WHERE `entry` =186744 AND `item` IN (31291,31298);

#INSERT INTO spell_script_target VALUES (43360,1,24138,0);

UPDATE `creature_template` SET `RegenerateStats` = 2 WHERE `entry` = 25483;

INSERT INTO spell_proc_event(entry,procEx) VALUES (33896, 0x0000400);

REPLACE INTO spell_script_target(entry, type, targetEntry, inverseEffectMask) VALUES (44948, 1, 24958, 0);

DELETE FROM dbscripts_on_relay WHERE id IN (2493600);
INSERT INTO dbscripts_on_relay (id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, condition_id, comments) VALUES
(2493600, 0, 0, 15, 44871, 0, 0, 24928, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Sunwell Daily Bunny x 0.01 - Cast Sunwell Isle Mana Cell to Portal Beam');

UPDATE creature_template SET MovementType = 2 WHERE entry = 23108;
UPDATE creature SET spawndist = 0, MovementType = 2 WHERE id = 23108;
DELETE FROM creature_movement WHERE id IN (SELECT guid FROM creature WHERE id = 23108);
DELETE FROM creature_movement_template WHERE entry = 23108;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(23108,1,-494.969,7462.91,180.932,100,0,0),
(23108,2,-493.364,7449.09,178.542,100,0,0),
(23108,3,-486.697,7452.25,181.785,100,0,0),
(23108,4,-480.69,7455.04,183.271,100,0,0),
(23108,5,-473.747,7458.7,182.132,100,0,0),
(23108,6,-476.559,7468.76,181.325,100,0,0),
(23108,7,-479.369,7478.33,180.638,100,0,0),
(23108,8,-476.982,7484.51,181.798,100,0,0),
(23108,9,-473.571,7490.72,181.379,100,0,0),
(23108,10,-464.893,7490.82,182.036,100,0,0),
(23108,11,-459.332,7490.17,182.915,100,0,0),
(23108,12,-458.357,7486.38,185.116,100,0,0),
(23108,13,-456.242,7482.12,187.101,100,0,0),
(23108,14,-454.639,7476.76,186.521,100,0,0),
(23108,15,-457.451,7473.51,187.083,100,0,0),
(23108,16,-461.155,7470.09,185.741,100,0,0),
(23108,17,-466.631,7465.9,182.997,100,0,0),
(23108,18,-476.989,7469.88,181.385,100,0,0),
(23108,19,-490.074,7475.09,179.934,100,0,0),
(23108,20,-495.423,7470.01,180.13,100,0,0);
DELETE FROM creature_linking WHERE master_guid IN (127265);
INSERT INTO creature_linking (guid, master_guid, flag) VALUES (127263, 127265, 512);
DELETE FROM creature_spawn_data WHERE Guid IN (127265);
INSERT INTO creature_spawn_data (Guid,Id) VALUES (127265,1);

REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(52249, 24917, 530, 1, 2, 0, 0, 3727.3, 5921.32, 266.518, 6.22381, 300, 300, 5, 0, 6900, 0, 0, 1),
(52250, 24917, 530, 1, 2, 0, 0, 3756.13, 5898.4, 265.334, 3.79955, 300, 300, 5, 0, 6900, 0, 0, 1),
(52251, 24917, 530, 1, 2, 0, 0, 3699.34, 5994.77, 265.15, 1.42186, 300, 300, 5, 0, 6900, 0, 0, 1),
(57993, 24917, 530, 1, 2, 0, 0, 3806.63, 5929.74, 266.161, 5.52954, 300, 300, 5, 0, 6900, 0, 0, 1),
(58000, 24917, 530, 1, 2, 0, 0, 3764.9, 5930.82, 265.593, 2.0573, 300, 300, 5, 0, 6900, 0, 0, 1),
(58001, 24917, 530, 1, 2, 0, 0, 3726.64, 5974.93, 267.835, 0.899625, 300, 300, 5, 0, 6900, 0, 0, 1),
(58002, 24917, 530, 1, 2, 0, 0, 3803.23, 5933.67, 265.918, 3.28363, 300, 300, 5, 0, 6900, 0, 0, 1),
(58003, 24917, 530, 1, 2, 0, 0, 3813.52, 5967.5, 266.437, 2.59053, 300, 300, 5, 0, 6900, 0, 0, 1),
(58701, 24917, 530, 1, 2, 0, 0, 3774.76, 6001.04, 267.271, 2.43603, 300, 300, 5, 0, 6900, 0, 0, 1),
(58730, 24917, 530, 1, 2, 0, 0, 3922.02, 6046.36, 266.826, 3.2478, 300, 300, 5, 0, 6900, 0, 0, 1),
(58745, 24917, 530, 1, 2, 0, 0, 3915.7, 6095.82, 271.027, 0.0682616, 300, 300, 5, 0, 6900, 0, 0, 1),
(58753, 24917, 530, 1, 2, 0, 0, 3856.8, 6057.11, 265.568, 5.76666, 300, 300, 5, 0, 6900, 0, 0, 1),
(58759, 24917, 530, 1, 2, 0, 0, 3830.54, 6029.46, 266.819, 3.87356, 300, 300, 5, 0, 6900, 0, 0, 1),
(58760, 24917, 530, 1, 2, 0, 0, 3858.99, 6116.27, 266.512, 1.69538, 300, 300, 5, 0, 6900, 0, 0, 1),
(58772, 24917, 530, 1, 2, 0, 0, 3734.54, 6024.36, 266.83, 2.04484, 300, 300, 5, 0, 6900, 0, 0, 1),
(58792, 24917, 530, 1, 2, 0, 0, 3830.33, 6055.1, 265.13, 3.6014, 300, 300, 5, 0, 6900, 0, 0, 1),
(58792, 24917, 530, 1, 2, 0, 0, 3666.48, 6141.51, 266.564, 0.729572, 300, 300, 5, 0, 6900, 0, 0, 1),
(58793, 24917, 530, 1, 2, 0, 0, 3782.01, 6030.91, 265.396, 5.97155, 300, 300, 5, 0, 6900, 0, 0, 1),
(58801, 24917, 530, 1, 2, 0, 0, 3756.23, 6105.89, 268.465, 6.0783, 300, 300, 5, 0, 6900, 0, 0, 1),
(58832, 24917, 530, 1, 2, 0, 0, 3830.21, 6137.18, 265.979, 1.25057, 300, 300, 5, 0, 6900, 0, 0, 1),
(59472, 24917, 530, 1, 2, 0, 0, 3712.44, 6081.97, 267.386, 2.24365, 300, 300, 5, 0, 6900, 0, 0, 1),
(58649, 24917, 530, 1, 2, 0, 0, 3788.4, 6088.01, 266.273, 5.63639, 300, 300, 5, 0, 6900, 0, 0, 1),
(27017, 24917, 530, 1, 2, 0, 0, 3785.42, 6154.17, 265.979, 5.8338, 300, 300, 5, 0, 6900, 0, 0, 1),
(27035, 24917, 530, 1, 2, 0, 0, 3679.67, 6068.57, 267.089, 0.946592, 300, 300, 5, 0, 6900, 0, 0, 1),
(27039, 24917, 530, 1, 2, 0, 0, 3716.45, 6114.7, 266.598, 0.32684, 300, 300, 5, 0, 6900, 0, 0, 1),
(27044, 24917, 530, 1, 2, 0, 0, 3775.38, 6175.29, 266.139, 4.90963, 300, 300, 5, 0, 6900, 0, 0, 1),
(27056, 24917, 530, 1, 2, 0, 0, 3720.02, 6054.17, 265.397, 4.38859, 300, 300, 5, 0, 6900, 0, 0, 1),
(27101, 24917, 530, 1, 2, 0, 0, 3730.81, 6179.56, 266.794, 2.21832, 300, 300, 5, 0, 6900, 0, 0, 1),
(27115, 24917, 530, 1, 2, 0, 0, 3700.23, 6148.82, 266.692, 5.39687, 300, 300, 5, 0, 6900, 0, 0, 1),
(27118, 24917, 530, 1, 2, 0, 0, 3809.37, 6109.74, 266, 2.75041, 300, 300, 5, 0, 6900, 0, 0, 1),
(27179, 24917, 530, 1, 2, 0, 0, 3800.65, 6054.73, 267.011, 1.33721, 300, 300, 5, 0, 6900, 0, 0, 1),
(27182, 24917, 530, 1, 2, 0, 0, 3682.01, 6182.3, 266.286, 0.661471, 300, 300, 5, 0, 6900, 0, 0, 1);
DELETE FROM creature_template_addon WHERE entry = 24917;
INSERT INTO creature_template_addon(entry,auras) VALUES (24917,'35319 44855');

INSERT INTO `game_event` (`entry`, `schedule_type`, `occurence`, `length`, `holiday`, `linkedTo`, `EventGroup`, `description`) VALUES
(301, 0, 0, 0, 0, 0, 0, 'Suns Reach Reclamation Phase 1'),
(302, 0, 0, 0, 0, 0, 0, 'Suns Reach Reclamation Phase 2 Only'),
(303, 0, 0, 0, 0, 0, 0, 'Suns Reach Reclamation Phase 2 Permanent'),
(304, 0, 0, 0, 0, 0, 0, 'Suns Reach Reclamation Phase No Portal'),
(305, 0, 0, 0, 0, 0, 0, 'Suns Reach Reclamation Phase Portal'),
(306, 0, 0, 0, 0, 0, 0, 'Suns Reach Reclamation Phase 3 Only'),
(307, 0, 0, 0, 0, 0, 0, 'Suns Reach Reclamation Phase 3 Permanent'),
(308, 0, 0, 0, 0, 0, 0, 'Suns Reach Reclamation Phase No Anvil'),
(309, 0, 0, 0, 0, 0, 0, 'Suns Reach Reclamation Phase Anvil'),
(310, 0, 0, 0, 0, 0, 0, 'Suns Reach Reclamation Phase 4'),
(311, 0, 0, 0, 0, 0, 0, 'Suns Reach Reclamation Phase No Monument'),
(312, 0, 0, 0, 0, 0, 0, 'Suns Reach Reclamation Phase Monument'),
(313, 0, 0, 0, 0, 0, 0, 'Suns Reach Reclamation Phase No Alchemy Lab'),
(314, 0, 0, 0, 0, 0, 0, 'Suns Reach Reclamation Phase Alchemy Lab'),
(315, 0, 0, 0, 0, 0, 0, 'Suns Reach Reclamation Phase Kiru'),
(316, 0, 0, 0, 0, 0, 0, 'SWP - All Gates Closed'),
(317, 0, 0, 0, 0, 0, 0, 'SWP - First Gate Open'),
(318, 0, 0, 0, 0, 0, 0, 'SWP - Second Gate Open'),
(319, 0, 0, 0, 0, 0, 0, 'SWP - All Gates Open');
DELETE FROM game_event_quest WHERE event BETWEEN 301 AND 319;
INSERT INTO game_event_quest(quest, event) VALUES
(11524,301), (11496,301), (11538,302), (11532,302), (11523,303), (11525,303), (11513,304), (11514,305), (11547,305), (11542,306), (11539,306), (11537,307),
(11533,307), (11535,308), (11536,309), (11544,309), (11541,310), (11549,310), (11545,311), (11548,312), (11520,313), (11521,314), (11546,314);
DELETE FROM creature_questrelation WHERE quest IN(11524,11496,11538,11532,11513,11542,11539,11535,11520,11545,11517);
INSERT INTO creature_questrelation(id, quest) VALUES (24965,11524), (24967,11496), (25061,11538), (25057,11532), (25034,11517), (24932,11513), (25108,11542), (25069,11539), (25046,11535), (24975,11520), (25112,11545);
DELETE FROM creature_involvedrelation WHERE quest IN(11524,11496,11538,11532,11513,11542,11539,11535,11520,11545,11517);
INSERT INTO creature_involvedrelation(id, quest) VALUES (24965,11524), (24967,11496), (25061,11538), (25057,11532), (24932,11517), (24932,11513), (25108,11542), (25069,11539), (25046,11535), (24975,11520), (25112,11545);
UPDATE creature_template SET RegenerateStats=0 WHERE entry IN(24938);
DELETE FROM spell_script_target WHERE entry IN(45188);
INSERT INTO spell_script_target(entry, type, targetEntry, inverseEffectMask) VALUES (45188,1,24938,0);
INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES
(43421, 305), (43332, 309), (43374, 307), (23337, 310), (22010, 312), (43406, 305), (1099, 314), (1079, -307), (1081, -307), (1082, -307), (1084, -307), (1095, -307);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(1079, 187120, 530, 1, 1, 12685.8, -6925.83, 39.6163, 2.42601, 0, 0, 0.936672, 0.350207, 180, 180, 255, 1),
(1081, 187120, 530, 1, 1, 12707.8, -6938.79, 40.4404, 1.81514, 0, 0, 0.788011, 0.615662, 180, 180, 255, 1),
(1082, 187120, 530, 1, 1, 12665, -6935.73, 29.5553, -0.593412, 0, 0, 0.292372, -0.956305, 180, 180, 255, 1),
(1084, 187120, 530, 1, 1, 12655.7, -6948.69, 38.5981, 2.68781, 0, 0, 0.97437, 0.224951, 180, 180, 255, 1),
(1095, 187120, 530, 1, 1, 12645.2, -6980.98, 40.5053, -1.85005, 0, 0, 0, 0, 180, 180, 255, 1),
(1099, 187115, 530, 1, 1, 12848.5, -7011.7, 19.5233, 0.174532, 0, 0, 0.0871553, 0.996195, 0, 0, 100, 1);
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(43421, 187056, 530, 1, 1, -1839.88, 5500.6, -12.4279, 4.85202, 0, 0, -0.656058, 0.75471, 180, 180, 255, 1),
(43332, 187111, 530, 1, 1, 12664.8, -6986.43, 14.5812, 3.26377, 0, 0, -0.998135, 0.0610518, 300, 300, 0, 1),
(43374, 187112, 530, 1, 1, 12667.8, -6982.9, 14.5732, 3.12412, 0, 0, 0.999962, 0.00873464, 300, 300, 0, 1),
(23377, 187113, 530, 1, 1, 12792.8, -6965.98, 15.4007, 2.25147, 0, 0, 0.902585, 0.430512, 300, 300, 0, 1),
(40538, 187114, 530, 1, 1, 12848.3, -7011.71, 18.5927, 4.83456, 0, 0, -0.66262, 0.748956, 300, 300, 0, 1),
(22010, 187116, 530, 1, 1, 12742, -6916.08, 12.7105, 5.16618, 0, 0, -0.529919, 0.848048, 250, 250, 0, 1),
(43370, 187120, 530, 1, 1, 12653.5, -6925.89, 10.6341, 1.23918, 0, 0, 0.580703, 0.814116, 300, 300, 100, 1),
(43335, 187120, 530, 1, 1, 12664, -6906.04, 8.85577, 0.610863, 0, 0, 0.300705, 0.953717, 300, 300, 100, 1),
(43406, 187335, 530, 1, 1, 12806.7, -6911.56, 41.1153, 2.21656, 0, 0, 0.894934, 0.446199, 300, 300, 0, 1);
UPDATE creature_template SET UnitFlags=33536 WHERE entry IN(27666,27667,25088);
UPDATE creature_template SET UnitFlags=37632 WHERE entry IN(24975,25108);
UPDATE creature_template SET UnitFlags=33536 WHERE entry IN(25046,25069,25112,25950,25163,25039,25043,25045,25035,26089,26090,26091,26092);
UPDATE creature_template SET UnitFlags=4864 WHERE entry IN(25169);
UPDATE creature_template SET UnitFlags=37120 WHERE entry IN(24938);
UPDATE creature_template SET UnitFlags=32768 WHERE entry IN(25063);
UPDATE creature_template SET UnitFlags=33536,NpcFlags=66177 WHERE entry IN(25036);
UPDATE creature_template SET UnitFlags=33536,NpcFlags=4194305 WHERE entry IN(25037);
INSERT INTO `creature_movement_template` (`entry`, `pathId`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `script_id`, `comment`) VALUES
(25112, 0, 1, 12730.3, -6917.3, 12.2406, 100, 0, 0, NULL),
(25112, 0, 2, 12732.5, -6906.65, 12.2406, 100, 0, 0, NULL),
(25112, 0, 3, 12745, -6905.25, 12.2757, 100, 0, 0, NULL),
(25112, 0, 4, 12754.3, -6913.14, 12.2757, 100, 0, 0, NULL),
(25112, 0, 5, 12751.8, -6922.52, 12.2757, 100, 0, 0, NULL),
(25112, 0, 6, 12745.1, -6926.08, 12.2757, 100, 0, 0, NULL),
(25112, 0, 7, 12737.3, -6925.34, 12.2757, 100, 0, 0, NULL);
UPDATE `creature_template` SET `MinLevel` = 70, `MaxLevel` = 70, `MinLevelHealth` = 6986, `MaxLevelHealth` = 6986 WHERE `Entry` =24936;
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(100309, 24932, 530, 1, 1, 0, 0, -1843.86, 5494.1, -12.3448, 4.4855, 180, 180, 0, 0, 24451, 0, 0, 0),
(25759, 24936, 530, 1, 1, 0, 0, -1833.46, 5507.99, -11.5877, 3.99413, 300, 300, 0, 0, 6986, 0, 0, 0),
(25763, 24936, 530, 1, 1, 0, 0, -1841.7, 5510.38, -11.6085, 4.90014, 300, 300, 0, 0, 6986, 0, 0, 0),
(26185, 24936, 530, 1, 1, 0, 0, -1833.15, 5507.06, -12.1361, 3.90291, 300, 300, 0, 0, 6986, 0, 0, 0),
(26209, 24936, 530, 1, 1, 0, 0, -1834.4, 5507.92, -10.9347, 4.06703, 300, 300, 0, 0, 6986, 0, 0, 0),
(26216, 24936, 530, 1, 1, 0, 0, -1842.93, 5509.74, -12.1849, 5.03934, 300, 300, 0, 0, 6986, 0, 0, 0),
(26223, 24936, 530, 1, 1, 0, 0, -1839.17, 5510.03, -12.2196, 4.63903, 300, 300, 0, 0, 6986, 0, 0, 0),
(26276, 24936, 530, 1, 1, 0, 0, -1840.27, 5509.81, -11.7404, 4.75806, 300, 300, 0, 0, 6986, 0, 0, 0),
(26309, 24936, 530, 1, 1, 0, 0, -1841.05, 5510.44, -10.3863, 4.83421, 300, 300, 0, 0, 6986, 0, 0, 0),
(26332, 24936, 530, 1, 1, 0, 0, -1835.41, 5507.04, -12.115, 4.10379, 300, 300, 0, 0, 6986, 0, 0, 0),
(26334, 24936, 530, 1, 1, 0, 0, -1832.46, 5506.02, -12.1986, 3.76787, 300, 300, 0, 0, 6986, 0, 0, 0);
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(100251, 24938, 530, 1, 1, 0, 0, -1958.11, 5418.16, -12.3448, 5.06145, 30, 120, 0, 0, 6986, 0, 0, 2),
(100252, 24938, 530, 1, 1, 0, 0, -1941.19, 5486.9, -12.3448, 0.593412, 30, 120, 0, 0, 6986, 0, 0, 2),
(100253, 24938, 530, 1, 1, 0, 0, -1799.05, 5549.32, -12.3448, 5.02655, 30, 120, 0, 0, 6986, 0, 0, 2),
(100254, 24938, 530, 1, 1, 0, 0, -1771.48, 5424.38, -12.3448, 1.79769, 30, 120, 0, 0, 6986, 0, 0, 2),
(100255, 24938, 530, 1, 1, 0, 0, 12650.3, -6974.62, 36.3201, 3.40213, 600, 600, 0, 0, 6986, 0, 0, 0),
(100256, 24938, 530, 1, 1, 0, 0, 12653.7, -6982.75, 36.3186, 2.79391, 600, 600, 0, 0, 6986, 0, 0, 0),
(100257, 24938, 530, 1, 1, 0, 0, 12656.6, -6958.57, 36.3145, 3.97555, 600, 600, 0, 0, 6986, 0, 0, 0),
(100258, 24938, 530, 1, 1, 0, 0, 12657.4, -6949.35, 36.3152, 4.14244, 600, 600, 0, 0, 6986, 0, 0, 0),
(100259, 24938, 530, 1, 1, 0, 0, 12658.5, -6841.95, 12.5051, 3.96465, 600, 600, 0, 0, 6986, 0, 0, 2),
(100260, 24938, 530, 1, 1, 0, 0, 12668.7, -6832.5, 12.633, 0.809175, 600, 600, 0, 0, 6986, 0, 0, 2),
(100261, 24938, 530, 1, 1, 0, 0, 12669, -6852.79, 12.5063, 3.89579, 600, 600, 0, 0, 6986, 0, 0, 2),
(100262, 24938, 530, 1, 1, 0, 0, 12670, -6940.37, 23.4912, 2.31322, 600, 600, 0, 0, 6986, 0, 0, 0),
(100263, 24938, 530, 1, 1, 0, 0, 12673.1, -6982.69, 36.3136, 5.63758, 300, 300, 0, 0, 6986, 0, 0, 0),
(100264, 24938, 530, 1, 1, 0, 0, 12678.7, -6843.29, 12.6313, 0.707069, 600, 600, 0, 0, 6986, 0, 0, 2),
(100265, 24938, 530, 1, 1, 0, 0, 12679.6, -6864.09, 12.5056, 3.89579, 600, 600, 0, 0, 6986, 0, 0, 2),
(100266, 24938, 530, 1, 1, 0, 0, 12682.3, -6930.94, 36.3141, 1.59536, 600, 600, 0, 0, 6986, 0, 0, 0),
(100267, 24938, 530, 1, 1, 0, 0, 12689.7, -6854.43, 12.6347, 0.734558, 600, 600, 0, 0, 6986, 0, 0, 2),
(100268, 24938, 530, 1, 1, 0, 0, 12690, -6875.48, 12.503, 3.08279, 600, 600, 0, 0, 6986, 0, 0, 2),
(100269, 24938, 530, 1, 1, 0, 0, 12692.7, -6932.63, 36.3135, 1.23998, 600, 600, 0, 0, 6986, 0, 0, 0),
(100270, 24938, 530, 1, 1, 0, 0, 12694.2, -6982.25, 36.3137, 5.86129, 600, 600, 0, 0, 6986, 0, 0, 0),
(100271, 24938, 530, 1, 1, 0, 0, 12700.6, -6866.08, 12.6338, 0.742416, 600, 600, 0, 0, 6986, 0, 0, 2),
(100272, 24938, 530, 1, 1, 0, 0, 12702, -6938.6, 36.3136, 0.796233, 600, 600, 0, 0, 6986, 0, 0, 0),
(100273, 24938, 530, 1, 1, 0, 0, 12702.7, -6976.01, 36.3138, 5.57733, 600, 600, 0, 0, 6986, 0, 0, 0),
(100274, 24938, 530, 1, 1, 0, 0, 12707.5, -6947.03, 36.3143, 0.487951, 600, 600, 0, 0, 6986, 0, 0, 0),
(100275, 24938, 530, 1, 1, 0, 0, 12764.8, -6885.77, 40.3298, 3.06779, 600, 600, 0, 0, 6986, 0, 0, 0),
(100276, 24938, 530, 1, 1, 0, 0, 12765.8, -6877.99, 40.3506, 2.71043, 600, 600, 0, 0, 6986, 0, 0, 0),
(100277, 24938, 530, 1, 1, 0, 0, 12771, -6870.19, 40.3228, 2.41591, 600, 600, 0, 0, 6986, 0, 0, 0),
(100279, 24938, 530, 1, 1, 0, 0, 12777.9, -6865.08, 40.3367, 2.11765, 600, 600, 0, 0, 6986, 0, 0, 0),
(100278, 24938, 530, 1, 1, 0, 0, 12780, -6906.79, 40.3298, 4.18718, 600, 600, 0, 0, 6986, 0, 0, 0),
(100280, 24938, 530, 1, 1, 0, 0, 12786.7, -6862.69, 40.3506, 2.82325, 600, 600, 0, 0, 6986, 0, 0, 0),
(100281, 24938, 530, 1, 1, 0, 0, 12788, -6907.73, 40.3298, 4.57595, 600, 600, 0, 0, 6986, 0, 0, 0),
(100282, 24938, 530, 1, 1, 0, 0, 12794.4, -6864.2, 40.3367, 1.6148, 600, 600, 0, 0, 6986, 0, 0, 0),
(100283, 24938, 530, 1, 1, 0, 0, 12794.8, -6988.47, 47.5893, 3.72081, 600, 600, 0, 0, 6986, 0, 0, 0),
(100284, 24938, 530, 1, 1, 0, 0, 12795.2, -6998.43, 47.3655, 3.43807, 600, 600, 0, 0, 6986, 0, 0, 0),
(100285, 24938, 530, 1, 1, 0, 0, 12796.3, -6979.2, 47.536, 2.25997, 600, 600, 0, 0, 6986, 0, 0, 0),
(100286, 24938, 530, 1, 1, 0, 0, 12801.5, -6912.62, 41.15, 3.85653, 600, 600, 0, 0, 6986, 0, 0, 0),
(100287, 24938, 530, 1, 1, 0, 0, 12802.1, -6868.47, 40.3159, 0.883018, 600, 600, 0, 0, 6986, 0, 0, 0),
(100288, 24938, 530, 1, 1, 0, 0, 12803.4, -6981.09, 47.5908, 0.846249, 600, 600, 0, 0, 6986, 0, 0, 0),
(100289, 24938, 530, 1, 1, 0, 0, 12807.5, -6875.82, 40.3298, 0.498174, 600, 600, 0, 0, 6986, 0, 0, 0),
(100290, 24938, 530, 1, 1, 0, 0, 12808.4, -6914.02, 41.1361, 5.34768, 600, 600, 0, 0, 6986, 0, 0, 0),
(100291, 24938, 530, 1, 1, 0, 0, 12808.5, -6906.92, 41.1569, 0.959192, 600, 600, 0, 0, 6986, 0, 0, 0),
(100292, 24938, 530, 1, 1, 0, 0, 12808.7, -6892.34, 40.3159, 5.90834, 600, 600, 0, 0, 6986, 0, 0, 0),
(100293, 24938, 530, 1, 1, 0, 0, 12809.6, -6883.98, 40.3506, 5.91727, 600, 600, 0, 0, 6986, 0, 0, 0),
(100294, 24938, 530, 1, 1, 0, 0, 12813.4, -7024.65, 71.4962, 3.75928, 600, 600, 0, 0, 6986, 0, 0, 0),
(100295, 24938, 530, 1, 1, 0, 0, 12816.4, -6996.21, 71.1693, 2.22776, 600, 600, 0, 0, 6986, 0, 0, 0),
(100296, 24938, 530, 1, 1, 0, 0, 12824.5, -7030.75, 71.4883, 4.60359, 600, 600, 0, 0, 6986, 0, 0, 0),
(100297, 24938, 530, 1, 1, 0, 0, 12834.7, -7049.65, 19.1077, 3.74044, 600, 600, 0, 0, 6986, 0, 0, 0),
(100298, 24938, 530, 1, 1, 0, 0, 12836.4, -7032.06, 71.3394, 3.89281, 600, 600, 0, 0, 6986, 0, 0, 0),
(100299, 24938, 530, 1, 1, 0, 0, 12839.6, -7108.11, 5.33743, 0.623151, 600, 600, 0, 0, 6986, 0, 0, 0),
(111486, 24938, 530, 1, 1, 0, 0, 12841.5, -7039.79, 47.8495, 4.05931, 600, 600, 0, 0, 6986, 0, 0, 0),
(111492, 24938, 530, 1, 1, 0, 0, 12843.8, -7027.08, 71.3697, 0.664819, 600, 600, 0, 0, 6986, 0, 0, 0),
(128260, 24938, 530, 1, 1, 0, 0, 12843.8, -7002.13, 71.2075, 0.366371, 600, 600, 0, 0, 6986, 0, 0, 0),
(128261, 24938, 530, 1, 1, 0, 0, 12845.9, -7016.31, 71.2065, 5.88772, 600, 600, 0, 0, 6986, 0, 0, 0),
(128262, 24938, 530, 1, 1, 0, 0, 12849.4, -7042.26, 47.7683, 5.23349, 600, 600, 0, 0, 6986, 0, 0, 0),
(128263, 24938, 530, 1, 1, 0, 0, 12849.8, -7050.08, 18.9649, 4.19283, 600, 600, 0, 0, 6986, 0, 0, 0),
(128264, 24938, 530, 1, 1, 0, 0, 12849.8, -7065.3, 3.28482, 5.02139, 600, 600, 0, 0, 6986, 0, 0, 0),
(128266, 24938, 530, 1, 1, 0, 0, 12850.4, -7034.92, 47.8346, 0.391501, 600, 600, 0, 0, 6986, 0, 0, 0),
(128265, 24938, 530, 1, 1, 0, 0, 12851.4, -7125.42, 6.75772, 5.57194, 600, 600, 0, 0, 6986, 0, 0, 0),
(128267, 24938, 530, 1, 1, 0, 0, 12857.6, -7052.45, 18.9502, 5.41334, 600, 600, 0, 0, 6986, 0, 0, 0),
(128268, 24938, 530, 1, 1, 0, 0, 12857.7, -7042.47, 18.9762, 0.70095, 600, 600, 0, 0, 6986, 0, 0, 0),
(128269, 24938, 530, 1, 1, 0, 0, 12874.9, -7044.66, 3.2928, 5.52483, 600, 600, 0, 0, 6986, 0, 0, 0),
(128270, 24938, 530, 1, 1, 0, 0, 12881.2, -7028.98, 3.26899, 6.01571, 600, 600, 0, 0, 6986, 0, 0, 0),
(129006, 24938, 530, 1, 1, 0, 0, 12883.5, -7010.71, 3.00433, 6.0644, 600, 600, 0, 0, 6986, 0, 0, 0),
(128273, 24938, 530, 1, 1, 0, 0, 12900.1, -6856.96, 7.88553, 2.00713, 600, 600, 0, 0, 6986, 0, 0, 0),
(128305, 24938, 530, 1, 1, 0, 0, 12904.3, -6892.27, 7.29179, 4.45059, 600, 600, 0, 0, 6986, 0, 0, 0),
(128306, 24938, 530, 1, 1, 0, 0, 12916.8, -6878.5, 7.83077, 0.820305, 600, 600, 0, 0, 6986, 0, 0, 0),
(128995, 24938, 530, 1, 1, 0, 0, 12920.5, -6878.5, 7.69392, 0.820305, 600, 600, 0, 0, 6986, 0, 0, 0),
(128996, 24938, 530, 1, 1, 0, 0, 12920.7, -6882.54, 7.29037, 0.820305, 600, 600, 0, 0, 6986, 0, 0, 0),
(128999, 24938, 530, 1, 1, 0, 0, 12922.3, -6876.41, 7.82804, 0.802851, 600, 600, 0, 0, 6986, 0, 0, 0),
(129000, 24938, 530, 1, 1, 0, 0, 12925.9, -6927.11, 3.96455, 3.52556, 600, 600, 0, 0, 6986, 0, 0, 0),
(129081, 24938, 530, 1, 1, 0, 0, 12927.8, -6929.69, 3.96455, 3.92699, 600, 600, 0, 0, 6986, 0, 0, 0),
(129082, 24938, 530, 1, 1, 0, 0, 12946.2, -6983.72, 19.1053, 5.09283, 600, 600, 0, 0, 6986, 0, 0, 0),
(129083, 24938, 530, 1, 1, 0, 0, 12957.1, -6905.79, 5.98296, 5.3481, 600, 600, 0, 0, 6986, 0, 0, 0),
(129084, 24938, 530, 1, 1, 0, 0, 12958.6, -6964.4, 14.7851, 6.06673, 600, 600, 0, 0, 6986, 0, 0, 0),
(129085, 24938, 530, 1, 1, 0, 0, 12967.5, -6952.46, 8.90475, 5.7133, 600, 600, 0, 0, 6986, 0, 0, 0),
(129086, 24938, 530, 1, 1, 0, 0, 12975.6, -6941.31, 8.68564, 5.77704, 300, 300, 0, 0, 6986, 0, 0, 0),
(129001, 24938, 530, 1, 1, 0, 0, 12984.3, -6927.54, 10.3168, 5.55622, 600, 600, 0, 0, 6986, 0, 0, 0),
(129002, 24938, 530, 1, 1, 0, 0, 13004.2, -6915.63, 9.66653, 4.11268, 600, 600, 0, 0, 6986, 0, 0, 0);
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 24938);
INSERT INTO `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_pvp_state`, `emote`, `moveflags`, `auras`) VALUES
(128306, 0, 0, 0, 16, 0, 0, NULL), (128995, 0, 0, 0, 16, 0, 0, NULL), (128999, 0, 0, 0, 16, 0, 0, NULL), (128996, 0, 0, 0, 16, 0, 0, NULL);
DELETE FROM creature_movement WHERE id IN (SELECT guid FROM creature WHERE id = 24938);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `script_id`, `comment`) VALUES
(100264, 1, 12678.7, -6843.29, 12.6313, 0.707069, 8000, 2493801, NULL),
(100264, 2, 12678.7, -6843.29, 12.6313, 0.707069, 5000, 2493801, NULL),
(100264, 3, 12678.7, -6843.29, 12.6313, 0.707069, 15000, 2493801, NULL),
(100264, 4, 12678.7, -6843.29, 12.6313, 0.707069, 10000, 2493801, NULL),
(100267, 1, 12689.7, -6854.43, 12.6347, 0.734558, 15000, 2493801, NULL),
(100267, 2, 12689.7, -6854.43, 12.6347, 0.734558, 6000, 2493801, NULL),
(100267, 3, 12689.7, -6854.43, 12.6347, 0.734558, 10000, 2493801, NULL),
(100267, 4, 12689.7, -6854.43, 12.6347, 0.734558, 12000, 2493801, NULL),
(100265, 1, 12679.6, -6864.09, 12.5056, 3.89579, 1000, 2493801, NULL),
(100265, 2, 12679.6, -6864.09, 12.5056, 3.89579, 20000, 2493801, NULL),
(100265, 3, 12679.6, -6864.09, 12.5056, 3.89579, 15000, 2493801, NULL),
(100265, 4, 12679.6, -6864.09, 12.5056, 3.89579, 10000, 2493801, NULL),
(100261, 1, 12669, -6852.79, 12.5063, 3.89579, 10000, 2493801, NULL),
(100261, 2, 12669, -6852.79, 12.5063, 3.89579, 18000, 2493801, NULL),
(100261, 3, 12669, -6852.79, 12.5063, 3.89579, 5000, 2493801, NULL),
(100261, 4, 12669, -6852.79, 12.5063, 3.89579, 15000, 2493801, NULL),
(100260, 1, 12668.7, -6832.5, 12.633, 0.809175, 15000, 2493801, NULL),
(100260, 2, 12668.7, -6832.5, 12.633, 0.809175, 10000, 2493801, NULL),
(100260, 3, 12668.7, -6832.5, 12.633, 0.809175, 25000, 2493801, NULL),
(100260, 4, 12668.7, -6832.5, 12.633, 0.809175, 20000, 2493801, NULL),
(100259, 1, 12658.5, -6841.95, 12.5051, 3.96465, 30000, 2493801, NULL),
(100259, 2, 12658.5, -6841.95, 12.5051, 3.96465, 10000, 2493801, NULL),
(100259, 3, 12658.5, -6841.95, 12.5051, 3.96465, 6000, 2493801, NULL),
(100259, 4, 12658.5, -6841.95, 12.5051, 3.96465, 20000, 2493801, NULL),
(100268, 1, 12690, -6875.48, 12.503, 3.08279, 15000, 2493801, NULL),
(100268, 2, 12690, -6875.48, 12.503, 3.08279, 15000, 2493801, NULL),
(100268, 3, 12690, -6875.48, 12.503, 3.08279, 19000, 2493801, NULL),
(100268, 4, 12690, -6875.48, 12.503, 3.08279, 27000, 2493801, NULL),
(100271, 1, 12700.6, -6866.08, 12.6338, 0.742416, 23000, 2493801, NULL),
(100271, 2, 12700.6, -6866.08, 12.6338, 0.742416, 30000, 2493801, NULL),
(100271, 3, 12700.6, -6866.08, 12.6338, 0.742416, 7900, 2493801, NULL),
(100271, 4, 12700.6, -6866.08, 12.6338, 0.742416, 16000, 2493801, NULL),
(100253, 1, -1799.13, 5549.21, -12.4281, 100, 250, 2493802, NULL),
(100253, 2, -1786.3, 5503.25, -12.4281, 100, 0, 0, NULL),
(100253, 3, -1788.18, 5469.74, -12.4281, 100, 0, 0, NULL),
(100253, 4, -1822.23, 5450.82, -12.4281, 100, 0, 0, NULL),
(100253, 5, -1844.87, 5471.94, -12.4282, 100, 0, 0, NULL),
(100253, 6, -1840.02, 5499.12, -12.428, 100, 5000, 2511503, NULL),
(100254, 1, -1771.4, 5424.44, -12.4281, 100, 250, 2493802, NULL),
(100254, 2, -1780.13, 5458.5, -12.4281, 100, 0, 0, NULL),
(100254, 3, -1802.26, 5461.31, -12.4281, 100, 0, 0, NULL),
(100254, 4, -1826.47, 5454.01, -12.4283, 100, 0, 0, NULL),
(100254, 5, -1844.75, 5471, -12.4282, 100, 0, 0, NULL),
(100254, 6, -1840.07, 5498.43, -12.4281, 100, 5000, 2511503, NULL),
(100251, 1, -1958.15, 5418.13, -12.4281, 100, 250, 2493801, NULL),
(100251, 2, -1937.75, 5396.3, -12.4281, 100, 0, 0, NULL),
(100251, 3, -1903.02, 5412.98, -12.4282, 100, 0, 0, NULL),
(100251, 4, -1885.32, 5439.74, -12.4281, 100, 0, 0, NULL),
(100251, 5, -1856.43, 5471.17, -12.4281, 100, 0, 0, NULL),
(100251, 6, -1848.19, 5493.08, -12.4475, 100, 0, 0, NULL),
(100251, 7, -1841.45, 5499.37, -12.4281, 100, 5000, 2511503, NULL),
(100252, 1, -1941.15, 5487.12, -12.4281, 100, 250, 2493801, NULL),
(100252, 2, -1914.21, 5504.99, -12.4281, 100, 0, 0, NULL),
(100252, 3, -1896.75, 5495.92, -12.4281, 100, 0, 0, NULL),
(100252, 4, -1879.8, 5472.28, -12.4281, 100, 0, 0, NULL),
(100252, 5, -1853.05, 5469.34, -12.4281, 100, 0, 0, NULL),
(100252, 6, -1839.51, 5498.56, -12.4281, 100, 0, 0, NULL),
(100252, 7, -1839.51, 5498.56, -12.4281, 100, 5000, 2511503, NULL);
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(53677, 24975, 530, 1, 1, 0, 0, 12848.5, -7015.13, 18.676, 3.03687, 600, 600, 0, 0, 6986, 0, 0, 0);
DELETE FROM creature_movement WHERE id IN (SELECT guid FROM creature WHERE id = 24994);
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 24994);
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(74976, 24994, 530, 1, 1, 0, 0, 12848.6, -7040.74, 18.6604, 2.20449, 300, 300, 0, 0, 69860, 0, 0, 2),
(78646, 24994, 530, 1, 1, 0, 0, 12726.7, -6907.8, 12.2365, 2.34204, 300, 300, 0, 0, 69860, 0, 0, 2),
(78647, 24994, 530, 1, 1, 0, 0, 12898.8, -6844.92, 8.51518, 6.20194, 300, 300, 0, 0, 69860, 0, 0, 2),
(100221, 24994, 530, 1, 1, 0, 0, 12621.7, -6982.58, 17.6948, 4.55922, 300, 300, 0, 0, 69860, 0, 0, 2),
(100222, 24994, 530, 1, 1, 0, 0, 12716.5, -6971.41, 17.6263, 4.45397, 300, 300, 0, 0, 69860, 0, 0, 2),
(100223, 24994, 530, 1, 1, 0, 0, 12889.8, -6898.58, 7.3626, 3.9724, 300, 300, 0, 0, 69860, 0, 0, 2),
(100224, 24994, 530, 1, 1, 0, 0, 12902.6, -6935.12, 3.89913, 3.77508, 300, 300, 0, 0, 69860, 0, 0, 2),
(100225, 24994, 530, 1, 1, 0, 0, 12692.2, -7014.37, 20.9552, 3.29551, 300, 300, 0, 0, 69860, 0, 0, 2),
(100226, 24994, 530, 1, 1, 0, 0, 12977.9, -6894.77, 6.44292, 2.55629, 300, 300, 0, 0, 69860, 0, 0, 2),
(100227, 24994, 530, 1, 1, 0, 0, 12904.8, -6889.26, 7.64022, 4.27606, 300, 300, 0, 0, 69860, 0, 0, 0),
(100228, 24994, 530, 1, 1, 0, 0, 12901.2, -6859.62, 7.99634, 2.40855, 300, 300, 0, 0, 69860, 0, 0, 0),
(100229, 24994, 530, 1, 1, 0, 0, 12756.5, -6890.03, 12.352, 4.53786, 300, 300, 0, 0, 69860, 0, 0, 0),
(100230, 24994, 530, 1, 1, 0, 0, 12809, -6869.37, 12.5764, 0.785398, 300, 300, 0, 0, 69860, 0, 0, 0),
(100231, 24994, 530, 1, 1, 0, 0, 12782.7, -6875.73, 13.4716, 5.14872, 300, 300, 0, 0, 69860, 0, 0, 0),
(100232, 24994, 530, 1, 1, 0, 0, 12704, -6952.48, 15.6479, 1.18682, 300, 300, 0, 0, 69860, 0, 0, 0),
(100233, 24994, 530, 1, 1, 0, 0, 12646.2, -6983.71, 14.5843, 0.785398, 300, 300, 0, 0, 69860, 0, 0, 0),
(100234, 24994, 530, 1, 1, 0, 0, 12773.7, -6912.63, 12.3048, 3.28122, 300, 300, 0, 0, 69860, 0, 0, 0),
(128225, 24994, 530, 1, 1, 0, 0, 12674.2, -6956.31, 15.6375, 6.16101, 300, 300, 0, 0, 69860, 0, 0, 0),
(128259, 24994, 530, 1, 1, 0, 0, 12695.5, -6965.24, 36.2536, 2.61799, 300, 300, 0, 0, 69860, 0, 0, 0),
(128271, 24994, 530, 1, 1, 0, 0, 12798.2, -6996.15, 18.749, 1.78024, 300, 300, 0, 0, 69860, 0, 0, 0),
(128272, 24994, 530, 1, 1, 0, 0, 12838.7, -7014.98, 71.5165, 3.25614, 300, 300, 0, 0, 69860, 0, 0, 0),
(129003, 24994, 530, 1, 1, 0, 0, 12813.2, -7013.24, 71.5302, 6.18567, 300, 300, 0, 0, 69860, 0, 0, 0),
(129004, 24994, 530, 1, 1, 0, 0, 12811.7, -6984.27, 18.7572, 2.86234, 300, 300, 0, 0, 69860, 0, 0, 0),
(129005, 24994, 530, 1, 1, 0, 0, 12765.5, -7042.82, 8.45597, 5.16686, 300, 300, 0, 0, 69860, 0, 0, 2);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `script_id`, `comment`) VALUES
(100226, 1, 12977.9, -6894.77, 6.44292, 100, 0, 0, NULL),
(100226, 2, 12989.4, -6900.24, 7.81046, 100, 0, 0, NULL),
(100226, 3, 13001.7, -6908.32, 9.58319, 100, 0, 0, NULL),
(100226, 4, 13009.1, -6913.22, 9.58319, 100, 0, 0, NULL),
(100226, 5, 12989.4, -6900.24, 7.81046, 100, 0, 0, NULL),
(100226, 6, 12977.9, -6894.77, 6.44292, 100, 0, 0, NULL),
(100226, 7, 12966.5, -6894.15, 6.44292, 100, 0, 0, NULL),
(100226, 8, 12950.6, -6899.35, 5.42427, 100, 0, 0, NULL),
(100226, 9, 12933.3, -6914.02, 4.46976, 100, 0, 0, NULL),
(100226, 10, 12950.6, -6899.35, 5.42427, 100, 0, 0, NULL),
(100226, 11, 12966.5, -6894.15, 6.44292, 100, 0, 0, NULL),
(100225, 1, 12692.5, -7014.31, 20.9442, 100, 0, 0, NULL),
(100225, 2, 12662.1, -7015.82, 21.6439, 100, 0, 0, NULL),
(100224, 1, 12902.6, -6935.12, 3.89914, 3.77508, 0, 0, NULL),
(100224, 2, 12891.7, -6943.86, 3.84171, 3.97928, 0, 0, NULL),
(100224, 3, 12894.9, -6953.32, 3.41157, 5.03957, 0, 0, NULL),
(100224, 4, 12870.4, -6982.76, 3.27686, 4.23925, 0, 0, NULL),
(100224, 5, 12867.6, -7030.14, 3.29529, 4.05861, 0, 0, NULL),
(100224, 6, 12841.6, -7054.02, 3.29062, 3.76801, 0, 0, NULL),
(100224, 7, 12830, -7056.83, 3.28703, 3.28499, 0, 0, NULL),
(100224, 8, 12797, -7047.92, 3.65106, 3.79157, 0, 0, NULL),
(100224, 9, 12776.4, -7061.28, 4.82354, 4.28638, 0, 0, NULL),
(100224, 10, 12769.5, -7077.45, 6.26966, 4.83615, 0, 0, NULL),
(100224, 11, 12777.3, -7096.83, 6.21525, 5.10711, 0, 0, NULL),
(100224, 12, 12789.8, -7117.87, 5.41759, 5.382, 0, 0, NULL),
(100224, 13, 12789.8, -7117.87, 5.41759, 2.33858, 0, 0, NULL),
(100224, 14, 12773.9, -7097.35, 6.30494, 2.22077, 0, 0, NULL),
(100224, 15, 12772.6, -7078.14, 6.44247, 1.59245, 0, 0, NULL),
(100224, 16, 12783.5, -7058.63, 4.38109, 0.962564, 0, 0, NULL),
(100224, 17, 12796.1, -7052.62, 3.6789, 0.287122, 0, 0, NULL),
(100224, 18, 12835.5, -7057.43, 3.2826, 6.15797, 0, 0, NULL),
(100224, 19, 12855.5, -7044.08, 3.28763, 0.679822, 0, 0, NULL),
(100224, 20, 12868.8, -7000.27, 3.27994, 1.36862, 0, 0, NULL),
(100224, 21, 12873.7, -6979.97, 3.27539, 1.21939, 0, 0, NULL),
(100224, 22, 12903.1, -6947.58, 3.54187, 0.846326, 0, 0, NULL),
(100224, 23, 12903.7, -6934.46, 3.90939, 3.72874, 0, 0, NULL),
(100223, 1, 12889.8, -6898.58, 7.3626, 100, 0, 0, NULL),
(100223, 2, 12874.5, -6895.64, 8.4876, 100, 0, 0, NULL),
(100223, 3, 12864.5, -6880.37, 10.0514, 100, 0, 0, NULL),
(100223, 4, 12847.4, -6878.41, 11.9264, 100, 0, 0, NULL),
(100223, 5, 12817.9, -6901.53, 13.1104, 100, 0, 0, NULL),
(100223, 6, 12799, -6916.98, 13.6756, 100, 0, 0, NULL),
(100223, 7, 12817.9, -6901.53, 13.1104, 100, 0, 0, NULL),
(100223, 8, 12847.4, -6878.41, 11.9264, 100, 0, 0, NULL),
(100223, 9, 12864.5, -6880.37, 10.0514, 100, 0, 0, NULL),
(100223, 10, 12874.5, -6895.64, 8.4876, 100, 0, 0, NULL),
(100223, 11, 12904.8, -6889.55, 7.65374, 100, 0, 0, NULL),
(100222, 1, 12699.9, -7016.5, 20.7951, 4.37644, 0, 0, NULL),
(100222, 2, 12715.9, -6970.72, 17.5154, 4.57358, 0, 0, NULL),
(100221, 1, 12626.1, -6994.88, 19.2818, 100, 0, 0, NULL),
(100221, 2, 12634.2, -7003.26, 20.3436, 100, 0, 0, NULL),
(100221, 3, 12626.1, -6994.88, 19.2818, 100, 0, 0, NULL),
(100221, 4, 12621.7, -6982.58, 17.6948, 100, 0, 0, NULL),
(74976, 1, 12855.8, -7032.47, 18.9525, 1.10179, 0, 0, NULL),
(74976, 2, 12858.4, -7006.76, 25.2855, 1.87462, 0, 0, NULL),
(74976, 3, 12850.2, -6994.06, 32.3065, 2.2092, 0, 0, NULL),
(74976, 4, 12840.5, -6986.8, 38.0928, 2.79354, 0, 0, NULL),
(74976, 5, 12826.7, -6983.79, 43.9748, 3.01266, 0, 0, NULL),
(74976, 6, 12815.7, -6985.14, 47.3124, 3.56873, 0, 0, NULL),
(74976, 7, 12806.8, -6991.77, 47.6362, 5.35079, 0, 0, NULL),
(74976, 8, 12816, -7002.94, 47.4295, 5.45289, 0, 0, NULL),
(74976, 9, 12832.2, -7003.82, 47.4274, 6.22887, 0, 0, NULL),
(74976, 10, 12837, -7022.8, 47.4028, 4.76724, 0, 0, NULL),
(74976, 11, 12844, -7033.88, 47.8643, 2.18721, 0, 0, NULL),
(74976, 12, 12835.7, -7023.58, 47.4043, 2.24611, 0, 0, NULL),
(74976, 13, 12834.8, -7008.85, 47.4273, 1.7898, 0, 0, NULL),
(74976, 14, 12817, -7001.99, 47.4273, 2.80296, 0, 0, NULL),
(74976, 15, 12807, -6992.42, 47.6398, 1.02011, 0, 0, NULL),
(74976, 16, 12815.9, -6984.86, 47.1909, 0.556721, 0, 0, NULL),
(74976, 17, 12832.4, -6983.44, 41.6628, 6.21552, 0, 0, NULL),
(74976, 18, 12847.7, -6989.91, 34.3545, 5.79533, 0, 0, NULL),
(74976, 19, 12858.2, -7005.1, 25.8451, 5.189, 0, 0, NULL),
(74976, 20, 12858.1, -7022.35, 20.3098, 4.74604, 0, 0, NULL),
(74976, 21, 12848.7, -7041.35, 18.6506, 0.914868, 0, 0, NULL),
(78646, 1, 12658.9, -6837, 12.4553, 100, 0, 0, NULL),
(78646, 2, 12663.8, -6833.14, 12.5125, 100, 0, 0, NULL),
(78646, 3, 12705.2, -6877.14, 12.5111, 100, 0, 0, NULL),
(78646, 4, 12729, -6896.9, 12.3847, 100, 0, 0, NULL),
(78646, 5, 12748.5, -6905.11, 12.2757, 100, 0, 0, NULL),
(78646, 6, 12754.4, -6920.01, 12.2757, 100, 0, 0, NULL),
(78646, 7, 12738.9, -6928.88, 12.2757, 100, 0, 0, NULL),
(78646, 8, 12719, -6910.9, 12.297, 100, 0, 0, NULL),
(78646, 9, 12713.4, -6895.58, 12.4761, 100, 0, 0, NULL),
(78647, 1, 12898.8, -6844.92, 8.51518, 100, 0, 0, NULL),
(78647, 2, 12867.9, -6842.47, 8.89018, 100, 0, 0, NULL),
(78647, 3, 12852.4, -6828.56, 10.3166, 100, 0, 0, NULL),
(78647, 4, 12824.4, -6828.44, 11.6842, 100, 0, 0, NULL),
(78647, 5, 12792, -6836.24, 13.7123, 100, 0, 0, NULL),
(78647, 6, 12763.5, -6847.63, 14.2773, 100, 0, 0, NULL),
(78647, 7, 12753.2, -6854.44, 14.2773, 100, 0, 0, NULL),
(78647, 8, 12763.5, -6847.63, 14.2773, 100, 0, 0, NULL),
(78647, 9, 12792, -6836.24, 13.7123, 100, 0, 0, NULL),
(78647, 10, 12824.4, -6828.44, 11.6842, 100, 0, 0, NULL),
(78647, 11, 12852.4, -6828.56, 10.3166, 100, 0, 0, NULL),
(78647, 12, 12867.9, -6842.47, 8.89018, 100, 0, 0, NULL),
(129005, 1, 12765.5, -7042.82, 8.45597, 100, 0, 0, NULL),
(129005, 2, 12758.9, -7017.74, 9.99912, 100, 0, 0, NULL);
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(78648, 25115, 530, 1, 1, 0, 0, -1753.5, 5495.75, -12.3448, 3.78282, 30, 120, 0, 0, 10479, 0, 0, 2),
(99614, 25115, 530, 1, 1, 0, 0, -1955.07, 5432.4, -12.3448, 4.9826, 30, 120, 0, 0, 10479, 0, 0, 2),
(99617, 25115, 530, 1, 1, 0, 0, -1866.12, 5519.31, -12.3448, 3.35933, 30, 120, 0, 0, 10479, 0, 0, 2),
(99618, 25115, 530, 1, 1, 0, 0, -1983.31, 5491.89, -12.3448, 0.172585, 30, 120, 0, 0, 10479, 0, 0, 2),
(99619, 25115, 530, 1, 1, 0, 0, 12901.8, -6855.73, 8.189, 0.767945, 300, 300, 0, 0, 10479, 0, 0, 0),
(99620, 25115, 530, 1, 1, 0, 0, 12918.7, -6880.62, 7.78752, 0.837758, 300, 300, 0, 0, 10479, 0, 0, 0),
(99723, 25115, 530, 1, 1, 0, 0, 12918.5, -6876.58, 7.88787, 0.820305, 300, 300, 0, 0, 10479, 0, 0, 0),
(99724, 25115, 530, 1, 1, 0, 0, 12920.3, -6874.57, 7.91718, 0.802851, 300, 300, 0, 0, 10479, 0, 0, 0),
(100235, 25115, 530, 1, 1, 0, 0, 12922.5, -6880.45, 7.38162, 0.802851, 300, 300, 0, 0, 10479, 0, 0, 0),
(100236, 25115, 530, 1, 1, 0, 0, 12924.4, -6878.38, 7.49366, 0.767945, 300, 300, 0, 0, 10479, 0, 0, 0),
(100237, 25115, 530, 1, 1, 0, 0, 12971.1, -6900.08, 6.52626, 1.51844, 300, 300, 0, 0, 10479, 0, 0, 0),
(100238, 25115, 530, 1, 1, 0, 0, 12939.2, -6935.6, 4.08458, 2.42601, 300, 300, 0, 0, 10479, 0, 0, 0),
(100239, 25115, 530, 1, 1, 0, 0, 12942.3, -6930.73, 4.4039, 2.42601, 300, 300, 0, 0, 10479, 0, 0, 0),
(100240, 25115, 530, 1, 1, 0, 0, 12964.6, -6943.08, 8.72502, 3.97935, 300, 300, 0, 0, 10479, 0, 0, 0),
(100241, 25115, 530, 1, 1, 0, 0, 12950, -6959.23, 14.7144, 0.855211, 300, 300, 0, 0, 10479, 0, 0, 0),
(100242, 25115, 530, 1, 1, 0, 0, 12936.2, -6963.5, 19.088, 2.46091, 300, 300, 0, 0, 10479, 0, 0, 0),
(100243, 25115, 530, 1, 1, 0, 0, 12950.3, -6974.73, 19.1733, 5.5676, 300, 300, 0, 0, 10479, 0, 0, 0),
(100244, 25115, 530, 1, 1, 0, 0, 12927.3, -6932.6, 3.96455, 3.90954, 300, 300, 0, 0, 10479, 0, 0, 0),
(100245, 25115, 530, 1, 1, 0, 0, 12925.2, -6930.36, 3.96455, 3.89208, 300, 300, 0, 0, 10479, 0, 0, 0),
(100246, 25115, 530, 1, 1, 0, 0, 12923, -6927.71, 3.96455, 3.52556, 300, 300, 0, 0, 10479, 0, 0, 0),
(100247, 25115, 530, 1, 1, 0, 0, 12902, -6892.09, 7.44494, 3.76991, 300, 300, 0, 0, 10479, 0, 0, 0),
(100248, 25115, 530, 1, 1, 0, 0, 12769.6, -6902.48, 13.4747, 3.78736, 300, 300, 0, 0, 10479, 0, 0, 0),
(100249, 25115, 530, 1, 1, 0, 0, 12765.9, -6897.65, 13.4614, 3.68265, 300, 300, 0, 0, 10479, 0, 0, 0),
(100250, 25115, 530, 1, 1, 0, 0, 12695.8, -6945.02, 15.6408, 0.628318, 300, 300, 0, 0, 10479, 0, 0, 0),
(128144, 25115, 530, 1, 1, 0, 0, 12699.3, -6950.04, 15.6424, 0.628318, 300, 300, 0, 0, 10479, 0, 0, 0),
(128145, 25115, 530, 1, 1, 0, 0, 12664.1, -6967.37, 14.6473, 3.78736, 300, 300, 0, 0, 10479, 0, 0, 0),
(128146, 25115, 530, 1, 1, 0, 0, 12668.1, -6972.5, 14.6551, 3.80482, 300, 300, 0, 0, 10479, 0, 0, 0),
(128147, 25115, 530, 1, 1, 0, 0, 12750.8, -6925.88, 12.2379, 4.35963, 300, 300, 0, 0, 10479, 0, 0, 2),
(128148, 25115, 530, 1, 1, 0, 0, 12791.6, -7113.58, 5.49987, 3.80482, 300, 300, 0, 0, 10479, 0, 0, 0),
(128149, 25115, 530, 1, 1, 0, 0, 12795.1, -7117.65, 5.49987, 3.82227, 300, 300, 0, 0, 10479, 0, 0, 0),
(128216, 25115, 530, 1, 1, 0, 0, 12805, -7090.34, 7.67759, 5.49779, 300, 300, 0, 0, 10479, 0, 0, 0),
(129007, 25115, 530, 1, 1, 0, 0, 12807.1, -7087.84, 7.67579, 5.61996, 300, 300, 0, 0, 10479, 0, 0, 0),
(129008, 25115, 530, 1, 1, 0, 0, 12802.5, -7085.79, 5.86205, 5.42797, 300, 300, 0, 0, 10479, 0, 0, 0),
(129009, 25115, 530, 1, 1, 0, 0, 12791.6, -6983.64, 18.7799, 2.28638, 300, 300, 0, 0, 10479, 0, 0, 0),
(129010, 25115, 530, 1, 1, 0, 0, 12799, -6976.72, 18.7799, 2.26893, 300, 300, 0, 0, 10479, 0, 0, 0);
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 25115);
INSERT INTO `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_pvp_state`, `emote`, `moveflags`, `auras`) VALUES
(99619, 0, 0, 1, 16, 333, 0, NULL), (100244, 0, 0, 1, 16, 333, 0, NULL), (100245, 0, 0, 1, 16, 333, 0, NULL), (100246, 0, 0, 1, 16, 333, 0, NULL),
(100247, 0, 0, 1, 16, 333, 0, NULL), (128147, 19482, 0, 1, 16, 0, 0, NULL);
DELETE FROM creature_movement WHERE id IN (SELECT guid FROM creature WHERE id = 25115);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `script_id`, `comment`) VALUES
(78648, 1, -1753.56, 5495.54, -12.4281, 100, 250, 2511502, NULL),
(78648, 2, -1791.01, 5467.76, -12.4281, 100, 0, 0, NULL),
(78648, 3, -1825.64, 5453.07, -12.4282, 100, 0, 0, NULL),
(78648, 4, -1844.89, 5473.19, -12.4281, 100, 0, 0, NULL),
(78648, 5, -1840.24, 5498.82, -12.4281, 100, 5000, 2511503, NULL),
(99614, 1, -1954.96, 5432.12, -12.4281, 100, 250, 2511501, NULL),
(99614, 2, -1947.68, 5405.7, -12.4281, 100, 0, 0, NULL),
(99614, 3, -1928.35, 5396.7, -12.4281, 100, 0, 0, NULL),
(99614, 4, -1892.14, 5430.8, -12.4282, 100, 0, 0, NULL),
(99614, 5, -1865.26, 5463.53, -12.4281, 100, 0, 0, NULL),
(99614, 6, -1841.39, 5493.11, -12.4281, 100, 0, 0, NULL),
(99614, 7, -1840.05, 5499.26, -12.428, 100, 5000, 2511503, NULL),
(99617, 1, -1866.18, 5519.39, -12.4281, 100, 250, 2511502, NULL),
(99617, 2, -1889.29, 5514.19, -12.4281, 100, 0, 0, NULL),
(99617, 3, -1897.09, 5497.14, -12.4281, 100, 0, 0, NULL),
(99617, 4, -1876.34, 5471.4, -12.4281, 100, 0, 0, NULL),
(99617, 5, -1856.19, 5471.47, -12.4281, 100, 0, 0, NULL),
(99617, 6, -1845.27, 5496.98, -12.4569, 100, 0, 0, NULL),
(99617, 7, -1840.91, 5499.92, -12.428, 100, 5000, 2511503, NULL),
(99618, 1, -1983.33, 5492.03, -12.4281, 100, 250, 2511501, NULL),
(99618, 2, -1941.97, 5499.1, -12.4281, 100, 0, 0, NULL),
(99618, 3, -1905.15, 5501.05, -12.4281, 100, 0, 0, NULL),
(99618, 4, -1875.16, 5471.33, -12.4281, 100, 0, 0, NULL),
(99618, 5, -1853.28, 5475.17, -12.4281, 100, 0, 0, NULL),
(99618, 6, -1847.65, 5493.82, -12.4545, 100, 0, 0, NULL),
(99618, 7, -1841.89, 5499.54, -12.4281, 100, 5000, 2511503, NULL),
(128147, 1, 12742.3, -6958.21, 15.2337, 4.47744, 0, 0, NULL),
(128147, 2, 12736, -6984.64, 19.0822, 4.2536, 0, 0, NULL),
(128147, 3, 12714.9, -7029.29, 20.1284, 4.75154, 0, 0, NULL),
(128147, 4, 12731, -7174.66, 8.25184, 4.83401, 0, 0, NULL),
(128147, 5, 12729.5, -7182.24, 7.69132, 4.33528, 0, 0, NULL),
(128147, 6, 12723.7, -7190.36, 7.99292, 4.1405, 0, 0, NULL),
(128147, 7, 12727.2, -7194.55, 7.65928, 5.56207, 0, 0, NULL),
(128147, 8, 12736.1, -7192.57, 7.06488, 0.225288, 0, 0, NULL),
(128147, 9, 12738.3, -7183.29, 7.1643, 1.88483, 0, 0, NULL),
(128147, 10, 12719.8, -7083.67, 17.6816, 1.66492, 0, 0, NULL),
(128147, 11, 12715.1, -7029.22, 20.124, 1.17798, 0, 0, NULL),
(128147, 12, 12740.7, -6972.05, 17.9499, 1.5157, 0, 0, NULL),
(128147, 13, 12743.6, -6932.51, 12.2359, 2.0482, 0, 0, NULL),
(128147, 14, 12730.1, -6916.26, 12.2367, 1.5047, 0, 0, NULL),
(128147, 15, 12733.8, -6908.22, 12.2367, 0.874811, 0, 0, NULL),
(128147, 16, 12743.1, -6905.72, 12.2383, 0.179734, 0, 0, NULL),
(128147, 17, 12751.5, -6910.08, 12.2362, 5.4097, 0, 0, NULL),
(128147, 18, 12749.8, -6927.16, 12.2366, 4.48293, 0, 0, NULL);
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(99972, 25034, 530, 1, 1, 0, 0, 12791.3, -6874.64, 13.4723, 4.34587, 600, 600, 0, 0, 6986, 0, 0, 0),
(99970, 25035, 530, 1, 1, 0, 0, 12689.3, -6964.38, 15.6375, 2.30383, 600, 600, 0, 0, 6986, 0, 0, 0),
(58068, 25036, 530, 1, 1, 0, 0, 12817, -7004.86, 18.6762, 2.30383, 600, 600, 0, 0, 6986, 0, 0, 0),
(57804, 25037, 530, 1, 1, 0, 0, 12782, -6975.56, 15.6956, 1.67552, 600, 600, 0, 0, 5589, 3155, 0, 0),
(61663, 25039, 530, 1, 1, 0, 0, 12846.2, -7005.78, 18.676, 3.54302, 600, 600, 0, 0, 4890, 7196, 0, 0),
(57759, 25043, 530, 1, 1, 0, 0, 12806.4, -7032.14, 20.3157, 0.890118, 600, 600, 0, 0, 5589, 3155, 0, 0),
(58017, 25045, 530, 1, 1, 0, 0, 12782.3, -6983.42, 15.7889, 2.35551, 600, 600, 3, 0, 6986, 0, 0, 1),
(99960, 25046, 530, 1, 1, 0, 0, 12664.2, -6984.87, 14.5843, 4.79965, 600, 600, 0, 0, 6986, 0, 0, 0),
(99973, 25057, 530, 1, 1, 0, 0, 12790.6, -6883.06, 13.4727, 3.76991, 600, 600, 0, 0, 6986, 0, 0, 0),
(99974, 25061, 530, 1, 1, 0, 0, 12790.8, -6887.28, 13.4727, 2.72271, 600, 600, 0, 0, 35640, 3155, 0, 0),
(53678, 25088, 530, 1, 1, 0, 0, 12808.5, -7090.86, 7.36832, 5.53269, 600, 600, 0, 0, 6986, 0, 0, 0),
(99969, 25108, 530, 1, 1, 0, 0, 12703.4, -6984.77, 25.685, 5.81195, 600, 600, 0, 0, 35640, 3155, 0, 0),
(31054, 25112, 530, 1, 1, 0, 0, 12731.3, -6918.45, 12.2456, 3.26546, 600, 600, 0, 0, 6986, 0, 0, 2),
(99971, 25133, 530, 1, 1, 0, 0, 12784.4, -6882.12, 13.4727, 5.20108, 600, 600, 0, 0, 6986, 0, 0, 0),
(52375, 25163, 530, 1, 1, 0, 0, 12833.9, -7004.91, 71.6116, 3.63029, 600, 600, 0, 0, 5589, 3155, 0, 0),
(80775, 25174, 530, 1, 1, 0, 0, 12800.2, -6986.23, 47.676, 1.97222, 600, 600, 0, 0, 7380, 0, 0, 0),
(57756, 25950, 530, 1, 1, 0, 0, 12846.9, -7016.49, 18.676, 0.785398, 600, 600, 0, 0, 6986, 0, 0, 0),
(99964, 26089, 530, 1, 1, 0, 0, 12686.7, -6972.25, 36.3364, 1.85005, 180, 180, 0, 0, 4890, 7196, 0, 0),
(99968, 26090, 530, 1, 1, 0, 0, 12669.3, -6955.07, 36.3366, 6.21337, 180, 180, 0, 0, 4890, 7196, 0, 0),
(99965, 26091, 530, 1, 1, 0, 0, 12679, -6973, 36.3367, 1.74533, 180, 180, 0, 0, 4890, 7196, 0, 0),
(99966, 26092, 530, 1, 1, 0, 0, 12687.4, -6942.77, 36.3366, 4.67748, 180, 180, 0, 0, 4890, 7196, 0, 0),
(99963, 26253, 530, 1, 1, 0, 0, 12683, -6957.72, 15.5545, 0.582321, 600, 600, 0, 0, 69860, 0, 0, 2),
(99961, 26253, 530, 1, 1, 0, 0, 12772.8, -6896.06, 32.024, 3.80482, 300, 300, 0, 0, 69860, 0, 0, 0),
(54391, 27666, 530, 1, 1, 0, 0, -1829.88, 5500.44, -12.3448, 3.71755, 25, 25, 0, 0, 6986, 0, 0, 0),
(78827, 27667, 530, 1, 1, 0, 0, -1847.71, 5506.61, -12.3447, 5.06145, 300, 300, 0, 0, 6986, 0, 0, 0);
DELETE FROM `creature` WHERE `guid` = 99962;
INSERT INTO `game_event_creature` (`guid`, `event`) VALUES
(78827, 309), (100309, 303), (99618, 305), (99617, 305), (99614, 305), (78648, 305), (100252, 305), (100251, 305), (100254, 305), (100253, 305), (26216, 305), (26309, 305),
(25759, 305), (26185, 305), (26223, 305), (26332, 305), (25763, 305), (26209, 305), (26276, 305), (26334, 305), (100275, 303), (100276, 303), (100277, 303), (100282, 303),
(100280, 303), (100287, 303), (100289, 303), (100293, 303), (100292, 303), (100290, 303), (100291, 303), (100286, 303), (100281, 303), (100278, 303), (100279, 303),
(100262, 307), (100256, 307), (100255, 307), (100257, 307), (100258, 307), (100270, 307), (100273, 307), (100274, 307), (100272, 307), (100269, 307), (100266, 307),
(100264, 310), (100267, 310), (100265, 310), (100261, 310), (100260, 310), (100259, 310), (100268, 310), (100271, 310), (128265, 310), (100299, 310), (128264, 310),
(128269, 310), (128270, 310), (129006, 310), (128263, 310), (128267, 310), (128268, 310), (100297, 310), (100288, 310), (100285, 310), (100283, 310), (100284, 310),
(128266, 310), (128262, 310), (111486, 310), (100295, 310), (128260, 310), (128261, 310), (100298, 310), (111492, 310), (100296, 310), (100294, 310), (100263, 307),
(53677, 310), (74976, 310), (78646, 310), (78647, 303), (100221, 307), (100222, 307), (100223, 303), (100224, 310), (100225, 307), (100229, 303), (100230, 303), (100231, 303),
(100232, 307), (100233, 307), (100234, 303), (128225, 307), (128259, 307), (128271, 310), (128272, 310), (129003, 310), (129004, 310), (99972, 303), (99970, 307),
(58068, 310), (57804, 310), (61663, 310), (57759, 310), (58017, 310), (99960, 307), (99973, 303), (99974, 303), (53678, 310), (99969, 307), (31054, 310), (100248, 303),
(100249, 303), (100250, 307), (128144, 307), (128145, 307), (128146, 307), (128147, 307), (128148, 310), (128149, 310), (128216, 310), (129007, 310), (129008, 310),
(99971, 303), (52375, 310), (80775, 315), (57756, 310), (99964, 307), (99968, 307), (99965, 307), (99966, 307), (99963, 307), (129005, 310), (129009, 310), (129010, 310), (54391, 314);
REPLACE INTO creature_template_addon(entry, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES ('25063', '22860', '0', '0', '0', '0', '33555456', '45187');
DELETE FROM dbscripts_on_creature_movement WHERE id IN (2511501,2511502,2493801,2493802,2511503);
INSERT INTO dbscripts_on_creature_movement (id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, condition_id, comments) VALUES
(2511501, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Shattered Sun Warrior - Run on'),
(2511501, 0, 0, 45, 0, 2511500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Shattered Sun Warrior - Random Transform (Blood Elf)'),
(2511502, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Shattered Sun Warrior - Run on'),
(2511502, 0, 0, 45, 0, 2511501, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Shattered Sun Warrior - Random Transform (Draenei)'),
(2493801, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Shattered Sun Marksman - Run on'),
(2493801, 0, 0, 45, 0, 2493800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Shattered Sun Marksman - Random Transform (Blood Elf)'),
(2493802, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Shattered Sun Marksman - Run on'),
(2493802, 0, 0, 45, 0, 2493801, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Shattered Sun Marksman - Random Transform (Draenei)'),
(2511503, 0, 0, 36, 0, 0, 0, 24928, 10, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Shattered Sun Warrior/Marksman - Face 24928 Sunwell Daily Bunny x 1.00'),
(2511503, 0, 1, 15, 34427, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Shattered Sun Warrior/Marksman - Cast Ethereal Teleport'),
(2511503, 0, 2, 1, 69, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Shattered Sun Warrior/Marksman - Set Emote State 69'),
(2511503, 0, 3, 18, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Shattered Sun Warrior/Marksman - Despawn self after 1 second');
UPDATE creature_template SET EquipmentTemplateId=0 WHERE Entry=24938;
DELETE FROM dbscript_random_templates WHERE id IN (2493800,2493801);
INSERT INTO dbscript_random_templates (id, `type`, target_id, chance, comments) VALUES
(2493800, 1, 2493801, 0, 'Shattered Sun Marksman - BE Female'),
(2493800, 1, 2493802, 0, 'Shattered Sun Marksman - BE Male'),
(2493801, 1, 2493803, 0, 'Shattered Sun Marksman - Draenei Female'),
(2493801, 1, 2493804, 0, 'Shattered Sun Marksman - Draenei Male');
DELETE FROM creature_equip_template WHERE entry IN (24963,24939,24940,24941);
INSERT INTO creature_equip_template (entry, equipentry1, equipentry2, equipentry3) VALUES
(24963,23382,0,34263), (24939,23382,0,34263), (24940,23382,0,34263), (24941,34301,0,34277);
UPDATE creature_template SET EquipmentTemplateId=24963 WHERE Entry=24963;
UPDATE creature_template SET EquipmentTemplateId=24939 WHERE Entry=24939;
UPDATE creature_template SET EquipmentTemplateId=24940 WHERE Entry=24940;
UPDATE creature_template SET EquipmentTemplateId=24941 WHERE Entry=24941;
UPDATE creature_template SET EquipmentTemplateId=24963 WHERE Entry=24942;
UPDATE creature_template SET EquipmentTemplateId=24939 WHERE Entry=24943;
UPDATE creature_template SET EquipmentTemplateId=24940 WHERE Entry=24944;
UPDATE creature_template SET EquipmentTemplateId=24941 WHERE Entry=24945;
DELETE FROM creature_equip_template WHERE entry IN (24946,24947,24948,24949);
INSERT INTO creature_equip_template (entry, equipentry1, equipentry2, equipentry3) VALUES
(24946,29671,0,30580), (24947,30408,0,34322), (24948,30408,0,34322), (24949,28488,0,34326);
UPDATE creature_template SET EquipmentTemplateId=24946 WHERE Entry=24946;
UPDATE creature_template SET EquipmentTemplateId=24947 WHERE Entry=24947;
UPDATE creature_template SET EquipmentTemplateId=24948 WHERE Entry=24948;
UPDATE creature_template SET EquipmentTemplateId=24949 WHERE Entry=24949;
UPDATE creature_template SET EquipmentTemplateId=24946 WHERE Entry=24950;
UPDATE creature_template SET EquipmentTemplateId=24947 WHERE Entry=24951;
UPDATE creature_template SET EquipmentTemplateId=24948 WHERE Entry=24952;
UPDATE creature_template SET EquipmentTemplateId=24949 WHERE Entry=24953;
DELETE FROM dbscripts_on_relay WHERE id IN (2493801,2493802,2493803,2493804);
INSERT INTO dbscripts_on_relay (id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, condition_id, comments) VALUES
(2493801, 0, 0, 15, 44962, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11012, 'Shattered Sun Marksman - Cast Archer - BE Male Transform Tier 1'),
(2493801, 0, 0, 15, 44918, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11013, 'Shattered Sun Marksman - Cast Archer - BE Male Transform Tier 2'),
(2493801, 0, 0, 15, 44919, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11014, 'Shattered Sun Marksman - Cast Archer - BE Male Transform Tier 3'),
(2493801, 0, 0, 15, 44920, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11015, 'Shattered Sun Marksman - Cast Archer - BE Male Transform Tier 4'),
(2493802, 0, 0, 15, 44921, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11012, 'Shattered Sun Marksman - Cast Archer - BE Female Transform Tier 1'),
(2493802, 0, 0, 15, 44922, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11013, 'Shattered Sun Marksman - Cast Archer - BE Female Transform Tier 2'),
(2493802, 0, 0, 15, 44923, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11014, 'Shattered Sun Marksman - Cast Archer - BE Female Transform Tier 3'),
(2493802, 0, 0, 15, 44924, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11015, 'Shattered Sun Marksman - Cast Archer - BE Female Transform Tier 4'),
(2493803, 0, 0, 15, 44925, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11012, 'Shattered Sun Marksman - Cast Archer - Draenei Male Transform Tier 1'),
(2493803, 0, 0, 15, 44926, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11013, 'Shattered Sun Marksman - Cast Archer - Draenei Male Transform Tier 2'),
(2493803, 0, 0, 15, 44927, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11014, 'Shattered Sun Marksman - Cast Archer - Draenei Male Transform Tier 3'),
(2493803, 0, 0, 15, 44928, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11015, 'Shattered Sun Marksman - Cast Archer - Draenei Male Transform Tier 4'),
(2493804, 0, 0, 15, 44929, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11012, 'Shattered Sun Marksman - Cast Archer - Draenei Female Transform Tier 1'),
(2493804, 0, 0, 15, 44930, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11013, 'Shattered Sun Marksman - Cast Archer - Draenei Female Transform Tier 2'),
(2493804, 0, 0, 15, 44931, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11014, 'Shattered Sun Marksman - Cast Archer - Draenei Female Transform Tier 3'),
(2493804, 0, 0, 15, 44932, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11015, 'Shattered Sun Marksman - Cast Archer - Draenei Female Transform Tier 4');
UPDATE creature_template SET EquipmentTemplateId=0 WHERE Entry=25115; -- 55396
DELETE FROM dbscript_random_templates WHERE id IN (2511500,2511501);
INSERT INTO dbscript_random_templates (id, `type`, target_id, chance, comments) VALUES
(2511500, 1, 2511501, 0, 'Shattered Sun Warrior - BE Female'),
(2511500, 1, 2511502, 0, 'Shattered Sun Warrior - BE Male'),
(2511501, 1, 2511503, 0, 'Shattered Sun Warrior - Draenei Female'),
(2511501, 1, 2511504, 0, 'Shattered Sun Warrior - Draenei Male');
DELETE FROM creature_equip_template WHERE entry IN (25116,25117,25118,25119);
INSERT INTO creature_equip_template (entry, equipentry1, equipentry2, equipentry3) VALUES
(25116,24320,24322,0), (25117,23225,24322,0), (25118,23225,24322,0), (25119,34596,34590,0);
UPDATE creature_template SET EquipmentTemplateId=25116 WHERE Entry=25116;
UPDATE creature_template SET EquipmentTemplateId=25117 WHERE Entry=25117;
UPDATE creature_template SET EquipmentTemplateId=25118 WHERE Entry=25118;
UPDATE creature_template SET EquipmentTemplateId=25119 WHERE Entry=25119;
UPDATE creature_template SET EquipmentTemplateId=25116 WHERE Entry=25120;
UPDATE creature_template SET EquipmentTemplateId=25117 WHERE Entry=25121;
UPDATE creature_template SET EquipmentTemplateId=25118 WHERE Entry=25122;
UPDATE creature_template SET EquipmentTemplateId=25119 WHERE Entry=25123;
DELETE FROM creature_equip_template WHERE entry IN (25124,25125,25126,25127);
INSERT INTO creature_equip_template (entry, equipentry1, equipentry2, equipentry3) VALUES
(25124,30408,23907,0), (25125,30408,23907,0), (25126,30408,23907,0), (25127,31743,34588,0);
UPDATE creature_template SET EquipmentTemplateId=25124 WHERE Entry=25124;
UPDATE creature_template SET EquipmentTemplateId=25125 WHERE Entry=25125;
UPDATE creature_template SET EquipmentTemplateId=25126 WHERE Entry=25126;
UPDATE creature_template SET EquipmentTemplateId=25127 WHERE Entry=25127;
UPDATE creature_template SET EquipmentTemplateId=25124 WHERE Entry=25128;
UPDATE creature_template SET EquipmentTemplateId=25125 WHERE Entry=25129;
UPDATE creature_template SET EquipmentTemplateId=25126 WHERE Entry=25130;
UPDATE creature_template SET EquipmentTemplateId=25127 WHERE Entry=25131;
DELETE FROM dbscripts_on_relay WHERE id IN (2511501,2511502,2511503,2511504);
INSERT INTO dbscripts_on_relay (id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, condition_id, comments) VALUES
(2511501, 0, 0, 15, 45155, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11012, 'Shattered Sun Warrior - Cast Warrior - BE Female Transform Tier 1'),
(2511501, 0, 0, 15, 45156, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11013, 'Shattered Sun Warrior - Cast Warrior - BE Female Transform Tier 2'),
(2511501, 0, 0, 15, 45157, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11014, 'Shattered Sun Warrior - Cast Warrior - BE Female Transform Tier 3'),
(2511501, 0, 0, 15, 45158, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11015, 'Shattered Sun Warrior - Cast Warrior - BE Female Transform Tier 4'),
(2511502, 0, 0, 15, 45159, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11012, 'Shattered Sun Warrior - Cast Warrior - BE Male Transform Tier 1'),
(2511502, 0, 0, 15, 45160, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11013, 'Shattered Sun Warrior - Cast Warrior - BE Male Transform Tier 2'),
(2511502, 0, 0, 15, 45161, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11014, 'Shattered Sun Warrior - Cast Warrior - BE Male Transform Tier 3'),
(2511502, 0, 0, 15, 45162, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11015, 'Shattered Sun Warrior - Cast Warrior - BE Male Transform Tier 4'),
(2511503, 0, 0, 15, 45163, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11012, 'Shattered Sun Warrior - Cast Warrior - Draenei Female Transform Tier 1'),
(2511503, 0, 0, 15, 45164, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11013, 'Shattered Sun Warrior - Cast Warrior - Draenei Female Transform Tier 2'),
(2511503, 0, 0, 15, 45165, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11014, 'Shattered Sun Warrior - Cast Warrior - Draenei Female Transform Tier 3'),
(2511503, 0, 0, 15, 45166, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11015, 'Shattered Sun Warrior - Cast Warrior - Draenei Female Transform Tier 4'),
(2511504, 0, 0, 15, 45167, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11012, 'Shattered Sun Warrior - Cast Warrior - Draenei Male Transform Tier 1'),
(2511504, 0, 0, 15, 45168, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11013, 'Shattered Sun Warrior - Cast Warrior - Draenei Male Transform Tier 2'),
(2511504, 0, 0, 15, 45169, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11014, 'Shattered Sun Warrior - Cast Warrior - Draenei Male Transform Tier 3'),
(2511504, 0, 0, 15, 45170, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11015, 'Shattered Sun Warrior - Cast Warrior - Draenei Male Transform Tier 4');
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(78649, 24976, 530, 1, 1, 0, 0, 12697.7, -6701.15, 3.8525, 2.80385, 300, 300, 0, 0, 5589, 3155, 0, 2),
(100476, 24976, 530, 1, 1, 0, 0, 12691.8, -6648.18, 4.38754, 6.19757, 300, 300, 0, 0, 5589, 3155, 0, 2),
(100477, 24976, 530, 1, 1, 0, 0, 12689.2, -6627.58, 4.6838, 6.2007, 300, 300, 0, 0, 5589, 3155, 0, 2),
(100478, 24976, 530, 1, 1, 0, 0, 12744.9, -6787.73, 5.42303, 1.4628, 300, 300, 0, 0, 5589, 3155, 0, 2),
(100479, 24976, 530, 1, 1, 0, 0, 12661.9, -6631.86, 22.9853, 0.0872665, 300, 300, 0, 0, 5589, 3155, 0, 2),
(100480, 24976, 530, 1, 1, 0, 0, 12627.5, -6697.85, 7.32498, 6.07375, 300, 300, 0, 0, 5589, 3155, 0, 0),
(100481, 24976, 530, 1, 1, 0, 0, 12670, -6685.14, 4.95178, 4.57276, 300, 300, 0, 0, 5589, 3155, 0, 0),
(100482, 24976, 530, 1, 1, 0, 0, 12668.7, -6688.6, 4.9818, 1.20123, 300, 300, 0, 0, 5589, 3155, 0, 0),
(100483, 24976, 530, 1, 1, 0, 0, 12686.9, -6698.5, 4.01179, 1.5708, 300, 300, 0, 0, 5589, 3155, 0, 0),
(100484, 24976, 530, 1, 1, 0, 0, 12687.3, -6694.73, 4.07639, 4.76475, 300, 300, 0, 0, 5589, 3155, 0, 0),
(100485, 24976, 530, 1, 1, 0, 0, 12699.7, -6682.66, 2.48292, 4.60595, 300, 300, 0, 0, 5589, 3155, 0, 0),
(100486, 24976, 530, 1, 1, 0, 0, 12699.2, -6686.21, 3.26925, 1.44805, 300, 300, 0, 0, 5589, 3155, 0, 0),
(100487, 24976, 530, 1, 1, 0, 0, 12681.4, -6647.21, 7.11492, 5.28835, 300, 300, 0, 0, 5589, 3155, 0, 0),
(100488, 24976, 530, 1, 1, 0, 0, 12669.3, -6650.67, 7.11435, 5.49779, 300, 300, 0, 0, 5589, 3155, 0, 0),
(100489, 24976, 530, 1, 1, 0, 0, 12770.8, -6674.55, 2.2712, 3.33358, 300, 300, 0, 0, 5589, 3155, 0, 0),
(100490, 24976, 530, 1, 1, 0, 0, 12806, -6674.04, 3.01084, 3.71755, 300, 300, 0, 0, 5589, 3155, 0, 0),
(100491, 24976, 530, 1, 1, 0, 0, 12816.4, -6697.17, 3.00373, 3.40339, 300, 300, 0, 0, 5589, 3155, 0, 0),
(100492, 24976, 530, 1, 1, 0, 0, 12795.4, -6723.34, 2.27389, 3.54302, 300, 300, 0, 0, 5589, 3155, 0, 0),
(100493, 24976, 530, 1, 1, 0, 0, 12780.4, -6729.25, 2.26271, 0.0872665, 300, 300, 0, 0, 5589, 3155, 0, 0),
(100494, 24976, 530, 1, 1, 0, 0, 12811.4, -6748.32, 0.492534, 3.85718, 300, 300, 0, 0, 5589, 3155, 0, 0),
(100495, 24976, 530, 1, 1, 0, 0, 12760.9, -6726.12, 2.80748, 3.28122, 300, 300, 0, 0, 5589, 3155, 0, 0),
(100496, 24976, 530, 1, 1, 0, 0, 12748.7, -6698.29, 2.80657, 3.64774, 300, 300, 0, 0, 5589, 3155, 0, 0),
(100497, 24976, 530, 1, 1, 0, 0, 12712.9, -6778.41, 7.08046, 1.1397, 300, 300, 0, 0, 5589, 3155, 0, 0),
(100498, 24976, 530, 1, 1, 0, 0, 12724.3, -6798.02, 7.16412, 5.58505, 300, 300, 0, 0, 5589, 3155, 0, 0),
(100499, 24976, 530, 1, 1, 0, 0, 12701, -6807.38, 7.1637, 4.66003, 300, 300, 0, 0, 5589, 3155, 0, 0),
(100500, 24976, 530, 1, 1, 0, 0, 12694.5, -6790.08, 7.08134, 2.85578, 300, 300, 0, 0, 5589, 3155, 0, 0),
(100501, 24976, 530, 1, 1, 0, 0, 12873.4, -6957.67, 3.93168, 1.5708, 300, 300, 0, 0, 5589, 3155, 0, 0),
(129041, 24976, 530, 1, 1, 0, 0, 12874.6, -6958.59, 3.95314, 0.523599, 300, 300, 0, 0, 5589, 3155, 0, 0),
(129042, 24976, 530, 1, 1, 0, 0, 12845.6, -7014.43, 71.2897, 0.680678, 300, 300, 0, 0, 5589, 3155, 0, 0),
(129043, 24976, 530, 1, 1, 0, 0, 12826.6, -7030.55, 71.5751, 1.90241, 300, 300, 0, 0, 5589, 3155, 0, 0),
(129044, 24976, 530, 1, 1, 0, 0, 12833.4, -6993.61, 71.2063, 1.72788, 300, 300, 0, 0, 5589, 3155, 0, 0),
(129045, 24976, 530, 1, 1, 0, 0, 12817.8, -6999.29, 71.3423, -2.79319, 300, 300, 0, 0, 5589, 3155, 0, 0),
(129046, 24976, 530, 1, 1, 0, 0, 12850.8, -7035.56, 47.8625, 2.93215, 300, 300, 0, 0, 5589, 3155, 0, 0),
(129047, 24976, 530, 1, 1, 0, 0, 12852.3, -7051.71, 19.0403, 2.07261, 300, 300, 0, 0, 5589, 3155, 0, 0),
(129048, 24976, 530, 1, 1, 0, 0, 12846.6, -7008.54, 18.5935, 3.0897, 300, 300, 0, 0, 5589, 3155, 0, 0),
(129049, 24976, 530, 1, 1, 0, 0, 12811.5, -6989.04, 18.7212, 2.60054, 300, 300, 0, 0, 5589, 3155, 0, 0),
(129050, 24976, 530, 1, 1, 0, 0, 12801.7, -6997.03, 18.72, 2.00713, 300, 300, 0, 0, 5589, 3155, 0, 0),
(129051, 24976, 530, 1, 1, 0, 0, 12869.5, -7019.96, 3.27958, 5.46985, 300, 300, 0, 0, 5589, 3155, 0, 0),
(129269, 24976, 530, 1, 1, 0, 0, 12871.3, -7022.19, 3.27772, 5.56648, 300, 300, 0, 0, 5589, 3155, 0, 0),
(129270, 24976, 530, 1, 1, 0, 0, 12872, -7018.46, 3.27428, 6.13915, 300, 300, 0, 0, 5589, 3155, 0, 0),
(129273, 24976, 530, 1, 1, 0, 0, 12837.9, -7049.54, 3.39801, 5.55015, 300, 300, 0, 0, 5589, 3155, 0, 0),
(129274, 24976, 530, 1, 1, 0, 0, 12748.5, -7066.3, 7.47853, 6.0912, 300, 300, 0, 0, 5589, 3155, 0, 0),
(129275, 24976, 530, 1, 1, 0, 0, 12887.3, -6924.37, 3.89235, 0.154881, 300, 300, 0, 0, 5589, 3155, 0, 0),
(129276, 24976, 530, 1, 1, 0, 0, 12869.5, -6986.85, 3.26967, 1.50282, 300, 300, 0, 0, 5589, 3155, 0, 0),
(129328, 24976, 530, 1, 1, 0, 0, 12756.2, -7139.58, 3.4625, 2.25597, 300, 300, 3, 0, 5589, 3155, 0, 1),
(129329, 24976, 530, 1, 1, 0, 0, 12787.1, -7032.42, 11.8144, 0.174187, 300, 300, 5, 0, 5589, 3155, 0, 1),
(129330, 24976, 530, 1, 1, 0, 0, 12736.8, -6890.8, 12.4087, 5.41635, 300, 300, 5, 0, 5589, 3155, 0, 1),
(129331, 24976, 530, 1, 1, 0, 0, 12755.9, -6937.71, 12.4856, 3.49235, 300, 300, 5, 0, 5589, 3155, 0, 1),
(129332, 24976, 530, 1, 1, 0, 0, 12821.9, -6919.13, 11.73, 1.27153, 300, 300, 5, 0, 5589, 3155, 0, 1);
DELETE FROM creature_movement WHERE id IN (SELECT guid FROM creature WHERE id = 24976);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `script_id`, `comment`) VALUES
(100479, 1, 12661.9, -6631.86, 22.9853, 0.0872665, 10, 1273, NULL),
(100479, 2, 12661.9, -6631.86, 22.9853, 0.0872665, 15000, 1006, NULL),
(100479, 3, 12661.9, -6631.86, 22.9853, 0.0872665, 16000, 1001, NULL),
(100479, 4, 12661.9, -6631.86, 22.9853, 0.0872665, 13000, 1006, NULL),
(100479, 5, 12661.9, -6631.86, 22.9853, 0.0872665, 17000, 1001, NULL),
(100478, 1, 12744.7, -6742.67, 0.374358, 1.9851, 0, 0, NULL),
(100478, 2, 12733.5, -6709.04, 0.147765, 2.041, 0, 0, NULL),
(100478, 3, 12717.7, -6671.36, -0.073843, 2.88045, 0, 0, NULL),
(100478, 4, 12687.5, -6667.27, 3.88784, 3.17105, 0, 0, NULL),
(100478, 5, 12663.5, -6669.88, 4.54454, 3.13178, 0, 0, NULL),
(100478, 6, 12651.9, -6675.38, 4.57013, 4.28238, 0, 0, NULL),
(100478, 7, 12655.5, -6727.74, 4.57296, 4.89107, 0, 0, NULL),
(100478, 8, 12678.6, -6776.74, 4.59928, 5.13846, 0, 0, NULL),
(100478, 9, 12700.4, -6768.35, 4.62427, 0.55488, 0, 0, NULL),
(100478, 10, 12719.8, -6770.86, 5.34093, 5.96628, 0, 0, NULL),
(100478, 11, 12737, -6793.05, 5.42356, 5.25942, 0, 0, NULL),
(100478, 12, 12745, -6780.58, 5.42392, 1.39919, 0, 0, NULL),
(100477, 1, 12690.7, -6635.47, 4.71367, 0.149487, 5000, 2497601, NULL),
(100477, 2, 12734.2, -6630.01, 2.51197, 0.022253, 10, 2497602, NULL),
(100477, 3, 12737.7, -6629.93, 2.2892, 0.022253, 0, 0, NULL),
(100477, 4, 12737.2, -6632.37, 2.10811, 4.57128, 0, 0, NULL),
(100477, 5, 12688.5, -6639.19, 4.75524, 3.45287, 0, 0, NULL),
(100476, 1, 12691.8, -6648.18, 4.38754, 0.008632, 5000, 2497601, NULL),
(100476, 2, 12732.6, -6647.13, 1.11172, 0.032194, 10, 2497602, NULL),
(100476, 3, 12735.9, -6647.03, 0.809907, 0.032194, 0, 0, NULL),
(100476, 4, 12735.6, -6643.55, 1.20219, 1.64383, 0, 0, NULL),
(100476, 5, 12692.5, -6646.35, 4.42185, 3.21384, 0, 0, NULL),
(78649, 1, 12697.7, -6701.15, 3.8525, 100, 0, 0, NULL),
(78649, 2, 12694.6, -6693.58, 3.96451, 100, 0, 0, NULL),
(78649, 3, 12689.5, -6687.11, 3.96451, 100, 0, 0, NULL),
(78649, 4, 12679.5, -6687.38, 4.46451, 100, 0, 0, NULL),
(78649, 5, 12674.1, -6695.42, 4.83951, 100, 0, 0, NULL),
(78649, 6, 12671.2, -6702.62, 5.03848, 100, 0, 0, NULL),
(78649, 7, 12674.1, -6695.42, 4.83951, 100, 0, 0, NULL),
(78649, 8, 12679.5, -6687.38, 4.46451, 100, 0, 0, NULL),
(78649, 9, 12689.5, -6687.11, 3.96451, 100, 0, 0, NULL),
(78649, 10, 12694.6, -6693.58, 3.96451, 100, 0, 0, NULL);
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 24976);
INSERT INTO `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_pvp_state`, `emote`, `moveflags`, `auras`) VALUES
(100484, 0, 0, 1, 16, 36, 0, NULL), (100485, 0, 0, 1, 16, 36, 0, NULL), (100486, 0, 0, 1, 16, 36, 0, NULL), (100483, 0, 0, 1, 16, 36, 0, NULL), (100482, 0, 0, 1, 16, 36, 0, NULL),
(100481, 0, 0, 1, 16, 36, 0, NULL), (100478, 19085, 0, 1, 16, 0, 0, NULL), (100477, 19085, 0, 1, 16, 0, 0, NULL), (100476, 19085, 0, 1, 16, 0, 0, NULL);
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(100440, 24978, 530, 1, 1, 0, 0, 12754.2, -7103.53, 6.98808, 1.57809, 300, 300, 3, 0, 5589, 3155, 0, 1),
(100441, 24978, 530, 1, 1, 0, 0, 12853.9, -6976.75, 5.03118, 5.30162, 300, 300, 3, 0, 5589, 3155, 0, 1),
(100442, 24978, 530, 1, 1, 0, 0, 12834.4, -7066.47, 3.36938, 1.37881, 300, 300, 0, 0, 5589, 3155, 0, 0),
(100443, 24978, 530, 1, 1, 0, 0, 12810.5, -7055.56, 3.03575, 5.9004, 300, 300, 0, 0, 5589, 3155, 0, 0),
(100444, 24978, 530, 1, 1, 0, 0, 12834.6, -6994.66, 18.7622, 3.52552, 300, 300, 0, 0, 5589, 3155, 0, 0),
(100445, 24978, 530, 1, 1, 0, 0, 12858.4, -7044.53, 19.0071, 1.96887, 300, 300, 0, 0, 5589, 3155, 0, 0),
(100446, 24978, 530, 1, 1, 0, 0, 12845.8, -7007.87, 47.5113, 2.90902, 300, 300, 0, 0, 5589, 3155, 0, 0),
(100447, 24978, 530, 1, 1, 0, 0, 12820.2, -7040.51, 18.676, 2.16421, 300, 300, 0, 0, 5589, 3155, 0, 0),
(100448, 24978, 530, 1, 1, 0, 0, 12798.3, -6996.1, 47.5607, 1.22173, 300, 300, 0, 0, 5589, 3155, 0, 0),
(100449, 24978, 530, 1, 1, 0, 0, 12654.5, -6615.38, 22.9024, 3.55369, 300, 300, 5, 0, 5589, 3155, 0, 1),
(100450, 24978, 530, 1, 1, 0, 0, 12808.9, -6653.63, 0.13816, 3.13125, 300, 300, 5, 0, 5589, 3155, 0, 1),
(100451, 24978, 530, 1, 1, 0, 0, 12656.2, -6773.99, 4.92041, 3.0925, 300, 300, 5, 0, 5589, 3155, 0, 1),
(100452, 24978, 530, 1, 1, 0, 0, 12743.8, -6821.32, 6.29791, 4.48832, 300, 300, 5, 0, 5589, 3155, 0, 1),
(100453, 24978, 530, 1, 1, 0, 0, 12598.1, -6644.33, 4.74616, 4.74895, 300, 300, 2, 0, 5589, 3155, 0, 1),
(100454, 24978, 530, 1, 1, 0, 0, 12721.9, -6833.56, 5.72594, 1.14879, 300, 300, 5, 0, 5589, 3155, 0, 1),
(100455, 24978, 530, 1, 1, 0, 0, 12670.2, -6812.42, 5.5193, 6.26546, 300, 300, 5, 0, 5589, 3155, 0, 1),
(100456, 24978, 530, 1, 1, 0, 0, 12835.9, -6727.87, 1.30872, 5.33086, 300, 300, 5, 0, 5589, 3155, 0, 1),
(100457, 24978, 530, 1, 1, 0, 0, 12827.4, -6764.64, 1.44073, 4.36277, 300, 300, 5, 0, 5589, 3155, 0, 1),
(100458, 24978, 530, 1, 1, 0, 0, 12764, -6795.94, 6.09497, 3.19691, 300, 300, 5, 0, 5589, 3155, 0, 1),
(100459, 24978, 530, 1, 1, 0, 0, 12775.1, -6774.4, 2.69635, 4.25719, 300, 300, 5, 0, 5589, 3155, 0, 1),
(100460, 24978, 530, 1, 1, 0, 0, 12781.5, -6754.72, 1.64079, 5.09757, 300, 300, 5, 0, 5589, 3155, 0, 1),
(100461, 24978, 530, 1, 1, 0, 0, 12664.9, -6630.51, 7.01663, 5.11836, 300, 300, 5, 0, 5589, 3155, 0, 1),
(100462, 24978, 530, 1, 1, 0, 0, 12621.7, -6673.75, 5.54003, 4.55717, 300, 300, 3, 0, 5589, 3155, 0, 1),
(100463, 24978, 530, 1, 1, 0, 0, 12639.8, -6727.52, 5.12649, 0.794536, 300, 300, 5, 0, 5589, 3155, 0, 1),
(100464, 24978, 530, 1, 1, 0, 0, 12611.2, -6720.72, 6.22211, 2.20541, 300, 300, 5, 0, 5589, 3155, 0, 1),
(100465, 24978, 530, 1, 1, 0, 0, 12668.5, -6722.69, 5.01418, 2.4499, 300, 300, 5, 0, 5589, 3155, 0, 1),
(100466, 24978, 530, 1, 1, 0, 0, 12638.8, -6694.79, 4.72992, -0.738756, 300, 300, 0, 0, 5589, 3155, 0, 0),
(100467, 24978, 530, 1, 1, 0, 0, 12604.6, -6703.54, 7.35769, 1.02974, 300, 300, 0, 0, 5589, 3155, 0, 0),
(100468, 24978, 530, 1, 1, 0, 0, 12824.8, -6684.15, 5.08492, 2.98451, 300, 300, 0, 0, 5589, 3155, 0, 0),
(100469, 24978, 530, 1, 1, 0, 0, 12819.9, -6674.84, 5.08492, 4.29351, 300, 300, 0, 0, 5589, 3155, 0, 0),
(100470, 24978, 530, 1, 1, 0, 0, 12758.2, -6680.7, 2.27651, 0.261799, 300, 300, 0, 0, 5589, 3155, 0, 0),
(100471, 24978, 530, 1, 1, 0, 0, 12736, -6743.92, 0.355045, 0.994838, 300, 300, 0, 0, 5589, 3155, 0, 0),
(100472, 24978, 530, 1, 1, 0, 0, 12721.9, -6706.82, 0.371584, 5.8294, 300, 300, 0, 0, 5589, 3155, 0, 0),
(100473, 24978, 530, 1, 1, 0, 0, 12711.6, -6797.83, 7.16537, 2.68781, 300, 300, 0, 0, 5589, 3155, 0, 0),
(100474, 24978, 530, 1, 1, 0, 0, 12707.3, -6789.38, 7.16532, 5.77704, 300, 300, 0, 0, 5589, 3155, 0, 0),
(100475, 24978, 530, 1, 1, 0, 0, 12667.4, -6633.19, 22.9848, 3.12414, 300, 300, 0, 0, 5589, 3155, 0, 2),
(147779, 24978, 530, 1, 1, 0, 0, 12769.9, -6717.98, 18.8336, 2.16421, 300, 300, 0, 0, 5589, 3155, 0, 2),
(147780, 24978, 530, 1, 1, 0, 0, 12792.8, -6707.38, 18.8336, 1.93731, 300, 300, 0, 0, 5589, 3155, 0, 2),
(147781, 24978, 530, 1, 1, 0, 0, 12782.9, -6685.83, 18.8336, 5.20108, 300, 300, 0, 0, 5589, 3155, 0, 2),
(147782, 24978, 530, 1, 1, 0, 0, 12759.7, -6695.81, 18.8337, 5.32325, 300, 300, 0, 0, 5589, 3155, 0, 2),
(147783, 24978, 530, 1, 1, 0, 0, 12771, -6713.82, 2.35041, 1.74533, 300, 300, 0, 0, 5589, 3155, 0, 2),
(147784, 24978, 530, 1, 1, 0, 0, 12789.5, -6707.39, 2.33996, 2.75762, 300, 300, 0, 0, 5589, 3155, 0, 2),
(147785, 24978, 530, 1, 1, 0, 0, 12781, -6693.26, 2.35318, 4.29351, 300, 300, 0, 0, 5589, 3155, 0, 2),
(147786, 24978, 530, 1, 1, 0, 0, 12765, -6696.87, 2.35364, 5.8294, 300, 300, 0, 0, 5589, 3155, 0, 2),
(147787, 24978, 530, 1, 1, 0, 0, 12614.7, -6633.05, 5.00759, 5.39307, 300, 300, 0, 0, 5589, 3155, 0, 2),
(147788, 24978, 530, 1, 1, 0, 0, 12624.2, -6642.92, 5.73085, 2.36384, 300, 300, 0, 0, 5589, 3155, 0, 2),
(147789, 24978, 530, 1, 1, 0, 0, 12595, -6674.92, 5.71689, 0.872665, 300, 300, 0, 0, 5589, 3155, 0, 2),
(147790, 24978, 530, 1, 1, 0, 0, 12603.2, -6663.78, 4.89453, 4.13643, 300, 300, 0, 0, 5589, 3155, 0, 2),
(147791, 24978, 530, 1, 1, 0, 0, 12881.9, -6932.26, 3.95612, 1.01572, 300, 300, 3, 0, 5589, 3155, 0, 1),
(129333, 24978, 530, 1, 1, 0, 0, 12837.8, -6943.53, 7.16889, 1.91649, 300, 300, 3, 0, 5589, 3155, 0, 1),
(129334, 24978, 530, 1, 1, 0, 0, 12764.1, -6920.01, 12.2757, -2.92975, 300, 300, 3, 0, 5589, 3155, 0, 1),
(129335, 24978, 530, 1, 1, 0, 0, 12760.1, -6993.28, 11.4647, 0.36701, 300, 300, 3, 0, 5589, 3155, 0, 1),
(129336, 24978, 530, 1, 1, 0, 0, 12778.3, -7005.11, 13.8872, 1.02974, 300, 300, 3, 0, 5589, 3155, 0, 1),
(129337, 24978, 530, 1, 1, 0, 0, 12745.1, -6984.7, 19.1984, 2.35609, 300, 300, 3, 0, 5589, 3155, 0, 1),
(129338, 24978, 530, 1, 1, 0, 0, 12757.4, -7029.9, 9.37412, 5.83719, 300, 300, 5, 0, 5589, 3155, 0, 1);
DELETE FROM creature_movement WHERE id IN (SELECT guid FROM creature WHERE id = 24978);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `script_id`, `comment`) VALUES
(100475, 1, 12667.4, -6633.19, 22.9848, 3.12414, 2000, 1001, NULL),
(100475, 2, 12667.4, -6633.19, 22.9848, 3.12414, 16000, 1001, NULL),
(100475, 3, 12667.4, -6633.19, 22.9848, 3.12414, 14000, 1274, NULL),
(100475, 4, 12667.4, -6633.19, 22.9848, 3.12414, 25000, 1001, NULL),
(100475, 5, 12667.4, -6633.19, 22.9848, 3.12414, 17000, 1001, NULL),
(147779, 1, 12769.9, -6717.98, 18.8336, 2.16421, 1000, 2497801, NULL),
(147780, 1, 12792.8, -6707.38, 18.8336, 1.93731, 1000, 2497801, NULL),
(147781, 1, 12782.9, -6685.83, 18.8336, 5.20108, 1000, 2497801, NULL),
(147782, 1, 12759.7, -6695.81, 18.8337, 5.32325, 1000, 2497801, NULL),
(147783, 1, 12771, -6713.82, 2.35041, 1.74533, 1000, 2497802, NULL),
(147784, 1, 12789.5, -6707.39, 2.33996, 2.75762, 1000, 2497802, NULL),
(147785, 1, 12781, -6693.26, 2.35318, 4.29351, 1000, 2497802, NULL),
(147786, 1, 12765, -6696.87, 2.35364, 5.8294, 1000, 2497802, NULL),
(147787, 1, 12614.7, -6633.05, 5.00759, 5.39307, 1000, 2497801, NULL),
(147788, 1, 12624.2, -6642.92, 5.73085, 2.36384, 1000, 2497801, NULL),
(147789, 1, 12595, -6674.92, 5.71689, 0.872665, 1000, 2497801, NULL),
(147790, 1, 12603.2, -6663.78, 4.89453, 4.13643, 1000, 2497801, NULL);
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 24978);
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(100425, 24979, 530, 1, 1, 0, 0, 12865.1, -7039.63, 3.27773, 3.87583, 300, 300, 0, 0, 5589, 3155, 0, 0),
(100426, 24979, 530, 1, 1, 0, 0, 12852.6, -6911.85, 8.59435, 0.244505, 300, 300, 0, 0, 5589, 3155, 0, 0),
(100427, 24979, 530, 1, 1, 0, 0, 12775.8, -6970.49, 14.1512, 2.11185, 300, 300, 0, 0, 5589, 3155, 0, 0),
(100428, 24979, 530, 1, 1, 0, 0, 12769.2, -6902.73, 13.3924, -2.02396, 300, 300, 0, 0, 5589, 3155, 0, 0),
(100429, 24979, 530, 1, 1, 0, 0, 12765.3, -6897.49, 13.3821, 3.78155, 300, 300, 0, 0, 5589, 3155, 0, 0),
(100430, 24979, 530, 1, 1, 0, 0, 12826.1, -6984.01, 18.6408, 1.92411, 300, 300, 0, 0, 5589, 3155, 0, 0),
(100431, 24979, 530, 1, 1, 0, 0, 12794.9, -7012.02, 18.7501, 2.26893, 300, 300, 0, 0, 5589, 3155, 0, 0),
(100432, 24979, 530, 1, 1, 0, 0, 12692.7, -6878.35, 12.4198, 5.55015, 300, 300, 0, 0, 5589, 3155, 0, 0),
(100433, 24979, 530, 1, 1, 0, 0, 12703.2, -6868.36, 12.5539, 5.35816, 300, 300, 0, 0, 5589, 3155, 0, 0),
(100434, 24979, 530, 1, 1, 0, 0, 12689.8, -6848.2, 13.3333, 0.296706, 300, 300, 0, 0, 5589, 3155, 0, 0),
(100435, 24979, 530, 1, 1, 0, 0, 12646.4, -6830.11, 12.4157, 5.11381, 300, 300, 0, 0, 5589, 3155, 0, 0),
(100436, 24979, 530, 1, 1, 0, 0, 12657.4, -6820.09, 12.5528, 0.471239, 300, 300, 0, 0, 5589, 3155, 0, 0),
(100437, 24979, 530, 1, 1, 0, 0, 12668.5, -6860.1, 13.1157, 2.93215, 300, 300, 0, 0, 5589, 3155, 0, 0),
(100438, 24979, 530, 1, 1, 0, 0, 12885.7, -6938.58, 3.8995, 0.244346, 300, 300, 0, 0, 5589, 3155, 0, 0),
(100439, 24979, 530, 1, 1, 0, 0, 12898.6, -6956.92, 3.3792, 0.750492, 300, 300, 0, 0, 5589, 3155, 0, 0),
(129011, 24979, 530, 1, 1, 0, 0, 12787.1, -6955.94, 13.7631, 2.00713, 300, 300, 0, 0, 5589, 3155, 0, 0),
(129012, 24979, 530, 1, 1, 0, 0, 12807.3, -7028.92, 18.695, 0.855211, 300, 300, 0, 0, 5589, 3155, 0, 0),
(129013, 24979, 530, 1, 1, 0, 0, 12877.8, -7028.16, 3.27531, 5.63741, 300, 300, 0, 0, 5589, 3155, 0, 0),
(129014, 24979, 530, 1, 1, 0, 0, 12879.9, -6997.67, 3.09785, 0.0349066, 300, 300, 0, 0, 5589, 3155, 0, 0),
(129015, 24979, 530, 1, 1, 0, 0, 12841.8, -7001.32, 71.2063, 0.575959, 300, 300, 0, 0, 5589, 3155, 0, 0),
(129016, 24979, 530, 1, 1, 0, 0, 12809.3, -7004.3, 70.5956, 4.71239, 300, 300, 0, 0, 5589, 3155, 0, 0),
(129017, 24979, 530, 1, 1, 0, 0, 12843.5, -7041.06, 47.913, 0.191986, 300, 300, 0, 0, 5589, 3155, 0, 0),
(129018, 24979, 530, 1, 1, 0, 0, 12800.4, -6980.72, 47.6616, 5.37561, 300, 300, 0, 0, 5589, 3155, 0, 0),
(129019, 24979, 530, 1, 1, 0, 0, 12793.3, -7121.31, 5.41652, 5.47921, 300, 300, 0, 0, 5589, 3155, 0, 0),
(129020, 24979, 530, 1, 1, 0, 0, 12828.3, -7118.52, 5.36365, 4.11898, 300, 300, 0, 0, 5589, 3155, 0, 0),
(129021, 24979, 530, 1, 1, 0, 0, 12646.6, -6648.36, 22.987, 5.53269, 300, 300, 0, 0, 5589, 3155, 0, 0),
(129022, 24979, 530, 1, 1, 0, 0, 12740.6, -6677.2, 0.40342, 2.89725, 300, 300, 0, 0, 5589, 3155, 0, 0),
(129023, 24979, 530, 1, 1, 0, 0, 12604.4, -6697.06, 7.46278, 5.67232, 300, 300, 0, 0, 5589, 3155, 0, 0),
(129024, 24979, 530, 1, 1, 0, 0, 12795.6, -6738.84, 18.9562, 5.16617, 300, 300, 0, 0, 5589, 3155, 0, 0),
(129025, 24979, 530, 1, 1, 0, 0, 12759, -6665.21, 18.9554, 2.19912, 300, 300, 0, 0, 5589, 3155, 0, 0),
(129026, 24979, 530, 1, 1, 0, 0, 12763.2, -6648.78, -0.706784, 1.55334, 300, 300, 0, 0, 5589, 3155, 0, 0),
(129027, 24979, 530, 1, 1, 0, 0, 12699.8, -6655.29, 3.22731, 0.026384, 300, 300, 0, 0, 5589, 3155, 0, 2),
(129028, 24979, 530, 1, 1, 0, 0, 12659.4, -6595.09, 4.46219, 0.0698132, 300, 300, 0, 0, 5589, 3155, 0, 2),
(129029, 24979, 530, 1, 1, 0, 0, 12669.3, -6594.05, 5.21512, 4.4855, 300, 300, 0, 0, 5589, 3155, 0, 2),
(129030, 24979, 530, 1, 1, 0, 0, 12678.1, -6593.62, 5.42093, 4.36332, 300, 300, 0, 0, 5589, 3155, 0, 2),
(129031, 24979, 530, 1, 1, 0, 0, 12685.8, -6594.78, 5.33039, 4.32842, 300, 300, 0, 0, 5589, 3155, 0, 2),
(129032, 24979, 530, 1, 1, 0, 0, 12703.9, -6738.46, 4.15861, 3.89208, 300, 300, 0, 0, 5589, 3155, 0, 2),
(129033, 24979, 530, 1, 1, 0, 0, 12707.8, -6747.62, 4.23591, 3.47321, 300, 300, 0, 0, 5589, 3155, 0, 2),
(129034, 24979, 530, 1, 1, 0, 0, 12709.1, -6756.34, 4.52311, 3.21141, 300, 300, 0, 0, 5589, 3155, 0, 2),
(129035, 24979, 530, 1, 1, 0, 0, 12848.7, -7128.98, 6.87011, 2.70257, 300, 300, 0, 0, 5589, 3155, 0, 0),
(129036, 24979, 530, 1, 1, 0, 0, 12806.3, -7089.1, 8.22131, -1.07788, 300, 300, 0, 0, 5589, 3155, 0, 0),
(129037, 24979, 530, 1, 1, 0, 0, 12780.2, -7133.77, 9.23165, 1.81047, 300, 300, 0, 0, 5589, 3155, 0, 0),
(129038, 24979, 530, 1, 1, 0, 0, 12663.4, -6647.9, 22.9834, 5.3058, 300, 300, 0, 0, 5589, 3155, 0, 0),
(129039, 24979, 530, 1, 1, 0, 0, 12677.3, -6642.17, 22.9834, 5.44543, 300, 300, 0, 0, 5589, 3155, 0, 0),
(129040, 24979, 530, 1, 1, 0, 0, 12688.9, -6623.51, 22.987, 0.122173, 300, 300, 0, 0, 5589, 3155, 0, 0);
DELETE FROM creature_movement WHERE id IN (SELECT guid FROM creature WHERE id = 24979);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `script_id`, `comment`) VALUES
(129027, 1, 12699.8, -6655.29, 3.22731, 100, 0, 0, NULL),
(129027, 2, 12691.9, -6653.33, 4.21181, 100, 0, 0, NULL),
(129027, 3, 12702.7, -6654.21, 3.00051, 100, 0, 0, NULL),
(129027, 4, 12714.5, -6655.58, 1.59768, 100, 0, 0, NULL),
(129027, 5, 12726.5, -6656.48, 1.23299, 100, 0, 0, NULL),
(129027, 6, 12734.9, -6659.62, 1.34397, 100, 0, 0, NULL),
(129027, 7, 12743.8, -6664.37, 0.709696, 100, 0, 0, NULL),
(129027, 8, 12730.8, -6659.77, 1.08791, 100, 0, 0, NULL),
(129027, 9, 12721.5, -6656.69, 0.974876, 100, 0, 0, NULL),
(129027, 10, 12709.3, -6656.43, 1.62038, 100, 0, 0, NULL),
(129028, 1, 12659.4, -6595.09, 4.46219, 0.0698132, 100, 2497906, NULL),
(129028, 2, 12659.4, -6595.09, 4.46219, 0.0698132, 5050, 2497906, NULL),
(129028, 3, 12659.4, -6595.09, 4.46219, 0.0698132, 6000, 2497906, NULL),
(129028, 4, 12659.4, -6595.09, 4.46219, 0.0698132, 11000, 2497906, NULL),
(129028, 5, 12659.4, -6595.09, 4.46219, 0.0698132, 3000, 2497906, NULL),
(129029, 1, 12669.3, -6594.05, 5.21512, 4.4855, 3500, 2497905, NULL),
(129029, 2, 12669.3, -6594.05, 5.21512, 4.4855, 6600, 2497905, NULL),
(129029, 3, 12669.3, -6594.05, 5.21512, 4.4855, 8000, 2497905, NULL),
(129029, 4, 12669.3, -6594.05, 5.21512, 4.4855, 2500, 2497905, NULL),
(129029, 5, 12669.3, -6594.05, 5.21512, 4.4855, 5000, 2497905, NULL),
(129030, 1, 12678.1, -6593.62, 5.42093, 4.36332, 5000, 2497904, NULL),
(129030, 2, 12678.1, -6593.62, 5.42093, 4.36332, 7500, 2497905, NULL),
(129030, 3, 12678.1, -6593.62, 5.42093, 4.36332, 10000, 2497906, NULL),
(129030, 4, 12678.1, -6593.62, 5.42093, 4.36332, 4000, 2497905, NULL),
(129031, 1, 12685.8, -6594.78, 5.33039, 4.32842, 100, 2497904, NULL),
(129031, 2, 12685.8, -6594.78, 5.33039, 4.32842, 5050, 2497904, NULL),
(129031, 3, 12685.8, -6594.78, 5.33039, 4.32842, 6000, 2497904, NULL),
(129031, 4, 12685.8, -6594.78, 5.33039, 4.32842, 11000, 2497904, NULL),
(129031, 5, 12685.8, -6594.78, 5.33039, 4.32842, 3000, 2497904, NULL),
(129032, 1, 12703.9, -6738.46, 4.15861, 3.89208, 3500, 2497903, NULL),
(129032, 2, 12703.9, -6738.46, 4.15861, 3.89208, 6600, 2497903, NULL),
(129032, 3, 12703.9, -6738.46, 4.15861, 3.89208, 8000, 2497903, NULL),
(129032, 4, 12703.9, -6738.46, 4.15861, 3.89208, 2500, 2497903, NULL),
(129032, 5, 12703.9, -6738.46, 4.15861, 3.89208, 5000, 2497903, NULL),
(129033, 1, 12707.8, -6747.62, 4.23591, 3.47321, 5000, 2497902, NULL),
(129033, 2, 12707.8, -6747.62, 4.23591, 3.47321, 7500, 2497902, NULL),
(129033, 3, 12707.8, -6747.62, 4.23591, 3.47321, 10000, 2497902, NULL),
(129033, 4, 12707.8, -6747.62, 4.23591, 3.47321, 4000, 2497902, NULL),
(129034, 1, 12709.1, -6756.34, 4.52311, 3.21141, 100, 2497901, NULL),
(129034, 2, 12709.1, -6756.34, 4.52311, 3.21141, 5050, 2497901, NULL),
(129034, 3, 12709.1, -6756.34, 4.52311, 3.21141, 6000, 2497901, NULL),
(129034, 4, 12709.1, -6756.34, 4.52311, 3.21141, 11000, 2497901, NULL),
(129034, 5, 12709.1, -6756.34, 4.52311, 3.21141, 3000, 2497901, NULL);
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 24979);
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(99949, 24999, 530, 1, 1, 0, 0, 12684, -6957.12, 15.5542, 0.631272, 300, 300, 0, 0, 5589, 3155, 0, 0),
(99950, 24999, 530, 1, 1, 0, 0, 12670.7, -6940.88, 23.5736, 1.74533, 300, 300, 0, 0, 5589, 3155, 0, 2),
(99951, 24999, 530, 1, 1, 0, 0, 12660, -6950.82, 36.3223, 3.05433, 300, 300, 0, 0, 5589, 3155, 0, 2),
(99952, 24999, 530, 1, 1, 0, 0, 12655.4, -6976.36, 36.3167, 3.40339, 300, 300, 0, 0, 5589, 3155, 0, 2),
(99953, 24999, 530, 1, 1, 0, 0, 12684.6, -6933.44, 36.3207, 1.62316, 300, 300, 0, 0, 5589, 3155, 0, 2),
(99954, 24999, 530, 1, 1, 0, 0, 12702.7, -6942.97, 36.3202, 0.401426, 300, 300, 0, 0, 5589, 3155, 0, 2),
(129339, 24999, 530, 1, 1, 0, 0, 12566.8, -6900, 4.7534, 4.32404, 300, 300, 3, 0, 5589, 3155, 0, 1),
(129340, 24999, 530, 1, 1, 0, 0, 12568.1, -6936.03, 4.76438, 4.93857, 300, 300, 3, 0, 5589, 3155, 0, 1),
(129341, 24999, 530, 1, 1, 0, 0, 12624.9, -6909.62, 4.68466, 4.69494, 300, 300, 0, 0, 5589, 3155, 0, 0),
(129342, 24999, 530, 1, 1, 0, 0, 12607.3, -6908.94, 4.68467, 4.76475, 300, 300, 0, 0, 5589, 3155, 0, 0),
(129343, 24999, 530, 1, 1, 0, 0, 12623.7, -6924.71, 4.68467, 1.3439, 300, 300, 0, 0, 5589, 3155, 0, 0),
(129344, 24999, 530, 1, 1, 0, 0, 12608.2, -6924.25, 4.69005, 1.65806, 300, 300, 0, 0, 5589, 3155, 0, 0),
(129345, 24999, 530, 1, 1, 0, 0, 12670.3, -6913.52, 4.92704, 2.32129, 300, 300, 0, 0, 5589, 3155, 0, 2),
(129346, 24999, 530, 1, 1, 0, 0, 12660.2, -6929.23, 5.50344, 2.26893, 300, 300, 0, 0, 5589, 3155, 0, 2);
DELETE FROM creature_movement WHERE id IN (SELECT guid FROM creature WHERE id = 24999);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `script_id`, `comment`) VALUES
(99950, 1, 12670.7, -6940.88, 23.5736, 1.74533, 1000, 2499901, NULL),
(99951, 1, 12660, -6950.82, 36.3223, 3.05433, 1000, 2499901, NULL),
(99952, 1, 12655.4, -6976.36, 36.3167, 3.40339, 1000, 2499901, NULL),
(99953, 1, 12684.6, -6933.44, 36.3207, 1.62316, 1000, 2499901, NULL),
(99954, 1, 12702.7, -6942.97, 36.3202, 0.401426, 1000, 2499901, NULL),
(129345, 1, 12670.3, -6913.52, 4.92704, 2.32129, 1000, 2499901, NULL),
(129346, 1, 12660.2, -6929.23, 5.50344, 2.26893, 1000, 2499901, NULL);
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 24999);
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(99955, 25001, 530, 1, 1, 0, 0, 12636.7, -7014.68, 20.3199, 2.34353, 300, 300, 8, 0, 6986, 0, 0, 1),
(99956, 25001, 530, 1, 1, 0, 0, 12606.1, -6987.65, 17.0318, 5.59827, 300, 300, 8, 0, 6986, 0, 0, 1),
(99957, 25001, 530, 1, 1, 0, 0, 12696, -7010.14, 21.2508, 1.21092, 300, 300, 8, 0, 6986, 0, 0, 1),
(99958, 25001, 530, 1, 1, 0, 0, 12703.9, -6920.83, 13.7406, 0.871144, 300, 300, 8, 0, 6986, 0, 0, 1),
(99959, 25001, 530, 1, 1, 0, 0, 12657, -6979.91, 14.6574, 4.10785, 300, 300, 8, 0, 6986, 0, 0, 1),
(129347, 25001, 530, 1, 1, 0, 0, 12728.2, -6945.38, 14.3328, 1.62358, 300, 300, 0, 0, 6986, 0, 0, 2),
(129348, 25001, 530, 1, 1, 0, 0, 12641, -7043.39, 19.3265, 0.182202, 300, 300, 8, 0, 6986, 0, 0, 1),
(129349, 25001, 530, 1, 1, 0, 0, 12663.7, -7082.51, 19.4874, 4.04925, 300, 300, 8, 0, 6986, 0, 0, 1),
(129350, 25001, 530, 1, 1, 0, 0, 12692, -7107.4, 19.4216, 6.03203, 300, 300, 8, 0, 6986, 0, 0, 1),
(129351, 25001, 530, 1, 1, 0, 0, 12636.8, -7073.24, 16.4142, 1.16187, 300, 300, 8, 0, 6986, 0, 0, 1),
(129352, 25001, 530, 1, 1, 0, 0, 12683.1, -7043.16, 19.7468, 4.36159, 300, 300, 8, 0, 6986, 0, 0, 1),
(129353, 25001, 530, 1, 1, 0, 0, 12579.1, -6974.54, 15.985, 3.39823, 300, 300, 8, 0, 6986, 0, 0, 1),
(129354, 25001, 530, 1, 1, 0, 0, 12519.5, -6911.13, 16.7992, 5.97826, 300, 300, 8, 0, 6986, 0, 0, 1),
(129355, 25001, 530, 1, 1, 0, 0, 12488.7, -6887.34, 16.4079, 1.25534, 300, 300, 8, 0, 6986, 0, 0, 1),
(129356, 25001, 530, 1, 1, 0, 0, 12590.1, -6857.15, 4.8139, 4.63768, 300, 300, 0, 0, 6986, 0, 0, 2),
(129357, 25001, 530, 1, 1, 0, 0, 12565.8, -6827.37, 16.3403, 4.86425, 300, 300, 0, 0, 6986, 0, 0, 2);
DELETE FROM creature_movement WHERE id IN (SELECT guid FROM creature WHERE id = 25001);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `script_id`, `comment`) VALUES
(129347, 1, 12728.2, -6945.38, 14.3328, 100, 0, 0, NULL),
(129347, 2, 12728, -6963.33, 17.2544, 100, 0, 0, NULL),
(129347, 3, 12723.1, -6977.58, 18.9559, 100, 0, 0, NULL),
(129347, 4, 12728, -6963.33, 17.2544, 100, 0, 0, NULL),
(129356, 1, 12590.1, -6857.15, 4.8139, 100, 0, 0, NULL),
(129356, 2, 12614.5, -6866.54, 5.22594, 100, 0, 0, NULL),
(129356, 3, 12633.2, -6875.46, 5.14763, 100, 0, 0, NULL),
(129356, 4, 12641.7, -6889.07, 5.10094, 100, 0, 0, NULL),
(129356, 5, 12633.2, -6875.46, 5.14763, 100, 0, 0, NULL),
(129356, 6, 12614.5, -6866.54, 5.22594, 100, 0, 0, NULL),
(129357, 1, 12565.8, -6827.37, 16.3403, 100, 0, 0, NULL),
(129357, 2, 12584, -6834.42, 14.1357, 100, 0, 0, NULL),
(129357, 3, 12591.6, -6835.22, 13.6321, 100, 0, 0, NULL),
(129357, 4, 12607.5, -6830.54, 13.5435, 100, 0, 0, NULL),
(129357, 5, 12616, -6826.48, 13.3063, 100, 0, 0, NULL),
(129357, 6, 12625.1, -6825.82, 13.0271, 100, 0, 0, NULL),
(129357, 7, 12616, -6826.48, 13.3063, 100, 0, 0, NULL),
(129357, 8, 12607.5, -6830.54, 13.5435, 100, 0, 0, NULL),
(129357, 9, 12591.6, -6835.22, 13.6321, 100, 0, 0, NULL),
(129357, 10, 12584, -6834.42, 14.1357, 100, 0, 0, NULL);
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 25001);
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(99937, 25002, 530, 1, 1, 0, 0, 12652.3, -7074.39, 18.1342, 5.45224, 300, 300, 5, 0, 5744, 3155, 0, 1),
(99938, 25002, 530, 1, 1, 0, 0, 12674.9, -7100.25, 18.686, 1.39092, 300, 300, 5, 0, 5744, 3155, 0, 1),
(99939, 25002, 530, 1, 1, 0, 0, 12612.9, -7022.42, 18.6955, 1.23541, 300, 300, 5, 0, 5744, 3155, 0, 1),
(99940, 25002, 530, 1, 1, 0, 0, 12657.7, -7019.9, 21.8192, 2.57257, 300, 300, 3, 0, 5744, 3155, 0, 1),
(99941, 25002, 530, 1, 1, 0, 0, 12689.8, -6983.56, 15.5711, 5.24782, 300, 300, 3, 0, 5744, 3155, 0, 1),
(99942, 25002, 530, 1, 1, 0, 0, 12704, -6972.18, 36.2308, 0.352882, 300, 300, 0, 0, 5744, 3155, 0, 0),
(99943, 25002, 530, 1, 1, 0, 0, 12673.1, -6943.69, 36.3386, 5.46288, 300, 300, 0, 0, 5744, 3155, 0, 0),
(99944, 25002, 530, 1, 1, 0, 0, 12683.2, -6957.72, 36.2531, 3.77682, 300, 300, 0, 0, 5744, 3155, 0, 0),
(99945, 25002, 530, 1, 1, 0, 0, 12701.1, -6983.31, 25.6011, 6.11731, 300, 300, 0, 0, 5744, 3155, 0, 0),
(99946, 25002, 530, 1, 1, 0, 0, 12696.2, -6942.98, 15.6418, 0.523599, 300, 300, 0, 0, 5744, 3155, 0, 0),
(99947, 25002, 530, 1, 1, 0, 0, 12702, -6950.81, 15.6455, 0.663225, 300, 300, 0, 0, 5744, 3155, 0, 0),
(129362, 25002, 530, 1, 1, 0, 0, 12539.5, -6943.25, 16.5864, 4.64258, 300, 300, 5, 0, 5744, 3155, 0, 1),
(129363, 25002, 530, 1, 1, 0, 0, 12616.2, -6820.68, 14.0084, 1.12062, 300, 300, 5, 0, 5744, 3155, 0, 1),
(129368, 25002, 530, 1, 1, 0, 0, 12563.5, -6830.97, 16.428, 3.35677, 300, 300, 5, 0, 5744, 3155, 0, 1),
(129369, 25002, 530, 1, 1, 0, 0, 12663.4, -6881.79, 4.72594, 3.35677, 300, 300, 5, 0, 5744, 3155, 0, 1),
(129370, 25002, 530, 1, 1, 0, 0, 12638.8, -6858.76, 4.72594, 0.749246, 300, 300, 5, 0, 5744, 3155, 0, 1),
(129371, 25002, 530, 1, 1, 0, 0, 12601.7, -6888.89, 4.60264, 0.749246, 300, 300, 5, 0, 5744, 3155, 0, 1),
(129372, 25002, 530, 1, 1, 0, 0, 12616.8, -6947.31, 4.60062, 1.559, 300, 300, 3, 0, 5744, 3155, 0, 1),
(129375, 25002, 530, 1, 1, 0, 0, 12587.1, -6946.11, 4.64002, 1.559, 300, 300, 3, 0, 5744, 3155, 0, 1),
(129376, 25002, 530, 1, 1, 0, 0, 12572.3, -6915.23, 4.60232, 6.19285, 300, 300, 0, 0, 5744, 3155, 0, 0),
(129377, 25002, 530, 1, 1, 0, 0, 12588.6, -6910.22, 4.60232, 5.69019, 300, 300, 0, 0, 5744, 3155, 0, 0),
(129378, 25002, 530, 1, 1, 0, 0, 12588.4, -6923.11, 4.60061, 0.388752, 300, 300, 0, 0, 5744, 3155, 0, 0);
DELETE FROM creature_movement WHERE id IN (SELECT guid FROM creature WHERE id = 25002);
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 25002);
INSERT INTO `game_event_creature` (`guid`, `event`) VALUES
(129081, -303), (129081, -302), (129000, -303), (129000, -302), (100501, -303), (100501, -302), (129041, -303), (129041, -302), (129042, -310), (129043, -310), (129044, -310),
(129045, -310), (129046, -310), (129047, -310), (129048, -310), (129049, -310), (129050, -310), (129051, -310), (129269, -310), (129270, -310), (129273, -310), (129274, -310),
(129275, -303), (129275, -302), (129276, -310), (129328, -310), (129329, -310), (129330, -303), (129331, -303), (129332, -303), (129332, -302), (100448, -310), (100447, -310),
(100446, -310), (100445, -310), (100444, -310), (100443, -310), (100442, -310), (100441, -310), (100440, -310), (129338, -310), (129337, -307), (129336, -310), (129335, -310),
(129334, -303), (129333, -303), (129333, -302), (147791, -303), (147791, -302), (129037, -310), (129036, -310), (129035, -310), (129020, -310), (129019, -310), (129018, -310),
(129017, -310), (129016, -310), (129015, -310), (129013, -310), (129012, -310), (129011, -310), (100439, -303), (100439, -302), (100438, -303), (100438, -302), (100437, -310),
(100436, -310), (100435, -310), (100434, -310), (100433, -310), (100432, -310), (100431, -310), (100430, -310), (100429, -303), (100428, -303), (100427, -310), (100426, -303),
(100425, -310), (99954, -307), (99953, -307), (99952, -307), (99951, -307), (99950, -307), (99949, -307), (129352, -307), (129348, -307), (129347, -307), (99959, -307),
(99958, -307), (99957, -307), (99956, -307), (99955, -307), (99947, -307), (99946, -307), (99945, -307), (99944, -307), (99943, -307), (99942, -307), (99941, -307),
(99940, -307), (99939, -307), (100244, -303), (100244, -302), (100245, -303), (100245, -302), (100246, -303), (100246, -302);
DELETE FROM npc_text WHERE id IN (12255,12257,12339,12319,12226,12260,12300,12301,12302,12303,12238,12240,12285,12322,12604,12304,12305);
DELETE FROM npc_text_broadcast_text WHERE Id IN(12255,12257,12339,12319,12226,12260,12300,12301,12302,12303,12238,12240,12285,12322);
DELETE FROM npc_text_broadcast_text WHERE Id IN(12602,12603,12605,12604,12304,12305,12306);
INSERT INTO npc_text_broadcast_text(Id, Prob0, BroadcastTextId0) VALUES
(12255,1,24080), (12257,1,24082), (12339,1,24303), (12319,1,24264), (12226,1,23989), (12260,1,24085), (12300,1,24223), (12301,1,24225), (12302,1,24228),
(12303,1,24230), (12238,1,24019), (12240,1,24023), (12285,1,24149), (12322,1,24267), (12602,1,25535), (12603,1,25534), (12605,1,25536), (12604,1,25537),
(12304,1,24232), (12305,1,24233), (12306,1,24234);
DELETE FROM npc_vendor WHERE entry = 25950;
UPDATE creature_template SET VendorTemplateId=0 WHERE entry IN(25046);
DELETE FROM conditions WHERE condition_entry BETWEEN 10301 AND 10319;
INSERT INTO conditions(condition_entry,type,value1) VALUES
(10301,12,301), (10302,12,302), (10303,12,303), (10304,12,304), (10305,12,305), (10306,12,306), (10307,12,307), (10308,12,308), (10309,12,309),
(10310,12,310), (10311,12,311), (10312,12,312), (10313,12,313), (10314,12,314), (10315,12,315), (10316,12,316), (10317,12,317), (10318,12,318), (10319,12,319);
DELETE FROM conditions WHERE condition_entry IN (11010,11011,11012,11013,11014,11015);
INSERT INTO conditions (condition_entry, `type`, value1, value2, value3, value4, flags, comments) VALUES
(11010, 12, 309, 0, 0, 0, 1, 'Event ID 309 NOT Active'),
(11011, 12, 310, 0, 0, 0, 1, 'Event ID 310 NOT Active'),
(11012, -1, 11010, 11011, 0, 0, 0, '(Event ID 309 NOT Active AND Event ID 310 NOT Active)'),
(11013, -1, 10306, 10309, 0, 0, 0, '(Event ID 306 Active AND Event ID 309 Active)'),
(11014, -1, 10310, 11010, 0, 0, 0, '(Event ID 306 Active AND Event ID 309 NOT Active)'),
(11015, -1, 10310, 10309, 0, 0, 0, '(Event ID 306 Active AND Event ID 309 Active)');
INSERT INTO `dbscripts_on_creature_movement` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(2497601, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'RUN ON'),
(2497601, 2000, 0, 1, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(2497601, 5000, 0, 0, 0, 0, 0, 0, 0, 0, 2000001342, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(2497602, 1000, 0, 15, 45105, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'cast 45105'),
(2497602, 2000, 0, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'RUN OFF'),
(2499901, 0, 0, 15, 45023, 0, 0, 23033, 15, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Irespeaker - Cast Fel Consumption');
INSERT INTO `dbscript_string` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`, `sound`, `type`, `language`, `emote`, `broadcast_text_id`, `comment`) VALUES
(2000001342, 'Charge!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, NULL);
UPDATE gossip_menu_option SET id = 7 WHERE menu_id =9046 AND id =0;
DELETE FROM gossip_menu_option WHERE menu_id IN(9046) AND id IN(0,1,2,3);
INSERT INTO gossip_menu_option(menu_id,id,option_text,option_broadcast_text,option_id,npc_option_npcflag,action_menu_id,condition_id) VALUES
(9046,0,'What news of the fight to take the Sun''s Reach Armory?',24222,1,1,52000,10302),
(9046,1,'How close are we to the completion of the anvil and forge at the Sun''s Reach Armory?',24224,1,1,52002,10308),
(9046,2,'Exarch, have we taken the Sun''s Reach Harbor yet?',24227,1,1,52001,10306),
(9046,3,'Nasuun, do you know how long until we have an alchemy lab at the Sun''s Reach Harbor?',24229,1,1,52003,10313);
DELETE FROM gossip_menu_option WHERE menu_id IN(52000,52001,52002,52003,9307);
INSERT INTO gossip_menu_option(menu_id, id, option_icon, option_text, option_broadcast_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_broadcast_text, condition_id) VALUES
(52000, 0, 0, 'I have something else to ask you about.', 24226, 1, 1, 9046, 0, 0, 0, 0, 0, 0),
(52001, 0, 0, 'I have something else to ask you about.', 24226, 1, 1, 9046, 0, 0, 0, 0, 0, 0),
(52002, 0, 0, 'I have something else to ask you about.', 24226, 1, 1, 9046, 0, 0, 0, 0, 0, 0),
(52003, 0, 0, 'I have something else to ask you about.', 24226, 1, 1, 9046, 0, 0, 0, 0, 0, 0),
(9307, 0, 0, 'I have something else to ask you about.', 24226, 1, 1, 9046, 0, 0, 0, 0, 0, 0);
DELETE FROM gossip_menu WHERE entry IN(9046,9307,52000,52001,52002,52003,51004,9052,9065,9063,9064,9127,9111,9087,9050,9115) AND condition_id > 0;
REPLACE INTO gossip_menu(entry, text_id, script_id, condition_id) VALUES
(9046,12226,0,10304), (52000,12300,0,0), (52001,12301,0,0), (52002,12302,0,0), (52003,12303,0,0), (9307,12304,0,10316), (9307,12305,0,10317), (9307,12306,0,10318),
(9293,12602,0,10316), (9293,12603,0,10317), (9293,12605,0,10318), (9052,12240,0,10301), (9065,12260,0,10301), (9063,12255,0,10302), (9064,12257,0,10302),
(9127,12339,0,10306), (9111,12319,0,10306), (9087,12285,0,10308), (9050,12238,0,10313), (9115,12322,0,10311);

DELETE FROM dbscripts_on_quest_end WHERE id = 1240;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1240,0,29,2,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'NPCFlags removed'),
(1240,10,21,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'active'),
(1240,100,0,0,0,0,0,0,0,2000001344,0,0,0,0,0,0,0,''),
(1240,500,40,0,0,0,2551,30,7,0,0,0,0,0,0,0,0,'desp object'),
(1240,1000,9,692,15,0,0,0,0,0,0,0,0,0,0,0,0,'Resp object (15 secs)'),
(1240,3000,3,0,0,0,0,0,0x04,0,0,0,0,0,0,0,1.658,'move'),
(1240,5100,0,0,0,0,0,0,0,2000001345,0,0,0,0,0,0,0,''),
(1240,6000,15,3644,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(1240,10000,40,0,0,0,2076,30,7,0,0,0,0,0,0,0,0,'make object refresh self'),
(1240,12000,3,0,0,0,0,0,0x04,0,0,0,0,0,0,0,2.513,'move'),
(1240,12100,0,0,0,0,0,0,0,2000001346,0,0,0,0,0,0,0,''),
(1240,13000,29,2,1,0,0,0,0x04,0,0,0,0,0,0,0,0,'NPCFlags added'),
(1240,14000,21,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'unactive');
UPDATE quest_template SET CompleteScript = 1240 WHERE entry = 1240;
DELETE FROM dbscript_string WHERE entry BETWEEN 2000001344 AND 2000001346;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000001344,'I am eager to hear what so angry an orc has to say...',0,0,0,0,NULL),
(2000001345,'%s places Marg\'s head in the cauldron.',0,2,0,0,NULL),
(2000001346,'Peer into the cauldron, $N.  Marg wishes to speak...',0,0,0,0,NULL);
UPDATE creature SET orientation = 2.428 WHERE id = 2519;
UPDATE `creature` SET `position_x` = '-14923.7', `position_y` = '119.903', `position_z` = '19.7946', `orientation` = '4.97419', `spawntimesecsmin` = '300', `spawntimesecsmax` = '300' WHERE `guid` =38;
UPDATE `gameobject` SET `position_y` = '164.62', `position_z` = '4.42706', `orientation` = '1.81514', `rotation2` = '0.78801', `rotation3` = '0.615662' WHERE `guid` =5652;
UPDATE gameobject SET spawntimesecsmin = 10, spawntimesecsmax = 10 WHERE id = 2551;
UPDATE `gameobject` SET `position_x` = '-12342.9', `position_z` = '2.8544', `orientation` = '-0.890119', `rotation2` = '-0.430512', `rotation3` = '0.902585' WHERE `guid` =65585;
UPDATE gameobject SET spawntimesecsmin=1, spawntimesecsmax=1 WHERE id=2076;
DELETE FROM gameobject WHERE guid = 692;
INSERT INTO gameobject (guid, id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax, animprogress, state) VALUES
(692,2552,0,1,1,-12347.216,164.01817,3.932144,1.6580619,0,0,0.73727703,0.6755905,-15,-15,255,1);

DELETE FROM dbscripts_on_quest_start WHERE id = 1363;
INSERT INTO dbscripts_on_quest_start (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1363,1,31,5386,50,0,0,0,0,0,0,0,0,0,0,0,0,'search for 5386'),
(1363,10,1,5,0,0,5386,100,0,0,0,0,0,0,0,0,0,''),
(1363,100,0,0,0,0,5386,100,0,2000001347,0,0,0,0,0,0,0,'');
UPDATE quest_template SET StartScript = 1363 WHERE entry = 1363;
DELETE FROM dbscript_string WHERE entry = 2000001347;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000001347,'I\'m lucky to be alive!',0,0,7,0,NULL);
UPDATE `creature` SET `spawntimesecsmin` = '300', `spawntimesecsmax` = '300' WHERE `guid` =6062;

DELETE FROM dbscripts_on_quest_start WHERE id IN (4964,4975);
INSERT INTO dbscripts_on_quest_start (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(4964,0,29,3,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'NPCFlags removed'),
(4964,10,21,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'active'),
(4964,100,15,16633,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(4964,7000,29,3,1,0,0,0,0x04,0,0,0,0,0,0,0,0,'NPCFlags added'),
(4964,8000,21,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'unactive'),
(4975,0,29,3,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'NPCFlags removed'),
(4975,10,21,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'active'),
(4975,100,15,16633,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(4975,7000,29,3,1,0,0,0,0x04,0,0,0,0,0,0,0,0,'NPCFlags added'),
(4975,8000,21,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'unactive');
UPDATE `creature` SET `position_x` = '-782.55', `position_y` = '-3711.31', `position_z` = '41.3629', `orientation` = '3.26377', `spawntimesecsmin` = '300', `spawntimesecsmax` = '300' WHERE `guid` =34673;
UPDATE quest_template SET StartScript = 4964 WHERE entry = 4964;
UPDATE quest_template SET StartScript = 4975, SpecialFlags = 0 WHERE entry = 4975;

DELETE FROM gameobject_template WHERE entry BETWEEN 21145 AND 21148;
INSERT INTO gameobject_template (entry, type, displayId, name, IconName, castBarCaption, faction, flags, ExtraFlags, size, data0, data1, data2, data3, data4, data5, data6, data7, data8, data9, data10, data11, data12, data13, data14, data15, data16, data17, data18, data19, data20, data21, data22, data23, CustomData1, mingold, maxgold, ScriptName) VALUES
(21145, 3, 566, 'Feast Boar', '', '', 0, 0, 0, 1, 93, 21145, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,''),
(21146, 3, 564, 'Feast Fish', '', '', 0, 0, 0, 1, 93, 21146, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,''),
(21147, 3, 563, 'Feast Fruit', '', '', 0, 0, 0, 1, 93, 21147, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,''),
(21148, 3, 565, 'Feast Goblet', '', '', 0, 0, 0, 1, 93, 21148, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,'');
DELETE FROM `gameobject_loot_template` WHERE `entry` = 21147 AND `item` = 1708;
DELETE FROM dbscripts_on_quest_end WHERE id = 1271;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1271,0,29,2,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'NPCFlags removed'),
(1271,10,21,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'active'),
(1271,100,1,22,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(1271,700,0,0,0,0,0,0,0,2000001348,0,0,0,0,0,0,0,''),
(1271,1000,9,1838,120,0,0,0,0,0,0,0,0,0,0,0,0,'Resp object (120 secs)'),
(1271,1001,9,1854,120,0,0,0,0,0,0,0,0,0,0,0,0,'Resp object (120 secs)'),
(1271,1002,9,1859,120,0,0,0,0,0,0,0,0,0,0,0,0,'Resp object (120 secs)'),
(1271,1003,9,1860,120,0,0,0,0,0,0,0,0,0,0,0,0,'Resp object (120 secs)'),
(1271,1004,9,1862,120,0,0,0,0,0,0,0,0,0,0,0,0,'Resp object (120 secs)'),
(1271,1005,9,1863,120,0,0,0,0,0,0,0,0,0,0,0,0,'Resp object (120 secs)'),
(1271,1006,9,1864,120,0,0,0,0,0,0,0,0,0,0,0,0,'Resp object (120 secs)'),
(1271,1007,9,1869,120,0,0,0,0,0,0,0,0,0,0,0,0,'Resp object (120 secs)'),
(1271,1008,9,1870,120,0,0,0,0,0,0,0,0,0,0,0,0,'Resp object (120 secs)'),
(1271,1009,9,1871,120,0,0,0,0,0,0,0,0,0,0,0,0,'Resp object (120 secs)'),
(1271,1010,9,1872,120,0,0,0,0,0,0,0,0,0,0,0,0,'Resp object (120 secs)'),
(1271,1011,9,1873,120,0,0,0,0,0,0,0,0,0,0,0,0,'Resp object (120 secs)'),
(1271,1012,9,1876,120,0,0,0,0,0,0,0,0,0,0,0,0,'Resp object (120 secs)'),
(1271,1013,9,1877,120,0,0,0,0,0,0,0,0,0,0,0,0,'Resp object (120 secs)'),
(1271,1014,9,1878,120,0,0,0,0,0,0,0,0,0,0,0,0,'Resp object (120 secs)'),
(1271,1015,9,1882,120,0,0,0,0,0,0,0,0,0,0,0,0,'Resp object (120 secs)'),
(1271,1016,9,1884,120,0,0,0,0,0,0,0,0,0,0,0,0,'Resp object (120 secs)'),
(1271,1017,9,1885,120,0,0,0,0,0,0,0,0,0,0,0,0,'Resp object (120 secs)'),
(1271,1018,9,1886,120,0,0,0,0,0,0,0,0,0,0,0,0,'Resp object (120 secs)'),
(1271,1019,9,1890,120,0,0,0,0,0,0,0,0,0,0,0,0,'Resp object (120 secs)'),
(1271,1020,9,1891,120,0,0,0,0,0,0,0,0,0,0,0,0,'Resp object (120 secs)'),
(1271,1021,9,1892,120,0,0,0,0,0,0,0,0,0,0,0,0,'Resp object (120 secs)'),
(1271,1022,9,1897,120,0,0,0,0,0,0,0,0,0,0,0,0,'Resp object (120 secs)'),
(1271,1023,9,1899,120,0,0,0,0,0,0,0,0,0,0,0,0,'Resp object (120 secs)'),
(1271,1024,9,1900,120,0,0,0,0,0,0,0,0,0,0,0,0,'Resp object (120 secs)'),
(1271,1025,9,1911,120,0,0,0,0,0,0,0,0,0,0,0,0,'Resp object (120 secs)'),
(1271,1026,9,1618,120,0,0,0,0,0,0,0,0,0,0,0,0,'Resp object (120 secs)'),
(1271,1027,9,1619,120,0,0,0,0,0,0,0,0,0,0,0,0,'Resp object (120 secs)'),
(1271,5000,1,25,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(1271,5300,0,0,0,0,0,0,0,2000001349,0,0,0,0,0,0,0,''),
(1271,10000,29,2,1,0,0,0,0x04,0,0,0,0,0,0,0,0,'NPCFlags added'),
(1271,11000,21,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'unactive'),
(1271,12000,31,1311,40,0,0,0,0,0,0,0,0,0,0,0,0,'search for 1311'),
(1271,12010,31,3628,40,0,0,0,0,0,0,0,0,0,0,0,0,'search for 3628'),
(1271,12100,1,21,0,0,1311,50,0x04,0,0,0,0,0,0,0,0,'buddy emote'),
(1271,12101,1,4,0,0,3628,50,0x04,0,0,0,0,0,0,0,0,'buddy emote'),
(1271,12300,0,0,0,0,1311,50,0,2000001350,2000001632,2000001633,2000001343,0,0,0,0,'buddy emote'),
(1271,12301,0,0,0,0,3628,50,0,2000001343,2000001633,2000001632,2000001350,0,0,0,0,'buddy emote');
UPDATE quest_template SET CompleteScript = 1271 WHERE entry = 1271;
DELETE FROM dbscript_string WHERE entry BETWEEN 2000001348 AND 2000001350;
DELETE FROM dbscript_string WHERE entry = 2000001343;
DELETE FROM dbscript_string WHERE entry = 2000001632;
DELETE FROM dbscript_string WHERE entry = 2000001633;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000001348,'All hail $N, a $c of worth!',0,0,7,0,NULL),
(2000001349,'Behold!  The Blue Recluse holds a feast in $g his:her; honor!',0,0,7,0,NULL),
(2000001350,'Hooray, $N!',0,0,7,0,NULL),
(2000001632,'Let\'s here it for $N!',0,0,7,0,NULL),
(2000001633,'Here here!',0,0,7,0,NULL),
(2000001343,'Long live $N!',0,0,7,0,NULL);
INSERT INTO gameobject (guid, id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax, animprogress, state) VALUES
(1838,21145,0,1,1,-9084.636,830.32074,109.60953,0.5410506,0,0,0.26723766,0.9636307,-120,-120,100,1),
(1854,21145,0,1,1,-9082.942,825.94415,109.60953,3.5430236,0,0,-0.9799242,0.19937038,-120,-120,100,1),
(1859,21145,0,1,1,-9058.304,837.4026,110.21687,5.044002,0,0,-0.5807028,0.81411564,-120,-120,100,1),
(1860,21146,0,1,1,-9080.984,821.0164,109.60953,5.3058023,0,0,-0.46947098,0.8829479,-120,-120,100,1),
(1862,21146,0,1,1,-9080.442,819.65,109.60953,5.5152416,0,0,-0.37460613,0.92718405,-120,-120,100,1),
(1863,21146,0,1,1,-9079.8955,818.18536,109.60953,5.1138167,0,0,-0.55193615,0.8338864,-120,-120,100,1),
(1864,21146,0,1,1,-9070.345,830.48157,109.4378,1.7104216,0,0,0.75470924,0.65605944,-120,-120,100,1),
(1869,21146,0,1,1,-9074.476,836.4734,109.42935,5.637414,0,0,-0.3173046,0.94832367,-120,-120,100,1),
(1870,21146,0,1,1,-9059.526,839.94617,110.23094,2.0071285,0,0,0.8433914,0.53729963,-120,-120,100,1),
(1871,21147,0,1,1,-9081.2705,822.6052,109.60953,3.4557557,0,0,-0.98768806,0.15643623,-120,-120,100,1),
(1872,21147,0,1,1,-9083.817,828.11523,109.60953,2.4434602,0,0,0.9396925,0.34202045,-120,-120,100,1),
(1873,21147,0,1,1,-9071.495,829.0843,109.4549,3.6128378,0,0,-0.9723692,0.23344836,-120,-120,100,1),
(1876,21148,0,1,1,-9079.41,828.7873,109.43505,1.0821029,0,0,0.51503754,0.8571676,-120,-120,100,1),
(1877,21148,0,1,1,-9081.094,828.5643,109.43234,1.6406069,0,0,0.7313528,0.6819993,-120,-120,100,1),
(1878,21148,0,1,1,-9081.13,830.21466,109.44592,2.2689254,0,0,0.9063072,0.4226195,-120,-120,100,1),
(1882,21148,0,1,1,-9072.722,829.44464,109.47318,5.619962,0,0,-0.32556725,0.94551885,-120,-120,100,1),
(1884,21148,0,1,1,-9071.013,828.1346,109.43066,5.98648,0,0,-0.14780903,0.98901594,-120,-120,100,1),
(1885,21148,0,1,1,-9069.083,829.03174,109.42648,2.6878066,0,0,0.97437,0.22495131,-120,-120,100,1),
(1886,21148,0,1,1,-9075.43,838.10583,109.46908,2.740162,0,0,0.9799242,0.19937038,-120,-120,100,1),
(1890,21148,0,1,1,-9072.332,837.085,109.42363,1.1693686,0,0,0.55193615,0.8338864,-120,-120,100,1),
(1891,21148,0,1,1,-9072.989,838.1865,109.43098,5.218536,0,0,-0.50753784,0.8616294,-120,-120,100,1),
(1892,21148,0,1,1,-9087.677,830.554,116.72611,1.3962618,0,0,0.642787,0.766045,-120,-120,100,1),
(1897,21148,0,1,1,-9087.118,831.9717,116.77471,4.520403,0,0,-0.77162457,0.63607824,-120,-120,100,1),
(1899,21148,0,1,1,-9085.208,815.24835,116.72203,4.904376,0,0,-0.6360779,0.77162486,-120,-120,100,1),
(1900,21148,0,1,1,-9093.545,836.9065,116.72898,2.0245788,0,0,0.84804726,0.5299206,-120,-120,100,1),
(1911,21148,0,1,1,-9094.814,836.335,116.70815,1.0995564,0,0,0.52249813,0.85264045,-120,-120,100,1),
(1618,21148,0,1,1,-9059.739,838.8374,110.21679,0.90757024,0,0,0.4383707,0.89879423,-120,-120,100,1),
(1619,21148,0,1,1,-9057.807,838.71893,110.23438,2.5481794,0,0,0.95630455,0.29237235,-120,-120,100,1);
UPDATE `creature` SET `position_x` = '-9080.16', `position_y` = '823.298', `position_z` = '108.419', `orientation` = '0.567056', `spawntimesecsmin` = '300', `spawntimesecsmax` = '300' WHERE `guid` =5752;

UPDATE creature_template SET MovementType = 2 WHERE entry = 11862;
UPDATE creature SET position_x = 824.63477, position_y = 933.27136, position_z = 155.38937, orientation = 2.1658, spawndist = 0, MovementType = 2 WHERE id = 11862;
DELETE FROM creature_movement WHERE id IN (SELECT guid FROM creature WHERE id = 11862);
DELETE FROM creature_movement_template WHERE entry = 11862;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(11862,1,824.63477,933.27136,155.38937,2.1658,30000,0),
(11862,2,818.8743,942.00024,154.37022,2.3038,10000,1186201);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (1186201);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1186201,1000,1,35,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Tsunaman - emote EMOTE_ONESHOT_ATTACKUNARMED'),
(1186201,3000,1,35,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Tsunaman - emote EMOTE_ONESHOT_ATTACKUNARMED'),
(1186201,5000,1,35,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Tsunaman - emote EMOTE_ONESHOT_ATTACKUNARMED'),
(1186201,7000,1,35,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Tsunaman - emote EMOTE_ONESHOT_ATTACKUNARMED');

DELETE FROM dbscripts_on_quest_start WHERE id = 2381;
INSERT INTO dbscripts_on_quest_start (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2381,10,21,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'active'),
(2381,100,3,0,0,0,0,0,0x04,0,0,0,0,0,0,0,4.782,'move'),
(2381,500,0,0,0,0,0,0,0,2000001634,0,0,0,0,0,0,0,''),
(2381,600,0,0,0,0,0,0,0,2000001635,0,0,0,0,0,0,0,''),
(2381,2000,3,0,0,0,0,0,0x04,0,0,0,0,0,0,0,3.089,'move'),
(2381,2001,31,7166,30,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2381,2010,15,6668,0,0,7166,40,7,0,0,0,0,0,0,0,0,'buddy cast: Red Firework'),
(2381,2110,0,0,0,0,7166,40,7,2000001636,0,0,0,0,0,0,0,'buddy: say'),
(2381,4000,15,6668,0,0,7166,40,7,0,0,0,0,0,0,0,0,'buddy cast: Red Firework'),
(2381,7010,15,6668,0,0,7166,40,7,0,0,0,0,0,0,0,0,'buddy cast: Red Firework'),
(2381,9000,15,6668,0,0,7166,40,7,0,0,0,0,0,0,0,0,'buddy cast: Red Firework'),
(2381,9100,21,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'unactive');
UPDATE quest_template SET StartScript = 2381 WHERE entry = 2381;
DELETE FROM dbscript_string WHERE entry BETWEEN 2000001634 AND 2000001636;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000001634,'Make sure to visit the Gizmotronic Apparatus to grab a lockpick and an E.C.A.C. You will definitely need both to complete your mission!',0,0,0,0,NULL),
(2000001635,'%s points you to the Gizmotronic Apparatus.',0,2,0,0,NULL),
(2000001636,'%s explodes, lighting the sky up in a brilliant fireworks display! It seems to be beckoning to you, rogue.',0,2,0,0,NULL);
UPDATE dbscripts_on_gossip SET datalong2=1 WHERE id=52400;
UPDATE dbscripts_on_gossip SET datalong2=1 WHERE id=52401;
UPDATE `creature` SET `position_x` = '-841.221', `position_y` = '-3772.92', `position_z` = '17.5408', `orientation` = '3.00197', `spawntimesecsmin` = '300', `spawntimesecsmax` = '300' WHERE `guid` =34451;
UPDATE `creature` SET `position_x` = '-841.132', `position_y` = '-3767.78', `position_z` = '17.9708', `orientation` = '3.08923', `spawntimesecsmin` = '300', `spawntimesecsmax` = '300' WHERE `guid` =34452;

DELETE FROM dbscripts_on_quest_start WHERE id = 667;
INSERT INTO dbscripts_on_quest_start (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(667,0,0,0,0,0,0,0,0,2000001191,0,0,0,0,0,0,0,'say_protect_1'),
(667,1000,34,2191,667,0,0,0,0,0,0,0,0,0,0,0,0,'Stop script if player is dead or out of range'),
(667,1000,34,2192,667,0,0,0,0,0,0,0,0,0,0,0,0,'Stop script if npc is dead'),
(667,14000,34,2191,667,0,0,0,0,0,0,0,0,0,0,0,0,'Stop script if player is dead or out of range'),
(667,14000,34,2192,667,0,0,0,0,0,0,0,0,0,0,0,0,'Stop script if npc is dead'),
(667,15000,10,2775,120000,1,0,0,0x08,1,0,0,0,-2158.06,-1925.64,4.07425,0,'summon 1st wave'),
(667,18000,10,2775,120000,3,0,0,0x08,1,0,0,0,-2145.76,-1926.12,3.02982,0,'summon 1st wave'),
(667,18000,10,2775,120000,4,0,0,0x08,1,0,0,0,-2166.72,-1918.18,3.82191,0,'summon 1st wave'),
(667,54000,34,2191,667,0,0,0,0,0,0,0,0,0,0,0,0,'Stop script if player is dead or out of range'),
(667,54000,34,2192,667,0,0,0,0,0,0,0,0,0,0,0,0,'Stop script if npc is dead'),
(667,55000,10,2775,120000,2,0,0,0x08,1,0,0,0,-2158.06,-1925.64,4.07425,0,'summon 2nd wave'),
(667,58000,10,2775,120000,3,0,0,0x08,1,0,0,0,-2145.76,-1926.12,3.02982,0,'summon 2nd wave'),
(667,58000,10,2775,120000,4,0,0,0x08,1,0,0,0,-2166.72,-1918.18,3.82191,0,'summon 2nd wave'),
(667,65000,0,0,0,0,0,0,0,2000001192,0,0,0,0,0,0,0,'say_protect_2'),
(667,100000,34,2191,667,0,0,0,0,0,0,0,0,0,0,0,0,'Stop script if player is dead or out of range'),
(667,100000,34,2192,667,0,0,0,0,0,0,0,0,0,0,0,0,'Stop script if npc is dead'),
(667,110000,10,2775,120000,5,0,0,0x08,1,0,0,0,-2158.06,-1925.64,4.07425,0,'summon 3rd wave'),
(667,130000,10,2775,120000,3,0,0,0x08,1,0,0,0,-2145.76,-1926.12,3.02982,0,'summon 3rd wave'),
(667,130000,10,2775,120000,4,0,0,0x08,1,0,0,0,-2166.72,-1918.18,3.82191,0,'summon 3rd wave'),
(667,190000,34,2191,667,0,0,0,0,0,0,0,0,0,0,0,0,'Stop script if player is dead or out of range'),
(667,190000,34,2192,667,0,0,0,0,0,0,0,0,0,0,0,0,'Stop script if npc is dead'),
(667,195000,7,667,0,0,0,0,0,0,0,0,0,0,0,0,0,'quest complete');
UPDATE creature_template SET MovementType = 2 WHERE entry = 2775;
DELETE FROM creature_movement_template WHERE entry = 2775;
INSERT INTO creature_movement_template (entry, pathId, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(2775,1,1,-2158.06,-1925.64,4.07425,100,0,0),
(2775,1,2,-2161.01,-1941.13,6.13046,100,0,0),
(2775,1,3,-2162.1,-1950.39,9.09931,100,0,0),
(2775,1,4,-2160.18,-1962.16,13.8775,100,0,0),
(2775,1,5,-2156.07,-1970.84,15.3488,100,0,0),
(2775,1,6,-2151.92,-1975.64,14.6527,100,5000,277501),
(2775,1,7,-2144.23,-1983.26,11.8107,100,0,0),
(2775,1,8,-2136.27,-1988.54,7.91899,100,0,0),
(2775,1,9,-2128.4,-1994.38,4.82896,100,0,0),
(2775,1,10,-2121.82,-2003.76,5.35997,100,0,0),
(2775,1,11,-2115.07,-2013.4,6.20983,100,0,0),
(2775,1,12,-2107.77,-2028.73,5.82784,100,0,0),
(2775,1,13,-2102.57,-2029.62,3.17437,100,0,0),
(2775,1,14,-2092.01,-2030.09,2.89767,100,120000,277503),
(2775,2,1,-2158.06,-1925.64,4.07425,100,0,0),
(2775,2,2,-2161.01,-1941.13,6.13046,100,0,0),
(2775,2,3,-2162.1,-1950.39,9.09931,100,0,0),
(2775,2,4,-2160.18,-1962.16,13.8775,100,0,0),
(2775,2,5,-2156.07,-1970.84,15.3488,100,0,0),
(2775,2,6,-2151.92,-1975.64,14.6527,100,5000,277502),
(2775,2,7,-2144.23,-1983.26,11.8107,100,0,0),
(2775,2,8,-2136.27,-1988.54,7.91899,100,0,0),
(2775,2,9,-2128.4,-1994.38,4.82896,100,0,0),
(2775,2,10,-2121.82,-2003.76,5.35997,100,0,0),
(2775,2,11,-2115.07,-2013.4,6.20983,100,0,0),
(2775,2,12,-2107.77,-2028.73,5.82784,100,0,0),
(2775,2,13,-2102.57,-2029.62,3.17437,100,0,0),
(2775,2,14,-2092.01,-2030.09,2.89767,100,120000,277503),
(2775,3,1,-2145.76,-1926.12,3.02982,100,0,0),
(2775,3,2,-2153.52,-1939.19,4.95121,100,0,0),
(2775,3,3,-2157.8,-1948.62,7.8801,100,0,0),
(2775,3,4,-2158.91,-1957.87,12.4539,100,0,0),
(2775,3,5,-2157.47,-1963.07,14.6039,100,0,0),
(2775,3,6,-2154.91,-1968.46,15.4815,100,0,0),
(2775,3,7,-2150.83,-1973.92,14.788,100,1000,0),
(2775,3,8,-2144.98,-1979.13,12.735,100,0,0),
(2775,3,9,-2138.83,-1984.13,9.81483,100,0,0),
(2775,3,10,-2129.81,-1991.55,5.09314,100,0,0),
(2775,3,11,-2124.34,-1996.36,4.34258,100,0,0),
(2775,3,12,-2116.62,-2006.21,5.85704,100,0,0),
(2775,3,13,-2110.59,-2012.71,5.59501,100,0,0),
(2775,3,14,-2107.6,-2014.87,5.09131,100,0,0),
(2775,3,15,-2104.03,-2015.94,3.09835,100,0,0),
(2775,3,16,-2091.24,-2025.33,3.12898,100,120000,277503),
(2775,4,1,-2166.72,-1918.18,3.82191,100,0,0),
(2775,4,2,-2166.97,-1930.58,4.80627,100,0,0),
(2775,4,3,-2166.71,-1942.43,7.16583,100,0,0),
(2775,4,4,-2165.46,-1952.13,10.0794,100,0,0),
(2775,4,5,-2163.37,-1959.89,12.7558,100,0,0),
(2775,4,6,-2159.63,-1967.79,15.3827,100,0,0),
(2775,4,7,-2153.08,-1977.54,14.5236,100,1000,0),
(2775,4,8,-2146.81,-1983.65,12.4705,100,0,0),
(2775,4,9,-2140.06,-1987.82,9.6907,100,0,0),
(2775,4,10,-2131.85,-1993.35,5.90926,100,0,0),
(2775,4,11,-2129.25,-1996.72,5.20376,100,0,0),
(2775,4,12,-2122.62,-2005.92,5.69564,100,0,0),
(2775,4,13,-2116.8,-2012.84,6.22495,100,0,0),
(2775,4,14,-2113.43,-2022.56,6.25474,100,0,0),
(2775,4,15,-2109.05,-2030.59,6.15347,100,0,0),
(2775,4,16,-2102.81,-2030.7,2.95099,100,0,0),
(2775,4,17,-2090.99,-2032.33,3.47207,100,120000,277503),
(2775,5,1,-2158.06,-1925.64,4.07425,100,0,0),
(2775,5,2,-2161.01,-1941.13,6.13046,100,0,0),
(2775,5,3,-2162.1,-1950.39,9.09931,100,0,0),
(2775,5,4,-2160.18,-1962.16,13.8775,100,0,0),
(2775,5,5,-2156.07,-1970.84,15.3488,100,0,0),
(2775,5,6,-2151.92,-1975.64,14.6527,100,5000,0),
(2775,5,7,-2144.23,-1983.26,11.8107,100,0,0),
(2775,5,8,-2136.27,-1988.54,7.91899,100,0,0),
(2775,5,9,-2128.4,-1994.38,4.82896,100,0,0),
(2775,5,10,-2121.82,-2003.76,5.35997,100,0,0),
(2775,5,11,-2115.07,-2013.4,6.20983,100,0,0),
(2775,5,12,-2107.77,-2028.73,5.82784,100,0,0),
(2775,5,13,-2102.57,-2029.62,3.17437,100,0,0),
(2775,5,14,-2092.01,-2030.09,2.89767,100,120000,277503);
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 277501 AND 277506;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(277501,1000,0,0,0,0,0,0,0,2000001637,0,0,0,0,0,0,0,''),
(277502,1000,0,0,0,0,0,0,0,2000001638,0,0,0,0,0,0,0,''),
(277503,0,20,1,3,120000,0,0,12,0,0,0,0,0,0,0,0,'randommovement'),
(277503,100,31,2610,50,0,0,0,0,0,0,0,0,0,0,0,0,'search for 2610'),
(277503,200,26,0,0,0,2610,60,1,0,0,0,0,0,0,0,0,'attack 2610');
DELETE FROM dbscript_string WHERE entry BETWEEN 2000001637 AND 2000001638;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000001637,'You\'ve plundered our treasures too long.  Prepare to meet your watery grave!',0,1,0,0,NULL),
(2000001638,'Nothing will stop us!  You will die!',0,1,0,0,NULL);
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(2015, 113529, 0, 1, 1, -2071.66, -2020.84, 13.4, 5.41052, 0, 0, -0.422618, 0.906308, 7200, 7200, 100, 1),
(40207, 113531, 0, 1, 1, -2071.27, -2021.62, 12.9, 2.67035, 0, 0, 0.972369, 0.233448, 7200, 7200, 100, 1);
DELETE FROM dbscripts_on_go_template_use WHERE id IN (113531);
INSERT INTO dbscripts_on_go_template_use (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(113531,0,13,0,0,0,0,0,0x08,0,0,0,0,0,0,0,0,''),
(113531,100,13,0,0,0,113529,10,1,0,0,0,0,0,0,0,0,'');
DELETE FROM spell_target_position WHERE id=4170;
INSERT INTO spell_target_position (id, target_map, target_position_x, target_position_y, target_position_z, target_orientation) VALUES (4170,0,-2145.03,-1985.22,11.8647,2);
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(10995, 2610, 0, 1, 1, 0, 0, -2086.35, -2028.79, 3.18854, 2.67035, 90, 90, 0, 0, 1753, 0, 0, 0),
(10991, 2766, 0, 1, 1, 0, 0, -2117.71, -2010.82, 6.29982, 2.91768, 300, 300, 2, 0, 1678, 0, 0, 1),
(11006, 2767, 0, 1, 1, 0, 0, -2088.96, -2047.39, 3.49737, 5.007, 300, 300, 2, 0, 1678, 0, 0, 1),
(11014, 2768, 0, 1, 1, 0, 0, -2066.46, -2085.97, 9.08255, 0.096521, 300, 300, 0, 0, 1604, 0, 0, 0);
DELETE FROM dbscripts_on_creature_death WHERE id = 2610;
INSERT INTO dbscripts_on_creature_death (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2610,0,35,5,100,0,0,0,0x04,0,0,0,0,0,0,0,0,'Send AI Event 5'),
(2610,0,18,5000,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Desp Self');

DELETE FROM item_template WHERE entry IN (2550,2551,2552,2557,2558,2559);
INSERT INTO item_template (`entry`, `class`, `subclass`, `unk0`, `name`, `displayid`, `Quality`, `Flags`,`BuyCount`, `BuyPrice`, `SellPrice`, `InventoryType`, `AllowableClass`, `AllowableRace`, `ItemLevel`, `RequiredLevel`, `RequiredSkill`, `RequiredSkillRank`, `requiredspell`, `requiredhonorrank`, `RequiredCityRank`, `RequiredReputationFaction`, `RequiredReputationRank`, `maxcount`, `stackable`, `ContainerSlots`,`stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `stat_type3`, `stat_value3`, `stat_type4`, `stat_value4`, `stat_type5`, `stat_value5`, `stat_type6`, `stat_value6`, `stat_type7`, `stat_value7`, `stat_type8`, `stat_value8`, `stat_type9`, `stat_value9`, `stat_type10`, `stat_value10`,`dmg_min1`, `dmg_max1`, `dmg_type1`, `dmg_min2`, `dmg_max2`, `dmg_type2`, `armor`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `delay`, `ammo_type`, `RangedModRange`, `spellid_1`, `spelltrigger_1`, `spellcharges_1`, `spellppmRate_1`, `spellcooldown_1`, `spellcategory_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcharges_2`, `spellppmRate_2`, `spellcooldown_2`, `spellcategory_2`, `spellcategorycooldown_2`, `spellid_3`, `spelltrigger_3`, `spellcharges_3`, `spellppmRate_3`, `spellcooldown_3`, `spellcategory_3`, `spellcategorycooldown_3`, `spellid_4`, `spelltrigger_4`, `spellcharges_4`, `spellppmRate_4`, `spellcooldown_4`, `spellcategory_4`, `spellcategorycooldown_4`, `spellid_5`, `spelltrigger_5`, `spellcharges_5`, `spellppmRate_5`, `spellcooldown_5`, `spellcategory_5`, `spellcategorycooldown_5`, `bonding`, `description`, `PageText`, `LanguageID`, `PageMaterial`, `startquest`, `lockid`, `Material`, `sheath`, `RandomProperty`, `RandomSuffix`, `block`, `itemset`, `MaxDurability`, `area`, `Map`, `BagFamily`, `TotemCategory`, `socketColor_1`, `socketContent_1`, `socketColor_2`, `socketContent_2`, `socketColor_3`, `socketContent_3`, `socketBonus`, `GemProperties`, `RequiredDisenchantSkill`, `ArmorDamageModifier`, `ScriptName`, `DisenchantID`, `FoodType`, `minMoneyLoot`, `maxMoneyLoot`, `Duration`, `ExtraFlags`) VALUES
('2550','2','2','-1','Monster - Bow, Brown','8106','0','0','1','0','0','15','-1','-1','0','0','0','0','0','0','0','0','0','0','1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','1000','0','0','0','0','0','0','-1','0','-1','0','0','0','0','-1','0','-1','0','0','0','0','-1','0','-1','0','0','0','0','-1','0','-1','0','0','0','0','-1','0','-1','0','','0','0','0','0','0','2','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','-1','0','','0','0','0','0','0','0'),
('2551','2','18','-1','Monster - Crossbow','10671','0','0','1','0','0','26','-1','-1','0','0','0','0','0','0','0','0','0','0','1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','1000','0','0','0','0','0','0','-1','0','-1','0','0','0','0','-1','0','-1','0','0','0','0','-1','0','-1','0','0','0','0','-1','0','-1','0','0','0','0','-1','0','-1','0','','0','0','0','0','0','1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','-1','0','','0','0','0','0','0','0'),
('2552','2','3','-1','Monster - Gun','6593','0','0','1','0','0','26','-1','-1','0','0','0','0','0','0','0','0','0','0','1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','1000','0','0','0','0','0','0','-1','0','-1','0','0','0','0','-1','0','-1','0','0','0','0','-1','0','-1','0','0','0','0','-1','0','-1','0','0','0','0','-1','0','-1','0','','0','0','0','0','0','1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','-1','0','','0','0','0','0','0','0'),
('2557','2','5','-1','Monster - Mace2H, Ornate Metal Hammer','2466','0','0','1','0','0','17','-1','-1','0','0','0','0','0','0','0','0','0','0','1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','1000','0','0','0','0','0','0','-1','0','-1','0','0','0','0','-1','0','-1','0','0','0','0','-1','0','-1','0','0','0','0','-1','0','-1','0','0','0','0','-1','0','-1','0','','0','0','0','0','0','2','1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','-1','0','','0','0','0','0','0','0'),
('2558','2','4','-1','Monster - Mace, Good Wooden Hammer','7442','0','0','1','0','0','13','-1','-1','0','0','0','0','0','0','0','0','0','0','1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','1000','0','0','0','0','0','0','-1','0','-1','0','0','0','0','-1','0','-1','0','0','0','0','-1','0','-1','0','0','0','0','-1','0','-1','0','0','0','0','-1','0','-1','0','','0','0','0','0','0','2','3','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','-1','0','','0','0','0','0','0','0'),
('2559','2','10','-1','Monster - Staff, Ornate Warlock Staff','2469','0','0','1','0','0','17','-1','-1','0','0','0','0','0','0','0','0','0','0','1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','1000','0','0','0','0','0','0','-1','0','-1','0','0','0','0','-1','0','-1','0','0','0','0','-1','0','-1','0','0','0','0','-1','0','-1','0','0','0','0','-1','0','-1','0','','0','0','0','0','0','2','2','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','-1','0','','0','0','0','0','0','0');

DELETE FROM dbscripts_on_quest_end WHERE id = 1108;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1108,0,29,2,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'NPCFlags removed'),
(1108,10,21,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'active'),
(1108,200,0,0,0,0,0,0,0,2000001639,0,0,0,0,0,0,0,''),
(1108,1200,3,0,0,0,0,0,0x04,0,0,0,0,-6764.65,-3126.02,241.87308,0.4779,'move'),
(1108,1500,1,69,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(1108,2000,0,0,0,0,0,0,0,2000001640,0,0,0,0,0,0,0,''),
(1108,4000,9,698,15,0,0,0,0,0,0,0,0,0,0,0,0,'Resp object (15 secs)'),
(1108,7000,0,0,0,0,0,0,0,2000001641,0,0,0,0,0,0,0,''),
(1108,12000,0,0,0,0,0,0,0,2000001642,0,0,0,0,0,0,0,''),
(1108,16000,1,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(1108,16100,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(1108,16110,3,0,0,0,0,0,0x04,0,0,0,0,-6763.3926,-3129.3,241.38553,100,'move'),
(1108,17000,0,0,0,0,0,0,0,2000001643,0,0,0,0,0,0,0,''),
(1108,18000,3,0,0,0,0,0,0x04,0,0,0,0,0,0,0,4.0666,'move'),
(1108,19000,29,2,1,0,0,0,0x04,0,0,0,0,0,0,0,0,'NPCFlags added'),
(1108,19100,21,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'unactive');
UPDATE quest_template SET CompleteScript = 1108 WHERE entry = 1108;
DELETE FROM dbscript_string WHERE entry BETWEEN 2000001639 AND 2000001643;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000001639,'%s takes the indurium flakes to his forge.',0,2,0,0,NULL),
(2000001640,'Now let\'s heat up these flakes...',0,0,0,0,NULL),
(2000001641,'So far they\'re holding.  Let\'s turn up the heat...',0,0,0,0,NULL),
(2000001642,'By Orgrim!  This indurium can withstand massive heat!',0,0,0,0,NULL),
(2000001643,'A successful test!  $N, this indurium is some amazing stuff.',0,0,0,0,NULL);
DELETE FROM gameobject_battleground WHERE guid = 698;
INSERT INTO gameobject (guid, id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax, animprogress, state) VALUES
(698,20358,0,1,1,-6763.941,-3125.0352,243.25328,1.5358895,0,0,0.6946583,0.71933985,-15,-15,255,1);
UPDATE `creature` SET `position_x` = '-6763.39', `position_y` = '-3129.3', `position_z` = '241.384', `orientation` = '4.06662', `spawntimesecsmin` = '300', `spawntimesecsmax` = '300' WHERE `guid` =7240;

DELETE FROM dbscripts_on_quest_end WHERE id = 1137;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1137,200,0,0,0,0,0,0,0,2000001644,0,0,0,0,0,0,0,''),
(1137,3000,1,1,0,0,0,0,6,0,0,0,0,0,0,0,0,''),
(1137,5000,0,0,0,0,0,0,0,2000001645,0,0,0,0,0,0,0,'');
UPDATE quest_template SET CompleteScript = 1137 WHERE entry = 1137;
DELETE FROM dbscript_string WHERE entry BETWEEN 2000001644 AND 2000001645;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000001644,'%s listens as $N tells him of $ghis:her; adventures in the Badlands.',0,0,0,0,NULL),
(2000001645,'Astounding!  So then indurium is the key!',0,0,0,1,NULL);
UPDATE `creature` SET `position_x` = '-6229.03', `position_y` = '-3868.18', `position_z` = '-58.6667', `orientation` = '6.19592', `spawntimesecsmin` = '300', `spawntimesecsmax` = '300' WHERE `guid` =25110;

DELETE FROM creature_movement WHERE id IN (7603);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,waittime,script_id) VALUES
(7603,1,-6401.47,-3168.86,298.048,100,2000,0),
(7603,2,-6404.84,-3170.87,295.769,100,0,0),
(7603,3,-6409.65,-3176.46,291.159,100,0,0),
(7603,4,-6416.73,-3191.92,280.409,100,0,0),
(7603,5,-6426,-3197.78,273.711,100,0,0),
(7603,6,-6433.97,-3200.38,268.8,100,0,0),
(7603,7,-6440.5,-3204.17,264.465,100,0,0),
(7603,8,-6449.07,-3214.61,257.83,100,0,0),
(7603,9,-6454.1,-3221.78,252.998,100,0,0),
(7603,10,-6464.07,-3237.34,245.028,100,0,0),
(7603,11,-6466.23,-3249.46,242.408,100,0,0),
(7603,12,-6469.26,-3267.51,241.668,100,0,0),
(7603,13,-6465.37,-3275.98,241.668,100,0,0),
(7603,14,-6458.36,-3289.06,241.668,100,0,0),
(7603,15,-6445.66,-3304.83,241.668,100,0,0),
(7603,16,-6435.92,-3315.27,241.668,100,0,0),
(7603,17,-6429.67,-3322.21,241.668,100,0,0),
(7603,18,-6416.42,-3337.77,241.668,100,0,0),
(7603,19,-6401.7,-3354.17,241.668,100,0,0),
(7603,20,-6391.65,-3366.32,241.668,100,0,0),
(7603,21,-6386.05,-3380.69,241.668,100,0,0),
(7603,22,-6387.66,-3389.91,241.668,100,0,0),
(7603,23,-6395.32,-3396.22,239.856,100,1000,0),
(7603,24,-6388.25,-3393.35,241.535,100,0,0),
(7603,25,-6384.97,-3379.85,241.667,100,0,0),
(7603,26,-6387.76,-3364.34,241.667,100,0,0),
(7603,27,-6391.99,-3353.76,241.667,100,0,0),
(7603,28,-6399.24,-3341.58,241.667,100,0,0),
(7603,29,-6403.22,-3328.87,241.667,100,0,0),
(7603,30,-6405.91,-3316.37,241.667,100,0,0),
(7603,31,-6406.91,-3303.16,241.667,100,0,0),
(7603,32,-6416.42,-3285.01,241.667,100,0,0),
(7603,33,-6426.57,-3276.21,241.667,100,0,0),
(7603,34,-6437.5,-3267.46,241.667,100,0,0),
(7603,35,-6447.69,-3256.31,241.794,100,0,0),
(7603,36,-6453.12,-3246.03,243.137,100,0,0),
(7603,37,-6454.05,-3237.45,246.183,100,0,0),
(7603,38,-6454.07,-3228.5,250.021,100,0,0),
(7603,39,-6450.7,-3217.29,256.176,100,0,0),
(7603,40,-6440.49,-3204.03,264.529,100,0,0),
(7603,41,-6426.05,-3197.78,273.692,100,0,0),
(7603,42,-6416.54,-3191.97,280.475,100,0,0),
(7603,43,-6412.88,-3183.3,286.412,100,0,0),
(7603,44,-6406.21,-3172.43,294.515,100,0,0);
DELETE FROM `creature` WHERE `guid` = 7663;
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(7603, 2743, 0, 1, 1, 0, 0, -6405.8, -3172.11, 294.793, 1.05, 300, 300, 0, 0, 1604, 0, 0, 2),
(7606, 2743, 0, 1, 1, 0, 0, -6404.9, -3174.49, 294.277, 1.05, 300, 300, 0, 0, 1604, 0, 0, 0);
UPDATE creature SET position_x = -6408.370117, position_y = -3172.040039, position_z = 293.834442, orientation = 1.05 WHERE guid = 7571;
DELETE FROM creature_linking WHERE guid IN (7606,7571);
INSERT INTO creature_linking (guid, master_guid, flag) VALUES (7606, 7603, 1+2+512), (7571, 7603, 1+2+512);

DELETE FROM dbscripts_on_quest_start WHERE id = 1806;
INSERT INTO dbscripts_on_quest_start (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1806,0,21,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'active'),
(1806,0,29,2,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'NpcFlags removed'),
(1806,1000,3,0,0,0,0,0,0x04,0,0,0,0,-5094.52,-785.855,495.21,3.50204,''),
(1806,4000,3,0,0,0,0,0,0x04,0,0,0,0,0,0,0,2.79125,''),
(1806,5000,0,0,0,0,0,0,0,2000002202,0,0,0,0,0,0,0,''),
(1806,7000,15,8912,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(1806,9000,15,8912,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(1806,11000,15,8912,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(1806,12000,9,16243,10,0,0,0,0,0,0,0,0,0,0,0,0,'respawn gobject'),
(1806,13000,15,8912,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(1806,15000,15,8912,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(1806,17000,15,8912,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(1806,19000,0,0,0,0,0,0,0,2000002203,0,0,0,0,0,0,0,''),
(1806,24000,3,0,0,0,0,0,0x04,0,0,0,0,-5089.28,-782.95,495.279,0.504059,''),
(1806,27000,3,0,0,0,0,0,0x04,0,0,0,0,0,0,0,5.77704,''),
(1806,27000,29,2,1,0,0,0,0x04,0,0,0,0,0,0,0,0,'NpcFlags added'),
(1806,27000,0,0,0,0,0,0,0,2000002204,0,0,0,0,0,0,0,''),
(1806,28000,21,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'unactive');

UPDATE creature_loot_template SET ChanceOrQuestChance = -100 WHERE item = 18705 AND entry NOT IN (10184,36538);

DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 27456);
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(108251, 27456, 571, 1, 1, 0, 0, 4344.64, -3314.85, 311.3, 4.22605, 300, 300, 5, 0, 9940, 0, 0, 1),
(108252, 27456, 571, 1, 1, 0, 0, 4390.21, -3309.17, 316.911, 2.76353, 300, 300, 5, 0, 9940, 0, 0, 1),
(108253, 27456, 571, 1, 1, 0, 0, 4417.05, -3237.69, 310.495, 0.424755, 300, 300, 0, 0, 9940, 0, 0, 0),
(108254, 27456, 571, 1, 1, 0, 0, 4422.84, -3292.22, 321.708, 2.89094, 300, 300, 0, 0, 9940, 0, 0, 0),
(108255, 27456, 571, 1, 1, 0, 0, 4331.68, -2826.26, 296.283, 4.60475, 300, 300, 10, 0, 9940, 0, 0, 1),
(108256, 27456, 571, 1, 1, 0, 0, 4482.38, -3230.17, 323.067, 1.13305, 300, 300, 0, 0, 9940, 0, 0, 0),
(108257, 27456, 571, 1, 1, 0, 0, 4252.65, -2865.77, 284.702, 0.679724, 300, 300, 10, 0, 9940, 0, 0, 1),
(108258, 27456, 571, 1, 1, 0, 0, 4265.29, -2864.21, 287.58, -1.46054, 300, 300, 0, 0, 9940, 0, 0, 0),
(108259, 27456, 571, 1, 1, 0, 0, 4447.6, -3180.92, 311.941, 4.94189, 300, 300, 5, 0, 9940, 0, 0, 1),
(108260, 27456, 571, 1, 1, 0, 0, 4417.25, -3149.78, 310.025, -1.30656, 300, 300, 0, 0, 9940, 0, 0, 0),
(108261, 27456, 571, 1, 1, 0, 0, 4407.9, -2947.67, 308.399, 6.1971, 300, 300, 5, 0, 9940, 0, 0, 1),
(108262, 27456, 571, 1, 1, 0, 0, 4340.63, -2939.74, 309.776, 5.68215, 300, 300, 5, 0, 9940, 0, 0, 1),
(108263, 27456, 571, 1, 1, 0, 0, 4337.77, -2896.26, 306.833, 1.4672, 300, 300, 10, 0, 9940, 0, 0, 1),
(108264, 27456, 571, 1, 1, 0, 0, 4298.21, -2812.64, 287.607, 6.2332, 300, 300, 10, 0, 9940, 0, 0, 1),
(108265, 27456, 571, 1, 1, 0, 0, 4428.44, -3037.09, 309.142, 3.70976, 300, 300, 5, 0, 9940, 0, 0, 1),
(108266, 27456, 571, 1, 1, 0, 0, 4423.57, -2977.32, 308.807, 3.8373, 300, 300, 5, 0, 9940, 0, 0, 1),
(108267, 27456, 571, 1, 1, 0, 0, 4430.85, -3107.79, 311.876, 0.057053, 300, 300, 0, 0, 9940, 0, 0, 0),
(108268, 27456, 571, 1, 1, 0, 0, 4416.76, -3052.59, 328.633, 0.793351, 300, 300, 2, 0, 9940, 0, 0, 1),
(108269, 27456, 571, 1, 1, 0, 0, 4397.38, -3040.4, 328.633, 0.45581, 300, 300, 2, 0, 9940, 0, 0, 1),
(108270, 27456, 571, 1, 1, 0, 0, 4375.49, -3096.81, 326.456, 4.76475, 300, 300, 2, 0, 9940, 0, 0, 1),
(108271, 27456, 571, 1, 1, 0, 0, 4375.98, -3095.35, 339.85, 4.44662, 300, 300, 2, 0, 9940, 0, 0, 1),
(108272, 27456, 571, 1, 1, 0, 0, 4186.47, -2809.06, 281.424, 4.50525, 300, 300, 5, 0, 9940, 0, 0, 1),
(108273, 27456, 571, 1, 1, 0, 0, 4263.64, -2896.07, 283.917, 6.20363, 300, 300, 10, 0, 9940, 0, 0, 1),
(108274, 27456, 571, 1, 1, 0, 0, 4293.87, -2868.06, 294.551, 3.64774, 300, 300, 10, 0, 9940, 0, 0, 1),
(108275, 27456, 571, 1, 1, 0, 0, 4270.1, -2843.48, 285.396, 4.70962, 300, 300, 10, 0, 9940, 0, 0, 1),
(108276, 27456, 571, 1, 1, 0, 0, 4217.74, -2853.85, 280.171, 5.55015, 300, 300, 10, 0, 9940, 0, 0, 1);
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 27475);
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(108199, 27475, 571, 1, 1, 0, 0, 3984.89, -3126.17, 278.233, 3.49223, 300, 300, 5, 0, 9291, 3231, 0, 1),
(108200, 27475, 571, 1, 1, 0, 0, 3997.04, -3169.43, 278.797, 3.18197, 300, 300, 5, 0, 9291, 3231, 0, 1),
(108201, 27475, 571, 1, 1, 0, 0, 3982.97, -3093.71, 275.522, 1.33008, 300, 300, 5, 0, 9291, 3231, 0, 1),
(108202, 27475, 571, 1, 1, 0, 0, 4044.09, -3226.41, 284.51, 3.88415, 300, 300, 5, 0, 9291, 3231, 0, 1),
(108203, 27475, 571, 1, 1, 0, 0, 4095.63, -3222.34, 278.307, 2.50531, 300, 300, 5, 0, 9291, 3231, 0, 1),
(108204, 27475, 571, 1, 1, 0, 0, 4279.6, -3138.82, 309.196, 1.96889, 300, 300, 5, 0, 9291, 3231, 0, 1),
(108205, 27475, 571, 1, 1, 0, 0, 4414.3, -3238.94, 310.136, 3.56634, 300, 300, 0, 0, 9291, 3231, 0, 0),
(108206, 27475, 571, 1, 1, 0, 0, 4420.07, -3291.6, 321.528, 2.86249, 300, 300, 5, 0, 9291, 3231, 0, 1),
(108207, 27475, 571, 1, 1, 0, 0, 4357.2, -3314.82, 312.577, 5.96903, 300, 300, 0, 0, 9291, 3231, 0, 0),
(108208, 27475, 571, 1, 1, 0, 0, 4389.93, -3045.68, 328.633, -0.249904, 300, 300, 2, 0, 9291, 3231, 0, 1),
(108209, 27475, 571, 1, 1, 0, 0, 4414.6, -3063.09, 328.633, 0.468966, 300, 300, 2, 0, 9291, 3231, 0, 1),
(108210, 27475, 571, 1, 1, 0, 0, 4483.52, -3227.73, 323.017, 6.22259, 300, 300, 5, 0, 9291, 3231, 0, 1),
(108211, 27475, 571, 1, 1, 0, 0, 4378.65, -3087.11, 339.851, 0.858109, 300, 300, 2, 0, 9291, 3231, 0, 1),
(108212, 27475, 571, 1, 1, 0, 0, 4363.59, -3091.11, 326.456, 3.72677, 300, 300, 2, 0, 9291, 3231, 0, 1),
(108213, 27475, 571, 1, 1, 0, 0, 4435.62, -3107.61, 310.811, 0.545098, 300, 300, 0, 0, 9291, 3231, 0, 0),
(108214, 27475, 571, 1, 1, 0, 0, 4417.98, -3152.48, 309.957, 1.83475, 300, 300, 0, 0, 9291, 3231, 0, 0),
(108215, 27475, 571, 1, 1, 0, 0, 4016.11, -3137.13, 278.026, 3.16986, 300, 300, 5, 0, 9291, 3231, 0, 1),
(108216, 27475, 571, 1, 1, 0, 0, 4064.87, -3175.92, 277.649, 6.24996, 300, 300, 5, 0, 9291, 3231, 0, 1),
(26429, 27475, 571, 1, 1, 0, 0, 4111.56, -3147.81, 275.082, 5.1513, 300, 300, 5, 0, 9291, 3231, 0, 1),
(26436, 27475, 571, 1, 1, 0, 0, 4006.31, -3059.62, 275.198, 3.56835, 300, 300, 5, 0, 9291, 3231, 0, 1),
(26439, 27475, 571, 1, 1, 0, 0, 4022.98, -3070.87, 273.069, 4.86688, 300, 300, 5, 0, 9291, 3231, 0, 1),
(26453, 27475, 571, 1, 1, 0, 0, 4023.05, -3031.87, 272.805, 4.13308, 300, 300, 5, 0, 9291, 3231, 0, 1),
(26470, 27475, 571, 1, 1, 0, 0, 3975.03, -2946.6, 277.817, 4.09372, 300, 300, 5, 0, 9291, 3231, 0, 1),
(26491, 27475, 571, 1, 1, 0, 0, 3937.87, -2953.11, 277.773, 4.87241, 300, 300, 5, 0, 9291, 3231, 0, 1),
(26498, 27475, 571, 1, 1, 0, 0, 3987.8, -2991.63, 274.89, 6.11954, 300, 300, 5, 0, 9291, 3231, 0, 1);

DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id in (11915,11917,11918));
DELETE FROM creature_movement WHERE id IN (SELECT guid FROM creature WHERE id in (11915,11917,11918));
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(36333, 11915, 1, 1, 1, 0, 0, -113.318, 211.236, 98.496, 2.00713, 300, 300, 3, 0, 330, 357, 0, 1),
(36399, 11915, 1, 1, 1, 0, 0, -11.9723, 362.959, 104.881, 4.23511, 300, 300, 3, 0, 330, 357, 0, 1),
(36437, 11915, 1, 1, 1, 0, 0, -22.2576, 336.967, 97.9809, 1.24287, 300, 300, 3, 0, 330, 357, 0, 1),
(30120, 11915, 1, 1, 1, 0, 0, -130.91, 207.525, 91.0963, 4.66615, 300, 300, 0, 0, 330, 357, 0, 2),
(36439, 11915, 1, 1, 1, 0, 0, -60.4238, 287.822, 87.7696, 4.54852, 300, 300, 3, 0, 330, 357, 0, 1),
(36444, 11915, 1, 1, 1, 0, 0, -22.5694, 316.062, 94.7531, 0.525938, 300, 300, 3, 0, 330, 357, 0, 1),
(36472, 11915, 1, 1, 1, 0, 0, -94.1317, 263.305, 96.8855, 1.84536, 300, 300, 3, 0, 330, 357, 0, 1),
(36481, 11915, 1, 1, 1, 0, 0, -125.418, 221.375, 98.0963, 3.52028, 300, 300, 3, 0, 330, 357, 0, 1),
(36496, 11915, 1, 1, 1, 0, 0, -46.0422, 294.483, 89.489, 0.756904, 300, 300, 5, 0, 330, 357, 0, 1),
(36501, 11915, 1, 1, 1, 0, 0, -10.4559, 399.835, 102.67, 0.849035, 300, 300, 3, 0, 330, 357, 0, 1),
(36506, 11915, 1, 1, 1, 0, 0, -0.328958, 377.332, 105.239, 0.631095, 300, 300, 3, 0, 330, 357, 0, 1),
(36510, 11915, 1, 1, 1, 0, 0, -81.3126, 311.902, 85.3384, 1.07945, 300, 300, 3, 0, 330, 357, 0, 1),
(36532, 11915, 1, 1, 1, 0, 0, -45.7433, 253.565, 85.9696, 0.261867, 300, 300, 3, 0, 330, 357, 0, 1),
(36551, 11915, 1, 1, 1, 0, 0, -104.301, 335.053, 92.7535, 1.97975, 300, 300, 3, 0, 330, 357, 0, 1),
(36556, 11915, 1, 1, 1, 0, 0, -97.6734, 185.591, 96.6757, 3.93072, 300, 300, 2, 0, 330, 357, 0, 1),
(36557, 11915, 1, 1, 1, 0, 0, -87.2766, 196.904, 101.426, 2.64622, 300, 300, 5, 0, 330, 357, 0, 1),
(36559, 11915, 1, 1, 1, 0, 0, -61.7958, 388.594, 107.36, 0.215177, 300, 300, 3, 0, 330, 357, 0, 1),
(36581, 11915, 1, 1, 1, 0, 0, -38.2517, 406.406, 104.335, 0.384885, 300, 300, 3, 0, 330, 357, 0, 1),
(30128, 11917, 1, 1, 1, 0, 0, -21.6501, 338.753, 98.3386, 1.33127, 300, 300, 0, 0, 320, 856, 0, 2),
(36625, 11917, 1, 1, 1, 0, 0, -43.8425, 315.066, 90.6867, 3.61085, 300, 300, 3, 0, 320, 856, 0, 1),
(30400, 11917, 1, 1, 1, 0, 0, -76.4861, 304.02, 84.6574, 1.61925, 300, 300, 0, 0, 320, 856, 0, 2),
(36633, 11917, 1, 1, 1, 0, 0, -74.1312, 273.765, 89.1062, 6.13879, 300, 300, 3, 0, 320, 856, 0, 1),
(36649, 11917, 1, 1, 1, 0, 0, -53.9914, 272.637, 88.3305, 1.97585, 300, 300, 5, 0, 320, 856, 0, 1),
(30408, 11917, 1, 1, 1, 0, 0, -90.3974, 259.903, 96.7885, 4.98695, 300, 300, 0, 0, 320, 856, 0, 2),
(36675, 11917, 1, 1, 1, 0, 0, -110.213, 237.08, 102.448, 1.18067, 300, 300, 3, 0, 320, 856, 0, 1),
(36678, 11917, 1, 1, 1, 0, 0, -110.893, 245.408, 102.87, 0.434493, 300, 300, 3, 0, 320, 856, 0, 1),
(36683, 11917, 1, 1, 1, 0, 0, 6.06838, 444.757, 104.038, 0.200303, 300, 300, 3, 0, 320, 856, 0, 1),
(36704, 11917, 1, 1, 1, 0, 0, -12.5966, 380.074, 106.11, 1.89599, 300, 300, 3, 0, 320, 856, 0, 1),
(36729, 11917, 1, 1, 1, 0, 0, -94.3642, 322.451, 87.8957, 3.59205, 300, 300, 3, 0, 320, 856, 0, 1),
(36737, 11917, 1, 1, 1, 0, 0, 3.60894, 362.869, 108.44, 5.46173, 300, 300, 3, 0, 320, 856, 0, 1),
(36740, 11917, 1, 1, 1, 0, 0, -11.9442, 445.45, 104.313, 2.54267, 300, 300, 3, 0, 320, 856, 0, 1),
(36782, 11917, 1, 1, 1, 0, 0, -89.2064, 313.617, 121.13, 4.35137, 300, 300, 3, 0, 320, 856, 0, 1),
(36816, 11917, 1, 1, 1, 0, 0, -45.5001, 361.119, 120.88, 1.61298, 300, 300, 3, 0, 320, 856, 0, 1),
(30423, 11917, 1, 1, 1, 0, 0, -95.0294, 340.365, 116.902, 1.21289, 300, 300, 0, 0, 320, 856, 0, 2),
(36824, 11917, 1, 1, 1, 0, 0, -120.406, 377.267, 94.6277, 4.89596, 300, 300, 5, 0, 320, 856, 0, 1),
(36456, 11917, 1, 1, 1, 0, 0, -48.177, 334.004, 118.754, 0.23116, 300, 300, 0, 0, 320, 856, 0, 2),
(36827, 11917, 1, 1, 1, 0, 0, -102.877, 359.386, 96.1244, 0.713119, 300, 300, 5, 0, 320, 856, 0, 1),
(36870, 11917, 1, 1, 1, 0, 0, -103.565, 392.575, 95.5481, 5.63851, 300, 300, 5, 0, 320, 856, 0, 1),
(36887, 11918, 1, 1, 1, 0, 0, -85.0587, 270.399, 92.1851, 3.84208, 300, 300, 3, 0, 390, 0, 0, 1),
(52370, 11918, 1, 1, 1, 0, 0, -2.30709, 447.153, 104.472, 5.77121, 300, 300, 3, 0, 390, 0, 0, 1),
(52371, 11918, 1, 1, 1, 0, 0, -58.1645, 350.578, 121.818, 2.01925, 300, 300, 3, 0, 390, 0, 0, 1),
(52372, 11918, 1, 1, 1, 0, 0, -136.867, 376.045, 95.3196, 2.80252, 300, 300, 5, 0, 390, 0, 0, 1),
(52373, 11918, 1, 1, 1, 0, 0, -77.3848, 355.587, 111.673, 0.234213, 300, 300, 5, 0, 390, 0, 0, 1),
(52374, 11918, 1, 1, 1, 0, 0, -48.2578, 335.342, 118.713, 6.17664, 300, 300, 3, 0, 390, 0, 0, 1),
(52388, 11918, 1, 1, 1, 0, 0, -63.404, 376.642, 120.454, 1.7119, 300, 300, 2, 0, 390, 0, 0, 1),
(68534, 11918, 1, 1, 1, 0, 0, -120.388, 399.096, 94.9328, 2.21569, 300, 300, 5, 0, 390, 0, 0, 1),
(68536, 11918, 1, 1, 1, 0, 0, -58.9686, 331.464, 116.669, 2.44865, 300, 300, 3, 0, 390, 0, 0, 1),
(68538, 11918, 1, 1, 1, 0, 0, -100.027, 330.58, 118.485, 3.47328, 300, 300, 3, 0, 390, 0, 0, 1),
(68539, 11918, 1, 1, 1, 0, 0, -103.117, 364.307, 95.4404, 5.66334, 300, 300, 5, 0, 390, 0, 0, 1);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `script_id`, `comment`) VALUES
(30120, 1, -128.47, 211.92, 93.1942, 0, 0, 0, NULL),
(30120, 2, -130.009, 203.864, 88.798, 0, 0, 0, NULL),
(30120, 3, -128.735, 197.266, 84.718, 0, 0, 0, NULL),
(30120, 4, -126.299, 187.11, 77.2136, 0, 0, 0, NULL),
(30120, 5, -125.376, 178.234, 69.9521, 0, 0, 0, NULL),
(30120, 6, -131.257, 170.5, 62.3226, 0, 0, 0, NULL),
(30120, 7, -137.389, 163, 54.8029, 0, 0, 0, NULL),
(30120, 8, -132.873, 170.738, 62.0882, 0, 0, 0, NULL),
(30120, 9, -127.969, 180.807, 71.4218, 0, 0, 0, NULL),
(30120, 10, -127.375, 191.233, 80.5669, 0, 0, 0, NULL),
(30120, 11, -128.762, 200.85, 87.0586, 0, 0, 0, NULL),
(30120, 12, -126.263, 214.822, 95.0926, 0, 0, 0, NULL),
(30128, 1, -21.0828, 342.194, 98.8738, 0, 0, 0, NULL),
(30128, 2, -20.8754, 354.903, 100.941, 0, 0, 0, NULL),
(30128, 3, -20.7238, 369.07, 103.962, 0, 0, 0, NULL),
(30128, 4, -23.8196, 380.212, 105.263, 0, 0, 0, NULL),
(30128, 5, -24.2467, 367.871, 103.242, 0, 0, 0, NULL),
(30128, 6, -23.3005, 353.903, 100.604, 0, 0, 0, NULL),
(30128, 7, -22.4, 339.932, 98.3541, 0, 0, 0, NULL),
(30128, 8, -21.8748, 330.623, 97.1864, 0, 0, 0, NULL),
(30128, 9, -31.2362, 320.218, 93.289, 0, 0, 0, NULL),
(30128, 10, -48.3946, 301.761, 89.7872, 0, 0, 0, NULL),
(30128, 11, -45.4277, 304.003, 90.1513, 0, 0, 0, NULL),
(30128, 12, -36.8631, 315.075, 91.6686, 0, 0, 0, NULL),
(30128, 13, -28.3816, 326.214, 95.1091, 0, 0, 0, NULL),
(30400, 1, -67.1366, 294.958, 86.6612, 100, 0, 0, NULL),
(30400, 2, -60.4793, 289.107, 87.6326, 100, 0, 0, NULL),
(30400, 3, -56.0317, 281.253, 88.6393, 100, 0, 0, NULL),
(30400, 4, -51.8368, 270.166, 87.8791, 100, 0, 0, NULL),
(30400, 5, -46.8202, 256.289, 86.216, 100, 0, 0, NULL),
(30400, 6, -51.7779, 270.249, 87.8862, 100, 0, 0, NULL),
(30400, 7, -55.7771, 276.996, 88.9969, 100, 0, 0, NULL),
(30400, 8, -63.9024, 288.631, 87.6613, 100, 0, 0, NULL),
(30400, 9, -75.984, 302.739, 84.8959, 100, 0, 0, NULL),
(30400, 10, -84.2961, 311.183, 85.3484, 100, 0, 0, NULL),
(30400, 11, -89.144, 316.232, 85.7218, 100, 0, 0, NULL),
(30400, 12, -98.9022, 327.883, 90.5986, 100, 0, 0, NULL),
(30400, 13, -89.5282, 316.5, 85.7473, 100, 0, 0, NULL),
(30400, 14, -84.8345, 311.559, 85.3837, 100, 0, 0, NULL),
(30400, 15, -77.0645, 304.281, 84.6716, 100, 0, 0, NULL),
(30408, 1, -92.2122, 261.229, 96.8446, 0, 0, 0, NULL),
(30408, 2, -85.2169, 267.971, 93.1658, 0, 0, 0, NULL),
(30408, 3, -76.1693, 276.857, 88.8938, 0, 0, 0, NULL),
(30408, 4, -65.3879, 286.048, 88.0457, 0, 0, 0, NULL),
(30408, 5, -53.1252, 296.394, 88.6784, 0, 0, 0, NULL),
(30408, 6, -44.0216, 305.224, 90.3344, 0, 0, 0, NULL),
(30408, 7, -34.627, 314.802, 91.9765, 0, 0, 0, NULL),
(30408, 8, -43.4158, 306.701, 90.3913, 0, 0, 0, NULL),
(30408, 9, -54.4717, 296.102, 88.4715, 0, 0, 0, NULL),
(30408, 10, -67.0019, 284.915, 87.8347, 0, 0, 0, NULL),
(30408, 11, -71.5107, 280.969, 87.6186, 0, 0, 0, NULL),
(30408, 12, -83.5729, 269.723, 91.8575, 0, 0, 0, NULL),
(30408, 13, -88.8092, 264.426, 95.3911, 0, 0, 0, NULL),
(30423, 1, -96.1928, 342.59, 116.601, 0, 0, 0, NULL),
(30423, 2, -90.9047, 352.444, 114.329, 0, 0, 0, NULL),
(30423, 3, -82.5178, 365.722, 111.433, 0, 0, 0, NULL),
(30423, 4, -75.1273, 378.267, 111.975, 0, 0, 0, NULL),
(30423, 5, -78.8235, 365.013, 111.15, 0, 0, 0, NULL),
(30423, 6, -85.2563, 357.77, 112.596, 0, 0, 0, NULL),
(30423, 7, -92.8792, 347.189, 115.12, 0, 0, 0, NULL),
(30423, 8, -96.0361, 341.287, 116.712, 0, 0, 0, NULL),
(30423, 9, -95.2797, 330.113, 118.884, 0, 0, 0, NULL),
(30423, 10, -88.7202, 321.541, 120.004, 0, 0, 0, NULL),
(30423, 11, -76.2316, 319.429, 118.135, 0, 0, 0, NULL),
(30423, 12, -85.9342, 315.506, 120.689, 0, 0, 0, NULL),
(30423, 13, -92.5444, 324.506, 119.658, 0, 0, 0, NULL),
(30423, 14, -94.8233, 330.396, 118.833, 0, 0, 0, NULL),
(36456, 1, -47.8109, 336.121, 118.691, 0, 0, 0, NULL),
(36456, 2, -58.988, 330.137, 116.802, 0, 0, 0, NULL),
(36456, 3, -68.1635, 323.751, 117.124, 0, 0, 0, NULL),
(36456, 4, -76.1664, 318.241, 118.379, 0, 0, 0, NULL),
(36456, 5, -62.6732, 326.193, 116.601, 0, 0, 0, NULL),
(36456, 6, -53.4752, 333.831, 117.721, 0, 0, 0, NULL),
(36456, 7, -44.8031, 340.917, 119.636, 0, 0, 0, NULL),
(36456, 8, -38.1856, 346.957, 121.164, 0, 0, 0, NULL),
(36456, 9, -42.8172, 355.497, 121.605, 0, 0, 0, NULL),
(36456, 10, -54.2522, 358.891, 121.793, 0, 0, 0, NULL),
(36456, 11, -43.4156, 356.136, 121.554, 0, 0, 0, NULL),
(36456, 12, -38.2694, 345.408, 121.219, 0, 0, 0, NULL),
(36456, 13, -42.5537, 342.398, 120.545, 0, 0, 0, NULL);

UPDATE `creature` SET `position_x` = '3601.08', `position_y` = '-4405.69', `position_z` = '115.398', `orientation` = '5.37561', `spawntimesecsmin` = '300', `spawntimesecsmax` = '300' WHERE `guid` =41751;
UPDATE `creature` SET `position_x` = '3804.74', `position_y` = '-1471.87', `position_z` = '210.386', `orientation` = '2.15627', `spawntimesecsmin` = '300', `spawntimesecsmax` = '300' WHERE `guid` =41920;
UPDATE `creature` SET `position_x` = '3946.78', `position_y` = '-1046.39', `position_z` = '246.118', `orientation` = '3.41762', `spawntimesecsmin` = '300', `spawntimesecsmax` = '300' WHERE `guid` =42042;
UPDATE creature_template SET GossipMenuId=2207 WHERE Entry=9529;
UPDATE gossip_menu SET entry=2207 WHERE entry=50413;
UPDATE gossip_menu SET entry=2361 WHERE entry=50414;
UPDATE `gossip_menu_option` SET `menu_id` = 2207 WHERE `menu_id` =50413;
UPDATE `gossip_menu_option` SET `action_menu_id` = 2361 WHERE `menu_id` =2207 AND `id` =1;
UPDATE `gossip_menu_option` SET `option_broadcast_text` = 5243 WHERE `menu_id` =2207 AND `id` =0;
UPDATE `gossip_menu_option` SET `option_broadcast_text` = 5243 WHERE `menu_id` =2208 AND `id` =0;
UPDATE `gossip_menu_option` SET `option_broadcast_text` = 5384 WHERE `menu_id` =2207 AND `id` =1;
UPDATE `gossip_menu_option` SET `option_broadcast_text` = 5384 WHERE `menu_id` =2208 AND `id` =1;
UPDATE `dbscript_string` SET `content_default` = 'Here is a beacon for you, $N.  You must keep it in your possession if you are to find the corrupted items we will need.', `broadcast_text_id` = 5245 WHERE `entry` =2000000056;
DELETE FROM `npc_vendor` WHERE `item` = 5060;
UPDATE `creature` SET `position_z` = '-62.3697', `orientation` = '6.24828', `spawntimesecsmin` = '300', `spawntimesecsmax` = '300' WHERE `guid` =15318;

DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 27555);
DELETE FROM `creature` WHERE `guid` = 118770;
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(118763, 27555, 571, 1, 1, 0, 0, 4598.13, -3479.92, 227.22, 0.664123, 300, 300, 0, 0, 9940, 3387, 0, 2),
(118764, 27555, 571, 1, 1, 0, 0, 4548.52, -3638.29, 229.042, 4.68073, 300, 300, 0, 0, 9940, 3387, 0, 2),
(118765, 27555, 571, 1, 1, 0, 0, 4550.69, -3541.43, 228.94, 2.14433, 300, 300, 0, 0, 9940, 3387, 0, 2),
(118766, 27555, 571, 1, 1, 0, 0, 4508.62, -3389.63, 229.384, 0.82461, 300, 300, 0, 0, 9940, 3387, 0, 2),
(118768, 27555, 571, 1, 1, 0, 0, 4520.35, -3406.77, 226.932, 2.52107, 300, 300, 0, 0, 9940, 3387, 0, 2),
(118767, 27555, 571, 1, 1, 0, 0, 4479.95, -3487.33, 227.057, 4.25694, 300, 300, 0, 0, 9940, 3387, 0, 2),
(118769, 27555, 571, 1, 1, 0, 0, 4487.84, -3641.6, 230.301, 4.80231, 300, 300, 0, 0, 9940, 3387, 0, 2);
DELETE FROM creature_movement WHERE id IN (118763,118764,118765,118769,118766,118767,118768);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,waittime,script_id) VALUES
(118763,1,4610.46,-3470.65,226.933,100,0,0),
(118763,2,4603.11,-3459.59,227.323,100,0,0),
(118763,3,4587.85,-3470.46,226.98,100,0,0),
(118763,4,4597.86,-3479.45,227.245,100,0,0),
(118764,1,4543.75,-3644.82,228.792,100,0,0),
(118764,2,4534.62,-3644.41,228.792,100,0,0),
(118764,3,4526.82,-3643.56,228.793,100,0,0),
(118764,4,4534.24,-3644.39,228.793,100,0,0),
(118764,5,4543.46,-3645.08,228.793,100,0,0),
(118764,6,4548.76,-3638.68,228.915,100,0,0),
(118764,7,4549.16,-3624.51,229.708,100,0,0),
(118764,8,4548.76,-3638.58,228.923,100,0,0),
(118765,1,4543.36,-3543.21,229.267,100,0,0),
(118765,2,4536.25,-3551.44,230.001,100,0,0),
(118765,3,4535.4,-3560.02,231.441,100,0,0),
(118765,4,4549.48,-3559.47,230.941,100,0,0),
(118765,5,4558.28,-3553.99,230.949,100,0,0),
(118765,6,4551.16,-3541.52,228.845,100,0,0),
(118769,1,4498.88,-3653.05,229.667,100,0,0),
(118769,2,4508.35,-3642.59,229.007,100,0,0),
(118769,3,4513.01,-3636.4,228.793,100,0,0),
(118769,4,4514.03,-3620.1,228.958,100,0,0),
(118769,5,4508.69,-3608.7,229.962,100,0,0),
(118769,6,4500.57,-3602.47,230.355,100,0,0),
(118769,7,4490.89,-3607.48,229.903,100,0,0),
(118769,8,4485.29,-3616.73,230.561,100,0,0),
(118769,9,4485.8,-3628.55,230.62,100,0,0),
(118769,10,4487.99,-3641.23,230.222,100,0,0),
(118766,1,4501.85,-3395.07,229.64,100,0,0),
(118766,2,4493.19,-3402.62,228.25,100,0,0),
(118766,3,4501.42,-3395.47,229.597,100,0,0),
(118766,4,4508.57,-3389.56,229.384,100,0,0),
(118767,1,4470.5,-3490,227.348,100,0,0),
(118767,2,4462.56,-3482.26,227.588,100,0,0),
(118767,3,4466.32,-3472.63,227.544,100,0,0),
(118767,4,4476.72,-3467.58,227.157,100,0,0),
(118767,5,4483.9,-3478.04,226.934,100,0,0),
(118767,6,4479.97,-3487.15,226.933,100,0,0),
(118768,1,4517.3,-3403.97,226.932,100,0,0),
(118768,2,4526.81,-3393.01,226.932,100,0,0),
(118768,3,4533.44,-3395.42,228.161,100,0,0),
(118768,4,4527.9,-3402.81,226.941,100,0,0),
(118768,5,4520.27,-3406.5,226.932,100,0,0);
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 29693);
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(119636, 29693, 571, 1, 1, 0, 0, 4427.01, -3501.38, 237.657, 5.51712, 300, 300, 5, 0, 9610, 3309, 0, 1),
(119637, 29693, 571, 1, 1, 0, 0, 4527.99, -3628.8, 228.917, 1.96313, 300, 300, 0, 0, 9610, 3309, 0, 0),
(119638, 29693, 571, 1, 1, 0, 0, 4552.3, -3375.2, 229.758, 4.41268, 300, 300, 5, 0, 9610, 3309, 0, 1),
(119639, 29693, 571, 1, 1, 0, 0, 4527.8, -3691.97, 228.228, 0.293328, 300, 300, 5, 0, 9610, 3309, 0, 1),
(119640, 29693, 571, 1, 1, 0, 0, 4575.22, -3602.11, 234.939, 2.28147, 300, 300, 0, 0, 9610, 3309, 0, 0),
(119641, 29693, 571, 1, 1, 0, 0, 4594.37, -3542.41, 230.29, 3.10056, 300, 300, 5, 0, 9610, 3309, 0, 1),
(119642, 29693, 571, 1, 1, 0, 0, 4505.12, -3368.87, 234.307, 4.74541, 300, 300, 5, 0, 9610, 3309, 0, 1),
(119643, 29693, 571, 1, 1, 0, 0, 4424.81, -3424.71, 235.997, 2.82409, 300, 300, 5, 0, 9610, 3309, 0, 1),
(36210, 29693, 571, 1, 1, 0, 0, 4569.54, -3505.51, 227.775, 5.23287, 300, 300, 5, 0, 9610, 3309, 0, 1),
(36214, 29693, 571, 1, 1, 0, 0, 4493.13, -3452.47, 227.057, 4.4418, 300, 300, 5, 0, 9610, 3309, 0, 1),
(36240, 29693, 571, 1, 1, 0, 0, 4508.26, -3575.76, 230.841, 5.44532, 300, 300, 5, 0, 9610, 3309, 0, 1),
(36241, 29693, 571, 1, 1, 0, 0, 4515.82, -3505.98, 227.01, 1.49053, 300, 300, 5, 0, 9610, 3309, 0, 1),
(36242, 29693, 571, 1, 1, 0, 0, 4492.19, -3487.44, 226.969, 1.70921, 300, 300, 5, 0, 9610, 3309, 0, 1),
(36264, 29693, 571, 1, 1, 0, 0, 4456.41, -3381.39, 235.167, 3.11482, 300, 300, 5, 0, 9610, 3309, 0, 1);
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 26241);
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(36289, 26461, 571, 1, 1, 0, 0, 4515.44, -3436.83, 227.057, -2.73729, 30, 30, 0, 0, 9940, 0, 0, 0),
(36322, 26461, 571, 1, 1, 0, 0, 4167.25, -2096.46, 213.645, 0.959931, 30, 30, 0, 0, 9940, 0, 0, 0),
(36441, 26461, 571, 1, 1, 0, 0, 4555.53, -3472.98, 227.057, -2.18765, 30, 30, 0, 0, 9940, 0, 0, 0),
(36480, 26461, 571, 1, 1, 0, 0, 4256.21, -2160.46, 215.433, 0.151173, 30, 30, 5, 0, 9940, 0, 0, 1);
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 26704);
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(118830, 26704, 571, 1, 1, 0, 0, 4477.29, -3640.52, 231.926, 1.86256, 300, 300, 5, 0, 10282, 0, 0, 1),
(118826, 26704, 571, 1, 1, 0, 0, 4511.6, -3660.68, 229.375, 2.78064, 300, 300, 0, 0, 10282, 0, 0, 2),
(118831, 26704, 571, 1, 1, 0, 0, 4540.49, -3360.87, 234.19, 4.0751, 300, 300, 5, 0, 10282, 0, 0, 1),
(118827, 26704, 571, 1, 1, 0, 0, 4516.55, -3509.4, 227.135, 3.33543, 300, 300, 0, 0, 10282, 0, 0, 2),
(28104, 26704, 571, 1, 1, 0, 0, 4533.68, -3527.92, 227.265, 2.14675, 300, 300, 0, 0, 10282, 0, 0, 0),
(118828, 26704, 571, 1, 1, 0, 0, 4554.79, -3539.84, 229.009, 3.8638, 300, 300, 0, 0, 10282, 0, 0, 2),
(28118, 26704, 571, 1, 1, 0, 0, 4564.08, -3514.62, 227.101, 2.44346, 300, 300, 0, 0, 10282, 0, 0, 0),
(28137, 26704, 571, 1, 1, 0, 0, 4554.35, -3470.86, 226.933, -2.18714, 300, 300, 5, 0, 10282, 0, 0, 1),
(28146, 26704, 571, 1, 1, 0, 0, 4483.51, -3433.65, 227.396, 5.18363, 300, 300, 0, 0, 10282, 0, 0, 0),
(28148, 26704, 571, 1, 1, 0, 0, 4512.07, -3438.27, 227.057, 0.251406, 300, 300, 5, 0, 10282, 0, 0, 1),
(28155, 26704, 571, 1, 1, 0, 0, 4633.19, -3452.11, 230.723, 0.662242, 300, 300, 7, 0, 10282, 0, 0, 1),
(28156, 26704, 571, 1, 1, 0, 0, 4520.33, -3445.33, 226.932, 1.63621, 300, 300, 5, 0, 10282, 0, 0, 1),
(118829, 26704, 571, 1, 1, 0, 0, 4529.13, -3374.49, 230.436, 3.6961, 300, 300, 0, 0, 10282, 0, 0, 2),
(28226, 26704, 571, 1, 1, 0, 0, 4470.54, -3511.95, 229.882, 4.01426, 300, 300, 0, 0, 10282, 0, 0, 0),
(28243, 26704, 571, 1, 1, 0, 0, 4480.63, -3524.27, 230.404, 3.83972, 300, 300, 0, 0, 10282, 0, 0, 0),
(28249, 26704, 571, 1, 1, 0, 0, 4464.42, -3463.25, 227.655, 5.42797, 300, 300, 0, 0, 10282, 0, 0, 0),
(28257, 26704, 571, 1, 1, 0, 0, 4557.48, -3481.29, 226.933, 2.08923, 300, 300, 5, 0, 10282, 0, 0, 1),
(28265, 26704, 571, 1, 1, 0, 0, 4480.05, -3607.04, 230.982, 2.51021, 300, 300, 5, 0, 10282, 0, 0, 1),
(28271, 26704, 571, 1, 1, 0, 0, 4464.81, -3425.01, 232.544, 3.80383, 300, 300, 0, 0, 10282, 0, 0, 2),
(28276, 26704, 571, 1, 1, 0, 0, 4547.92, -3473.85, 226.933, 2.43178, 300, 300, 5, 0, 10282, 0, 0, 1);
INSERT INTO `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_pvp_state`, `emote`, `moveflags`, `auras`) VALUES
(118830, 0, 0, 1, 0, 0, 0, NULL), (118826, 0, 0, 1, 0, 0, 0, NULL), (118831, 0, 0, 1, 0, 0, 0, NULL), (118827, 0, 0, 1, 0, 0, 0, NULL), (28104, 0, 1, 1, 0, 0, 0, NULL),
(118828, 0, 0, 1, 0, 0, 0, NULL), (28118, 0, 0, 1, 0, 0, 0, NULL), (28137, 0, 0, 1, 0, 0, 0, NULL), (28146, 0, 1, 1, 0, 0, 0, NULL), (28148, 0, 0, 1, 0, 0, 0, NULL),
(28155, 0, 0, 1, 0, 0, 0, NULL), (28156, 0, 0, 1, 0, 0, 0, NULL), (118829, 0, 0, 1, 0, 0, 0, NULL), (28226, 0, 0, 1, 0, 375, 0, NULL), (28243, 0, 0, 1, 0, 375, 0, NULL),
(28249, 0, 1, 1, 0, 0, 0, NULL), (28257, 0, 0, 1, 0, 0, 0, NULL), (28265, 0, 0, 1, 0, 0, 0, NULL), (28271, 0, 0, 1, 0, 0, 0, NULL), (28276, 0, 0, 1, 0, 0, 0, NULL);
DELETE FROM creature_movement WHERE id IN (118829,28271,118828,118826,118827);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,waittime,script_id) VALUES
(118829,1,4508.47,-3388.53,229.406,100,0,0),
(118829,2,4489.67,-3401.52,228.172,100,0,0),
(118829,3,4508.27,-3388.67,229.405,100,0,0),
(118829,4,4528.94,-3374.74,230.347,100,0,0),
(118829,5,4535.32,-3381.27,229.542,100,0,0),
(118829,6,4545.24,-3390.2,229.363,100,0,0),
(118829,7,4535.9,-3381.75,229.522,100,0,0),
(118829,8,4529.18,-3374.49,230.437,100,0,0),
(28271,1,4451.34,-3435.32,233.804,100,0,0),
(28271,2,4456.7,-3443.43,231.47,100,0,0),
(28271,3,4467.06,-3456.67,228.201,100,0,0),
(28271,4,4456.99,-3443.57,231.377,100,0,0),
(28271,5,4451.16,-3435.81,233.751,100,0,0),
(28271,6,4459.52,-3429.22,233.106,100,0,0),
(28271,7,4471.89,-3419.28,231.374,100,0,0),
(118826,1,4492.43,-3653.7,229.579,100,0,0),
(118826,2,4511.66,-3660.48,229.334,100,0,0),
(118826,3,4530.32,-3668.1,229.271,100,0,0),
(118826,4,4512.18,-3660.64,229.329,100,0,0),
(118828,1,4551.68,-3543.8,229.105,100,0,0),
(118828,2,4542.71,-3532.92,227.969,100,0,0),
(118828,3,4532.45,-3520.82,227.562,100,0,0),
(118828,4,4542.35,-3532.48,227.882,100,0,0),
(118828,5,4551.31,-3543.25,229.021,100,0,0),
(118828,6,4560.38,-3535.61,228.752,100,0,0),
(118828,7,4574.36,-3523.13,229.302,100,0,0),
(118828,8,4560.99,-3535.19,228.778,100,0,0),
(118827,1,4526.77,-3490.09,226.932,100,0,0),
(118827,2,4516.58,-3509.9,227.067,100,0,0),
(118827,3,4536.96,-3505.26,226.933,100,0,0),
(118827,4,4516.96,-3509.61,227.029,100,0,0);
DELETE FROM creature_template_addon WHERE entry IN (27554);
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES (27554,0,3,1,0,0,0,NULL);
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 27554);
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(118771, 27554, 571, 1, 1, 0, 0, 4465.85, -3624.65, 233.952, 3.25021, 300, 300, 0, 0, 10282, 0, 0, 0),
(118772, 27554, 571, 1, 1, 0, 0, 4499.48, -3608.28, 229.943, 6.07375, 300, 300, 0, 0, 10282, 0, 0, 0),
(118773, 27554, 571, 1, 1, 0, 0, 4494.6, -3633.04, 232.667, 3.31613, 300, 300, 0, 0, 10282, 0, 0, 0),
(118774, 27554, 571, 1, 1, 0, 0, 4501.01, -3622.19, 231.74, 0.087266, 300, 300, 0, 0, 10282, 0, 0, 0),
(118775, 27554, 571, 1, 1, 0, 0, 4493.21, -3617.87, 231.873, 3.38594, 300, 300, 0, 0, 10282, 0, 0, 0),
(12753, 27554, 571, 1, 1, 0, 0, 4553.51, -3638.74, 229.126, 5.60251, 300, 300, 0, 0, 10282, 0, 0, 0),
(26520, 27554, 571, 1, 1, 0, 0, 4501.79, -3634.07, 232.376, 0.0698132, 300, 300, 0, 0, 10282, 0, 0, 0),
(26527, 27554, 571, 1, 1, 0, 0, 4546.68, -3649.56, 228.876, 5.32325, 300, 300, 0, 0, 10282, 0, 0, 0),
(26855, 27554, 571, 1, 1, 0, 0, 4534.08, -3649.33, 229.225, 1.55334, 300, 300, 0, 0, 10282, 0, 0, 0),
(26892, 27554, 571, 1, 1, 0, 0, 4535.3, -3398.28, 228.539, 2.21657, 300, 300, 0, 0, 10282, 0, 0, 0),
(26965, 27554, 571, 1, 1, 0, 0, 4515.4, -3402.28, 227.015, 5.61996, 300, 300, 0, 0, 10282, 0, 0, 0),
(26986, 27554, 571, 1, 1, 0, 0, 4603.98, -3478.55, 227.015, 2.30383, 300, 300, 0, 0, 10282, 0, 0, 0),
(26981, 27554, 571, 1, 1, 0, 0, 4589.76, -3466.26, 227.015, 5.44543, 300, 300, 0, 0, 10282, 0, 0, 0),
(27225, 27554, 571, 1, 1, 0, 0, 4541.7, -3556.62, 230.902, 0.558505, 300, 300, 0, 0, 10282, 0, 0, 0),
(27280, 27554, 571, 1, 1, 0, 0, 4544.32, -3548.33, 229.677, 0.994838, 300, 300, 0, 0, 10282, 0, 0, 0),
(27336, 27554, 571, 1, 1, 0, 0, 4550.97, -3551.48, 230.147, 5.65487, 300, 300, 0, 0, 10282, 0, 0, 0),
(27422, 27554, 571, 1, 1, 0, 0, 4496.17, -3406.58, 228.442, 5.37561, 300, 300, 0, 0, 10282, 0, 0, 0),
(27516, 27554, 571, 1, 1, 0, 0, 4506.57, -3397.7, 229.211, 2.23402, 300, 300, 0, 0, 10282, 0, 0, 0),
(27527, 27554, 571, 1, 1, 0, 0, 4501.96, -3402.51, 228.704, 1.8326, 300, 300, 0, 0, 10282, 0, 0, 0),
(27584, 27554, 571, 1, 1, 0, 0, 4610.65, -3473.17, 227.015, 2.23402, 300, 300, 0, 0, 10282, 0, 0, 0),
(27766, 27554, 571, 1, 1, 0, 0, 4512.27, -3393.34, 229.169, 1.8675, 300, 300, 0, 0, 10282, 0, 0, 0),
(28283, 27554, 571, 1, 1, 0, 0, 4525.92, -3391.22, 227.016, 1.2653, 300, 300, 0, 0, 10282, 0, 0, 0),
(28315, 27554, 571, 1, 1, 0, 0, 4469, -3480.42, 227.479, 0.680678, 300, 300, 0, 0, 10282, 0, 0, 0),
(28325, 27554, 571, 1, 1, 0, 0, 4473.69, -3485.47, 227.376, 2.53073, 300, 300, 0, 0, 10282, 0, 0, 0),
(28385, 27554, 571, 1, 1, 0, 0, 4478.26, -3479.92, 227.307, 0.820305, 300, 300, 0, 0, 10282, 0, 0, 0),
(28390, 27554, 571, 1, 1, 0, 0, 4477.3, -3474.07, 227.216, 3.71755, 300, 300, 0, 0, 10282, 0, 0, 0),
(28392, 27554, 571, 1, 1, 0, 0, 4522.7, -3409.06, 227.015, 2.32129, 300, 300, 0, 0, 10282, 0, 0, 0),
(28396, 27554, 571, 1, 1, 0, 0, 4600.42, -3458.3, 227.685, 5.32325, 300, 300, 0, 0, 10282, 0, 0, 0);
UPDATE `creature` SET `position_x` = '1435.6', `position_y` = '71.9724', `position_z` = '-62.1954', `orientation` = '1.01229', `spawntimesecsmin` = '300', `spawntimesecsmax` = '300' WHERE `guid` =15393;
UPDATE `creature_template` SET `LootId` = 7168 WHERE `Entry` =7168;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('7168', '7968', '-100', '0', '1', '1', '0', '');
UPDATE `gossip_menu_option` SET `option_text` = 'Mennet said I should ask you for a set of thieves'' tools.', `option_broadcast_text` = 2621 WHERE `menu_id` =161 AND `id` =0;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(707, 103774, 0, 1, 1, 1391.26, 120.994, -61.2814, 1.48125, 0, 0, 0.674751, 0.738046, -25, -25, 255, 1);
DELETE FROM dbscripts_on_gossip WHERE id = 16100;
INSERT INTO dbscripts_on_gossip (id,delay,command,datalong,datalong2,datalong3,buddy_entry,search_radius,data_flags,dataint,dataint2,dataint3,dataint4,x,y,z,o,comments) VALUES
(16100,1000,9,707,30,0,0,0,0,0,0,0,0,0,0,0,0,'resp object');
UPDATE `gameobject_template` SET `flags` = 0, `data5` = 1 WHERE `entry` =103774;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = 100 WHERE `entry` =103774 AND `item` =5060;
DELETE FROM `creature_loot_template` WHERE `entry` = 23589 AND `item` = 33039;

UPDATE `creature_template` SET `GossipMenuId` = 1061 WHERE `Entry` =7918;
UPDATE `gossip_menu` SET `entry` = 1061 WHERE `entry` =51003;
UPDATE `gossip_menu` SET `entry` = 1062 WHERE `entry` =51004;
UPDATE `gossip_menu` SET `entry` = 1063 WHERE `entry` =51005;
UPDATE `gossip_menu` SET `entry` = 1064 WHERE `entry` =51006;
UPDATE `gossip_menu` SET `entry` = 1065 WHERE `entry` =51007;
UPDATE `gossip_menu` SET `entry` = 1066 WHERE `entry` =51008;
UPDATE `gossip_menu_option` SET `menu_id` = 1061, `action_menu_id` = 1062 WHERE `menu_id` =51003;
UPDATE `gossip_menu_option` SET `menu_id` = 1062, `action_menu_id` = 1063 WHERE `menu_id` =51004;
UPDATE `gossip_menu_option` SET `menu_id` = 1063, `action_menu_id` = 1064 WHERE `menu_id` =51005;
UPDATE `gossip_menu_option` SET `menu_id` = 1064, `action_menu_id` = 1065 WHERE `menu_id` =51006;
UPDATE `gossip_menu_option` SET `menu_id` = 1065, `action_menu_id` = 1066 WHERE `menu_id` =51007;
UPDATE `gossip_menu_option` SET `menu_id` = 1066 WHERE `menu_id` =51008;

DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 26436);
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(119711, 26436, 571, 1, 1, 0, 0, 3518.72, -4523.21, 215.612, 4.57261, 300, 300, 0, 0, 10635, 3561, 0, 2),
(119712, 26436, 571, 1, 1, 0, 0, 4168.71, -3955.5, 169.295, 5.28835, 300, 300, 0, 0, 10635, 3561, 0, 0),
(119713, 26436, 571, 1, 1, 0, 0, 4108.8, -3906.04, 175.259, 1.47826, 300, 300, 0, 0, 10635, 3561, 0, 0),
(119714, 26436, 571, 1, 1, 0, 0, 3635.86, -4596.8, 191.601, 5.70495, 300, 300, 0, 0, 10635, 3561, 0, 2),
(30424, 26436, 571, 1, 1, 0, 0, 4179.56, -3929.7, 173.751, 0.855211, 300, 300, 0, 0, 10635, 3561, 0, 0),
(30449, 26436, 571, 1, 1, 0, 0, 4200.97, -3942.86, 173.293, 3.82227, 300, 300, 0, 0, 10635, 3561, 0, 0),
(30452, 26436, 571, 1, 1, 0, 0, 3887.66, -3747.99, 174.976, 3.08923, 300, 300, 0, 0, 10635, 3561, 0, 0),
(131126, 26436, 571, 1, 1, 0, 0, 3434.64, -4569.39, 231.324, 0.258392, 300, 300, 0, 0, 10635, 3561, 0, 2);
INSERT INTO `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_pvp_state`, `emote`, `moveflags`, `auras`) VALUES
(119712, 0, 0, 1, 0, 375, 0, NULL), (119713, 0, 0, 1, 0, 375, 0, NULL), (119714, 0, 0, 1, 0, 0, 0, NULL), (30424, 0, 0, 1, 0, 375, 0, NULL),
(30449, 0, 0, 1, 0, 375, 0, NULL), (30452, 0, 0, 1, 0, 375, 0, NULL), (131126, 0, 0, 1, 0, 0, 0, NULL);
DELETE FROM creature_movement WHERE id IN (119711,131126,119714);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `script_id`, `comment`) VALUES
(119711, 1, 3514.48, -4537.87, 218.173, 100, 0, 0, NULL),
(119711, 2, 3507.25, -4544.35, 219.915, 100, 0, 0, NULL),
(119711, 3, 3497, -4550.6, 223.007, 100, 0, 0, NULL),
(119711, 4, 3506.99, -4544.57, 219.988, 100, 0, 0, NULL),
(119711, 5, 3514.25, -4538.27, 218.239, 100, 0, 0, NULL),
(119711, 6, 3518.68, -4523.52, 215.653, 100, 0, 0, NULL),
(119711, 7, 3522.86, -4519.02, 214.541, 100, 0, 0, NULL),
(119711, 8, 3534.76, -4520.05, 210.134, 100, 0, 0, NULL),
(119711, 9, 3543.52, -4517.88, 207.619, 100, 0, 0, NULL),
(119711, 10, 3552.25, -4508.18, 204.304, 100, 0, 0, NULL),
(119711, 11, 3560.63, -4504.46, 201.79, 100, 0, 0, NULL),
(119711, 12, 3552.67, -4507.92, 204.174, 100, 0, 0, NULL),
(119711, 13, 3544.01, -4517.7, 207.488, 100, 0, 0, NULL),
(119711, 14, 3534.89, -4520.06, 210.085, 100, 0, 0, NULL),
(119711, 15, 3523.67, -4518.81, 214.272, 100, 0, 0, NULL),
(119711, 16, 3518.61, -4523.38, 215.64, 100, 0, 0, NULL),
(131126, 1, 3451.29, -4571.64, 231.305, 100, 0, 0, NULL),
(131126, 2, 3460.43, -4576.1, 231.377, 100, 0, 0, NULL),
(131126, 3, 3465.52, -4588.9, 231.329, 100, 0, 0, NULL),
(131126, 4, 3465.81, -4602.15, 231.282, 100, 0, 0, NULL),
(131126, 5, 3462.42, -4612.27, 231.477, 100, 0, 0, NULL),
(131126, 6, 3456.54, -4621.01, 231.266, 100, 0, 0, NULL),
(131126, 7, 3442.87, -4628.23, 231.515, 100, 0, 0, NULL),
(131126, 8, 3431.44, -4629.88, 231.835, 100, 0, 0, NULL),
(131126, 9, 3418, -4627.89, 231.707, 100, 0, 0, NULL),
(131126, 10, 3407.74, -4618.81, 231.81, 100, 0, 0, NULL),
(131126, 11, 3403.98, -4602.45, 231.573, 100, 0, 0, NULL),
(131126, 12, 3407.27, -4586.83, 231.586, 100, 0, 0, NULL),
(131126, 13, 3413.31, -4578, 231.495, 100, 0, 0, NULL),
(131126, 14, 3423.31, -4572.6, 231.398, 100, 0, 0, NULL),
(131126, 15, 3434.35, -4569.39, 231.323, 100, 0, 0, NULL),
(119714, 1, 3625.66, -4589.46, 191.299, 2.32417, 0, 0, NULL),
(119714, 2, 3619.46, -4581.98, 193.03, 2.41763, 0, 0, NULL),
(119714, 3, 3605.62, -4571.64, 191.841, 2.49146, 0, 0, NULL),
(119714, 4, 3586.89, -4543.17, 198.912, 1.86392, 0, 0, NULL),
(119714, 5, 3578.29, -4515.24, 199.681, 1.68014, 0, 0, NULL),
(119714, 6, 3576.83, -4499.91, 199.018, 1.32907, 0, 0, NULL),
(119714, 7, 3589.11, -4481.18, 198.796, 0.729023, 0, 0, NULL),
(119714, 8, 3597.28, -4474.21, 197.224, 0.713315, 5000, 0, NULL),
(119714, 9, 3588.94, -4481.8, 198.833, 4.15493, 0, 0, NULL),
(119714, 10, 3576.81, -4499.59, 199.046, 4.52406, 0, 0, NULL),
(119714, 11, 3578.48, -4516.24, 199.677, 4.90341, 0, 0, NULL),
(119714, 12, 3587.2, -4543.75, 198.839, 5.27176, 0, 0, NULL),
(119714, 13, 3604.7, -4571.07, 192.27, 5.30003, 0, 0, NULL),
(119714, 14, 3621.46, -4583.58, 192.977, 5.46182, 0, 0, NULL),
(119714, 15, 3627.14, -4591.22, 191.435, 5.51915, 0, 0, NULL),
(119714, 16, 3636.25, -4596.99, 191.707, 5.84195, 5000, 0, NULL);
UPDATE `creature` SET `position_x` = '3457.83', `position_y` = '-4607.1', `position_z` = '231.413', `orientation` = '2.70526', `spawntimesecsmin` = '300', `spawntimesecsmax` = '300' WHERE `guid` =120343;
UPDATE creature_template_addon SET auras = 21227 WHERE entry = 26681;
UPDATE creature SET position_x = 3590.119141, position_y = -4455.582031, position_z = 200.818924 WHERE guid = 108069;
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(119666, 26356, 571, 1, 1, 0, 0, 3625.98, -4604.6, 191.996, 0.898574, 300, 300, 2, 0, 10282, 0, 0, 1),
(119667, 26356, 571, 1, 1, 0, 0, 3500.39, -4630.4, 222.825, 1.75468, 300, 300, 7, 0, 10282, 0, 0, 1),
(119668, 26356, 571, 1, 1, 0, 0, 3576.75, -4598.65, 197.509, 2.5715, 300, 300, 7, 0, 10282, 0, 0, 1),
(119669, 26356, 571, 1, 1, 0, 0, 3511.08, -4573.72, 220.934, 3.70592, 300, 300, 2, 0, 10282, 0, 0, 1),
(119662, 26356, 571, 1, 1, 0, 0, 3512.46, -4597.35, 221.607, 2.02458, 300, 300, 0, 0, 10282, 0, 0, 0),
(119670, 26356, 571, 1, 1, 0, 0, 3487.73, -4567.11, 228.362, 0.506145, 300, 300, 0, 0, 10282, 0, 0, 0),
(119671, 26356, 571, 1, 1, 0, 0, 3477.41, -4556.49, 229.326, 0.715585, 300, 300, 0, 0, 10282, 0, 0, 0),
(119672, 26356, 571, 1, 1, 0, 0, 3492.02, -4497.76, 226.708, 0.71239, 300, 300, 5, 0, 10282, 0, 0, 1),
(119673, 26356, 571, 1, 1, 0, 0, 3559.76, -4514.19, 205.169, 0.261799, 300, 300, 0, 0, 10282, 0, 0, 0),
(119674, 26356, 571, 1, 1, 0, 0, 4071.43, -3798.73, 223.875, 4.73341, 300, 300, 0, 0, 10282, 0, 0, 0),
(119675, 26356, 571, 1, 1, 0, 0, 4077.08, -3947.92, 168.975, 1.54992, 300, 300, 0, 0, 10282, 0, 0, 0),
(119676, 26356, 571, 1, 1, 0, 0, 3552.82, -4498.61, 203.879, 0.314159, 300, 300, 0, 0, 10282, 0, 0, 0),
(119663, 26356, 571, 1, 1, 0, 0, 3604.68, -4506.43, 200.383, 4.67748, 300, 300, 0, 0, 10282, 0, 0, 0),
(119677, 26356, 571, 1, 1, 0, 0, 4190.82, -3897.99, 178.641, 2.28808, 300, 300, 0, 0, 10282, 0, 0, 0),
(119678, 26356, 571, 1, 1, 0, 0, 3894.32, -3752.93, 174.005, 1.50338, 300, 300, 0, 0, 10282, 0, 0, 0),
(119679, 26356, 571, 1, 1, 0, 0, 4136.56, -3762.43, 199.187, 1.8007, 300, 300, 0, 0, 10282, 0, 0, 0),
(119680, 26356, 571, 1, 1, 0, 0, 4041.3, -3733.4, 221.855, 6.24288, 300, 300, 0, 0, 10282, 0, 0, 0),
(119664, 26356, 571, 1, 1, 0, 0, 3414.69, -4477.94, 234.785, 2.25148, 300, 300, 0, 0, 10282, 0, 0, 0),
(26968, 26356, 571, 1, 1, 0, 0, 3603.98, -4490.77, 199.409, 3.14128, 300, 300, 2, 0, 10282, 0, 0, 1),
(28399, 26356, 571, 1, 1, 0, 0, 4051.49, -3955.08, 172.354, 5.18363, 300, 300, 0, 0, 10282, 0, 0, 0),
(28437, 26356, 571, 1, 1, 0, 0, 4196.4, -3801.38, 182.062, 1.96143, 300, 300, 0, 0, 10282, 0, 0, 0),
(28867, 26356, 571, 1, 1, 0, 0, 4170.88, -4041.09, 165.364, 3.77602, 300, 300, 0, 0, 10282, 0, 0, 0),
(28982, 26356, 571, 1, 1, 0, 0, 4147.74, -3768.01, 197.471, 1.33065, 300, 300, 0, 0, 10282, 0, 0, 0),
(119665, 26356, 571, 1, 1, 0, 0, 3647.49, -4612.62, 192.942, 2.05949, 300, 300, 0, 0, 10282, 0, 0, 0),
(29341, 26356, 571, 1, 1, 0, 0, 3643.54, -4585.87, 192.226, 4.17059, 300, 300, 5, 0, 10282, 0, 0, 1),
(29891, 26356, 571, 1, 1, 0, 0, 4196.66, -4018.23, 168.986, 2.14798, 300, 300, 0, 0, 10282, 0, 0, 0),
(29974, 26356, 571, 1, 1, 0, 0, 3446.45, -4464.77, 235.871, 2.00736, 300, 300, 5, 0, 10282, 0, 0, 1),
(30544, 26356, 571, 1, 1, 0, 0, 4211.2, -3770.73, 121.885, 4.99879, 300, 300, 5, 0, 10282, 0, 0, 1),
(30571, 26356, 571, 1, 1, 0, 0, 4151.12, -4003.02, 167.793, 1.00096, 300, 300, 0, 0, 10282, 0, 0, 0),
(30646, 26356, 571, 1, 1, 0, 0, 3611.76, -4539.3, 199.537, 5.8994, 300, 300, 5, 0, 10282, 0, 0, 1),
(31719, 26356, 571, 1, 1, 0, 0, 3999.73, -3831.31, 223.779, 3.08727, 300, 300, 0, 0, 10282, 0, 0, 0),
(31773, 26356, 571, 1, 1, 0, 0, 3934.25, -3778.88, 159.122, 4.5884, 300, 300, 0, 0, 10282, 0, 0, 0),
(31790, 26356, 571, 1, 1, 0, 0, 4038.54, -3969.37, 169.81, 5.16617, 300, 300, 0, 0, 10282, 0, 0, 0),
(32034, 26356, 571, 1, 1, 0, 0, 4118.89, -3679.31, 179.964, 3.68539, 300, 300, 0, 0, 10282, 0, 0, 0),
(32080, 26356, 571, 1, 1, 0, 0, 3916.18, -3963.74, 178.782, 2.86234, 300, 300, 0, 0, 10282, 0, 0, 0),
(32239, 26356, 571, 1, 1, 0, 0, 3377.48, -4619.18, 232.95, 0.174533, 300, 300, 0, 0, 10282, 0, 0, 0),
(32343, 26356, 571, 1, 1, 0, 0, 3372.96, -4601.43, 232.047, 6.17846, 300, 300, 0, 0, 10282, 0, 0, 0);
DELETE FROM creature_addon WHERE guid IN (119662,119663,119664,119665);
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES
(119662,0,1,1,0,0,0,NULL), (119663,0,1,1,0,0,0,NULL), (119664,0,1,1,0,0,0,NULL), (119665,0,1,1,0,0,0,NULL);
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(108053, 27230, 571, 1, 1, 0, 0, 3436.21, -4673.18, 236.616, 0.219309, 300, 300, 5, 0, 10282, 0, 0, 1),
(108054, 27230, 571, 1, 1, 0, 0, 3536.03, -4419.88, 224.915, 3.66946, 300, 300, 5, 0, 10282, 0, 0, 1),
(108055, 27230, 571, 1, 1, 0, 0, 3577.67, -4325.6, 209.042, 1.79038, 300, 300, 5, 0, 10282, 0, 0, 1),
(108056, 27230, 571, 1, 1, 0, 0, 3601.78, -4342.36, 207.998, 3.04432, 300, 300, 5, 0, 10282, 0, 0, 1),
(108057, 27230, 571, 1, 1, 0, 0, 3614.96, -4409.24, 197.339, 3.83992, 300, 300, 5, 0, 10282, 0, 0, 1),
(108058, 27230, 571, 1, 1, 0, 0, 4986.56, -4920.1, 349.2, 2.03707, 300, 300, 5, 0, 10282, 0, 0, 1),
(108059, 27230, 571, 1, 1, 0, 0, 4143.19, -4432.63, 261.101, 4.68756, 300, 300, 5, 0, 10282, 0, 0, 1),
(108060, 27230, 571, 1, 1, 0, 0, 5109.37, -4947.79, 296.335, 2.76544, 300, 300, 5, 0, 10282, 0, 0, 1),
(108061, 27230, 571, 1, 1, 0, 0, 4247.99, -4589.51, 137.846, 2.63743, 300, 300, 5, 0, 10282, 0, 0, 1),
(108062, 27230, 571, 1, 1, 0, 0, 4231.18, -4447.43, 206.784, 3.6737, 300, 300, 5, 0, 10282, 0, 0, 1),
(108063, 27230, 571, 1, 1, 0, 0, 3553.22, -4345.52, 225.058, 2.70372, 300, 300, 5, 0, 10282, 0, 0, 1),
(108064, 27230, 571, 1, 1, 0, 0, 3583.67, -4393.47, 215.17, 6.09574, 300, 300, 5, 0, 10282, 0, 0, 1),
(108065, 27230, 571, 1, 1, 0, 0, 3590.12, -4455.58, 200.819, 4.95446, 300, 300, 5, 0, 10282, 0, 0, 1),
(108066, 27230, 571, 1, 1, 0, 0, 4040.32, -4679.57, 137.459, 0.624601, 300, 300, 5, 0, 10282, 0, 0, 1),
(108067, 27230, 571, 1, 1, 0, 0, 3919.14, -4583.63, 192.89, 1.97415, 300, 300, 5, 0, 10282, 0, 0, 1),
(108068, 27230, 571, 1, 1, 0, 0, 3889.48, -4610.3, 175.983, 4.82897, 300, 300, 5, 0, 10282, 0, 0, 1),
(108069, 27230, 571, 1, 1, 0, 0, 4011.32, -4667.78, 151.167, 3.36625, 300, 300, 5, 0, 10282, 0, 0, 1),
(108070, 27230, 571, 1, 1, 0, 0, 4002.53, -4629.93, 178.787, 6.16379, 300, 300, 5, 0, 10282, 0, 0, 1),
(108071, 27230, 571, 1, 1, 0, 0, 3857.25, -4614.62, 175.173, 0.98902, 300, 300, 5, 0, 10282, 0, 0, 1),
(108072, 27230, 571, 1, 1, 0, 0, 4302.41, -4326.62, 176.424, 5.71848, 300, 300, 5, 0, 10282, 0, 0, 1),
(108073, 27230, 571, 1, 1, 0, 0, 4212.04, -4387.23, 206.407, 5.45934, 300, 300, 5, 0, 10282, 0, 0, 1),
(108074, 27230, 571, 1, 1, 0, 0, 4198.1, -4474.12, 221.77, 1.84091, 300, 300, 5, 0, 10282, 0, 0, 1),
(108075, 27230, 571, 1, 1, 0, 0, 4382.44, -4590.07, 107.166, 4.97295, 300, 300, 5, 0, 10282, 0, 0, 1),
(108076, 27230, 571, 1, 1, 0, 0, 5026.91, -4909.22, 337.494, 2.41281, 300, 300, 5, 0, 10282, 0, 0, 1),
(108077, 27230, 571, 1, 1, 0, 0, 3746.51, -5150.57, 120.791, 3.19471, 300, 300, 5, 0, 10282, 0, 0, 1),
(108078, 27230, 571, 1, 1, 0, 0, 4270.62, -4462.24, 187.688, 1.84024, 300, 300, 5, 0, 10282, 0, 0, 1),
(108079, 27230, 571, 1, 1, 0, 0, 3772.69, -4141.02, 202.571, 3.63019, 300, 300, 5, 0, 10282, 0, 0, 1),
(108080, 27230, 571, 1, 1, 0, 0, 3722.77, -4700.6, 165.749, 0.822172, 300, 300, 5, 0, 10282, 0, 0, 1),
(108081, 27230, 571, 1, 1, 0, 0, 4901.65, -4891.32, 338.89, 2.00411, 300, 300, 5, 0, 10282, 0, 0, 1),
(108082, 27230, 571, 1, 1, 0, 0, 3692.78, -5239.08, 124.237, 4.83886, 300, 300, 5, 0, 10282, 0, 0, 1),
(108083, 27230, 571, 1, 1, 0, 0, 3805.43, -4005.88, 186.015, 1.85985, 300, 300, 5, 0, 10282, 0, 0, 1),
(108084, 27230, 571, 1, 1, 0, 0, 3512.4, -5438.46, 170.686, 2.10084, 300, 300, 5, 0, 10282, 0, 0, 1),
(108085, 27230, 571, 1, 1, 0, 0, 3642.53, -5344.12, 127.55, 3.31465, 300, 300, 5, 0, 10282, 0, 0, 1),
(108086, 27230, 571, 1, 1, 0, 0, 5132.7, -4963.2, 295.887, 4.69872, 300, 300, 5, 0, 10282, 0, 0, 1),
(108087, 27230, 571, 1, 1, 0, 0, 3693.64, -4684.76, 173.245, 3.46149, 300, 300, 5, 0, 10282, 0, 0, 1),
(108088, 27230, 571, 1, 1, 0, 0, 3748.85, -4757.49, 161.196, 4.3067, 300, 300, 5, 0, 10282, 0, 0, 1),
(108090, 27230, 571, 1, 1, 0, 0, 3725.11, -4648.05, 175.771, 1.59911, 300, 300, 5, 0, 10282, 0, 0, 1),
(108091, 27230, 571, 1, 1, 0, 0, 5270.11, -4897.75, 302.413, 3.34159, 300, 300, 5, 0, 10282, 0, 0, 1),
(108092, 27230, 571, 1, 1, 0, 0, 3529.49, -5341.68, 152.148, 3.18149, 300, 300, 5, 0, 10282, 0, 0, 1),
(108093, 27230, 571, 1, 1, 0, 0, 3597.49, -5294.22, 135.747, 5.14214, 300, 300, 5, 0, 10282, 0, 0, 1),
(108094, 27230, 571, 1, 1, 0, 0, 3611.19, -5328.91, 129.767, 2.49632, 300, 300, 5, 0, 10282, 0, 0, 1),
(108095, 27230, 571, 1, 1, 0, 0, 3745.83, -4078.45, 187.682, 5.38191, 300, 300, 5, 0, 10282, 0, 0, 1),
(108096, 27230, 571, 1, 1, 0, 0, 3789.37, -5184.3, 114.661, 1.50232, 300, 300, 5, 0, 10282, 0, 0, 1),
(108097, 27230, 571, 1, 1, 0, 0, 4321.63, -4559.13, 134.664, 0.795494, 300, 300, 5, 0, 10282, 0, 0, 1),
(108098, 27230, 571, 1, 1, 0, 0, 4919.02, -4864.45, 323.674, 1.23329, 300, 300, 5, 0, 10282, 0, 0, 1),
(108099, 27230, 571, 1, 1, 0, 0, 4908.49, -4669.53, 274.489, 4.34059, 300, 300, 5, 0, 10282, 0, 0, 1),
(108100, 27230, 571, 1, 1, 0, 0, 3655.45, -5303.82, 121.992, 1.34063, 300, 300, 5, 0, 10282, 0, 0, 1),
(108101, 27230, 571, 1, 1, 0, 0, 4903.49, -4736.46, 279.268, 5.54957, 300, 300, 5, 0, 10282, 0, 0, 1),
(108102, 27230, 571, 1, 1, 0, 0, 3785.84, -5225.19, 113.456, 1.75458, 300, 300, 5, 0, 10282, 0, 0, 1),
(108103, 27230, 571, 1, 1, 0, 0, 3794.47, -4657.18, 171.396, 0.620914, 300, 300, 5, 0, 10282, 0, 0, 1),
(108104, 27230, 571, 1, 1, 0, 0, 3821.64, -4654.59, 171.199, 5.99222, 300, 300, 5, 0, 10282, 0, 0, 1),
(108105, 27230, 571, 1, 1, 0, 0, 4861.29, -4811.71, 282.772, 2.28981, 300, 300, 5, 0, 10282, 0, 0, 1),
(108106, 27230, 571, 1, 1, 0, 0, 3557.98, -5404.79, 153.172, 5.88791, 300, 300, 5, 0, 10282, 0, 0, 1),
(108107, 27230, 571, 1, 1, 0, 0, 3775.63, -4595.22, 188.653, 3.41954, 300, 300, 5, 0, 10282, 0, 0, 1),
(108108, 27230, 571, 1, 1, 0, 0, 3887.68, -4637.25, 172.542, 0.79311, 300, 300, 5, 0, 10282, 0, 0, 1),
(108109, 27230, 571, 1, 1, 0, 0, 3956.78, -4568.06, 196.327, 0.737027, 300, 300, 5, 0, 10282, 0, 0, 1),
(108110, 27230, 571, 1, 1, 0, 0, 3832.35, -4775.8, 136.359, 3.41771, 300, 300, 5, 0, 10282, 0, 0, 1),
(108111, 27230, 571, 1, 1, 0, 0, 4222.25, -4638.42, 123.883, 0.036167, 300, 300, 5, 0, 10282, 0, 0, 1),
(108112, 27230, 571, 1, 1, 0, 0, 3770.92, -4629.01, 176.355, 5.8694, 300, 300, 5, 0, 10282, 0, 0, 1),
(108113, 27230, 571, 1, 1, 0, 0, 4269.66, -4390.56, 178.732, 4.16912, 300, 300, 5, 0, 10282, 0, 0, 1),
(108114, 27230, 571, 1, 1, 0, 0, 3733.65, -5185.47, 123.501, 5.53854, 300, 300, 5, 0, 10282, 0, 0, 1),
(108115, 27230, 571, 1, 1, 0, 0, 4279.99, -4546.27, 151.393, 3.14328, 300, 300, 5, 0, 10282, 0, 0, 1),
(108116, 27230, 571, 1, 1, 0, 0, 3686.94, -5301.96, 112.891, 1.74847, 300, 300, 5, 0, 10282, 0, 0, 1),
(108117, 27230, 571, 1, 1, 0, 0, 3552.39, -4241.58, 227.018, 6.22296, 300, 300, 5, 0, 10282, 0, 0, 1),
(108118, 27230, 571, 1, 1, 0, 0, 5148.77, -4927.3, 297.146, 3.30079, 300, 300, 5, 0, 10282, 0, 0, 1),
(108119, 27230, 571, 1, 1, 0, 0, 3588.39, -4215.59, 217.843, 0.117451, 300, 300, 5, 0, 10282, 0, 0, 1),
(108120, 27230, 571, 1, 1, 0, 0, 3536.75, -5517.13, 176.909, 1.22803, 300, 300, 5, 0, 10282, 0, 0, 1),
(108121, 27230, 571, 1, 1, 0, 0, 5298.62, -4878.06, 303.252, 1.91264, 300, 300, 5, 0, 10282, 0, 0, 1),
(108122, 27230, 571, 1, 1, 0, 0, 3653.43, -4113.34, 196.288, 1.50728, 300, 300, 5, 0, 10282, 0, 0, 1),
(108123, 27230, 571, 1, 1, 0, 0, 3739.05, -5245.23, 112.134, 0.7495, 300, 300, 5, 0, 10282, 0, 0, 1),
(108124, 27230, 571, 1, 1, 0, 0, 3685.76, -4144.94, 188.827, 5.32842, 300, 300, 5, 0, 10282, 0, 0, 1),
(108125, 27230, 571, 1, 1, 0, 0, 3498.11, -5493.38, 177.488, 1.94528, 300, 300, 5, 0, 10282, 0, 0, 1),
(108126, 27230, 571, 1, 1, 0, 0, 5222.51, -4947.23, 297.804, 5.8018, 300, 300, 5, 0, 10282, 0, 0, 1),
(108127, 27230, 571, 1, 1, 0, 0, 4953.55, -4953.82, 370.71, 1.71777, 300, 300, 5, 0, 10282, 0, 0, 1),
(108128, 27230, 571, 1, 1, 0, 0, 4927.08, -4796.5, 293.533, 4.20596, 300, 300, 5, 0, 10282, 0, 0, 1),
(108129, 27230, 571, 1, 1, 0, 0, 5034.79, -4994.08, 314.404, 1.33642, 300, 300, 5, 0, 10282, 0, 0, 1),
(108130, 27230, 571, 1, 1, 0, 0, 5277.18, -4978.37, 296.49, 4.39915, 300, 300, 5, 0, 10282, 0, 0, 1),
(108131, 27230, 571, 1, 1, 0, 0, 3712.31, -4105.16, 187.419, 6.23301, 300, 300, 5, 0, 10282, 0, 0, 1),
(108132, 27230, 571, 1, 1, 0, 0, 4875.83, -4759.09, 276.218, 1.45599, 300, 300, 5, 0, 10282, 0, 0, 1),
(108133, 27230, 571, 1, 1, 0, 0, 3629.55, -4192.21, 204.332, 4.83984, 300, 300, 5, 0, 10282, 0, 0, 1),
(120674, 27230, 571, 1, 1, 0, 0, 3792.25, -4109.41, 204.818, 5.98859, 300, 300, 5, 0, 10282, 0, 0, 1),
(120675, 27230, 571, 1, 1, 0, 0, 3807.29, -4090.63, 201.681, 3.07009, 300, 300, 5, 0, 10282, 0, 0, 1),
(120676, 27230, 571, 1, 1, 0, 0, 3966.11, -4743.78, 137.383, 2.6502, 300, 300, 5, 0, 10282, 0, 0, 1),
(120677, 27230, 571, 1, 1, 0, 0, 3727.33, -4085.73, 185.32, 0, 300, 300, 5, 0, 10282, 0, 0, 1),
(120678, 27230, 571, 1, 1, 0, 0, 3839.84, -4051.42, 197.349, 2.85553, 300, 300, 5, 0, 10282, 0, 0, 1),
(120679, 27230, 571, 1, 1, 0, 0, 4892.21, -4849.58, 311.605, 0.734608, 300, 300, 5, 0, 10282, 0, 0, 1),
(120680, 27230, 571, 1, 1, 0, 0, 3667.91, -4085.93, 186.12, 3.63312, 300, 300, 5, 0, 10282, 0, 0, 1),
(120681, 27230, 571, 1, 1, 0, 0, 3827.13, -4151.01, 207.698, 1.1491, 300, 300, 5, 0, 10282, 0, 0, 1),
(120682, 27230, 571, 1, 1, 0, 0, 3886.17, -4759.45, 131.463, 3.85996, 300, 300, 5, 0, 10282, 0, 0, 1),
(120683, 27230, 571, 1, 1, 0, 0, 4026.08, -4740.01, 127.187, 1.71092, 300, 300, 5, 0, 10282, 0, 0, 1),
(120684, 27230, 571, 1, 1, 0, 0, 5163, -4963.5, 296.177, 2.48844, 300, 300, 5, 0, 10282, 0, 0, 1),
(120685, 27230, 571, 1, 1, 0, 0, 3676.95, -5265.57, 119.744, 5.0675, 300, 300, 5, 0, 10282, 0, 0, 1),
(120686, 27230, 571, 1, 1, 0, 0, 3879.66, -4084.5, 203.196, 1.47203, 300, 300, 5, 0, 10282, 0, 0, 1),
(120687, 27230, 571, 1, 1, 0, 0, 3846.57, -4115.06, 209.65, 4.17013, 300, 300, 5, 0, 10282, 0, 0, 1),
(120688, 27230, 571, 1, 1, 0, 0, 4005.97, -4784.11, 114.624, 3.72255, 300, 300, 5, 0, 10282, 0, 0, 1),
(120689, 27230, 571, 1, 1, 0, 0, 3589.71, -4151.51, 222.249, 3.2433, 300, 300, 5, 0, 10282, 0, 0, 1),
(120690, 27230, 571, 1, 1, 0, 0, 3885.91, -4142.06, 220.463, 2.76395, 300, 300, 5, 0, 10282, 0, 0, 1),
(120691, 27230, 571, 1, 1, 0, 0, 3920.99, -4113, 216.091, 1.01751, 300, 300, 5, 0, 10282, 0, 0, 1),
(120692, 27230, 571, 1, 1, 0, 0, 3522.68, -4389.78, 237.272, 5.11992, 300, 300, 5, 0, 10282, 0, 0, 1);

INSERT INTO `gameobject_involvedrelation` (`id`, `quest`) VALUES (180642, 8577);
DELETE FROM `creature_involvedrelation` WHERE `id` = 11811 AND `quest` = 8577;
DELETE FROM `creature_involvedrelation` WHERE `id` = 30676 AND `quest` = 12148;
DELETE FROM `creature_questrelation` WHERE `id` = 30676 AND `quest` = 12148;
DELETE FROM `creature_involvedrelation` WHERE `id` = 15868 AND `quest` = 12269;
DELETE FROM `creature_questrelation` WHERE `id` = 15868 AND `quest` = 12269;
DELETE FROM `creature_involvedrelation` WHERE `id` = 15870 AND `quest` = 12325;
DELETE FROM `creature_questrelation` WHERE `id` = 15870 AND `quest` = 12326;
DELETE FROM `creature_questrelation` WHERE `id` = 18180 AND `quest` = 12526;
DELETE FROM `creature_questrelation` WHERE `id` = 28646 AND `quest` = 12803;
REPLACE INTO `game_event_quest` SELECT `entry`,'48' FROM `quest_template` WHERE `entry` in (25563,25567,25568,25569,25570,25571,25572,
25604,25605,25606,25759,25773,25781,25782,25783,25784,25785,25786,25787,25789,27122,27127,27137,27138,27307,27308,27473,27540,27546,27566,27570,27572);
UPDATE `quest_template` SET `RequiredRaces` = 1101 WHERE `entry` =25180;
DELETE FROM `gameobject_questrelation` WHERE `id` = 711 AND `quest` = 12089;
DELETE FROM `gameobject_questrelation` WHERE `id` = 711 AND `quest` = 12090;
DELETE FROM `gameobject_questrelation` WHERE `id` = 711 AND `quest` = 12091;
DELETE FROM `gameobject_questrelation` WHERE `id` = 150075 AND `quest` = 2781;
DELETE FROM `gameobject_questrelation` WHERE `id` = 142122 AND `quest` = 2875;
DELETE FROM `gameobject_questrelation` WHERE `id` = 1740 AND `quest` = 510;
DELETE FROM `gameobject_questrelation` WHERE `id` = 186420 AND `quest` = 511;
DELETE FROM `gameobject_questrelation` WHERE `id` = 142712 AND `quest` = 2933;
DELETE FROM `gameobject_questrelation` WHERE `id` = 142713 AND `quest` = 2933;
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(2021, 142702, 0, 1, 1, -42.5313, -2481.28, 119.151, 2.94088, 0, 0, 0.994969, 0.100188, 10, 10, 100, 1),
(66195, 142712, 0, 1, 1, -15.8808, -2789.75, 123.862, 3.14159, 0, 0, 1, 0.00000126759, 7200, 7200, 100, 1),
(66196, 142713, 0, 1, 1, -14.6563, -2460.39, 122.163, 3.14159, 0, 0, 1, 0.00000126759, 7200, 7200, 100, 1);

UPDATE creature_template SET UnitFlags=33555200 WHERE entry IN(26251);

DELETE FROM dbscripts_on_gossip WHERE id = 978400;
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(978400,0,15,53310,0,0,0,0,6,0,0,0,0,0,0,0,0,'cast: Flight - Westfall to Light\'s Breach');
UPDATE `gossip_menu_option` SET `option_text` = 'I was told you could get me to Light\\''s Breach....' WHERE `menu_id` =9784 AND `id` =1;

REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(108051, 29285, 571, 1, 1, 0, 0, 4536.41, -4147, 196.093, 1.69297, 300, 300, 0, 0, 9291, 3231, 0, 0),
(108052, 29285, 571, 1, 1, 0, 0, 4528.78, -4252.11, 189.873, 5.85436, 300, 300, 0, 0, 9291, 3231, 0, 0);
UPDATE creature SET position_x = 4606.641, position_y = -4229.929, position_z = 178.7377, orientation = 1.623156, spawntimesecsmin = 25, spawntimesecsmax = 25 WHERE id = 26212;
REPLACE INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (9608, 12982, 0, 3529), (9608, 13510, 0, 3534), (9608, 13511, 0, 3538), (9608, 13512, 0, 3536);
DELETE FROM conditions WHERE condition_entry BETWEEN 3527 AND 3538;
INSERT INTO conditions (condition_entry, type, value1, value2, flags) VALUES
(3527, 8, 12, 0, 1), (3528, 8, 65, 0, 1), (3529, -2, 3528, 3527, 0), (3530, 8, 12, 0, 0), (3531, 8, 65, 0, 0), (3532, -2, 3531, 3530, 0),
(3533, 8, 166, 0, 1), (3534, -1, 3532, 3533, 0), (3535, 8, 14, 0, 0), (3536, -1, 3535, 3533, 0), (3537, 8, 166, 0, 0), (3538, -1, 3537, 3535, 0);
UPDATE creature SET phaseMask = 3, position_x = 4589.843, position_y = -4212.007, position_z = 178.6654, orientation = 3.857178, spawntimesecsmin = 180, spawntimesecsmax = 180, MovementType = 0, spawndist = 0 WHERE id = 26371;
DELETE FROM creature_movement_template WHERE entry IN (26371);
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(26371,1,4589.843,-4212.007,178.6654,3.857178,5000,2637101),
(26371,2,4591.646,-4210.116,179.6954,0.8726646,5000,2637102),
(26371,3,4593.296,-4211.938,178.9495,100,0,0),
(26371,4,4596.1,-4212.866,178.9495,100,0,0),
(26371,5,4597.85,-4214.075,178.6654,100,0,0),
(26371,6,4599.053,-4216.979,178.6654,100,0,0),
(26371,7,4601.088,-4216.894,178.7672,100,0,0),
(26371,8,4600.729,-4214.721,179.6024,100,5000,2637103),
(26371,9,4600.315,-4215.984,178.6863,100,0,0),
(26371,10,4599.499,-4219.589,178.6654,100,0,0),
(26371,11,4597.102,-4221.927,178.6654,100,0,0),
(26371,12,4592.944,-4221.343,178.6654,100,0,0),
(26371,13,4590.791,-4217.641,178.6654,100,0,0),
(26371,14,4589.843,-4212.007,178.6654,3.857178,2000,2637104);
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 2637101 AND 2637104;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2637101,10,21,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'active'),
(2637101,200,0,0,0,0,0,0,0x04,2000001646,0,0,0,0,0,0,0,''),
(2637102,1000,0,0,0,0,0,0,0x04,2000001647,0,0,0,0,0,0,0,''),
(2637102,4500,0,0,0,0,0,0,0x04,2000001648,0,0,0,0,0,0,0,''),
(2637103,1000,0,0,0,0,0,0,0x04,2000001649,0,0,0,0,0,0,0,''),
(2637104,10,20,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'idle'),
(2637104,10,21,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'unactive');
DELETE FROM dbscript_string WHERE entry BETWEEN 2000001646 AND 2000001649;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000001646,'What\'s that, girl? You\'re hungry already? Don\'t worry, I\'ll get the oats.',0,0,7,1,NULL),
(2000001647,'Now, where do they keep those oats?',0,0,7,1,NULL),
(2000001648,'Hmm... maybe over there.',0,0,7,6,NULL),
(2000001649,'No... no oats here, either.',0,0,7,1,NULL);
UPDATE creature SET position_x = 4555.565, position_y = -4215.476, position_z = 170.5834, orientation = 2.23425, MovementType = 2, spawndist = 0 WHERE id = 26205;
DELETE FROM creature_movement_template WHERE entry IN (26205);
INSERT INTO creature_movement_template (entry, pathId, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(26205,0,1,4555.565,-4215.476,170.5834,2.23425,120000,0),
(26205,0,2,4555.565,-4215.476,170.5834,2.23425,2000,2620501),
(26205,1,1,4558.015,-4218.612,170.7166,5.44245,10000,2620502),
(26205,1,2,4560.26,-4217.02,170.8083,5.44245,10000,2620502),
(26205,1,3,4558.015,-4218.612,170.7166,5.44245,10000,2620502),
(26205,1,4,4555.565,-4215.476,170.5834,2.23425,1000,2620503),
(26205,2,1,4555.565,-4215.476,170.5834,2.23425,55000,2620504);
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 2620501 AND 2620504;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2620501,0,45,0,20226,0,0,0,0x04,0,0,0,0,0,0,0,0,'start random script'),
(2620502,2000,1,69,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'emote'),
(2620502,9000,1,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'emote reset'),
(2620503,0,20,2,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'default wp'),
(2620504,10,31,26392,30,0,0,0,0,0,0,0,0,0,0,0,0,'search for 26392'),
(2620504,100,21,1,0,0,26392,40,7,0,0,0,0,0,0,0,0,'buddy active'),
(2620504,101,21,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'active'),
(2620504,200,0,0,0,0,26392,50,7,2000001650,0,0,0,0,0,0,0,''),
(2620504,3000,0,0,0,0,26392,50,7,2000001651,0,0,0,0,0,0,0,''),
(2620504,7000,0,0,0,0,0,0,0x04,2000001652,0,0,0,0,0,0,0,''),
(2620504,12000,0,0,0,0,26392,50,7,2000001653,0,0,0,0,0,0,0,''),
(2620504,14000,0,0,0,0,26392,50,7,2000001654,0,0,0,0,0,0,0,''),
(2620504,19000,0,0,0,0,26392,50,7,2000001655,0,0,0,0,0,0,0,''),
(2620504,23000,0,0,0,0,0,0,0x04,2000001656,0,0,0,0,0,0,0,''),
(2620504,28000,0,0,0,0,26392,50,7,2000001657,0,0,0,0,0,0,0,''),
(2620504,31000,1,25,0,0,26392,50,7,0,0,0,0,0,0,0,0,''),
(2620504,33000,0,0,0,0,26392,50,7,2000001658,0,0,0,0,0,0,0,''),
(2620504,38000,0,0,0,0,0,0,0x04,2000001659,0,0,0,0,0,0,0,''),
(2620504,40000,15,46963,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'cast 46963'),
(2620504,43000,0,0,0,0,26392,50,7,2000001660,0,0,0,0,0,0,0,''),
(2620504,47000,0,0,0,0,0,0,0x04,2000001661,0,0,0,0,0,0,0,''),
(2620504,50000,0,0,0,0,26392,50,7,2000001662,0,0,0,0,0,0,0,''),
(2620504,51000,21,0,0,0,26392,40,7,0,0,0,0,0,0,0,0,'buddy active'),
(2620504,51100,20,2,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'default wp'),
(2620504,101,21,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'unactive');
UPDATE `creature` SET `position_z` = '170.671' WHERE `guid` =108443;
DELETE FROM dbscript_random_templates WHERE id = 20226;
INSERT INTO dbscript_random_templates (id, type, target_id, chance, comments) VALUES
(20226,1,20550,80,'"Buckets" Cleary 26205 - Random Script - 1-1'),
(20226,1,20551,20,'"Buckets" Cleary 26205 - Random Script - 1-2');
DELETE FROM dbscripts_on_relay WHERE id BETWEEN 20550 AND 20551;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20550,0,20,2,1,0,0,0,0,0,0,0,0,0,0,0,0,'"Buckets" Cleary 26205 - Random Script - 1-1 - set wp 1'),
(20551,0,20,2,2,0,0,0,0,0,0,0,0,0,0,0,0,'"Buckets" Cleary 26205 - Random Script - 1-2 - set wp 2');
DELETE FROM dbscript_string WHERE entry BETWEEN 2000001650 AND 2000001662;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000001650,'Brrrr... It\'s cold up here.',0,0,7,1,NULL),
(2000001651,'Buckets! Where\'s my laundry?',0,0,7,6,NULL),
(2000001652,'I\'m working on it, Molsen. If you want it done faster, do it yourself.',0,0,7,25,NULL),
(2000001653,'No way.',0,0,7,274,NULL),
(2000001654,'I\'m a soldier, Buckets. You know, a fighting man... You\'re the laundry boy.',0,0,7,1,NULL),
(2000001655,'And not a very good one! Remember what you did to my tabard?',0,0,7,6,NULL),
(2000001656,'That was entirely your own fault, Molsen. Maybe you\'ll know to separate your colors from now on...',0,0,7,1,NULL),
(2000001657,'The tabard was pink when I got it back, Buckets. Pink! Think about that...',0,0,7,1,NULL),
(2000001658,'The whole squad laughed at me for a week! Don\'t let it happen again!',0,0,7,25,NULL),
(2000001659,'Fine. Have it your way.',0,0,7,66,NULL),
(2000001660,'What\'s wrong with you? That was dinner!',0,0,7,6,NULL),
(2000001661,'Now it\'s laundry.',0,0,7,11,NULL),
(2000001662,'You\'re dead, Buckets! You hear me? Dead!',0,0,7,5,NULL);
UPDATE creature_template SET EquipmentTemplateid = 0 WHERE Entry = 26235;
DELETE FROM creature_movement_template WHERE entry = 26236;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(26236,1,4559.23,-4190.13,173.567,0.663225,300000,2623601);
DELETE FROM dbscripts_on_creature_movement WHERE id = 2623601;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2623601,10,31,26235,30,0,0,0,0,0,0,0,0,0,0,0,0,'search for 26235'),
(2623601,100,21,1,0,0,26235,40,7,0,0,0,0,0,0,0,0,'buddy active'),
(2623601,101,21,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'active'),
(2623601,201,20,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'idle'),
(2623601,1000,0,0,0,0,0,0,0x04,2000001663,0,0,0,0,0,0,0,''),
(2623601,6000,0,0,0,0,0,0,0x04,2000001664,0,0,0,0,0,0,0,''),
(2623601,10000,0,0,0,0,26235,50,7,2000001665,0,0,0,0,0,0,0,''),
(2623601,13000,0,0,0,0,0,0,0x04,2000001666,0,0,0,0,0,0,0,''),
(2623601,16000,0,0,0,0,26235,50,7,2000001667,0,0,0,0,0,0,0,''),
(2623601,21000,0,0,0,0,0,0,0x04,2000001668,0,0,0,0,0,0,0,''),
(2623601,25000,0,0,0,0,26235,50,7,2000001669,0,0,0,0,0,0,0,''),
(2623601,29000,0,0,0,0,0,0,0x04,2000001670,0,0,0,0,0,0,0,''),
(2623601,32000,22,1994,0x01|0x02|0x04,0,26235,50,7,0,0,0,0,0,0,0,0,''),
(2623601,32010,22,1993,0x01|0x02|0x04,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(2623601,32500,26,0,0,0,26235,50,3,0,0,0,0,0,0,0,0,'');
UPDATE `creature` SET `position_z` = '173.567' WHERE `guid` =107887;
DELETE FROM dbscripts_on_relay WHERE id = 20552;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20552,1000,0,0,0,0,26236,50,7,2000001671,0,0,0,0,0,0,0,''),
(20552,5000,0,0,0,0,0,0,0x04,2000001672,0,0,0,0,0,0,0,''),
(20552,5001,21,0,0,0,26236,40,7,0,0,0,0,0,0,0,0,'buddy unactive'),
(20552,5005,18,0,0,0,26236,40,7,0,0,0,0,0,0,0,0,'buddy desp'),
(20552,5010,21,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'unactive');
DELETE FROM dbscript_string WHERE entry BETWEEN 2000001663 AND 2000001672;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000001663,'Boy, what I wouldn\'t give for a bowl of old Salma Saldean\'s Westfall stew right about now.',0,0,7,1,NULL),
(2000001664,'Gruel and hardtack are no way to survive.',0,0,7,1,NULL),
(2000001665,'Y\'know, it\'s not really Saldean\'s recipe.',0,0,7,1,NULL),
(2000001666,'What?',0,0,7,6,NULL),
(2000001667,'It\'s not Salma Saldean\'s recipe. It\'s my Ma\'s. She asked some passerby to deliver it to Salma right before she and Pa left Westfall with Old Blanchy.',0,0,7,1,NULL),
(2000001668,'Yeah? Well, at least the Saldeans didn\'t flee Westfall when things got tough.',0,0,7,1,NULL),
(2000001669,'No one insults Ma and Pa! Take it back!',0,0,7,25,NULL),
(2000001670,'You heard what I said! Your parents are cowards, and so are you, Furlbrow!',0,0,7,5,NULL),
(2000001671,'OK, I take it back! Your Ma and Pa weren\'t cowards!',0,0,7,1,NULL),
(2000001672,'Glad you decided to see things my way...',0,0,7,1,NULL);
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(19326, 26217, 571, 1, 1, 0, 0, 4529.5, -4187.33, 173.734, 4.31096, 300, 300, 0, 0, 42540, 3561, 0, 0),
(78112, 26217, 571, 1, 1, 0, 0, 4517.91, -4257.7, 170.134, 3.87463, 300, 300, 0, 0, 42540, 3561, 0, 0),
(78154, 26217, 571, 1, 1, 0, 0, 4536.22, -4156.36, 173.84, 3.75246, 300, 300, 0, 0, 42540, 3561, 0, 0),
(78155, 26217, 571, 1, 1, 0, 0, 4542.62, -4229.03, 170.818, 4.06662, 300, 300, 0, 0, 42540, 3561, 0, 0),
(78157, 26217, 571, 1, 1, 0, 0, 4536.54, -4217.82, 170.558, 1.05112, 300, 300, 0, 0, 42540, 3561, 0, 2),
(78160, 26217, 571, 1, 1, 0, 0, 4552.84, -4168.47, 173.67, 3.24631, 300, 300, 0, 0, 42540, 3561, 0, 0),
(78172, 26217, 571, 1, 1, 0, 0, 4534.51, -4227.13, 170.784, 5.28835, 300, 300, 0, 0, 42540, 3561, 0, 0),
(78173, 26217, 571, 1, 1, 0, 0, 4563.17, -4173.47, 173.811, 2.70526, 300, 300, 0, 0, 42540, 3561, 0, 0),
(78179, 26217, 571, 1, 1, 0, 0, 4522.01, -4218.12, 170.004, 3.15905, 300, 300, 0, 0, 42540, 3561, 0, 0),
(78180, 26217, 571, 1, 1, 0, 0, 4527.32, -4200.9, 173.608, 4.95674, 300, 300, 0, 0, 42540, 3561, 0, 0),
(78182, 26217, 571, 1, 1, 0, 0, 4548.32, -4208.88, 170.669, 4.80525, 300, 300, 0, 0, 42540, 3561, 0, 0),
(78188, 26217, 571, 1, 1, 0, 0, 4544.69, -4164.07, 173.659, 3.1765, 300, 300, 0, 0, 42540, 3561, 0, 0),
(78189, 26217, 571, 1, 1, 0, 0, 4553.9, -4185.1, 173.663, 3.21141, 300, 300, 0, 0, 42540, 3561, 0, 0),
(78190, 26217, 571, 1, 1, 0, 0, 4567.78, -4173.4, 173.746, 3.21141, 300, 300, 0, 0, 42540, 3561, 0, 0),
(78379, 26217, 571, 1, 1, 0, 0, 4513.3, -4239.39, 170.422, 3.14159, 300, 300, 0, 0, 42540, 3561, 0, 0),
(94684, 26217, 571, 1, 1, 0, 0, 4557.08, -4188.17, 173.809, 0.349066, 300, 300, 0, 0, 42540, 3561, 0, 0),
(94685, 26217, 571, 1, 1, 0, 0, 4564.48, -4180.15, 173.61, 3.99238, 300, 300, 0, 0, 42540, 3561, 0, 2),
(95497, 26217, 571, 1, 1, 0, 0, 4548.49, -4228.8, 170.558, 3.42946, 300, 300, 0, 0, 42540, 3561, 0, 2),
(95646, 26217, 571, 1, 1, 0, 0, 4523.1, -4161.47, 171.621, 1.81514, 300, 300, 0, 0, 42540, 3561, 0, 0),
(36006, 26217, 571, 1, 1, 0, 0, 4522.45, -4261.83, 169.995, 3.97935, 300, 300, 0, 0, 42540, 3561, 0, 0),
(36007, 26217, 571, 1, 1, 0, 0, 4545.82, -4194.21, 173.753, 3.1765, 300, 300, 0, 0, 42540, 3561, 0, 0),
(36010, 26217, 571, 1, 1, 0, 0, 4523.09, -4193.62, 173.809, 0.20944, 300, 300, 0, 0, 42540, 3561, 0, 0),
(36032, 26217, 571, 1, 1, 0, 0, 4542.03, -4196.29, 173.235, 4.75431, 300, 300, 0, 0, 42540, 3561, 0, 2),
(36090, 26217, 571, 1, 1, 0, 0, 4566.78, -4184.85, 173.844, 0.139626, 300, 300, 0, 0, 42540, 3561, 0, 0),
(36146, 26217, 571, 1, 1, 0, 0, 4520.51, -4205.97, 171.187, 3.64774, 300, 300, 0, 0, 42540, 3561, 0, 0),
(36149, 26217, 571, 1, 1, 0, 0, 4543.38, -4233.45, 170.818, 2.79253, 300, 300, 0, 0, 42540, 3561, 0, 0),
(36150, 26217, 571, 1, 1, 0, 0, 4593.64, -4212.94, 179.029, 5.13127, 300, 300, 0, 0, 42540, 3561, 0, 0);
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 26217);
INSERT INTO `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_pvp_state`, `emote`, `moveflags`, `auras`) VALUES
(36150, 0, 0, 1, 1, 0, 0, '46581'), (78160, 0, 0, 1, 1, 0, 0, '46769'), (78155, 0, 0, 1, 1, 0, 0, '46581'), (78154, 0, 0, 1, 1, 0, 0, NULL), (19326, 0, 0, 1, 1, 0, 0, '46769'),
(78173, 0, 1, 1, 1, 0, 0, NULL), (78112, 0, 0, 1, 1, 0, 0, NULL), (78180, 0, 0, 1, 1, 0, 0, NULL), (78182, 0, 0, 1, 1, 0, 0, '46769'), (78188, 0, 0, 1, 1, 0, 0, '46769'),
(78189, 0, 1, 1, 1, 0, 0, NULL), (95646, 0, 0, 1, 1, 0, 0, NULL), (36006, 0, 0, 1, 1, 0, 0, NULL), (36010, 0, 1, 1, 1, 0, 0, NULL), (36032, 0, 0, 1, 1, 0, 0, NULL),
(36090, 0, 0, 1, 1, 0, 0, '46769'), (36146, 0, 0, 1, 1, 0, 0, NULL), (36149, 0, 1, 1, 1, 0, 0, NULL), (36007, 0, 1, 1, 1, 0, 0, NULL), (78190, 0, 1, 1, 1, 0, 0, NULL),
(78379, 0, 0, 1, 1, 0, 0, NULL), (94684, 0, 1, 1, 1, 0, 0, NULL), (94685, 0, 0, 1, 1, 0, 0, NULL), (95497, 0, 0, 1, 1, 0, 0, NULL), (78179, 0, 0, 1, 1, 0, 0, NULL),
(78157, 0, 0, 1, 1, 0, 0, NULL), (78172, 0, 1, 1, 1, 0, 0, NULL);
DELETE FROM creature_movement WHERE id IN (78157,94685,95497,36032);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,waittime,script_id) VALUES
(78157,1,4533.77,-4221.92,170.491,100,0,0),
(78157,2,4528.99,-4225.94,170.164,100,0,0),
(78157,3,4524.63,-4231.51,169.505,100,0,0),
(78157,4,4526.15,-4237.86,170.2,100,0,0),
(78157,5,4529.68,-4242.56,170.374,100,0,0),
(78157,6,4526.39,-4238.32,170.215,100,0,0),
(78157,7,4524.73,-4231.82,169.535,100,0,0),
(78157,8,4528.58,-4226.22,170.099,100,0,0),
(78157,9,4533.7,-4222.17,170.488,100,0,0),
(78157,10,4536.16,-4218,170.602,100,0,0),
(94685,1,4563.557,-4186.4,173.6098,5.72468,10000,2620502),
(94685,2,4560.47,-4180,173.484,100,0,0),
(94685,3,4561.14,-4173.36,173.486,0.174959,10000,2621701),
(94685,4,4561.12,-4175.7,173.4864,100,0,0),
(94685,5,4566.638,-4177.693,173.6098,0.2792527,10000,2620502),
(95497,1,4555.29,-4226.4,170.666,100,0,0),
(95497,2,4564.25,-4222.53,171.472,100,0,0),
(95497,3,4571.78,-4219.31,173.602,100,0,0),
(95497,4,4577.62,-4218.65,175.886,100,0,0),
(95497,5,4587.03,-4221.24,178.199,100,0,0),
(95497,6,4589.76,-4226.93,178.651,100,0,0),
(95497,7,4587.42,-4234.69,178.807,100,0,0),
(95497,8,4585.85,-4241.95,180.366,100,0,0),
(95497,9,4582.7,-4246.91,181.864,100,0,0),
(95497,10,4585.87,-4242.41,180.45,100,0,0),
(95497,11,4587.4,-4235.11,178.855,100,0,0),
(95497,12,4589.81,-4227.39,178.652,100,0,0),
(95497,13,4587.46,-4221.42,178.289,100,0,0),
(95497,14,4577.97,-4218.64,176.002,100,0,0),
(95497,15,4572.11,-4219.13,173.746,100,0,0),
(95497,16,4564.69,-4222.41,171.564,100,0,0),
(95497,17,4555.84,-4226.3,170.666,100,0,0),
(95497,18,4548.77,-4228.74,170.493,100,0,0),
(36032,1,4541.6,-4180.5,173.483,100,0,0),
(36032,2,4541.32,-4164.06,173.531,100,0,0),
(36032,3,4541.61,-4180.06,173.484,100,0,0),
(36032,4,4542.27,-4196.1,173.148,100,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 2621701;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2621701,3000,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'emote'),
(2621701,7000,1,25,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'emote');
UPDATE `creature` SET `position_x` = '4464.36', `position_y` = '-4147.85', `position_z` = '170.418', `orientation` = '3.06145', `MovementType` = '2' WHERE `guid` =108232;
UPDATE creature_template SET MovementType=2 WHERE entry=27460;
DELETE FROM creature_movement_template WHERE entry = 27460;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(27460,1,4458.84,-4146.95,169.495,100,0,0),
(27460,2,4444.75,-4146.5,170.18,100,0,0),
(27460,3,4438.5,-4130.04,170.893,100,0,0),
(27460,4,4434.22,-4116.71,170.893,100,0,0),
(27460,5,4429.64,-4100.69,171.901,100,0,0),
(27460,6,4435.08,-4091.04,172.007,100,0,0),
(27460,7,4441.12,-4082.46,172.086,100,0,0),
(27460,8,4448.56,-4072,173.436,100,0,0),
(27460,9,4459.78,-4061.31,174.93,100,0,0),
(27460,10,4464.92,-4051.86,175.671,100,0,0),
(27460,11,4469.37,-4040.87,177.536,100,0,0),
(27460,12,4483.07,-4042.71,177.178,100,0,0),
(27460,13,4502.01,-4052.64,175.696,100,0,0),
(27460,14,4508.68,-4060.77,175.352,100,0,0),
(27460,15,4516.9,-4068.06,176.024,100,0,0),
(27460,16,4528.69,-4075.76,175.902,100,0,0),
(27460,17,4535.22,-4094.03,175.742,100,0,0),
(27460,18,4530.51,-4101.59,174.914,100,0,0),
(27460,19,4527.66,-4111.75,174.316,100,0,0),
(27460,20,4517.12,-4122.53,173.225,100,0,0),
(27460,21,4506.82,-4126.84,172.102,100,0,0),
(27460,22,4491.68,-4127.23,172.511,100,0,0),
(27460,23,4485.25,-4134.77,171.924,100,0,0),
(27460,24,4475.67,-4148.11,170.116,100,0,0),
(27460,25,4464.38,-4147.79,170.755,100,0,0);
DELETE FROM dbscripts_on_relay WHERE id = 20553;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20553,0,10,27462,60000,0,0,0,0,0,0,0,0,4477.54,-4095.95,172.038,5.24451,'Part of Mother of Bambina 27460 EAI: summon Westfall Brigade Hunter 27462');
DELETE FROM `creature` WHERE `guid` = 87271;
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(108237, 27458, 571, 1, 1, 0, 0, 4469.07, -4148.18, 170.967, 3.07467, 300, 300, 0, 0, 1, 0, 0, 0),
(108235, 27459, 571, 1, 1, 0, 0, 4467.89, -4150.13, 170.958, 3.06475, 300, 300, 0, 0, 1, 0, 0, 0),
(108231, 27461, 571, 1, 1, 0, 0, 4468.2, -4146.15, 171.027, 3.06279, 300, 300, 0, 0, 1, 0, 0, 0);
DELETE FROM creature_linking WHERE master_guid = 108232;
INSERT INTO creature_linking (guid, master_guid, flag) VALUES (108231, 108232, 512+1), (108235, 108232, 512), (108237, 108232, 512);
UPDATE creature_template SET Faction = 2000 WHERE entry = 27485;

UPDATE `gameobject` SET `spawntimesecsmin` = 30, `spawntimesecsmax` = 30 WHERE `id` = 186278;
UPDATE `gameobject` SET `spawntimesecsmin` = 120, `spawntimesecsmax` = 120 WHERE `id` = 186283;

DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 26891);
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(108446, 26891, 571, 1, 1, 0, 0, 4679.69, -4097.94, 217.958, 4.09471, 300, 300, 5, 0, 10282, 0, 0, 1),
(108447, 26891, 571, 1, 1, 0, 0, 4708.8, -4072.78, 220.765, 1.23979, 300, 300, 5, 0, 10282, 0, 0, 1),
(108448, 26891, 571, 1, 1, 0, 0, 4695.27, -4059.48, 219.664, 3.19543, 300, 300, 5, 0, 10282, 0, 0, 1),
(108449, 26891, 571, 1, 1, 0, 0, 4641.76, -4052.4, 212.427, 1.72674, 300, 300, 5, 0, 10282, 0, 0, 1),
(108450, 26891, 571, 1, 1, 0, 0, 4660.04, -4014.66, 214.224, 2.62602, 300, 300, 5, 0, 10282, 0, 0, 1),
(108451, 26891, 571, 1, 1, 0, 0, 4709.05, -3953.32, 206.39, 3.73735, 300, 300, 5, 0, 10282, 0, 0, 1),
(108452, 26891, 571, 1, 1, 0, 0, 4786.71, -3908.05, 188.701, 1.99377, 300, 300, 5, 0, 10282, 0, 0, 1),
(108453, 26891, 571, 1, 1, 0, 0, 4718.12, -3974.48, 204.365, 3.12081, 300, 300, 5, 0, 10282, 0, 0, 1),
(108454, 26891, 571, 1, 1, 0, 0, 4802.68, -3909.73, 190.291, 1.02813, 300, 300, 5, 0, 10282, 0, 0, 1),
(108455, 26891, 571, 1, 1, 0, 0, 4773.97, -3937.97, 194.903, 4.82849, 300, 300, 5, 0, 10282, 0, 0, 1),
(108456, 26891, 571, 1, 1, 0, 0, 4822.43, -3905.96, 185.885, 5.13897, 300, 300, 5, 0, 10282, 0, 0, 1),
(108457, 26891, 571, 1, 1, 0, 0, 4824.04, -3895.19, 183.493, 3.98857, 300, 300, 5, 0, 10282, 0, 0, 1),
(108458, 26891, 571, 1, 1, 0, 0, 4790.53, -3934.05, 192.053, 0.646258, 300, 300, 5, 0, 10282, 0, 0, 1),
(108459, 26891, 571, 1, 1, 0, 0, 4804.8, -3932.02, 189.712, 3.87253, 300, 300, 5, 0, 10282, 0, 0, 1),
(108460, 26891, 571, 1, 1, 0, 0, 4713.04, -3937.69, 204.905, 2.72669, 300, 300, 5, 0, 10282, 0, 0, 1),
(108461, 26891, 571, 1, 1, 0, 0, 4694.24, -3937.27, 207.983, 3.46897, 300, 300, 5, 0, 10282, 0, 0, 1),
(108462, 26891, 571, 1, 1, 0, 0, 4747.76, -3943.42, 199.627, 0.840015, 300, 300, 5, 0, 10282, 0, 0, 1),
(108463, 26891, 571, 1, 1, 0, 0, 4731.36, -3921.98, 199.783, 0.033574, 300, 300, 5, 0, 10282, 0, 0, 1),
(108464, 26891, 571, 1, 1, 0, 0, 4687.19, -3930.33, 209.161, 3.56684, 300, 300, 5, 0, 10282, 0, 0, 1),
(108465, 26891, 571, 1, 1, 0, 0, 4761.66, -3942.06, 197.438, 6.13408, 300, 300, 5, 0, 10282, 0, 0, 1),
(108466, 26891, 571, 1, 1, 0, 0, 4623.02, -4025.64, 217.25, 4.88287, 300, 300, 5, 0, 10282, 0, 0, 1),
(108467, 26891, 571, 1, 1, 0, 0, 4669.92, -4040.1, 212.051, 0.0263537, 300, 300, 5, 0, 10282, 0, 0, 1);

DELETE FROM dbscripts_on_event WHERE id = 17870;
INSERT INTO dbscripts_on_event (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(17870,0,9,717,60,0,0,0,0,0,0,0,0,0,0,0,0,'Resp object');
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(717, 187084, 571, 1, 1, 4022.52, -3775.54, 115.786, -1.51844, 0, 0, -0.688356, 0.725373, -60, -60, 255, 1);

DELETE FROM dbscripts_on_relay WHERE id IN (20554,20555);
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20554,0,25,1,0,0,0,0,2,0,0,0,0,0,0,0,0,'Part of Highland Mustang 26472 EAI: RuN ON'),
(20554,10,37,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Part of Highland Mustang 26472 EAI: Follow Target'),
(20554,2000,37,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Part of Highland Mustang 26472 EAI: Follow Target'),
(20554,4000,15,49267,0,0,0,0,2,0,0,0,0,0,0,0,0,'Part of Highland Mustang 26472 EAI: Cast 49267'),
(20555,0,18,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Highland Mustang 26472 EAI: Despawn Self');
DELETE FROM dbscripts_on_spell WHERE id IN (49267,49285);
INSERT INTO dbscripts_on_spell (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(49267,0,15,49282,0,0,0,0,2,0,0,0,0,0,0,0,0,''),
(49285,0,14,49282,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(49285,10,3,0,0,0,0,0,0x04,0,0,0,0,4586.9,-4211.68,178.553,4.78738,''),
(49285,500,35,5,50,0,0,0,0,0,0,0,0,0,0,0,0,'Send Event AI 5');
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(107985, 26472, 571, 1, 1, 0, 0, 5110.92, -4534.98, 284.279, 4.43384, 60, 60, 5, 0, 10282, 0, 0, 1),
(107986, 26472, 571, 1, 1, 0, 0, 5105.66, -4533.48, 284.154, 4.43417, 60, 60, 5, 0, 10282, 0, 0, 1),
(107988, 26472, 571, 1, 1, 0, 0, 4945.66, -4425.59, 265.239, 1.47242, 60, 60, 5, 0, 10282, 0, 0, 1),
(107983, 26472, 571, 1, 1, 0, 0, 4389.21, -4464.3, 138.704, 1.97177, 60, 60, 0, 0, 10282, 0, 0, 0),
(107987, 26472, 571, 1, 1, 0, 0, 5100.66, -4535.71, 283.779, 4.43412, 60, 60, 5, 0, 10282, 0, 0, 1),
(107989, 26472, 571, 1, 1, 0, 0, 4762.27, -4328.92, 219.768, 2.92263, 60, 60, 5, 0, 10282, 0, 0, 1),
(107990, 26472, 571, 1, 1, 0, 0, 5106.23, -4541.46, 284.404, 4.43445, 60, 60, 0, 0, 10282, 0, 0, 0),
(107991, 26472, 571, 1, 1, 0, 0, 5082.24, -4548.48, 281.638, 2.33693, 60, 60, 5, 0, 10282, 0, 0, 1),
(107992, 26472, 571, 1, 1, 0, 0, 4809.29, -4205.97, 242.728, 4.13351, 60, 60, 5, 0, 10282, 0, 0, 1),
(107993, 26472, 571, 1, 1, 0, 0, 5118.18, -4577.9, 283.91, 1.60583, 60, 60, 5, 0, 10282, 0, 0, 1),
(107994, 26472, 571, 1, 1, 0, 0, 5070.48, -4581.38, 282.201, 4.65752, 60, 60, 5, 0, 10282, 0, 0, 1),
(107995, 26472, 571, 1, 1, 0, 0, 4952.94, -4836.58, 308.182, 4.65533, 60, 60, 5, 0, 10282, 0, 0, 1),
(107996, 26472, 571, 1, 1, 0, 0, 4960.41, -4829.52, 304.755, 5.12714, 60, 60, 5, 0, 10282, 0, 0, 1),
(107997, 26472, 571, 1, 1, 0, 0, 5024.26, -4418.91, 276.661, 5.85014, 60, 60, 5, 0, 10282, 0, 0, 1),
(107998, 26472, 571, 1, 1, 0, 0, 4866.03, -4348.31, 253.075, 2.31869, 60, 60, 5, 0, 10282, 0, 0, 1),
(107999, 26472, 571, 1, 1, 0, 0, 5099.6, -4545.94, 284.174, 4.43397, 60, 60, 5, 0, 10282, 0, 0, 1),
(108000, 26472, 571, 1, 1, 0, 0, 5098.27, -4540.63, 283.799, 4.43503, 60, 60, 5, 0, 10282, 0, 0, 1),
(108001, 26472, 571, 1, 1, 0, 0, 5048.56, -4520.19, 281.505, 4.3607, 60, 60, 5, 0, 10282, 0, 0, 1),
(108002, 26472, 571, 1, 1, 0, 0, 5017.03, -4478.05, 279.043, 5.95098, 60, 60, 5, 0, 10282, 0, 0, 1),
(108003, 26472, 571, 1, 1, 0, 0, 5002.11, -4893.64, 329.592, 2.38933, 60, 60, 5, 0, 10282, 0, 0, 1),
(108004, 26472, 571, 1, 1, 0, 0, 4958.6, -4845.17, 310.432, 5.1236, 60, 60, 5, 0, 10282, 0, 0, 1),
(108005, 26472, 571, 1, 1, 0, 0, 5104.03, -4549.15, 284.529, 4.43404, 60, 60, 5, 0, 10282, 0, 0, 1),
(107981, 26472, 571, 1, 1, 0, 0, 4385.35, -4460.85, 140.03, 2.21917, 60, 60, 0, 0, 10282, 0, 0, 0),
(107976, 26472, 571, 1, 1, 0, 0, 4383.32, -4455.77, 141.39, 2.14456, 60, 60, 0, 0, 10282, 0, 0, 0),
(108006, 26472, 571, 1, 1, 0, 0, 4954.17, -4841.67, 309.807, 4.8367, 60, 60, 5, 0, 10282, 0, 0, 1),
(108007, 26472, 571, 1, 1, 0, 0, 4987.39, -4826.4, 286.947, 3.12987, 60, 60, 5, 0, 10282, 0, 0, 1),
(108008, 26472, 571, 1, 1, 0, 0, 4993.7, -4854.93, 297.302, 0.125324, 60, 60, 5, 0, 10282, 0, 0, 1),
(108009, 26472, 571, 1, 1, 0, 0, 4866.31, -4359.29, 251.31, 2.38657, 60, 60, 5, 0, 10282, 0, 0, 1),
(107968, 26472, 571, 1, 1, 0, 0, 4384.95, -4451.74, 142.066, 2.27179, 60, 60, 0, 0, 10282, 0, 0, 2),
(107978, 26472, 571, 1, 1, 0, 0, 4389.1, -4450.75, 141.411, 2.31682, 60, 60, 5, 0, 10282, 0, 0, 1),
(108010, 26472, 571, 1, 1, 0, 0, 4374.81, -4470.97, 140.697, 1.08532, 60, 60, 5, 0, 10282, 0, 0, 1),
(108011, 26472, 571, 1, 1, 0, 0, 4346.95, -4413.52, 151.682, 5.30373, 60, 60, 5, 0, 10282, 0, 0, 1),
(108012, 26472, 571, 1, 1, 0, 0, 5045.66, -4462.04, 277.638, 6.23775, 60, 60, 5, 0, 10282, 0, 0, 1),
(108013, 26472, 571, 1, 1, 0, 0, 4958.65, -4830.29, 305.293, 5.01171, 60, 60, 5, 0, 10282, 0, 0, 1),
(108014, 26472, 571, 1, 1, 0, 0, 4387.33, -4328.98, 158.344, 0.01839, 60, 60, 5, 0, 10282, 0, 0, 1),
(108015, 26472, 571, 1, 1, 0, 0, 5113.99, -4539.51, 284.404, 4.43476, 60, 60, 5, 0, 10282, 0, 0, 1),
(107980, 26472, 571, 1, 1, 0, 0, 4390.29, -4458.69, 139.443, 2.20739, 60, 60, 0, 0, 10282, 0, 0, 0),
(108016, 26472, 571, 1, 1, 0, 0, 4396.56, -4361.51, 155.046, 1.0486, 60, 60, 5, 0, 10282, 0, 0, 1),
(108017, 26472, 571, 1, 1, 0, 0, 5082.54, -4488.99, 280.452, 2.81681, 60, 60, 5, 0, 10282, 0, 0, 1),
(108018, 26472, 571, 1, 1, 0, 0, 4864.64, -4354.1, 251.392, 2.34298, 60, 60, 5, 0, 10282, 0, 0, 1),
(108019, 26472, 571, 1, 1, 0, 0, 4870.9, -4362.17, 252.978, 2.43424, 60, 60, 5, 0, 10282, 0, 0, 1),
(108020, 26472, 571, 1, 1, 0, 0, 5113.42, -4544.96, 284.404, 4.43385, 60, 60, 5, 0, 10282, 0, 0, 1),
(108021, 26472, 571, 1, 1, 0, 0, 4955.39, -4831.69, 306.005, 5.12771, 60, 60, 5, 0, 10282, 0, 0, 1),
(107970, 26472, 571, 1, 1, 0, 0, 4401.91, -3959.67, 181.343, 3.85599, 60, 60, 0, 0, 10282, 0, 0, 0),
(108022, 26472, 571, 1, 1, 0, 0, 4876.31, -4361.41, 254.491, 2.46511, 60, 60, 5, 0, 10282, 0, 0, 1),
(108023, 26472, 571, 1, 1, 0, 0, 4846.24, -4244.51, 250.493, 4.88805, 60, 60, 5, 0, 10282, 0, 0, 1),
(108024, 26472, 571, 1, 1, 0, 0, 4968.67, -4835.65, 304.83, 0.745875, 60, 60, 5, 0, 10282, 0, 0, 1),
(108025, 26472, 571, 1, 1, 0, 0, 4440.57, -3956.5, 183.574, 4.58633, 60, 60, 5, 0, 10282, 0, 0, 1),
(107967, 26472, 571, 1, 1, 0, 0, 4400.7, -3965.06, 180.827, 3.84028, 60, 60, 0, 0, 10282, 0, 0, 2),
(108026, 26472, 571, 1, 1, 0, 0, 4871.51, -4346.46, 254.958, 2.3303, 60, 60, 5, 0, 10282, 0, 0, 1),
(107984, 26472, 571, 1, 1, 0, 0, 4387.24, -4455.21, 140.708, 2.14456, 60, 60, 0, 0, 10282, 0, 0, 0),
(107979, 26472, 571, 1, 1, 0, 0, 4393.71, -4453.96, 139.794, 2.11657, 60, 60, 5, 0, 10282, 0, 0, 1),
(108027, 26472, 571, 1, 1, 0, 0, 4968.04, -4841.09, 306.705, 5.07783, 60, 60, 5, 0, 10282, 0, 0, 1),
(108028, 26472, 571, 1, 1, 0, 0, 4964.06, -4844.85, 309.682, 5.12069, 60, 60, 5, 0, 10282, 0, 0, 1),
(108029, 26472, 571, 1, 1, 0, 0, 5045.73, -4911.84, 334.791, 0.078195, 60, 60, 5, 0, 10282, 0, 0, 1),
(108030, 26472, 571, 1, 1, 0, 0, 5127.64, -4560.24, 282.994, 5.96651, 60, 60, 5, 0, 10282, 0, 0, 1),
(108031, 26472, 571, 1, 1, 0, 0, 5017.16, -4507.71, 282.07, 5.93107, 60, 60, 5, 0, 10282, 0, 0, 1),
(108032, 26472, 571, 1, 1, 0, 0, 5023.95, -4380.69, 274.909, 6.27, 60, 60, 5, 0, 10282, 0, 0, 1),
(108033, 26472, 571, 1, 1, 0, 0, 5113.33, -4513.55, 283.293, 2.31821, 60, 60, 5, 0, 10282, 0, 0, 1),
(108034, 26472, 571, 1, 1, 0, 0, 4871.95, -4353.77, 253.856, 2.39419, 60, 60, 5, 0, 10282, 0, 0, 1),
(107982, 26472, 571, 1, 1, 0, 0, 4394.39, -4458.96, 138.599, 2.21131, 60, 60, 0, 0, 10282, 0, 0, 0),
(107972, 26472, 571, 1, 1, 0, 0, 4404.49, -3952.85, 181.586, 3.89537, 60, 60, 0, 0, 10282, 0, 0, 0),
(108035, 26472, 571, 1, 1, 0, 0, 5059.09, -4408.72, 276.483, 0.0664, 60, 60, 5, 0, 10282, 0, 0, 1),
(108036, 26472, 571, 1, 1, 0, 0, 4754.3, -4341.39, 213.098, 1.72709, 60, 60, 5, 0, 10282, 0, 0, 1),
(108037, 26472, 571, 1, 1, 0, 0, 4879.98, -4357.36, 255.467, 2.4653, 60, 60, 5, 0, 10282, 0, 0, 1),
(107973, 26472, 571, 1, 1, 0, 0, 4409.92, -3953.5, 181.336, 3.89582, 60, 60, 0, 0, 10282, 0, 0, 0),
(108038, 26472, 571, 1, 1, 0, 0, 4880.19, -4351.9, 255.489, 2.42981, 60, 60, 5, 0, 10282, 0, 0, 1),
(108039, 26472, 571, 1, 1, 0, 0, 4876.83, -4347.58, 255.636, 2.37466, 60, 60, 5, 0, 10282, 0, 0, 1),
(108042, 26472, 571, 1, 1, 0, 0, 4745.27, -4199.02, 231.14, 5.20137, 60, 60, 5, 0, 10282, 0, 0, 1),
(108043, 26472, 571, 1, 1, 0, 0, 4712.93, -4262.24, 211.756, 3.9774, 60, 60, 5, 0, 10282, 0, 0, 1),
(107975, 26472, 571, 1, 1, 0, 0, 4410.69, -3967.33, 180.319, 3.89413, 60, 60, 0, 0, 10282, 0, 0, 0),
(107974, 26472, 571, 1, 1, 0, 0, 4413.67, -3957.49, 181.211, 3.88692, 60, 60, 0, 0, 10282, 0, 0, 0),
(108044, 26472, 571, 1, 1, 0, 0, 4658.33, -4306.99, 195.594, 4.39696, 60, 60, 5, 0, 10282, 0, 0, 1),
(108045, 26472, 571, 1, 1, 0, 0, 4648.38, -4255.83, 202.55, 5.60324, 60, 60, 5, 0, 10282, 0, 0, 1),
(108046, 26472, 571, 1, 1, 0, 0, 5084.86, -4386.4, 281.887, 0.087463, 60, 60, 5, 0, 10282, 0, 0, 1),
(108047, 26472, 571, 1, 1, 0, 0, 4401.44, -4000.33, 178.173, 5.13283, 60, 60, 5, 0, 10282, 0, 0, 1),
(108048, 26472, 571, 1, 1, 0, 0, 4782.48, -4296.17, 233.709, 5.07092, 60, 60, 5, 0, 10282, 0, 0, 1),
(107969, 26472, 571, 1, 1, 0, 0, 4405.54, -3966.86, 180.454, 3.80494, 60, 60, 0, 0, 10282, 0, 0, 0),
(45190, 26472, 571, 1, 1, 0, 0, 4819.07, -4296.5, 244.221, 4.66651, 60, 60, 5, 0, 10282, 0, 0, 1),
(45538, 26472, 571, 1, 1, 0, 0, 5167.64, -4598.8, 285.132, 2.83568, 60, 60, 5, 0, 10282, 0, 0, 1),
(45587, 26472, 571, 1, 1, 0, 0, 4349.04, -4457.46, 147.953, 5.05249, 60, 60, 5, 0, 10282, 0, 0, 1),
(45607, 26472, 571, 1, 1, 0, 0, 5070.62, -4851.34, 286.045, 3.80955, 60, 60, 5, 0, 10282, 0, 0, 1),
(45700, 26472, 571, 1, 1, 0, 0, 5109.49, -4548.76, 284.529, 4.43393, 60, 60, 5, 0, 10282, 0, 0, 1),
(45997, 26472, 571, 1, 1, 0, 0, 5059.93, -4484.64, 279.282, 6.23923, 60, 60, 5, 0, 10282, 0, 0, 1),
(44773, 26472, 571, 1, 1, 0, 0, 4960.89, -4837.5, 307.932, 5.12062, 60, 60, 0, 0, 10282, 0, 0, 0),
(107971, 26472, 571, 1, 1, 0, 0, 4406.31, -3960.64, 180.961, 3.89538, 60, 60, 0, 0, 10282, 0, 0, 0);
DELETE FROM creature_movement WHERE id IN (107967,107968);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,waittime,script_id) VALUES
(107967,1,4394.74,-3970.9,180.462,100,10,5),
(107967,2,4387.88,-3981.02,180.021,100,0,0),
(107967,3,4381.34,-3994.2,180.278,100,0,0),
(107967,4,4375.52,-4002.93,181.031,100,0,0),
(107967,5,4373.02,-4015.57,181.058,100,0,0),
(107967,6,4374.22,-4030.53,181.038,100,0,0),
(107967,7,4374.56,-4041.02,180.95,100,0,0),
(107967,8,4374.26,-4051.51,181.035,100,0,0),
(107967,9,4376.7,-4060.67,180.882,100,0,0),
(107967,10,4382.36,-4065.22,180.192,100,0,0),
(107967,11,4389.79,-4067.62,179.207,100,0,0),
(107967,12,4400.15,-4063.17,177.905,100,0,0),
(107967,13,4406.68,-4052.07,177.305,100,0,0),
(107967,14,4413.58,-4039.89,177.326,100,0,0),
(107967,15,4421.21,-4030.46,177.677,100,0,0),
(107967,16,4428.64,-4018.56,178.514,100,0,0),
(107967,17,4436.34,-4006.87,180.037,100,0,0),
(107967,18,4441.87,-3997.95,181.329,100,0,0),
(107967,19,4445.85,-3990.32,182.103,100,0,0),
(107967,20,4449.23,-3977.68,183.003,100,0,0),
(107967,21,4449.89,-3967.74,183.928,100,0,0),
(107967,22,4447.08,-3957.05,184.395,100,0,0),
(107967,23,4443.41,-3952.7,184.132,100,0,0),
(107967,24,4435.65,-3946.88,183.55,100,0,0),
(107967,25,4427.13,-3946.67,182.811,100,0,0),
(107967,26,4416.16,-3950.4,181.645,100,0,0),
(107967,27,4400.46,-3965.01,180.852,100,0,0),
(107968,1,4383.92,-4441.17,144.17,100,10,5),
(107968,2,4385.95,-4424.44,146.859,100,0,0),
(107968,3,4387.16,-4406.99,149.64,100,0,0),
(107968,4,4387.38,-4393,152.034,100,0,0),
(107968,5,4390.23,-4378.56,153.681,100,0,0),
(107968,6,4398.57,-4364.37,154.537,100,0,0),
(107968,7,4407.13,-4354.71,155.112,100,0,0),
(107968,8,4416.14,-4346.24,155.831,100,0,0),
(107968,9,4418.88,-4336.62,156.985,100,0,0),
(107968,10,4416.69,-4327.17,157.985,100,0,0),
(107968,11,4410.02,-4319.05,158.806,100,0,0),
(107968,12,4399.55,-4315.74,158.916,100,0,0),
(107968,13,4388.31,-4319.07,158.534,100,0,0),
(107968,14,4381.41,-4327.11,158.425,100,0,0),
(107968,15,4377.43,-4340.39,158.099,100,0,0),
(107968,16,4372.14,-4353.35,157.564,100,0,0),
(107968,17,4369.37,-4364.26,156.756,100,0,0),
(107968,18,4368.75,-4374.74,155.717,100,0,0),
(107968,19,4366.56,-4386.57,154.301,100,0,0),
(107968,20,4361.98,-4399.79,152.527,100,0,0),
(107968,21,4358.47,-4409.69,151.36,100,0,0),
(107968,22,4355.84,-4421.41,150.452,100,0,0),
(107968,23,4356.97,-4434.03,149.681,100,0,0),
(107968,24,4360.5,-4443.91,147.97,100,0,0),
(107968,25,4368.47,-4455.04,144.5,100,0,0),
(107968,26,4383.26,-4453.53,141.828,100,0,0);
DELETE FROM creature_linking WHERE master_guid IN (107967,107968);
INSERT INTO creature_linking (guid,master_guid,flag) VALUES
(107969,107967,515), (107970,107967,515), (107971,107967,515), (107972,107967,515), (107973,107967,515), (107974,107967,515), (107975,107967,515),
(107976,107968,515), (107984,107968,515), (107978,107968,515), (107979,107968,515), (107980,107968,515), (107981,107968,515), (107982,107968,515), (107983,107968,515);

DELETE FROM dbscripts_on_quest_end WHERE id = 8277;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(8277,0,31,15190,30,0,0,0,0,0,0,0,0,0,0,0,0,''),
(8277,100,28,0,0,0,15190,40,7,0,0,0,0,0,0,0,0,''),
(8277,200,1,64,0,0,15190,40,7,0,0,0,0,0,0,0,0,''),
(8277,500,0,0,0,0,15190,40,7,2000001673,0,0,0,0,0,0,0,''),
(8277,5000,1,0,0,0,15190,40,7,0,0,0,0,0,0,0,0,''),
(8277,5100,28,7,0,0,15190,40,7,0,0,0,0,0,0,0,0,'');
UPDATE quest_template SET CompleteScript = 8277 WHERE entry = 8277;
DELETE FROM dbscript_string WHERE entry = 2000001673;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000001673,'Wha... where am I?  So... weak..',0,0,0,0,NULL);
DELETE FROM dbscripts_on_quest_end WHERE id = 8278;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(8278,0,31,15190,30,0,0,0,0,0,0,0,0,0,0,0,0,''),
(8278,100,28,0,0,0,15190,40,7,0,0,0,0,0,0,0,0,''),
(8278,200,1,64,0,0,15190,40,7,0,0,0,0,0,0,0,0,''),
(8278,500,0,0,0,0,15190,40,7,2000001828,0,0,0,0,0,0,0,''),
(8278,5000,1,0,0,0,15190,40,7,0,0,0,0,0,0,0,0,''),
(8278,5100,28,7,0,0,15190,40,7,0,0,0,0,0,0,0,0,'');
UPDATE quest_template SET CompleteScript = 8278 WHERE entry = 8278;
DELETE FROM dbscript_string WHERE entry = 2000001828;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000001828,'Yes!  I\'m cured!  I\'m cure... whoa, got up too fast!',0,0,0,0,NULL);
DELETE FROM dbscripts_on_quest_end WHERE id = 8282;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(8282,0,28,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(8282,500,0,0,0,0,0,0,0x04,2000001829,0,0,0,0,0,0,0,''),
(8282,6000,28,7,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'');
UPDATE quest_template SET CompleteScript = 8282 WHERE entry = 8282;
DELETE FROM dbscript_string WHERE entry = 2000001829;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000001829,'Thanks for finding my reagents!  *yawn*  That poison\'s made me... a bit tired...',0,0,0,0,NULL);
UPDATE `creature` SET `position_x` = '-6852.64', `position_y` = '739.226', `position_z` = '56.0303', `orientation` = '2.26893', `spawntimesecsmin` = '300', `spawntimesecsmax` = '300' WHERE `guid` =23884;
DELETE FROM conditions WHERE condition_entry = 2544;
INSERT INTO conditions (condition_entry,type,value1,value2,value3,value4,flags) VALUE (2544,8,8277,0,0,0,0);

DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 27421);
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(108419, 27421, 571, 1, 1, 0, 0, 4076.63, -3589.41, 249.165, 3.80122, 300, 300, 10, 0, 9940, 0, 0, 1),
(108420, 27421, 571, 1, 1, 0, 0, 4158.6, -3583.23, 253.995, 0.408293, 300, 300, 10, 0, 9940, 0, 0, 1),
(108421, 27421, 571, 1, 1, 0, 0, 4205.6, -3627.04, 254.169, 5.72544, 300, 300, 10, 0, 9940, 0, 0, 1),
(108422, 27421, 571, 1, 1, 0, 0, 4256.89, -3635.63, 250.618, 4.52378, 300, 300, 10, 0, 9940, 0, 0, 1),
(108423, 27421, 571, 1, 1, 0, 0, 4381.12, -3683.73, 256.192, 2.01257, 300, 300, 10, 0, 9940, 0, 0, 1),
(108424, 27421, 571, 1, 1, 0, 0, 4170.31, -4162.49, 207.239, 0.023433, 300, 300, 10, 0, 9940, 0, 0, 1),
(108425, 27421, 571, 1, 1, 0, 0, 4426.68, -3972.69, 180.899, 2.17125, 300, 300, 10, 0, 9940, 0, 0, 1),
(108426, 27421, 571, 1, 1, 0, 0, 4270.2, -3705.88, 259.401, 2.4434, 300, 300, 10, 0, 9940, 0, 0, 1),
(108427, 27421, 571, 1, 1, 0, 0, 4288.62, -3666.28, 258.158, 4.30061, 300, 300, 10, 0, 9940, 0, 0, 1),
(108428, 27421, 571, 1, 1, 0, 0, 4021.31, -3664.38, 216.289, 0.906583, 300, 300, 10, 0, 9940, 0, 0, 1),
(108429, 27421, 571, 1, 1, 0, 0, 4112.99, -3537.37, 260.05, 1.47694, 300, 300, 10, 0, 9940, 0, 0, 1),
(108430, 27421, 571, 1, 1, 0, 0, 4075.52, -3532.24, 251.382, 4.71239, 300, 300, 10, 0, 9940, 0, 0, 1),
(108431, 27421, 571, 1, 1, 0, 0, 4399.38, -3783.79, 216.239, 3.22955, 300, 300, 10, 0, 9940, 0, 0, 1),
(108432, 27421, 571, 1, 1, 0, 0, 4449.59, -3780.05, 213.463, 2.52494, 300, 300, 10, 0, 9940, 0, 0, 1),
(108433, 27421, 571, 1, 1, 0, 0, 4434.94, -3732.29, 228.811, 0, 300, 300, 10, 0, 9940, 0, 0, 1),
(108434, 27421, 571, 1, 1, 0, 0, 4509.28, -3783.53, 217.284, 2.14759, 300, 300, 10, 0, 9940, 0, 0, 1),
(108435, 27421, 571, 1, 1, 0, 0, 4221.9, -4103.92, 187.275, 2.49794, 300, 300, 10, 0, 9940, 0, 0, 1),
(108436, 27421, 571, 1, 1, 0, 0, 4276.13, -4018.9, 168.811, 3.15331, 300, 300, 10, 0, 9940, 0, 0, 1),
(108437, 27421, 571, 1, 1, 0, 0, 4538.46, -3745.95, 226.098, 4.32998, 300, 300, 10, 0, 9940, 0, 0, 1),
(108438, 27421, 571, 1, 1, 0, 0, 4378.74, -4011.58, 181.338, 0.682527, 300, 300, 10, 0, 9940, 0, 0, 1),
(108439, 27421, 571, 1, 1, 0, 0, 4440.24, -3955.15, 183.623, 4.54079, 300, 300, 10, 0, 9940, 0, 0, 1),
(108440, 27421, 571, 1, 1, 0, 0, 4412.38, -4024.24, 177.773, 2.15087, 300, 300, 10, 0, 9940, 0, 0, 1),
(108441, 27421, 571, 1, 1, 0, 0, 4559.44, -3857.04, 226.53, 2.46624, 300, 300, 10, 0, 9940, 0, 0, 1),
(108442, 27421, 571, 1, 1, 0, 0, 4514.2, -3806.79, 216.956, 4.95793, 300, 300, 10, 0, 9940, 0, 0, 1),
(40051, 27421, 571, 1, 1, 0, 0, 4462.2, -3737.41, 220.682, 2.10008, 300, 300, 10, 0, 9940, 0, 0, 1),
(40147, 27421, 571, 1, 1, 0, 0, 4466.93, -3867.24, 203.133, 5.47008, 300, 300, 10, 0, 9940, 0, 0, 1),
(40148, 27421, 571, 1, 1, 0, 0, 4559.38, -3719.41, 228.472, 3.33979, 300, 300, 10, 0, 9940, 0, 0, 1),
(40170, 27421, 571, 1, 1, 0, 0, 4570.82, -3869.32, 232.796, 5.65238, 300, 300, 10, 0, 9940, 0, 0, 1),
(40172, 27421, 571, 1, 1, 0, 0, 4580.56, -3759.36, 233.269, 5.20049, 300, 300, 10, 0, 9940, 0, 0, 1),
(40183, 27421, 571, 1, 1, 0, 0, 4555.58, -3943.41, 226.715, 5.81954, 300, 300, 10, 0, 9940, 0, 0, 1),
(40191, 27421, 571, 1, 1, 0, 0, 4601.49, -3925.86, 237.578, 3.49237, 300, 300, 10, 0, 9940, 0, 0, 1),
(40201, 27421, 571, 1, 1, 0, 0, 4595.26, -3931.31, 234.457, 1.2266, 300, 300, 10, 0, 9940, 0, 0, 1),
(40227, 27421, 571, 1, 1, 0, 0, 4496.45, -3722.49, 221.89, 5.49779, 300, 300, 10, 0, 9940, 0, 0, 1),
(40235, 27421, 571, 1, 1, 0, 0, 4212.26, -4102.57, 188.948, 6.25423, 300, 300, 10, 0, 9940, 0, 0, 1),
(40253, 27421, 571, 1, 1, 0, 0, 4211.68, -4140.05, 193.681, 1.46215, 300, 300, 10, 0, 9940, 0, 0, 1),
(40269, 27421, 571, 1, 1, 0, 0, 4113.53, -4134.87, 197.319, 3.52898, 300, 300, 10, 0, 9940, 0, 0, 1),
(40282, 27421, 571, 1, 1, 0, 0, 4170.87, -4241.06, 246.446, 5.7019, 300, 300, 10, 0, 9940, 0, 0, 1),
(40297, 27421, 571, 1, 1, 0, 0, 4142.92, -4169.86, 212.881, 4.41719, 300, 300, 10, 0, 9940, 0, 0, 1),
(40316, 27421, 571, 1, 1, 0, 0, 4196.54, -4193.1, 216.373, 2.23852, 300, 300, 10, 0, 9940, 0, 0, 1),
(40341, 27421, 571, 1, 1, 0, 0, 4173.05, -4249.79, 248.071, 2.77631, 300, 300, 10, 0, 9940, 0, 0, 1),
(40345, 27421, 571, 1, 1, 0, 0, 4161.98, -4135.42, 199.709, 5.95406, 300, 300, 10, 0, 9940, 0, 0, 1),
(40348, 27421, 571, 1, 1, 0, 0, 4475.16, -3870.36, 205.337, 3.21986, 300, 300, 10, 0, 9940, 0, 0, 1),
(40349, 27421, 571, 1, 1, 0, 0, 4440.88, -3819.11, 209.504, 0.960877, 300, 300, 10, 0, 9940, 0, 0, 1),
(40359, 27421, 571, 1, 1, 0, 0, 4366.31, -4067.88, 182.984, 5.14019, 300, 300, 10, 0, 9940, 0, 0, 1),
(40452, 27421, 571, 1, 1, 0, 0, 4398.67, -3973.67, 180.279, 0.160655, 300, 300, 10, 0, 9940, 0, 0, 1);

DELETE FROM dbscripts_on_relay WHERE id IN (20556);
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20556,1,31,27619,30,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Prince Theraldis 27624 EAI: search for 27619'),
(20556,10,0,0,0,0,27619,35,0x04,2000001830,0,0,0,0,0,0,0,'Part of Prince Theraldis 27624 EAI: buddy say'),
(20556,7000,0,0,0,0,0,0,2,2000001831,0,0,0,0,0,0,0,'Part of Prince Theraldis 27624 EAI: say'),
(20556,7100,15,49131,0,0,0,0,2,0,0,0,0,0,0,0,0,'Part of Prince Theraldis 27624 EAI: credit'),
(20556,9900,14,49097,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Prince Theraldis 27624 EAI: remove aura'),
(20556,10000,15,49098,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Prince Theraldis 27624 EAI: teleport back');
UPDATE `creature` SET `position_x` = '-462.544', `position_y` = '1490.62', `position_z` = '17.2963', `orientation` = '1.51844' WHERE `guid` =127220;
UPDATE `creature` SET `position_x` = '-474.37', `position_y` = '1496.3', `position_z` = '18.6528', `orientation` = '0.296706' WHERE `guid` =127221;
UPDATE `creature` SET `position_x` = '-462.842', `position_y` = '1499.52', `position_z` = '19.4991', `orientation` = '1.71042' WHERE `guid` =125142;
UPDATE `creature` SET `position_x` = '-461.4', `position_y` = '1493.54', `position_z` = '17.262', `orientation` = '3.73718' WHERE `guid` =122759;
DELETE FROM conditions WHERE condition_entry = 3539;
INSERT INTO conditions (condition_entry, type, value1, value2, flags) VALUES (3539, 1, 49097, 0, 0);
DELETE FROM dbscript_string WHERE entry BETWEEN 2000001830 AND 2000001831;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000001830,'Rise, Arugal!  The power of the Lich King commands you!',0,0,0,0,NULL),
(2000001831,'Yes... he shall suit our needs perfectly.  Have him sent to Solstice Village when you\'re ready.  Arthas will not be pleased if we fall behind schedule.',0,0,0,0,NULL);
UPDATE creature_template SET Faction = 16, UnitFlags = 33536, InhabitType = 4 WHERE Entry = 27620;
DELETE FROM spell_script_target WHERE entry IN(49128);
UPDATE creature_template SET MovementType = 2 WHERE Entry = 27622;
UPDATE creature SET spawndist = 0, MovementType = 2 WHERE guid = 139544;
DELETE FROM creature_movement_template WHERE entry = 27622;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(27622,1,-467.649,1493.14,17.5288,100,0,0),
(27622,2,-471.085,1497.02,18.1777,100,0,0),
(27622,3,-470.414,1502.85,18.1049,100,0,0),
(27622,4,-465.987,1506.7,17.6627,100,0,0),
(27622,5,-460.61,1506.38,17.3094,100,0,0),
(27622,6,-456.362,1503.16,16.9607,100,0,0),
(27622,7,-455.645,1500.36,16.9244,100,0,0),
(27622,8,-457.282,1495.59,17.0834,100,0,0),
(27622,9,-461.608,1493.39,17.1586,100,0,0);
DELETE FROM spell_script_target WHERE entry IN(49129);
INSERT INTO spell_script_target VALUES (49129,1,27622,0);

REPLACE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(18992, 1727, 0, -1327.42, -1223.41, 38.791, 4.60767, 0, 0, -0.743144, 0.669131, 5, 5, 100, 1),
(2602, 1727, 0, -1309.97, -1225.24, 22.9574, 2.09439, 0, 0, 0.866025, 0.500001, 5, 5, 100, 1),
(2607, 1727, 0, -1331.36, -1238.03, 32.1244, 1.97222, 0, 0, 0.833885, 0.551938, 5, 5, 100, 1),
(2610, 1727, 0, -1325.47, -1222.34, 32.1246, 5.53269, 0, 0, -0.366501, 0.930418, 5, 5, 100, 1),
(2616, 1727, 0, -1308.41, -1259.48, 38.7909, 3.927, 0, 0, -0.923879, 0.382686, 5, 5, 100, 1),
(2617, 1727, 0, -1302.09, -1251.33, 32.1241, 4.53786, 0, 0, -0.766044, 0.642789, 5, 5, 100, 1);
INSERT INTO `pool_gameobject_template` (`id`, `pool_entry`, `chance`, `description`) VALUES (1727, 1, 0, 'Hillsbrad Foothills - Dun Garok - Keg of Shindigger Stout (1727)');
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (1, 1, 'Hillsbrad Foothills - Dun Garok - Keg of Shindigger Stout (1727)');

REPLACE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(424, 1723, 0, -912.229, -1042.36, 30.3479, 2.30383, 0, 0, 0.913545, 0.406738, 2, 5, 100, 1),
(836, 1723, 0, -895.925, -1028.62, 30.3479, 3.73501, 0, 0, -0.956305, 0.292372, 2, 5, 100, 1),
(1065, 1723, 0, -922.704, -1002.16, 30.3479, 5.20108, 0, 0, -0.515038, 0.857168, 2, 5, 100, 1),
(8274, 1723, 0, -942.5, -1009.07, 30.3479, 3.61284, 0, 0, -0.972369, 0.233448, 2, 5, 100, 1),
(8769, 1723, 0, -904.673, -973.271, 30.3479, 3.7001, 0, 0, -0.961261, 0.27564, 2, 5, 100, 1),
(10593, 1723, 0, -874.061, -979.79, 30.3477, 0.890117, 0, 0, 0.430511, 0.902586, 2, 5, 100, 1),
(10594, 1723, 0, -879.271, -1003.03, 30.3479, 1.78023, 0, 0, 0.777145, 0.629321, 2, 5, 100, 1),
(10595, 1723, 0, -897.239, -961.192, 30.3461, 1.46608, 0, 0, 0.66913, 0.743145, 2, 5, 100, 1),
(11233, 1723, 0, -906.835, -1006.82, 30.3479, 1.98967, 0, 0, 0.83867, 0.54464, 2, 5, 100, 1),
(12687, 1723, 0, -935.594, -985.062, 30.3479, 2.84488, 0, 0, 0.989016, 0.147811, 2, 5, 100, 1),
(13378, 1723, 0, -916.097, -974.295, 30.3479, 5.74214, 0, 0, -0.267238, 0.963631, 2, 5, 100, 1),
(13932, 1723, 0, -904.905, -950.066, 30.7902, 4.92183, 0, 0, -0.62932, 0.777146, 2, 5, 100, 1),
(1200, 1723, 0, -910.739, -1026.56, 30.3479, 3.24635, 0, 0, -0.998629, 0.0523532, 2, 5, 100, 1),
(1202, 1723, 0, -881.298, -985.348, 30.3479, 0.750491, 0, 0, 0.366501, 0.930418, 2, 5, 100, 1),
(1227, 1723, 0, -925.706, -944.54, 31.2686, 2.3911, 0, 0, 0.930417, 0.366502, 2, 5, 100, 1),
(1252, 1723, 0, -895.219, -1006.31, 30.3479, 2.3911, 0, 0, 0.930417, 0.366502, 2, 5, 100, 1),
(1256, 1723, 0, -914.485, -987.068, 30.3479, 0.0174525, 0, 0, 0.00872612, 0.999962, 2, 5, 100, 1),
(1269, 1723, 0, -933.914, -1017.14, 30.3479, 4.4855, 0, 0, -0.782608, 0.622515, 2, 5, 100, 1),
(1278, 1723, 0, -906.771, -999.292, 30.3479, 3.83973, 0, 0, -0.939692, 0.34202, 2, 5, 100, 1),
(1279, 1723, 0, -883.671, -1021.39, 30.3479, 1.58825, 0, 0, 0.71325, 0.70091, 2, 5, 100, 1),
(1284, 1723, 0, -933.456, -964.13, 30.3479, 3.59538, 0, 0, -0.97437, 0.224951, 2, 5, 100, 1);

DELETE FROM `creature_movement` WHERE `id`=68116 AND `point` IN (27,72,73);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `script_id`, `comment`) VALUES
(68116, 27, 12782.443, -6879.493, 23.201, 100, 1000, 1721301, 'teleport'),
(68116, 72, 12790.9, -6894.31, 30.8982, 100, 0, 0, ''),
(68116, 73, 12791.2, -6891.1, 31.4273, 100, 1000, 1721302, 'teleport');

DELETE FROM creature_template_spells WHERE entry=24683;
INSERT INTO creature_template_spells (entry, setId, spell1, spell2, spell3) VALUES (24683, 0, 2, 44475, 44478);
DELETE FROM creature_cooldowns WHERE Entry=24683;
INSERT INTO creature_cooldowns (Entry, SpellId, CooldownMin, CooldownMax) VALUES (24683, 44475, 30000, 30000), (24683, 44478, 12000, 20000);

DELETE FROM spell_script_target WHERE entry IN (45219,45229,45233);
INSERT INTO spell_script_target (entry, `type`, targetEntry, inverseEffectMask) VALUES (45219, 1, 25192, 0), (45229, 1, 25192, 0), (45233, 1, 25192, 0);
UPDATE creature_movement SET script_id=2493804 WHERE script_id=2493801 AND `point`=1 AND id IN (100260,100264,100267,100271);
DELETE FROM creature_movement WHERE id IN (100260,100264,100267,100271) AND `point` BETWEEN 2 AND 4;
UPDATE creature_movement SET script_id=2493805 WHERE script_id=2493801 AND `point`=1 AND id IN (100259,100261,100265,100268);
DELETE FROM creature_movement WHERE id IN (100259,100261,100265,100268) AND `point` BETWEEN 2 AND 4;
DELETE FROM dbscripts_on_creature_movement WHERE id IN (2493804,2493805);
INSERT INTO dbscripts_on_creature_movement (id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, condition_id, comments) VALUES
(2493804, 0, 0, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Shattered Sun Marksman - Set Idle Movement'),
(2493804, 0, 0, 35, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Shattered Sun Marksman - Send AI_EVENT_CUSTOM_A to Self'),
(2493805, 0, 0, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Shattered Sun Marksman - Set Idle Movement'),
(2493805, 0, 0, 35, 1001, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Shattered Sun Marksman - Send AI_EVENT_CUSTOM_B to Self');
DELETE FROM creature_template_addon WHERE entry=24979;

DELETE FROM dbscripts_on_relay WHERE id IN (10200,10201);
INSERT INTO dbscripts_on_relay (id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, condition_id, comments) VALUES
(10200, 0, 0, 20, 2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Shattered Sun Marksman/Warrior - Set Movement Path 2'),
(10201, 0, 0, 20, 2, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Shattered Sun Marksman/Warrior - Set Movement Path 3');
DELETE FROM dbscript_random_templates WHERE id=10200;
INSERT INTO dbscript_random_templates (id, `type`, target_id, chance, comments) VALUES
(10200, 1, 10200, 0, 'Shattered Sun Marksman/Warrior - Set Movement Path 2'),
(10200, 1, 10201, 0, 'Shattered Sun Marksman/Warrior - Set Movement Path 3');
DELETE FROM dbscripts_on_creature_movement WHERE id IN (2493806,2493807,2493808);
INSERT INTO dbscripts_on_creature_movement (id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, condition_id, comments) VALUES
(2493806, 0, 0, 20, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Shattered Sun Marksman/Warrior - Set Movement Path 1'),
(2493806, 0, 0, 15, 34427, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Shattered Sun Marksman/Warrior - Cast Ethereal Teleport'),
(2493807, 0, 0, 45, 0, 10200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Shattered Sun Marksman/Warrior - Start Random Relay Script (Randomize between movement path 2 & 3)'),
(2493808, 0, 0, 1, 69, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Shattered Sun Marksman/Warrior - STATE_USESTANDING'),
(2493808, 3000, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Shattered Sun Marksman/Warrior - ONESHOT_NONE'),
(2493808, 0, 0, 18, 4000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Shattered Sun Marksman/Warrior - Delayed despawn');
DELETE FROM `creature_movement_template` WHERE `entry`=24938;
INSERT INTO `creature_movement_template` (`entry`, `pathId`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `script_id`, `comment`) VALUES
(24938, 1, 1, 12802.94, -6901.631, 40.31656, 100, 0, 0, ''),
(24938, 1, 2, 12803.35, -6899.098, 40.29868, 100, 0, 0, ''),
(24938, 1, 3, 12775.92, -6869.868, 40.29502, 100, 1, 2493807, 'Shattered Sun Marksman/Warrior - Random between path 2 and 3'),
(24938, 1, 4, 12780.2, -6875.725, 40.30148, 100, 0, 0, ''),
(24938, 2, 1, 12796.44, -6882.286, 34.20195, 100, 0, 0, ''),
(24938, 2, 2, 12791.71, -6891.086, 31.35045, 100, 10000, 2493808, 'Shattered Sun Marksman/Warrior - Set emote state 69 and despawn 4 seconds later'),
(24938, 3, 1, 12783, -6894.029785, 33.5065, 100, 0, 0, ''),
(24938, 3, 2, 12790.61, -6890.366, 31.55473, 100, 10000, 2493808, 'Shattered Sun Marksman/Warrior - Set emote state 69 and despawn 4 seconds later');
DELETE FROM creature_movement_template WHERE entry=25115;
INSERT INTO creature_movement_template SELECT 25115 AS `entry`, `pathId`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `script_id`, `comment` FROM creature_movement_template WHERE entry=24938;
DELETE FROM creature WHERE guid IN (47400,47401,47402,47403);
INSERT INTO creature (guid, id, map, spawnMask, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, MovementType) VALUES
(47400, 0, 530, 1, 12803.5, -6910.790039, 41.198601, 1.623156, 1, 45, 1, 2),
(47401, 0, 530, 1, 12804.799805, -6908.089844, 41.198601, 1.815142, 1, 45, 1, 2),
(47402, 0, 530, 1, 12805.700195, -6907.120117, 41.198601, 2.199115, 1, 45, 1, 2),
(47403, 0, 530, 1, 12805.83, -6911.729, 41.28194, 2.191206, 1, 45, 1, 2);
DELETE FROM `creature_movement` WHERE `id` IN (47400,47401,47402,47403);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `script_id`, `comment`) VALUES
(47400, 1, 12803.5, -6910.790039, 41.198601, 100, 1, 2493806, 'Shattered Sun Marksman/Warrior - Cast Ethereal Teleport and Set Movement Path 1'),
(47401, 1, 12804.799805, -6908.089844, 41.198601, 100, 1, 2493806, 'Shattered Sun Marksman/Warrior - Cast Ethereal Teleport and Set Movement Path 1'),
(47402, 1, 12805.700195, -6907.120117, 41.198601, 100, 1, 2493806, 'Shattered Sun Marksman/Warrior - Cast Ethereal Teleport and Set Movement Path 1'),
(47403, 1, 12805.83, -6911.729, 41.28194, 100, 1, 2493806, 'Shattered Sun Marksman/Warrior - Cast Ethereal Teleport and Set Movement Path 1');
DELETE FROM creature_spawn_entry WHERE guid IN (47400,47401,47402,47403);
INSERT INTO creature_spawn_entry (guid, entry) VALUES (47400, 24938), (47400, 25115), (47401, 24938), (47401, 25115), (47402, 24938), (47402, 25115), (47403, 24938), (47403, 25115);

DELETE FROM spell_bonus_data WHERE entry=33778;
INSERT INTO spell_bonus_data (entry, direct_bonus, dot_bonus, ap_bonus, ap_dot_bonus, comments) VALUES (33778, 0, 0, 0, 0, 'Lifebloom');

UPDATE spell_proc_event SET SpellFamilyMaskA0=128, SpellFamilyMaskA1=128, SpellFamilyMaskA2=128 WHERE entry=42370;

UPDATE spell_proc_event SET procEx=65536 WHERE entry=324;
UPDATE spell_proc_event SET procEx=65536 WHERE entry=52127;

INSERT INTO spell_proc_event(entry,procEx) VALUES (5215,65536);

UPDATE `creature_template` SET `InhabitType` = 4, `SpeedWalk` = (2.5 / 2.5), `SpeedRun` = (20 / 2.5), `MovementType` = 0 WHERE `entry` = 15241;
UPDATE `creature_template` SET `InhabitType` = 4, `SpeedWalk` = (7 / 2.5), `SpeedRun` = (18 / 2.5), `MovementType` = 0 WHERE `entry` = 15242;

UPDATE quest_template SET QuestLevel=-1 WHERE entry IN (7791,7792,7793,7794,7795,7798,7799,7800,7802,7803,7804,7805,7807,7808,7809,7811,7813,7814,7817,7818,7820,7821,7822,7823,7824,7826,7827,7831,7833,7834,7835,7836,10352,10354,10356,10357,10359,10360,10361,10362);
UPDATE quest_template SET QuestLevel=-1 WHERE entry IN (7796,7801,7806,7812,7819,7825,7832,7837,10358,10363);

DELETE FROM creature_addon WHERE guid IN (100481,100482,100483,100484,100485,100486);

UPDATE creature_template SET InhabitType=3,UnitFlags=32768 WHERE entry IN(24558);

UPDATE creature_template SET Detection=15 WHERE entry IN(24723,25562);

UPDATE spell_target_position SET target_position_x=1704.311279,target_position_y=927.975281 WHERE id IN(46019);
UPDATE spell_target_position SET target_position_x=1704.311279,target_position_y=927.975281 WHERE id IN(46020);

UPDATE dbscripts_on_event SET x=165.9681,y=-408.1578,z=-11.50428,delay=60000 WHERE id = 16547;
UPDATE creature_template SET InhabitType=1 WHERE entry=24844;

INSERT INTO game_event_quest(quest, event) VALUES (11543,310), (11540,310);

UPDATE creature_template SET SpeedWalk=6/2.5,SpeedRun=6/7 WHERE entry IN(25265);

DELETE FROM spell_target_position WHERE id IN(46037,46040,46038,46039);
INSERT INTO spell_target_position(id, target_map, target_position_x, target_position_y, target_position_z, target_orientation) VALUES
(46037, 580, 1726.47, 709.432, 71.27368, 5.585053), (46038, 580, 1725.76, 709.81, 71.27368, 5.585053),
(46039, 580, 1907.09, 547.703, 71.3737, 5.585053), (46040, 580, 1908.77, 550.668, 71.3737, 5.585053);

UPDATE creature_template SET ExtraFlags=0 WHERE entry IN(24891);

DELETE FROM creature_template_spells WHERE entry IN(25824);
INSERT INTO creature_template_spells(entry, setId, spell1) VALUES (25824, 0, 46082);
DELETE FROM creature_cooldowns WHERE entry IN(25824);
INSERT INTO creature_cooldowns VALUES (25824, 46082, 5000, 5000);

DELETE FROM creature_template_spells WHERE entry IN(11859);
INSERT INTO creature_template_spells(entry, setId, spell1, spell2, spell3, spell4, spell5, spell6, spell7, spell8, spell9, spell10) VALUES
(11859, 0, 19474, 19482, 89, 21949, 0, 0, 0, 0, 0, 0);

DELETE FROM spell_script_target WHERE entry IN(46650);
INSERT INTO spell_script_target VALUES (46650, 3, 5800060, 0), (46650, 3, 5800052, 0), (46650, 3, 5800057, 0), (46650, 3, 5800047, 0);

UPDATE gameobject SET spawntimesecsmin=-180,spawntimesecsmax=-180 WHERE guid IN(12125,10205,13076);

UPDATE creature_template SET UnitFlags=0x00008000|0x02000000 WHERE entry IN(25214);

UPDATE creature_template SET ExtraFlags=ExtraFlags|4194304, MechanicImmuneMask=MechanicImmuneMask|33554432 WHERE Entry IN (11949,22605);
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|131072 WHERE Entry=25040;

UPDATE creature_template SET InhabitType=7 WHERE entry IN(26251);
UPDATE creature_template SET UnitFlags=33555200 WHERE entry IN(26057);

UPDATE `npc_vendor` SET `maxcount` = 0, `incrtime` = 0 WHERE `entry` = 9499 AND `item` = 13483;
UPDATE `item_template` SET `BuyCount` = 5 WHERE `entry` = 38428;

REPLACE INTO `spell_proc_event` (`entry`,`SchoolMask`,`ppmRate`,`Cooldown`) VALUES (43730, 127, 5, 8);

DELETE FROM creature_template_spells WHERE entry IN(24697);
INSERT INTO creature_template_spells(entry, setId, spell1, spell2, spell3, spell4, spell5, spell6, spell7, spell8, spell9, spell10) VALUES
(24697, 0, 2, 44547, 44640, 0, 0, 0, 0, 0, 0, 0);
DELETE FROM creature_template_spells WHERE entry IN(25563);
INSERT INTO creature_template_spells(entry, setId, spell1, spell2, spell3, spell4, spell5, spell6, spell7, spell8, spell9, spell10) VALUES
(25563, 0, 2, 44547, 44640, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO creature_template_spells(entry, setId, spell1, spell2, spell3, spell4, spell5, spell6, spell7, spell8, spell9, spell10) VALUES
(24684, 0, 2, 44479, 44480, 44482, 0, 0, 0, 0, 0, 0),
(24686, 0, 2, 44518, 44519, 44520, 0, 0, 0, 0, 0, 0),
(24688, 0, 2, 44505, 44533, 0, 0, 0, 0, 0, 0, 0),
(24690, 0, 2, 44503, 44504, 44505, 0, 0, 0, 0, 0, 0),
(24689, 0, 2, 44534, 44505, 0, 0, 0, 0, 0, 0, 0),
(24696, 0, 2, 35946, 20299, 17741, 44639, 0, 0, 0, 0, 0);
REPLACE INTO creature_template_spells(entry, setId, spell1, spell2, spell3, spell4, spell5, spell6, spell7, spell8, spell9, spell10) VALUES
(25568, 0, 2, 44475, 46028, 0, 0, 0, 0, 0, 0, 0),
(25565, 0, 2, 46029, 46030, 46033, 0, 0, 0, 0, 0, 0),
(25572, 0, 2, 46042, 46043, 44520, 0, 0, 0, 0, 0, 0),
(25570, 0, 2, 46192, 46046, 0, 0, 0, 0, 0, 0, 0),
(25575, 0, 2, 44534, 44505, 0, 0, 0, 0, 0, 0, 0),
(25577, 0, 2, 44505, 44533, 0, 0, 0, 0, 0, 0, 0),
(25576, 0, 2, 44503, 44504, 44505, 0, 0, 0, 0, 0, 0),
(25547, 0, 2, 22907, 46150, 46151, 44639, 0, 0, 0, 0, 0);

#UPDATE creature_template SET Scale=1 WHERE entry IN (16164,29825);
#UPDATE `dbscripts_on_relay` SET `priority` = 1 WHERE `id` = 10124 AND `priority` = 0 AND (`datalong` > 0 AND `datalong` != 42660);

DELETE FROM gossip_menu WHERE entry IN(1401);
INSERT INTO gossip_menu(entry,text_id) VALUES (1401,2033);
DELETE FROM gossip_menu WHERE entry IN(1402);
INSERT INTO gossip_menu(entry,text_id) VALUES (1402,2036);

UPDATE creature_template SET EquipmentTemplateId = 968 WHERE `entry` = 15184;
UPDATE creature SET spawndist = 0, MovementType = 0 WHERE guid IN (68395);
DELETE FROM creature_movement WHERE id IN (68395);
DELETE FROM creature_linking WHERE master_guid IN (66114);
INSERT INTO creature_linking (guid,master_guid,flag)VALUES (68395,66114,1+2+515);

UPDATE `creature` SET `position_x` = '-4386.08', `position_y` = '173.278', `position_z` = '25.8706', `orientation` = '4.91319', `spawntimesecsmin` = '300', `spawntimesecsmax` = '300' WHERE `guid` =52545;

UPDATE `gossip_menu` SET `text_id` = 7639 WHERE `entry` =6445 AND `text_id` =7640;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (50002, 7640, 0, 0), (50003, 7645, 0, 0);
DELETE FROM `gossip_menu_option` WHERE `menu_id` IN (6445,50002);
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_broadcast_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `box_broadcast_text`, `condition_id`) VALUES
(6445, 0, 0, 'I want to catch Gahzranka!  Tell me how!', 10490, 1, 1, 50002, 0, 0, 0, 0, NULL, 0, 418),
(50002, 0, 1, 'Nat, I want to buy your mudskunk lures!', 10492, 3, 128, 0, 0, 0, 0, 0, NULL, 0, 0),
(50002, 1, 0, 'How do I catch the mudskunks for your lure?', 10500, 1, 1, 50003, 0, 0, 0, 0, NULL, 0, 0);

DELETE FROM creature_addon WHERE guid=119733;
DELETE FROM creature WHERE guid=119733;
DELETE FROM creature_template_addon WHERE entry = 24921;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES (24921,0,0,0,0,0,0,16245);
UPDATE creature SET spawntimesecsmin = 60, spawntimesecsmax = 60 WHERE guid IN (108153,108154,108155,108156,108157,108158);
UPDATE creature SET position_z = 330.667, spawntimesecsmin = 60, spawntimesecsmax = 60 WHERE id = 27328;
DELETE FROM creature_template_addon WHERE entry = 27328;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES (27328,0,0,1,0,0,0,NULL);
UPDATE gossip_menu_option SET action_script_id = 949701 WHERE menu_id = 9497 AND Id = 0;
UPDATE gossip_menu_option SET action_script_id = 949702 WHERE menu_id = 9497 AND Id = 1;
UPDATE gossip_menu_option SET action_script_id = 949703 WHERE menu_id = 9497 AND Id = 2;
DELETE FROM dbscripts_on_gossip WHERE id BETWEEN 949701 AND 949703;
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(949701,1,21,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Active'),
(949701,5,29,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'NPcFlags Removed'),
(949701,10,35,6,40,0,0,0,0x04,0,0,0,0,0,0,0,0,'send event AI 6'),
(949701,20,28,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'stand state'),
(949701,30,25,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'RUN ON'),
(949701,50,15,48368,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'cast: 48368'),
#(949701,70,15,24868,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'cast: 24868'),
#(949701,100,15,24899,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'cast: 24899'),
#(949701,200,15,9033,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'cast: 9033'),
(949701,500,15,52507,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'cast: 52507'),
(949701,2000,0,0,0,0,0,0,0,2000001833,0,0,0,0,0,0,0,'say'),
(949701,4900,22,250,0x01,0,0,0,0x04,0,0,0,0,0,0,0,0,'set faction'),
(949701,5000,20,2,1,0,0,0,0x04,0,0,0,0,0,0,0,0,'set: WP Path:1'),
(949702,1,21,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Active'),
(949702,5,29,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'NPcFlags Removed'),
(949702,10,35,6,40,0,0,0,0x04,0,0,0,0,0,0,0,0,'send event AI 6'),
(949702,20,28,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'stand state'),
(949702,30,25,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'RUN ON'),
(949702,50,15,48369,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'cast: 48369'),
(949702,500,15,24905,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'cast: 24905'),
(949702,500,15,52503,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'cast: 52503'),
(949703,2000,0,0,0,0,0,0,0,2000001835,0,0,0,0,0,0,0,'say'),
(949702,4900,22,250,0x01,0,0,0,0x04,0,0,0,0,0,0,0,0,'set faction'),
(949702,5000,20,2,1,0,0,0,0x04,0,0,0,0,0,0,0,0,'set: WP Path:1'),
(949703,1,21,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Active'),
(949703,5,29,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'NPcFlags Removed'),
(949703,10,35,6,40,0,0,0,0x04,0,0,0,0,0,0,0,0,'send event AI 6'),
(949703,20,28,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'stand state'),
(949703,30,25,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'RUN ON'),
(949703,50,15,48371,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'cast: 48371'),
(949703,500,15,52553,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'cast: 52553'),
(949703,2000,0,0,0,0,0,0,0,2000001834,0,0,0,0,0,0,0,'say'),
(949703,4900,22,250,0x01,0,0,0,0x04,0,0,0,0,0,0,0,0,'set faction'),
(949703,5000,20,2,1,0,0,0,0x04,0,0,0,0,0,0,0,0,'set: WP Path:1');
DELETE FROM creature_movement_template WHERE entry = 27328;
INSERT INTO creature_movement_template (entry, pathID, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(27328,1,1,4679.3,-3866.04,327.765,100,0,0),
(27328,1,2,4688.51,-3855.47,326.962,100,0,0),
(27328,1,3,4705.27,-3845.65,327.482,100,0,0),
(27328,1,4,4726.23,-3846.97,330.175,100,0,0),
(27328,1,5,4743.54,-3849.22,332.747,100,0,0),
(27328,1,6,4755.76,-3847.74,333.814,100,0,0),
(27328,1,7,4782.42,-3843.84,333.871,100,0,0),
(27328,1,8,4813.29,-3838.41,336.661,100,0,0),
(27328,1,9,4834.83,-3838.11,338.275,100,0,0),
(27328,1,10,4865.42,-3842.79,338.17,6.21187,300000,2732801);
DELETE FROM dbscripts_on_creature_movement WHERE id = 2732801;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2732801,1000,0,0,0,0,0,0,0x04,2000001832,0,0,0,0,0,0,0,'say'),
(2732801,4900,20,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'idle'),
(2732801,5000,10,26633,600000,0,0,0,0x08,0,0,0,0,4893.27,-3842.42,337.648,3.12414,'summon: Ursoc 26633');
DELETE FROM dbscript_string WHERE entry BETWEEN 2000001832 AND 2000001835;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000001832,'Ursoc, brother of Ursol and guardian of the furbolg tribes... show yourself!',0,0,0,0,NULL),
(2000001833,'Stay behind me, $r.  I will do my best to protect you.',0,0,0,0,NULL),
(2000001834,'I will watch over you and your allies, $r.',0,0,0,0,NULL),
(2000001835,'My freedom means nothing if we fail to save Ursoc.  Make haste, $n.',0,0,0,0,NULL);

DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 26971);
UPDATE creature_template_addon SET bytes1 = 0 WHERE entry = 26971;
DELETE FROM dbscript_random_templates WHERE id = 20028;
INSERT INTO dbscript_random_templates (id, type, target_id, chance, comments) VALUES
(20028,1,20557,0,'26971 - Random Script 1'),
(20028,1,20558,0,'26971 - Random Script 2'),
(20028,1,20559,0,'26971 - Random Script 3'),
(20028,1,20560,0,'26971 - Random Script 4');
DELETE FROM dbscripts_on_relay WHERE id BETWEEN 20557 AND 20560;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20557,0,31,26935,30,0,0,0,0,0,0,0,0,0,0,0,0,'26971 - Random Script 1: search for 26935'),
(20557,10,0,0,0,0,0,0,0x04,2000001837,0,0,0,0,0,0,0,'26971 - Random Script 1: say'),
(20557,4000,31,26935,30,0,0,0,0,0,0,0,0,0,0,0,0,'26971 - Random Script 1: search for 26935'),
(20557,4010,0,0,0,0,26935,40,7,2000001840,0,0,0,0,0,0,0,'26971 - Random Script 1: say'),
(20558,0,31,26935,30,0,0,0,0,0,0,0,0,0,0,0,0,'26971 - Random Script 2: search for 26935'),
(20558,10,0,0,0,0,0,0,0x04,2000001836,0,0,0,0,0,0,0,'26971 - Random Script 2: say'),
(20558,4000,31,26935,30,0,0,0,0,0,0,0,0,0,0,0,0,'26971 - Random Script 2: search for 26935'),
(20558,4010,0,0,0,0,26935,40,7,2000001840,0,0,0,0,0,0,0,'26971 - Random Script 2: say'),
(20559,0,31,26935,30,0,0,0,0,0,0,0,0,0,0,0,0,'26971 - Random Script 3: search for 26935'),
(20559,10,0,0,0,0,0,0,0x04,2000001839,0,0,0,0,0,0,0,'26971 - Random Script 3: say'),
(20559,4000,31,26935,30,0,0,0,0,0,0,0,0,0,0,0,0,'26971 - Random Script 3: search for 26935'),
(20559,4010,0,0,0,0,26935,40,7,2000001842,0,0,0,0,0,0,0,'26971 - Random Script 3: say'),
(20560,0,31,26935,30,0,0,0,0,0,0,0,0,0,0,0,0,'26971 - Random Script 4: search for 26935'),
(20560,10,0,0,0,0,0,0,0x04,2000001838,0,0,0,0,0,0,0,'26971 - Random Script 4: say'),
(20560,4000,31,26935,30,0,0,0,0,0,0,0,0,0,0,0,0,'26971 - Random Script 4: search for 26935'),
(20560,4010,0,0,0,0,26935,40,7,2000001841,0,0,0,0,0,0,0,'26971 - Random Script 4: say');
DELETE FROM dbscript_string WHERE entry BETWEEN 2000001836 AND 2000001842;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000001836,'You won\'t get away with this, you know?  You\'re just a kid.',0,0,0,0,NULL),
(2000001837,'How old are you, lass?',0,0,0,0,NULL),
(2000001838,'We\'ll all end up serving the Lich King, kid.  Better this way than becoming a rotten corpse.',0,0,0,0,NULL),
(2000001839,'Your father was weak, Sasha... he didn\'t have the guts to do what had to be done.',0,0,0,0,NULL),
(2000001840,'I\'m old enough to shoot beasts like you right between the eyes... at twice this distance.',0,0,0,0,NULL),
(2000001841,'I\'d rather be dead than be one of you!  You think you\'re still human?  You\'re... animals!',0,0,0,0,NULL),
(2000001842,'Don\'t you dare talk about my father, monster.  He was twice the man you\'ll ever be.',0,0,0,0,NULL);
DELETE FROM creature_addon WHERE guid = 119733;
DELETE FROM creature WHERE guid = 119727;
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(119728, 26935, 571, 1, 1, 0, 0, 4072.56, -4130.48, 211.73, 3.26377, 300, 300, 0, 0, 13572, 0, 0, 0),
(119726, 26935, 571, 1, 1, 0, 0, 4620.66, -5685.28, 180.028, 3.82227, 300, 300, 0, 0, 13572, 0, 0, 0);
INSERT INTO `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_pvp_state`, `emote`, `moveflags`, `auras`) VALUES
(119728, 0, 0, 2, 1, 385, 0, NULL), (119726, 0, 0, 1, 1, 0, 0, NULL);

UPDATE creature SET position_x = 4033.07, position_y = -4375.17, position_z = 262.194, spawntimesecsmin = 60, spawntimesecsmax = 60 WHERE guid =108535;
DELETE FROM creature_movement_template WHERE entry = 27626;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(27626,1,4053.908,-4378.754,260.7082,100,0,5),
(27626,2,4084.778,-4374.353,261.3611,100,0,0),
(27626,3,4093.047,-4339.481,261.3763,100,0,0),
(27626,4,4093.91,-4326.36,260.974,100,0,0),
(27626,5,4102.08,-4310.55,255.849,100,0,0),
(27626,6,4112.15,-4294.331,251.6709,100,0,0),
(27626,7,4122.05,-4276.49,251.52,100,0,0),
(27626,8,4125.99,-4260.97,251.389,100,0,0),
(27626,9,4127.083,-4250,249.4924,100,0,0),
(27626,10,4122.72,-4242.43,247.379,100,0,0),
(27626,11,4109.63,-4233.39,242.748,100,0,0),
(27626,12,4096.807,-4222.81,236.4216,100,0,0),
(27626,13,4088.75,-4212.12,231.809,100,0,0),
(27626,14,4084.66,-4196.56,226.858,100,0,0),
(27626,15,4081.434,-4179.625,220.6524,100,0,0),
(27626,16,4079.61,-4166.31,215.094,100,0,0),
(27626,17,4074.37,-4157.72,212.235,100,0,0),
(27626,18,4057.18,-4146.94,211.426,100,100,2762601),
(27626,19,4036.82,-4134.25,210.767,100,5000,1);
DELETE FROM dbscripts_on_relay WHERE id = 20562;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20562,0,25,1,0,0,0,0,0,0x04,0,0,0,0,0,0,0,'RUN ON'),
(20562,10,20,2,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Set Waypoints');
DELETE FROM dbscripts_on_creature_movement WHERE id IN (2762601);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2762601,5,14,49138,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Remove aura'),
(2762601,10,14,46598,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Remove aura'),
(2762601,15,35,8,60,0,0,0,0x04,0,0,0,0,0,0,0,0,'Send Event AI C');
DELETE FROM dbscripts_on_spell WHERE id IN (28471);
INSERT INTO dbscripts_on_spell (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(28471,0,14,49135,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Remove aura'),
(28471,10,3,0,0,0,0,0,0x04|0x08,0,0,0,0,4055.913,-4142.91,211.4181,1.200577,'teleport'),
(28471,100,28,7,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'');
UPDATE creature SET spawntimesecsmin = 60, spawntimesecsmax = 60 WHERE id = 26971;
DELETE FROM creature_movement_template WHERE entry = 26971;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(26971,1,4065.668,-4131.509,211.287,0.174533,100,5),
(26971,2,4057.442,-4140.824,211.1911,100,100000,2697101);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (2697101);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2697101,0,21,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Anatoly 26971 EAI: Active'),
(2697101,10,28,8,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Anatoly 26971 EAI: Kneel'),
(2697101,100,0,0,0,0,0,0,0x04,2000001844,0,0,0,0,0,0,0,'Part of Anatoly 26971 EAI: say'),
(2697101,11000,0,0,0,0,0,0,0x04,2000001846,0,0,0,0,0,0,0,'Part of Anatoly 26971 EAI: say'),
(2697101,22000,0,0,0,0,0,0,0x04,2000001848,0,0,0,0,0,0,0,'Part of Anatoly 26971 EAI: say'),
(2697101,22100,28,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Anatoly 26971 EAI: Stand'),
(2697101,24000,0,0,0,0,0,0,0x04,2000002420,0,0,0,0,0,0,0,'Part of Anatoly 26971 EAI: say'),
(2697101,24500,15,47457,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Anatoly 26971 EAI: cast'),
(2697101,26000,25,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Anatoly 26971 EAI: RUN ON'),
(2697101,27000,3,0,700,0,0,0,0x04,0,0,0,0,4072.56,-4130.48,211.73,100,'Part of Anatoly 26971 EAI: move');
DELETE FROM dbscripts_on_relay WHERE id = 20563;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20563,0,21,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Sasha 26935 EAI: Active'),
(20563,10,0,0,0,0,0,0,0x04,2000001843,0,0,0,0,0,0,0,'Part of Sasha 26935 EAI: say'),
(20563,9000,0,0,0,0,0,0,0x04,2000001845,0,0,0,0,0,0,0,'Part of Sasha 26935 EAI: say'),
(20563,21000,0,0,0,0,0,0,0x04,2000001847,0,0,0,0,0,0,0,'Part of Sasha 26935 EAI: say'),
(20563,29000,31,26971,60,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Sasha 26935 EAI: search for 26971'),
(20563,29100,15,48815,0,0,26971,70,1,0,0,0,0,0,0,0,0,'Part of Sasha 26935 EAI: cast 48815 on buddy'),
(20563,30000,21,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Sasha 26935 EAI: UnActive');
DELETE FROM dbscript_string WHERE entry BETWEEN 2000001843 AND 2000001848;
DELETE FROM dbscript_string WHERE entry = 2000002420;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000001843,'Surprise, you scum!  You\'re going to tell me where my sister is or I\'ll put a bucketful of truesilver bullets through your wife\'s heart.',0,0,0,0,NULL),
(2000001844,'Stop!  Do not shoot!  Do not hurt Tatjana!',0,0,0,0,NULL),
(2000001845,'Where is Anya?',0,0,0,0,NULL),
(2000001846,'The brat\'s held prisoner in the wolf den on the other side of the mountain.  She was to be taken to Arugal.  Are we free to go now?',0,0,0,0,NULL),
(2000001847,'There is one last thing.  I need to know where Arugal is.',0,0,0,0,NULL),
(2000001848,'Forgive me, Tatjana...',0,0,0,0,NULL),
(2000002420,'Nothing you can do can compare to what Arugal can do to us!  I will tear you apart myself!',0,0,0,0,NULL);

DELETE FROM dbscripts_on_quest_end WHERE id = 12411;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(12411,0,29,2,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'NPCFlags removed'),
(12411,10,21,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'active'),
(12411,50,10,26935,60000,0,0,0,0x08,1,0,0,0,4001.592,-4554.077,196.4279,1.719485,'Summon: Sasha 26935'),
(12411,99,20,2,1,0,26935,100,7,0,0,0,0,0,0,0,0,''),
(12411,100,13,0,0,0,189977,10,1,0,0,0,0,0,0,0,0,'activate gobject'),
(12411,200,0,0,0,0,0,0,0,2000003851,0,0,0,0,0,0,0,''),
(12411,500,3,0,0,0,0,0,0x04,0,0,0,0,3996.337,-4516.717,196.3169,100,'move'),
(12411,50000,29,2,1,0,0,0,0x04,0,0,0,0,0,0,0,0,'NPCFlags added'),
(12411,50010,21,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'unactive'),
(12411,50100,18,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'despawn');
UPDATE quest_template SET CompleteScript = 12411 WHERE entry = 12411;
DELETE FROM dbscript_string WHERE entry BETWEEN 2000003851 AND 2000003856;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000003851,'You won\'t eat me, will you?',0,0,0,0,NULL),
(2000003852,'Anya!!  You\'re all right!',0,0,0,0,NULL),
(2000003853,'Sister!  The mean men were going to take me to Badmoon Isle.  They wanted to turn me into one of them.',0,0,0,0,NULL),
(2000003854,'Badmoon?  You mean Bloodmoon?',0,0,0,0,NULL),
(2000003855,'That\'s what I said!  Badmoon!  Sasha... don\'t ever leave me again!  First they took papa, then they took you... I don\'t want to be alone with them!',0,0,0,0,NULL),
(2000003856,'Don\'t worry, sister... no one can hurt you now.',0,0,0,0,NULL);
UPDATE creature SET spawntimesecsmin = 30, spawntimesecsmax = 30 WHERE id = 27646;
DELETE FROM creature_movement_template WHERE entry = 26935;
INSERT INTO creature_movement_template (entry, pathID, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(26935,1,1,4002.467,-4556.807,196.4988,100,0,0),
(26935,1,2,4001.879,-4555.998,196.4988,100,0,0),
(26935,1,3,3997.248,-4525.081,195.3569,100,0,0),
(26935,1,4,3996.828,-4519.888,195.6831,100,0,0),
(26935,1,5,3996.828,-4519.888,195.6831,100,0,0),
(26935,1,6,3996.828,-4519.888,195.6831,1.74733,60000,2693501);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (2693501);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2693501,100,28,8,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'kneel'),
(2693501,1000,0,0,0,0,0,0,0x04,2000003852,0,0,0,0,0,0,0,'say'),
(2693501,9000,0,0,0,0,27646,30,0x04,2000003853,0,0,0,0,0,0,0,'buddy say'),
(2693501,16000,0,0,0,0,0,0,0x04,2000003854,0,0,0,0,0,0,0,'say'),
(2693501,24000,0,0,0,0,27646,30,0x04,2000003855,0,0,0,0,0,0,0,'buddy say'),
(2693501,32000,0,0,0,0,0,0,0x04,2000003856,0,0,0,0,0,0,0,'say'),
(2693501,40000,21,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'unactive');

UPDATE `creature` SET `position_x` = '4055.6', `position_y` = '-4143.87', `position_z` = '211.418', `orientation` = '2.18851', `spawndist` = '0', `MovementType` = '0' WHERE `guid` =125649;
UPDATE `creature` SET `spawntimesecsmin` = 60, `spawntimesecsmax` = 60 WHERE `guid` =108170;
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 26389);
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(120490, 26389, 571, 1, 1, 0, 0, 4095.42, -4275.99, 252.91, 0.925025, 300, 300, 0, 0, 10282, 3466, 0, 0),
(120491, 26389, 571, 1, 1, 0, 0, 3904.48, -4333.55, 214.325, 5.80667, 300, 300, 0, 0, 10282, 3466, 0, 2),
(120493, 26389, 571, 1, 1, 0, 0, 4119.88, -4338.49, 269.069, 5.18363, 300, 300, 0, 0, 10282, 3466, 0, 0),
(120494, 26389, 571, 1, 1, 0, 0, 4032.94, -4329.37, 252.437, 1.41372, 300, 300, 0, 0, 10282, 3466, 0, 2),
(120492, 26389, 571, 1, 1, 0, 0, 3983.32, -4462, 268.012, 5.28835, 300, 300, 0, 0, 10282, 3466, 0, 2),
(120495, 26389, 571, 1, 1, 0, 0, 4060.69, -4392.74, 260.672, 0.925025, 300, 300, 0, 0, 10282, 3466, 0, 2),
(120496, 26389, 571, 1, 1, 0, 0, 4042.99, -4422.85, 261.274, 2.07654, 300, 300, 0, 0, 10282, 3466, 0, 2),
(120497, 26389, 571, 1, 1, 0, 0, 4011.27, -4326.49, 251.754, 0.779091, 300, 300, 0, 0, 10282, 3466, 0, 2),
(120498, 26389, 571, 1, 1, 0, 0, 4080.22, -4409.22, 261.48, 5.32325, 300, 300, 0, 0, 10282, 3466, 0, 0),
(120499, 26389, 571, 1, 1, 0, 0, 4061.14, -4378.82, 260.837, 5.35816, 300, 300, 0, 0, 10282, 3466, 0, 0),
(120500, 26389, 571, 1, 1, 0, 0, 4115.46, -4381.54, 266.271, 5.42797, 300, 300, 0, 0, 10282, 3466, 0, 2),
(40497, 26389, 571, 1, 1, 0, 0, 4051.72, -4351.66, 261.322, 5.8294, 300, 300, 0, 0, 10282, 3466, 0, 0),
(40603, 26389, 571, 1, 1, 0, 0, 4003.2, -4293.69, 259.33, 4.83456, 300, 300, 0, 0, 10282, 3466, 0, 0),
(40625, 26389, 571, 1, 1, 0, 0, 4040.46, -4350.68, 261.357, 1.67552, 300, 300, 0, 0, 10282, 3466, 0, 0),
(40666, 26389, 571, 1, 1, 0, 0, 3992.41, -4472.45, 269.105, 5.53416, 300, 300, 0, 0, 10282, 3466, 0, 2),
(40730, 26389, 571, 1, 1, 0, 0, 4128.9, -4350.52, 275.66, 4.34587, 300, 300, 0, 0, 10282, 3466, 0, 0),
(41000, 26389, 571, 1, 1, 0, 0, 4020.24, -4479.34, 273.867, 0.680678, 300, 300, 0, 0, 10282, 3466, 0, 0),
(41509, 26389, 571, 1, 1, 0, 0, 4065.44, -4291.6, 251.56, 2.54818, 300, 300, 0, 0, 10282, 3466, 0, 0),
(42493, 26389, 571, 1, 1, 0, 0, 4054.62, -4406.89, 261.009, 3.36848, 300, 300, 0, 0, 10282, 3466, 0, 0),
(42766, 26389, 571, 1, 1, 0, 0, 4056.66, -4277.92, 251.887, 3.92699, 300, 300, 0, 0, 10282, 3466, 0, 0),
(42981, 26389, 571, 1, 1, 0, 0, 3984.73, -4353.15, 252.411, 1.74533, 300, 300, 0, 0, 10282, 3466, 0, 0),
(43031, 26389, 571, 1, 1, 0, 0, 4043.23, -4317.57, 252.701, 3.66519, 300, 300, 0, 0, 10282, 3466, 0, 0);
UPDATE creature_template SET EquipmentTemplateid = 748 WHERE Entry = 26389;
DELETE FROM creature_template_addon WHERE entry IN (26389);
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES (26389,0,0,0,0,0,0,NULL);
INSERT INTO `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_pvp_state`, `emote`, `moveflags`, `auras`) VALUES
(40603, 0, 1, 1, 0, 0, 0, NULL), (42766, 0, 1, 1, 0, 0, 0, NULL), (42981, 0, 0, 1, 0, 69, 0, NULL), (43031, 0, 1, 1, 0, 0, 0, NULL), (120491, 0, 0, 1, 0, 0, 0, NULL),
(40730, 0, 1, 1, 0, 0, 0, NULL), (120493, 0, 0, 1, 0, 234, 0, NULL), (120494, 0, 0, 1, 0, 0, 0, NULL), (120492, 0, 0, 1, 0, 0, 0, NULL), (120495, 0, 0, 1, 0, 0, 0, NULL),
(120496, 0, 0, 1, 0, 0, 0, NULL), (120497, 0, 0, 1, 0, 0, 0, NULL), (120498, 0, 0, 0, 0, 234, 0, NULL), (120499, 0, 1, 1, 0, 0, 0, NULL), (120500, 0, 0, 2, 0, 0, 0, NULL),
(40497, 0, 0, 1, 0, 69, 0, NULL), (40625, 0, 0, 1, 0, 234, 0, NULL), (40666, 0, 0, 1, 0, 0, 0, NULL), (41000, 0, 1, 1, 0, 0, 0, NULL), (41509, 0, 0, 1, 0, 234, 0, NULL),
(42493, 0, 0, 1, 0, 234, 0, NULL), (120490, 0, 0, 1, 0, 234, 0, NULL);
DELETE FROM creature_spawn_data WHERE guid IN (120490,120493,120498,40625,41509,42493);
INSERT INTO creature_spawn_data (guid,Id) VALUES (120490,20002), (120493,20002), (120498,20002), (40625,20002), (41509,20002), (42493,20002);
DELETE FROM creature_spawn_data_template WHERE Entry IN (20002);
INSERT INTO creature_spawn_data_template (Entry,UnitFlags,Faction,ModelId,EquipmentId,CurHealth,CurMana,SpawnFlags) VALUES (20002,-1,0,0,1600,0,0,0);
DELETE FROM creature_movement WHERE id IN (120491,120494,120492,120495,120496,120497,120500,40666);
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(120491,1,3911.85,-4339.31,216.885,100,0,0),
(120491,2,3919.07,-4346.78,220.491,100,0,0),
(120491,3,3923.44,-4355.73,223.622,100,0,0),
(120491,4,3926.6,-4367.14,226.561,100,0,0),
(120491,5,3929.75,-4381.07,229.828,100,0,0),
(120491,6,3932.58,-4394.02,232.868,100,0,0),
(120491,7,3935.43,-4405.82,236.727,100,0,0),
(120491,8,3937.61,-4418.32,241.272,100,0,0),
(120491,9,3939.12,-4429.41,245.646,100,0,0),
(120491,10,3940.17,-4439.54,250.819,100,0,0),
(120491,11,3941.35,-4448.23,255.09,100,0,0),
(120491,12,3942.69,-4456.72,259.5,100,0,0),
(120491,13,3944.54,-4464.72,264.353,100,0,0),
(120491,14,3947.15,-4471.2,268.149,100,0,0),
(120491,15,3951.83,-4476.48,270.522,100,0,0),
(120491,16,3959.8,-4480.37,271.915,100,0,0),
(120491,17,3952.24,-4476.75,270.636,100,0,0),
(120491,18,3947.73,-4471.78,268.445,100,0,0),
(120491,19,3945.01,-4465.79,265.016,100,0,0),
(120491,20,3943.05,-4458.1,260.267,100,0,0),
(120491,21,3941.37,-4449.21,255.552,100,0,0),
(120491,22,3940.33,-4440.87,251.51,100,0,0),
(120491,23,3939.14,-4430.29,246.051,100,0,0),
(120491,24,3937.9,-4419.73,241.829,100,0,0),
(120491,25,3932.83,-4395.16,233.17,100,0,0),
(120491,26,3930.01,-4381.92,229.989,100,0,0),
(120491,27,3926.95,-4368.44,226.884,100,0,0),
(120491,28,3924.03,-4356.97,223.987,100,0,0),
(120491,29,3919.81,-4348.13,221.035,100,0,0),
(120491,30,3912.57,-4339.78,217.16,100,0,0),
(120491,31,3905.16,-4334.1,214.442,100,0,0),
(120491,32,3897.77,-4330.98,212.557,100,0,0),
(120491,33,3904.97,-4333.84,214.36,100,0,0),
(120494,1,4032.94,-4329.37,252.437,1.41372,10,12),
(120494,2,4032.94,-4329.37,252.437,1.41372,10,3),
(120492,1,3983.32,-4462,268.012,5.28835,10,12),
(120492,2,3983.32,-4462,268.012,5.28835,10,3),
(120495,1,4060.69,-4392.74,260.672,0.925025,10,12),
(120495,2,4060.69,-4392.74,260.672,0.925025,10,3),
(120496,1,4038.45,-4414.12,261.252,100,0,0),
(120496,2,4044.55,-4404.86,261.045,100,0,0),
(120496,3,4053.82,-4396.05,260.404,100,0,0),
(120496,4,4055.66,-4398.29,260.41,100,0,0),
(120496,5,4060.29,-4401.42,260.446,100,0,0),
(120496,6,4075.31,-4401.12,260.824,100,0,0),
(120496,7,4083.15,-4401.3,261.117,100,0,0),
(120496,8,4075.83,-4401.09,260.839,100,0,0),
(120496,9,4060.95,-4401.69,260.448,100,0,0),
(120496,10,4054.36,-4396.02,260.406,100,0,0),
(120496,11,4044.63,-4404.41,261.028,100,0,0),
(120496,12,4038.47,-4413.17,261.254,100,0,0),
(120496,13,4042.71,-4422.2,261.273,100,0,0),
(120496,14,4047.23,-4434.84,262.025,100,0,0),
(120496,15,4049.44,-4440.99,263.686,100,0,0),
(120496,16,4049.22,-4446.88,265.521,100,0,0),
(120496,17,4042.11,-4452.74,267.524,100,0,0),
(120496,18,4034.03,-4462.52,269.162,100,0,0),
(120496,19,4041.35,-4453.85,267.245,100,0,0),
(120496,20,4048.38,-4447.87,266.056,100,0,0),
(120496,21,4049.69,-4441.9,264.124,100,0,0),
(120496,22,4047.58,-4435.23,262.043,100,0,0),
(120496,23,4045.97,-4429.44,261.118,100,0,0),
(120496,24,4043,-4422.87,261.274,100,0,0),
(120497,1,4020.26,-4317.34,252.128,100,0,0),
(120497,2,4029.48,-4310.81,252.163,100,0,0),
(120497,3,4038.37,-4305.14,252.182,100,0,0),
(120497,4,4048.48,-4300.33,251.668,100,0,0),
(120497,5,4062.28,-4298.73,251.325,100,0,0),
(120497,6,4074.39,-4297.06,251.472,100,0,0),
(120497,7,4086.69,-4293.56,251.659,100,0,0),
(120497,8,4102.69,-4288.54,251.625,100,0,0),
(120497,9,4087.4,-4293.12,251.66,100,0,0),
(120497,10,4074.94,-4297.03,251.503,100,0,0),
(120497,11,4062.46,-4298.72,251.321,100,0,0),
(120497,12,4049.16,-4300,251.611,100,0,0),
(120497,13,4038.57,-4305.12,252.175,100,0,0),
(120497,14,4029.75,-4310.65,252.131,100,0,0),
(120497,15,4020.45,-4317.13,252.131,100,0,0),
(120497,16,4011.18,-4326.2,251.747,100,0,0),
(120497,17,4000.55,-4339.45,252.298,100,0,0),
(120497,18,3992.34,-4356.94,252.493,100,0,0),
(120497,19,3990.16,-4370.34,252.995,100,0,0),
(120497,20,3992.28,-4357.16,252.502,100,0,0),
(120497,21,4000.32,-4339.95,252.298,100,0,0),
(120497,22,4010.94,-4326.68,251.74,100,0,0),
(120500,1,4115.457,-4381.54,266.2706,5.427974,10,11),
(120500,2,4115.457,-4381.54,266.2706,5.427974,100,3),
(40666,1,3984.91,-4464.04,268.157,2.17579,40000,0),
(40666,2,3996.27,-4474.25,269.468,100,5000,21);
DELETE FROM dbscripts_on_relay WHERE id = 20561;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20561,0,31,24921,40,0,0,0,0,0,0,0,0,0,0,0,0,'search for 24921'),
(20561,10,15,45425,0,0,24921,45,1,0,0,0,0,0,0,0,0,'cast 45425');

REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(120408, 27408, 571, 1, 1, 0, 0, 3662.94, -5412.38, 31.4403, 2.77414, 300, 300, 0, 0, 9610, 0, 0, 0),
(120409, 27408, 571, 1, 1, 0, 0, 3661.83, -5457.51, 27.9513, 5.51898, 300, 300, 5, 0, 9610, 0, 0, 1),
(120410, 27408, 571, 1, 1, 0, 0, 3852.55, -4261.19, 214.681, 2.18118, 300, 300, 5, 0, 9610, 0, 0, 1),
(120411, 27408, 571, 1, 1, 0, 0, 3862.21, -4445.19, 204.999, 5.92812, 300, 300, 5, 0, 9610, 0, 0, 1),
(120412, 27408, 571, 1, 1, 0, 0, 3869.88, -4411.48, 198.193, 0.903058, 300, 300, 5, 0, 9610, 0, 0, 1),
(120413, 27408, 571, 1, 1, 0, 0, 3961.66, -4379.66, 253.762, 2.85206, 300, 300, 5, 0, 9610, 0, 0, 1),
(120414, 27408, 571, 1, 1, 0, 0, 3836.44, -4760.7, 139.853, 3.7015, 300, 300, 5, 0, 9610, 0, 0, 1),
(120415, 27408, 571, 1, 1, 0, 0, 3964.67, -4712.88, 150.847, 3.39387, 300, 300, 5, 0, 9610, 0, 0, 1),
(120416, 27408, 571, 1, 1, 0, 0, 3774.63, -4204.76, 188.9, 2.71799, 300, 300, 5, 0, 9610, 0, 0, 1),
(120417, 27408, 571, 1, 1, 0, 0, 4035.28, -4275.15, 252.35, 1.75601, 300, 300, 5, 0, 9610, 0, 0, 1),
(120418, 27408, 571, 1, 1, 0, 0, 3848.42, -4735.73, 142.728, 5.79611, 300, 300, 5, 0, 9610, 0, 0, 1),
(120419, 27408, 571, 1, 1, 0, 0, 3838.61, -4630.43, 174.345, 3.93813, 300, 300, 5, 0, 9610, 0, 0, 1),
(120420, 27408, 571, 1, 1, 0, 0, 3796.96, -4642.34, 173.146, 1.50307, 300, 300, 5, 0, 9610, 0, 0, 1),
(120421, 27408, 571, 1, 1, 0, 0, 4140.74, -4415.49, 259.728, 5.57768, 300, 300, 5, 0, 9610, 0, 0, 1),
(120422, 27408, 571, 1, 1, 0, 0, 4440.24, -4521.07, 116.118, 4.7965, 300, 300, 5, 0, 9610, 0, 0, 1),
(120423, 27408, 571, 1, 1, 0, 0, 4608.22, -4963.38, 48.7676, 3.48574, 300, 300, 5, 0, 9610, 0, 0, 1),
(120424, 27408, 571, 1, 1, 0, 0, 4639.56, -4984.54, 49.5501, 5.16118, 300, 300, 5, 0, 9610, 0, 0, 1),
(120425, 27408, 571, 1, 1, 0, 0, 4579.3, -4712.5, 62.9794, 3.97008, 300, 300, 5, 0, 9610, 0, 0, 1),
(120426, 27408, 571, 1, 1, 0, 0, 4487.07, -4569.45, 103.792, 1.49338, 300, 300, 5, 0, 9610, 0, 0, 1),
(120427, 27408, 571, 1, 1, 0, 0, 4506.92, -4559.65, 105.539, 1.77896, 300, 300, 5, 0, 9610, 0, 0, 1),
(120428, 27408, 571, 1, 1, 0, 0, 3901.58, -4828.39, 108.958, 0.904343, 300, 300, 5, 0, 9610, 0, 0, 1),
(120429, 27408, 571, 1, 1, 0, 0, 3985.77, -4747.13, 134.725, 0.921495, 300, 300, 5, 0, 9610, 0, 0, 1),
(120430, 27408, 571, 1, 1, 0, 0, 4223.29, -4473.52, 207.388, 4.37081, 300, 300, 5, 0, 9610, 0, 0, 1),
(120431, 27408, 571, 1, 1, 0, 0, 4286.62, -4430.53, 178.816, 6.2578, 300, 300, 5, 0, 9610, 0, 0, 1),
(120432, 27408, 571, 1, 1, 0, 0, 4269.79, -4512.42, 170.397, 1.94776, 300, 300, 5, 0, 9610, 0, 0, 1),
(120433, 27408, 571, 1, 1, 0, 0, 4199.33, -4417.74, 226.521, 2.96868, 300, 300, 5, 0, 9610, 0, 0, 1),
(120434, 27408, 571, 1, 1, 0, 0, 4451.16, -4469.34, 135.387, 1.32942, 300, 300, 5, 0, 9610, 0, 0, 1),
(120435, 27408, 571, 1, 1, 0, 0, 4252.52, -4381.6, 184.782, 5.0755, 300, 300, 5, 0, 9610, 0, 0, 1),
(120436, 27408, 571, 1, 1, 0, 0, 4243.97, -4321.52, 196.345, 0.40879, 300, 300, 5, 0, 9610, 0, 0, 1),
(120437, 27408, 571, 1, 1, 0, 0, 4107.71, -4272.61, 252.762, 0.844596, 300, 300, 5, 0, 9610, 0, 0, 1),
(120438, 27408, 571, 1, 1, 0, 0, 4219.72, -4944.98, 28.393, 0.949306, 300, 300, 5, 0, 9610, 0, 0, 1),
(120439, 27408, 571, 1, 1, 0, 0, 4129.4, -4658.97, 109.493, 0.205269, 300, 300, 5, 0, 9610, 0, 0, 1),
(120440, 27408, 571, 1, 1, 0, 0, 4549.06, -4677.1, 73.5501, 6.14514, 300, 300, 5, 0, 9610, 0, 0, 1),
(120441, 27408, 571, 1, 1, 0, 0, 3771.99, -4510.08, 195.44, 1.24435, 300, 300, 5, 0, 9610, 0, 0, 1),
(120442, 27408, 571, 1, 1, 0, 0, 3902.72, -5094.44, 77.1386, 2.48649, 300, 300, 0, 0, 9610, 0, 0, 0),
(36178, 27408, 571, 1, 1, 0, 0, 3780.46, -4414.5, 185.007, 5.51436, 300, 300, 5, 0, 9610, 0, 0, 1),
(36498, 27408, 571, 1, 1, 0, 0, 4364.31, -4589.54, 110.812, 4.19373, 300, 300, 5, 0, 9610, 0, 0, 1),
(36540, 27408, 571, 1, 1, 0, 0, 4019.76, -4672.87, 147.417, 3.10226, 300, 300, 5, 0, 9610, 0, 0, 1),
(36619, 27408, 571, 1, 1, 0, 0, 4230.59, -4661.11, 106.383, 5.19064, 300, 300, 0, 0, 9610, 0, 0, 0),
(36621, 27408, 571, 1, 1, 0, 0, 4348.82, -4938.13, 29.0471, 2.21333, 300, 300, 0, 0, 9610, 0, 0, 0),
(36628, 27408, 571, 1, 1, 0, 0, 4355.44, -4896.43, 34.0856, -1.00328, 300, 300, 5, 0, 9610, 0, 0, 1),
(36632, 27408, 571, 1, 1, 0, 0, 4297.57, -4667.56, 92.866, -0.041429, 300, 300, 0, 0, 9610, 0, 0, 0),
(36635, 27408, 571, 1, 1, 0, 0, 4247.45, -4685.99, 86.4109, 0.015367, 300, 300, 0, 0, 9610, 0, 0, 0),
(36637, 27408, 571, 1, 1, 0, 0, 4355.26, -4857.69, 37.5821, -0.91342, 300, 300, 0, 0, 9610, 0, 0, 0),
(36723, 27408, 571, 1, 1, 0, 0, 4517.02, -4823.9, 44.4616, 3.89728, 300, 300, 5, 0, 9610, 0, 0, 1),
(36739, 27408, 571, 1, 1, 0, 0, 4419.07, -4846.82, 36.3231, -2.8591, 300, 300, 0, 0, 9610, 0, 0, 0),
(36762, 27408, 571, 1, 1, 0, 0, 4303.58, -4596.11, 126.036, 4.65082, 300, 300, 5, 0, 9610, 0, 0, 1),
(36766, 27408, 571, 1, 1, 0, 0, 4008.33, -4484.9, 268.638, 5.76413, 300, 300, 5, 0, 9610, 0, 0, 1),
(36819, 27408, 571, 1, 1, 0, 0, 4573.18, -4974.07, 46.495, 3.94337, 300, 300, 5, 0, 9610, 0, 0, 1),
(36836, 27408, 571, 1, 1, 0, 0, 4382.83, -4855.87, 38.3061, -2.75461, 300, 300, 0, 0, 9610, 0, 0, 0),
(36843, 27408, 571, 1, 1, 0, 0, 4386.75, -4919.92, 30.5437, 0.507769, 300, 300, 5, 0, 9610, 0, 0, 1),
(36868, 27408, 571, 1, 1, 0, 0, 4412.93, -4789.24, 43.1156, -1.57717, 300, 300, 0, 0, 9610, 0, 0, 0),
(36918, 27408, 571, 1, 1, 0, 0, 4222.5, -4753.12, 70.2462, 4.597, 300, 300, 5, 0, 9610, 0, 0, 1),
(37027, 27408, 571, 1, 1, 0, 0, 4417.2, -4715.31, 65.7537, 4.20681, 300, 300, 5, 0, 9610, 0, 0, 1),
(37053, 27408, 571, 1, 1, 0, 0, 4477.9, -4741.07, 60.2714, 0.393613, 300, 300, 5, 0, 9610, 0, 0, 1),
(37146, 27408, 571, 1, 1, 0, 0, 3992.01, -4523.43, 195.607, 2.84489, 300, 300, 0, 0, 9610, 0, 0, 0),
(37481, 27408, 571, 1, 1, 0, 0, 4178.78, -4746.74, 73.8052, 1.16553, 300, 300, 5, 0, 9610, 0, 0, 1),
(37491, 27408, 571, 1, 1, 0, 0, 4448.62, -4678.54, 75.0686, 0.348938, 300, 300, 5, 0, 9610, 0, 0, 1),
(37671, 27408, 571, 1, 1, 0, 0, 4171.12, -4812.46, 63.9083, 3.26134, 300, 300, 5, 0, 9610, 0, 0, 1),
(39293, 27408, 571, 1, 1, 0, 0, 4152.05, -5054.68, 18.5362, 2.61097, 300, 300, 0, 0, 9610, 0, 0, 0),
(39500, 27408, 571, 1, 1, 0, 0, 4517.76, -4731.81, 61.0695, 1.89542, 300, 300, 0, 0, 9610, 0, 0, 0),
(39816, 27408, 571, 1, 1, 0, 0, 4486.33, -4773.9, 52.1824, 1.59114, 300, 300, 5, 0, 9610, 0, 0, 1),
(39957, 27408, 571, 1, 1, 0, 0, 4411.15, -4908.17, 30.3947, 4.59047, 300, 300, 5, 0, 9610, 0, 0, 1),
(39998, 27408, 571, 1, 1, 0, 0, 4295.24, -4807.06, 46.2553, 3.06116, 300, 300, 5, 0, 9610, 0, 0, 1),
(43037, 27408, 571, 1, 1, 0, 0, 4216.37, -4951.57, 26.2037, 0.559841, 300, 300, 5, 0, 9610, 0, 0, 1),
(43044, 27408, 571, 1, 1, 0, 0, 4372.7, -4941.36, 29.8972, -0.192821, 300, 300, 0, 0, 9610, 0, 0, 0),
(43102, 27408, 571, 1, 1, 0, 0, 4354.7, -4884.49, 34.0263, 1.58413, 300, 300, 5, 0, 9610, 0, 0, 1),
(43149, 27408, 571, 1, 1, 0, 0, 4374.49, -4912.62, 32.1725, 1.43562, 300, 300, 0, 0, 9610, 0, 0, 0),
(43151, 27408, 571, 1, 1, 0, 0, 4342.67, -4841.83, 38.8653, 6.24996, 300, 300, 5, 0, 9610, 0, 0, 1),
(43175, 27408, 571, 1, 1, 0, 0, 3245.02, -3020.31, 152.492, 4.62827, 300, 300, 5, 0, 9610, 0, 0, 1),
(43217, 27408, 571, 1, 1, 0, 0, 3373.01, -3008.71, 192.651, 1.30302, 300, 300, 0, 0, 9610, 0, 0, 0);

INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (2, 3, 'Elwynn Forest - Brackwell Pumpkin Patch - Ripe Pumpkin (2883)');
INSERT INTO `pool_gameobject_template` (`id`, `pool_entry`, `chance`, `description`) VALUES (2883, 2, 0, 'Elwynn Forest - Brackwell Pumpkin Patch - Ripe Pumpkin (2883)');
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(8798, 2883, 0, -9773.85, -824.695, 39.6148, 3.90954, 0, 0, -0.927183, 0.374608, 900, 900, 100, 1),
(11790, 2883, 0, -9814.32, -884.165, 39.7662, 4.18879, 0, 0, -0.866025, 0.500001, 900, 900, 100, 1),
(16757, 2883, 0, -9749.11, -907.516, 39.2338, 0.122173, 0, 0, 0.0610485, 0.998135, 900, 900, 100, 1),
(729, 2883, 0, -9776.16, -926.959, 39.3057, 1.43117, 0, 0, 0.656058, 0.75471, 900, 900, 100, 1),
(738, 2883, 0, -9753.3, -845.746, 39.3713, 0.0523589, 0, 0, 0.0261765, 0.999657, 900, 900, 100, 1),
(751, 2883, 0, -9735.11, -862.986, 39.4185, 4.11898, 0, 0, -0.882947, 0.469473, 900, 900, 100, 1),
(753, 2883, 0, -9780.09, -884.75, 39.5662, 3.82227, 0, 0, -0.942641, 0.333808, 900, 900, 100, 1),
(754, 2883, 0, -9787.88, -865.209, 39.4633, 2.28638, 0, 0, 0.909961, 0.414694, 900, 900, 100, 1),
(767, 2883, 0, -9791.55, -907.647, 40.134, 1.98967, 0, 0, 0.83867, 0.54464, 900, 900, 100, 1);

DELETE FROM `dbscript_string` WHERE `entry` = 2000000117;
DELETE FROM `dbscripts_on_quest_start` WHERE `id` = 10814 AND `delay` = 9000;
DELETE FROM `dbscripts_on_quest_start` WHERE `id` = 10814 AND `delay` = 12000;
UPDATE `dbscript_string` SET `content_default` = 'I... We are powerless. Illidan found and delivered unto the Dragonmaw their leader - Zuluhed. This orc was the one responsible for the capture and incarceration of Alexstrasza. How could we fight against such power? He captured an Aspect!$B$BAnd just as easily, he took my mate.' WHERE `entry` =2000000116;
DELETE FROM `dbscripts_on_quest_start` WHERE `id` IN (1249,13070);
UPDATE `quest_template` SET `StartScript` = 0 WHERE `entry` IN (1249,13070);

UPDATE `creature` SET `position_x` = '4113.11', `position_y` = '-4738.28', `position_z` = '100.871', `orientation` = '3.14159', `spawntimesecsmin` = '300', `spawntimesecsmax` = '300' WHERE `guid` =120609;
DELETE FROM dbscripts_on_quest_end WHERE id = 12279;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(12279,0,21,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'active'),
(12279,10,0,0,0,0,0,0,0,2000001069,0,0,0,0,0,0,0,''),
(12279,6000,0,0,0,0,0,0,0,2000001070,0,0,0,0,0,0,0,''),
(12279,12000,0,0,0,0,0,0,0,2000001071,0,0,0,0,0,0,0,''),
(12279,13000,36,0,0,0,26494,15,1,0,0,0,0,0,0,0,0,'face buddy'),
(12279,13500,9,72921,10,0,0,0,0,0,0,0,0,0,0,0,0,'Resp object (10 secs)'),
(12279,18000,0,0,0,0,0,0,0,2000001072,0,0,0,0,0,0,0,''),
(12279,22000,0,0,0,0,0,0,0,2000001073,0,0,0,0,0,0,0,''),
(12279,28000,0,0,0,0,0,0,0,2000001074,0,0,0,0,0,0,0,''),
(12279,29000,3,0,0,0,0,0,0x04,0,0,0,0,0,0,0,3.14159,'reset orientation'),
(12279,30000,21,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'unactive');
UPDATE quest_template SET CompleteScript = 12279 WHERE entry = 12279;
UPDATE `gameobject` SET `spawntimesecsmin` = '-10', `spawntimesecsmax` = '-10' WHERE `guid` =72921;
DELETE FROM dbscript_string WHERE entry BETWEEN 2000001069 AND 2000001074;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000001069,'By the Light, you killed Limpy Joe and took the meat! How did you know where to find us?',0,0,0,5,NULL),
(2000001070,'Well, if you\'ve come to kill me, too, can you at least wait until I\'ve fed Griselda? Poor girl hasn\'t eaten in days.',0,0,0,20,NULL),
(2000001071,'Here, girl. I\'ve got one last meal for you before Limpy Joe\'s killer does us in!',0,0,0,22,NULL),
(2000001072,'How could you kill poor, defenseless old Joe? And why did you bring the meat back?',0,0,0,6,NULL),
(2000001073,'You\'re an enigma, that\'s what you are... And let me tell you, enigmas and I don\'t get along....',0,0,0,1,NULL),
(2000001074,'I think you\'d best leave before Griselda decides she\'s in the mood for dessert.',0,0,0,25,NULL);

INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES(785, 189290, 571, 1, 1, 4243.43, -5159.31, 0.251652, 2.54818, 0, 0, 0.956305, 0.292372, 300, 300, 100, 1);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES(791, 189290, 571, 1, 1, 4309.55, -5126.26, 0.266593, -1.72787, 0, 0, -0.760404, 0.64945, 300, 300, 100, 1);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES(801, 189290, 571, 1, 1, 4310.57, -5076.05, 0.21382, 2.14675, 0, 0, 0.878816, 0.477161, 300, 300, 100, 1);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES(807, 189290, 571, 1, 1, 4342.96, -5410.43, 0.30829, -1.3439, 0, 0, -0.622513, 0.782609, 300, 300, 100, 1);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES(817, 189290, 571, 1, 1, 4375.72, -5049.76, 0.150451, 1.76278, 0, 0, 0.771624, 0.636079, 300, 300, 100, 1);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES(828, 189290, 571, 1, 1, 4408.36, -5184.14, 0.203139, -2.77507, 0, 0, -0.983255, 0.182237, 300, 300, 100, 1);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES(834, 189290, 571, 1, 1, 4468.76, -5314.58, 0.129306, -0.104719, 0, 0, -0.0523356, 0.99863, 300, 300, 100, 1);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES(844, 189290, 571, 1, 1, 4527.59, -5288.86, 0.194187, -0.488691, 0, 0, -0.241921, 0.970296, 300, 300, 100, 1);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES(846, 189290, 571, 1, 1, 4549.03, -5352.63, 0.234687, 2.05949, 0, 0, 0.857168, 0.515037, 300, 300, 100, 1);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES(905, 189290, 571, 1, 1, 4574.95, -5073.17, 0.263909, -2.40855, 0, 0, -0.93358, 0.358368, 300, 300, 100, 1);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES(909, 189290, 571, 1, 1, 4655.07, -5120.64, 0.24273, 2.72271, 0, 0, 0.978148, 0.207912, 300, 300, 100, 1);
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (3, 12, 'Grizzly Hills - School of Northern Salmon (189290)');
INSERT INTO `pool_gameobject_template` (`id`, `pool_entry`, `chance`, `description`) VALUES (189290, 3, 0, 'Grizzly Hills - School of Northern Salmon (189290)');

REPLACE INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(7663, 448, 0, 0, 0, -10089.9, 667.134, 34.2961, 5.68306, 180, 180, 15, 0, 666, 0, 0, 1),
(4049, 448, 0, 0, 0, -9947.88, 594.773, 39.608, 5.19393, 180, 180, 15, 0, 666, 0, 0, 1),
(7671, 448, 0, 0, 0, -10107.2, 618.213, 38.2045, 3.78528, 180, 180, 15, 0, 666, 0, 0, 1),
(7735, 448, 0, 0, 0, -10085.4, 585.657, 39.2759, 1.30395, 180, 180, 15, 0, 666, 0, 0, 1),
(7795, 448, 0, 0, 0, -10018.6, 640.629, 39.0636, 1.3324, 180, 180, 15, 0, 666, 0, 0, 1);
DELETE FROM `creature_movement_template` WHERE `entry` = 448;
INSERT INTO `pool_creature_template` (`id`, `pool_entry`, `chance`, `description`) VALUES ('448', '4', '0', 'Elwynn Forest - Forest\'s Edge - Hogger (448)');
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES ('4', '1', 'Elwynn Forest - Forest\'s Edge - Hogger (448)');

DELETE FROM dbscripts_on_quest_end WHERE id = 11998;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(11998,0,0,0,0,0,0,0,0,2000001215,0,0,0,0,0,0,0,''),
(11998,4000,0,0,0,0,0,0,0,2000001216,0,0,0,0,0,0,0,'');
UPDATE quest_template SET CompleteScript = 11998 WHERE entry = 11998;
DELETE FROM dbscript_string WHERE entry BETWEEN 2000001215 AND 2000001216;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000001215,'He wants me to do WHAT?',0,0,0,5,NULL),
(2000001216,'Well, he\'d better keep the moonshine flowing if he wants my men to stop their research to serve the military\'s purposes!',0,0,0,1,NULL);

DELETE FROM dbscripts_on_relay WHERE id = 20564;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20564,0,21,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Hugh Glass 26484 EAI: Active'),
(20564,10,0,0,0,0,0,0,0x04,2000003857,0,0,0,0,0,0,0,'Part of Hugh Glass 26484 EAI: say'),
(20564,6000,0,0,0,0,0,0,0x04,2000003858,0,0,0,0,0,0,0,'Part of Hugh Glass 26484 EAI: say'),
(20564,12000,0,0,0,0,0,0,0x04,2000003859,0,0,0,0,0,0,0,'Part of Hugh Glass 26484 EAI: say'),
(20564,17000,0,0,0,0,0,0,0x04,2000003860,0,0,0,0,0,0,0,'Part of Hugh Glass 26484 EAI: say'),
(20564,22000,0,0,0,0,0,0,0x04,2000003861,0,0,0,0,0,0,0,'Part of Hugh Glass 26484 EAI: say'),
(20564,23000,21,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Hugh Glass 26484 EAI: unactive');
DELETE FROM dbscript_string WHERE entry BETWEEN 2000003857 AND 2000003861;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000003857,'Wake up, Griselda. Here, girl.',0,0,0,22,NULL),
(2000003858,'They\'ll never find us here, will they? We won\'t let them get us like they got Limpy Joe and Flannel McGee!',0,0,0,5,NULL),
(2000003859,'No, we escaped from those monsters! They\'re nothing like us, Griselda.',0,0,0,1,NULL),
(2000003860,'We\'re hunters, you and I. No wolfmen here, no ma\'am.',0,0,0,274,NULL),
(2000003861,'Keep an eye out for them, girl! Don\'t let them get us!',0,0,0,25,NULL);

REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(25164, 4630, 1, 1, 1, 0, 0, -6192.6, -3961.18, -58.6667, 3.4383, 300, 300, 0, 0, 1003, 0, 0, 0),
(25118, 4709, 1, 1, 1, 0, 0, -6226.13, -3944.94, -58.6251, 5.48331, 300, 300, 0, 0, 1003, 0, 0, 0);
DELETE FROM `gameobject` WHERE `guid` = 38574;
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(70880, 179888, 1, 1, 1, -6236.64, -3830.48, -58.1364, -0.907571, 0, 0, -0.438371, 0.898794, 45, 45, 100, 1);
DELETE FROM `creature_loot_template` WHERE `entry` = 5841 AND `item` = 1206;
DELETE FROM `creature_loot_template` WHERE `entry` = 5841 AND `item` = 1210;
UPDATE `creature_linking` SET `flag` = `flag`&~(1+2) WHERE `master_guid` = (SELECT guid from creature where id = 5841);
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 1.5 WHERE `entry` = 5841 AND `item` = 858;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 2 WHERE `entry` = 5841 AND `item` = 1179;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 4 WHERE `entry` = 5841 AND `item` = 2287;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 0.5 WHERE `entry` = 5841 AND `item` = 2455;
UPDATE creature_template SET UnitFlags=33554944 WHERE entry IN(25735);
