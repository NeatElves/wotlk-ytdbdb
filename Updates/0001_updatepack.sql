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
