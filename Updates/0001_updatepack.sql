# Y2kCat
# ALTER TABLE db_version_ytdb CHANGE COLUMN 661_FIX_13994 662_FIX_14017 bit;
REPLACE INTO `db_version_ytdb` (`version`) VALUES ('662_FIX_14017');

UPDATE db_version SET `cache_id`= '662';
UPDATE db_version SET `version`= 'YTDB_0.15.0_R662_cMaNGOS_R14017_RuDB_R70';

UPDATE `creature_template` SET `GossipMenuId` = 5709 WHERE `Entry` =14354;
DELETE FROM `gossip_menu` WHERE `entry` = 5710 AND `text_id` = 6878;
DELETE FROM `gossip_menu` WHERE `entry` = 5711 AND `text_id` = 6879;
DELETE FROM `gossip_menu` WHERE `entry` = 5712 AND `text_id` = 6880;
DELETE FROM `gossip_menu` WHERE `entry` = 5713 AND `text_id` = 6881;
DELETE FROM `gossip_menu` WHERE `entry` = 11397 AND `text_id` = 15877;
DELETE FROM `gossip_menu` WHERE `entry` = 11398 AND `text_id` = 15876;
DELETE FROM `gossip_menu` WHERE `entry` = 11902 AND `text_id` = 16703;
DELETE FROM `gossip_menu` WHERE `entry` = 10265 AND `text_id` = 3016;
DELETE FROM `gossip_menu` WHERE `entry` = 12094 AND `text_id` = 16982;
DELETE FROM `gossip_menu` WHERE `entry` = 12095 AND `text_id` = 16983;
DELETE FROM `gossip_menu` WHERE `entry` = 12128 AND `text_id` = 17034;
DELETE FROM `gossip_menu_option` WHERE `menu_id` = 5710;
DELETE FROM `gossip_menu_option` WHERE `menu_id` = 5711;
DELETE FROM `gossip_menu_option` WHERE `menu_id` = 5712;
DELETE FROM `gossip_menu_option` WHERE `menu_id` = 5713;
DELETE FROM `gossip_menu_option` WHERE `menu_id` = 10265;

UPDATE dbscripts_on_spell SET delay=delay*1000 WHERE `id` = 56562;
UPDATE dbscripts_on_creature_movement SET delay=delay*1000 WHERE `id` = 1644001;

DELETE FROM dbscripts_on_event WHERE id=3938;
INSERT INTO `dbscripts_on_event` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(3938, 20000, 0, 10, 10373, 3000000, 0, 0, 0, 0, 0, 0, 0, 0, 6888.34, -480.37, 40.62, 3.7581, 0, 'Spawn Xabraxxis for quest 4763'),
(3938, 20000, 0, 26, 0, 0, 0, 10373, 50, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Xabraxxis attacks - quest 4763');

UPDATE `creature_template` SET `Faction` = 14 WHERE `Entry` =23161;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 0, `groupid` = 1 WHERE `entry` =21838 AND `item` in (31564,31580,31556,31572,32534,32535);
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 5, `groupid` = 1 WHERE `entry` =21838 AND `item` in (32536,32537);
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 2, `groupid` = 1 WHERE `entry` =21838 AND `item` in (32540,32541);
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 5, `groupid` = 0 WHERE `entry` =21838 AND `item` = 32782;

UPDATE creature_template SET SpeedRun=12/7,SpeedWalk=2.5/2.5 WHERE entry IN(21216);
DELETE FROM dbscripts_on_creature_movement WHERE id=1613401 AND command=15;
INSERT INTO dbscripts_on_creature_movement (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(1613401, 201500, 0, 15, 27824, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'search for 16114');
UPDATE gameobject SET spawntimesecsmin=-180, spawntimesecsmax=-180 WHERE id=181103;
DELETE FROM dbscripts_on_event WHERE id=9900;
INSERT INTO dbscripts_on_event (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(9900, 1000, 0, 9, 37382, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Rimblat - respawn Flower');
UPDATE `item_template` SET `name` = 'Deprecated BKP "Impact" Shot', `BuyCount` = 200, `BuyPrice` = 300, `SellPrice` = 0, `ItemLevel` = 35, `RequiredLevel` = 30, `stackable` = 1000, `StatsCount` = 0, `stat_type1` = 0, `stat_value1` = 0, `stat_type2` = 0, `stat_value2` = 0, `armor` = 0, `delay` = 3000, `MaxDurability` = 0, `BagFamily` = 2 ,`dmg_min1` = 9, `dmg_max1` = 9 WHERE `entry` =3034;

REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(126144, 14369, 429, 1, 1, 0, 0, 188.172, 537.305, -48.467, 1.5966, 7200, 7200, 5, 0, 2369, 2369, 0, 1),
(126143, 14369, 429, 1, 1, 0, 0, 128.297, 516.187, -48.4718, 1.6321, 7200, 7200, 0, 0, 2369, 2369, 0, 0),
(126145, 14369, 429, 1, 1, 0, 0, 130.955, 524.283, -48.0481, 1.61341, 7200, 7200, 5, 0, 2369, 2369, 0, 1),
(122940, 14369, 429, 1, 1, 0, 0, 163.733, 555.391, -48.3836, 3.1765, 7200, 7200, 0, 0, 2369, 2369, 0, 0),
(126560, 14369, 429, 1, 1, 0, 0, 192.928, 587.385, -48.3836, 6.17846, 7200, 7200, 0, 0, 2369, 2369, 0, 0),
(130993, 14369, 429, 1, 1, 0, 0, 153.425, 626.966, -27.8899, 0.017453, 7200, 7200, 0, 0, 2369, 2369, 0, 0),
(130999, 14369, 429, 1, 1, 0, 0, 114.44, 602.178, -27.8082, 3.10669, 7200, 7200, 0, 0, 2369, 2369, 0, 0),
(88024, 14369, 429, 1, 1, 0, 0, 186.983, 479.252, -48.371, 1.5708, 7200, 7200, 0, 0, 2369, 2369, 0, 0),
(88023, 14369, 429, 1, 1, 0, 0, 186.675, 457.618, -48.3594, 4.79965, 7200, 7200, 0, 0, 2369, 2369, 0, 0),
(88022, 14369, 429, 1, 1, 0, 0, 121.754, 476.583, -48.3816, 1.58825, 7200, 7200, 0, 0, 2369, 2369, 0, 0),
(88021, 14369, 429, 1, 1, 0, 0, 121.172, 468.779, -48.3799, 4.67748, 7200, 7200, 0, 0, 2369, 2369, 0, 0);

REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(72777, 19754, 530, 1, 1, 0, 0, -3471.63, 2146.05, 33.204, 5.386, 300, 300, 0, 0, 6542, 0, 0, 0),
(72787, 19754, 530, 1, 1, 0, 0, -3486.11, 2224.99, 33.6139, 3.9968, 300, 300, 0, 0, 6542, 0, 0, 0),
(72796, 19754, 530, 1, 1, 0, 0, -3480.76, 2225.82, 33.527, 2.30758, 300, 300, 0, 0, 6542, 0, 0, 2),
(72799, 19754, 530, 1, 1, 0, 0, -3415.84, 2254.62, 33.7445, 1.12398, 300, 300, 0, 0, 6542, 0, 0, 2);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `script_id`, `comment`) VALUES
(72796, 1, -3480.76, 2225.82, 33.527, 2.30758, 0, 0, NULL),
(72796, 2, -3474.76, 2220.35, 33.527, 0.634678, 0, 0, NULL),
(72796, 3, -3459.28, 2230.48, 33.6125, 0.124169, 0, 0, NULL),
(72796, 4, -3446.07, 2230.26, 33.5873, 0.556138, 0, 0, NULL),
(72796, 5, -3438.47, 2234.59, 33.6685, 0.556138, 0, 0, NULL),
(72796, 6, -3432.96, 2245.95, 33.7032, 0.98418, 0, 0, NULL),
(72796, 7, -3420.26, 2258.61, 33.6645, 0.834955, 0, 0, NULL),
(72796, 8, -3414.31, 2270.33, 33.7672, 1.12948, 0, 0, NULL),
(72796, 9, -3413.76, 2280.56, 33.82, 1.58894, 0, 0, NULL),
(72796, 10, -3414.66, 2269.64, 33.755, 4.36925, 0, 0, NULL),
(72796, 11, -3420.75, 2257.7, 33.667, 4.25379, 0, 0, NULL),
(72796, 12, -3433.61, 2245.62, 33.7098, 3.86031, 0, 0, NULL),
(72796, 13, -3438.89, 2234.11, 33.6616, 3.62469, 0, 0, NULL),
(72796, 14, -3446.55, 2229.93, 33.5869, 3.46918, 0, 0, NULL),
(72796, 15, -3459.92, 2230.2, 33.6015, 3.15345, 0, 0, NULL),
(72796, 16, -3475.01, 2220.26, 33.5281, 2.84007, 0, 0, NULL),
(72799, 1, -3415.84, 2254.62, 33.7445, 1.12398, 0, 0, NULL),
(72799, 2, -3416.47, 2273.26, 33.7299, 1.79549, 0, 0, NULL),
(72799, 3, -3420.04, 2284.13, 33.5015, 1.91723, 0, 0, NULL),
(72799, 4, -3416.08, 2272.83, 33.737, 4.88211, 0, 0, NULL),
(72799, 5, -3415.95, 2253.91, 33.7437, 4.68576, 0, 0, NULL),
(72799, 6, -3430.14, 2248.53, 33.6518, 3.69223, 0, 0, NULL),
(72799, 7, -3440.72, 2238.22, 33.7104, 3.32702, 0, 0, NULL),
(72799, 8, -3447.95, 2238.79, 33.6988, 3.51159, 0, 0, NULL),
(72799, 9, -3462.85, 2227.97, 33.4439, 2.76546, 0, 0, NULL),
(72799, 10, -3475.37, 2231.99, 33.5278, 2.78117, 0, 0, NULL),
(72799, 11, -3462.67, 2228.45, 33.4785, 0.318947, 0, 0, NULL),
(72799, 12, -3447.48, 2239.2, 33.7001, 6.21729, 0, 0, NULL),
(72799, 13, -3440.67, 2238.88, 33.7174, 0.718715, 0, 0, NULL),
(72799, 14, -3429.81, 2249.15, 33.6396, 0.718715, 0, 0, NULL);
DELETE FROM `creature` WHERE `guid` = 72802;
DELETE FROM `creature` WHERE `guid` = 73076;
DELETE FROM `creature` WHERE `guid` = 73077;
DELETE FROM `creature` WHERE `guid` = 77371;
DELETE FROM `creature` WHERE `guid` = 77372;
DELETE FROM `creature` WHERE `guid` = 77373;
DELETE FROM `creature` WHERE `guid` = 77374;
DELETE FROM `creature` WHERE `guid` = 77375;
DELETE FROM `creature` WHERE `guid` = 77376;
DELETE FROM `creature` WHERE `guid` = 77377;
DELETE FROM `creature` WHERE `guid` = 77378;
DELETE FROM `creature` WHERE `guid` = 77379;
DELETE FROM `creature` WHERE `guid` = 77380;
DELETE FROM `creature` WHERE `guid` = 28268;
UPDATE `creature_template` SET `Faction` = 16 WHERE `Entry` =32503;
DELETE FROM `creature` WHERE `id` in (2520,4377,4391,4958,5763,6021,6493,7568,7569,7729,8035,8257,8317,9526,9708,9937,10261,10263,10388,10389,32503,23826,32233,15934);
DELETE FROM `creature` WHERE `id` in (10699,10876,10939,11200,12208,12261,12265,12276,14350,14370,14564,15010,15067,15068,15521,15537,15538,15546,15555,15621,15698,15962);
DELETE FROM `creature` WHERE `id` in (16375,16419,16431,16573,17229,19381,20472,21627,22067,22085,22338,22499,22968,22969,23044,23498,23587,23598,24217,24320,25466,25598);
DELETE FROM `creature` WHERE `id` in (27346,27405,27406,27409,27788,28104,28187,28229,28630,28640,28873,29153,29457,29684,29888,30060,30207,30301,30591,30634,30838,30839);
DELETE FROM `creature` WHERE `id` in (30840,30841,30850,30851,30852,30900,31119,32176,32292,32319,33344,33632,33802,33855,34004,37868,27870,28735,34386,34387,34489,34490);
DELETE FROM `game_event_creature` WHERE `guid` IN (SELECT `guid` FROM `creature` WHERE `id` IN (39852,40104));
DELETE FROM `creature` WHERE `id` in (34879,39852,40104);
DELETE FROM `creature_addon` WHERE `guid` in (72802,73076,73077,79640);
DELETE FROM `pool_creature` WHERE `guid` = 33692;
DELETE FROM `pool_creature` WHERE `guid` = 49066;
DELETE FROM `pool_creature` WHERE `guid` = 49147;
DELETE FROM `pool_creature` WHERE `guid` = 49185;
DELETE FROM dbscripts_on_creature_movement WHERE id=816;
INSERT INTO `pool_gameobject_template` (`id`, `pool_entry`, `chance`, `description`) VALUES ('179747', '114', '0', 'Terrordale Haunting Spirit');
UPDATE `pool_template` SET `max_limit` = '25', `description` = 'Terrordale Haunting Spirit' WHERE `entry` =114;
DELETE FROM `creature_movement` WHERE `id` in (91314,91316,27114,61780,75886,77143,62056,47618,47622);
DELETE FROM `gameobject_loot_template` WHERE `entry` = 184115 AND `item` = 29110;
DELETE FROM `gameobject_loot_template` WHERE `entry` = 184115 AND `item` = 29111;
UPDATE `gameobject` SET `position_x` = '201.19', `position_y` = '3471.79', `position_z` = '63.65', `orientation` = '2.56563', `rotation2` = '0.958819', `rotation3` = '0.284017', `spawntimesecsmin` = '180', `spawntimesecsmax` = '180' WHERE `guid` =21061;
UPDATE `creature_template` SET `PickpocketLootId` = '0' WHERE `Entry` in (3638,3640,4392,12261);
DELETE FROM `pickpocketing_loot_template` WHERE `entry` in (3638,3640,4392,12261);
UPDATE `creature_template` SET `LootId` = '0' WHERE `Entry` in (28654);
DELETE FROM `creature_loot_template` WHERE `entry` in (28654);
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '10' WHERE `item` =20766;
UPDATE `item_loot_template` SET `ChanceOrQuestChance` = '0', `groupid` = '1' WHERE `entry` =20766 AND `item` =929;
UPDATE `item_loot_template` SET `ChanceOrQuestChance` = '0', `groupid` = '1' WHERE `entry` =20766 AND `item` =1710;
UPDATE `item_loot_template` SET `ChanceOrQuestChance` = '0', `groupid` = '2' WHERE `entry` =20766 AND `item` =3385;
UPDATE `item_loot_template` SET `ChanceOrQuestChance` = '0', `groupid` = '2' WHERE `entry` =20766 AND `item` =3827;
UPDATE `item_loot_template` SET `ChanceOrQuestChance` = '0', `groupid` = '3' WHERE `entry` =20766 AND `item` in (7909,3864,3818,3357,3356,2453,2452,2450,2449,2447,1705,1529,785,765);
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '-50' WHERE `item` =6464;

REPLACE INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(71666, 179747, 0, 1, 1, 2915.52, -2850.17, 97.0444, 0.453786, 0, 0, 0.224951, 0.97437, 900, 900, 100, 1),
(32713, 179747, 0, 1, 1, 2916.89, -2905.8, 100.871, -0.017453, 0, 0, -0.00872612, 0.999962, 900, 900, 100, 1),
(32714, 179747, 0, 1, 1, 2992.97, -2867.09, 100.759, 2.72271, 0, 0, 0.978147, 0.207914, 900, 900, 100, 1),
(32715, 179747, 0, 1, 1, 2967.11, -3054.83, 120.292, -1.11701, 0, 0, -0.529919, 0.848048, 900, 900, 100, 1),
(32716, 179747, 0, 1, 1, 2868.34, -2902.26, 97.1712, -1.98968, 0, 0, -0.83867, 0.54464, 900, 900, 100, 1),
(32717, 179747, 0, 1, 1, 2997.42, -2878.24, 102.333, 0.122173, 0, 0, 0.0610485, 0.998135, 900, 900, 100, 1),
(32718, 179747, 0, 1, 1, 2971.16, -2870.4, 100.149, 2.28638, 0, 0, 0.909961, 0.414694, 900, 900, 100, 1),
(32719, 179747, 0, 1, 1, 2850.89, -2949.52, 98.9194, -1.18682, 0, 0, -0.559193, 0.829038, 900, 900, 100, 1),
(32720, 179747, 0, 1, 1, 2955.81, -2891.01, 101.984, -2.75762, 0, 0, -0.981627, 0.190812, 900, 900, 100, 1),
(32721, 179747, 0, 1, 1, 2900.23, -2899.14, 105.637, -2.46091, 0, 0, -0.942641, 0.333808, 900, 900, 100, 1),
(32722, 179747, 0, 1, 1, 2825.92, -3014.59, 104.616, -2.07694, 0, 0, -0.861629, 0.507539, 900, 900, 100, 1),
(32723, 179747, 0, 1, 1, 2865.08, -3047.4, 103.398, -1.65806, 0, 0, -0.737276, 0.675591, 900, 900, 100, 1),
(32724, 179747, 0, 1, 1, 2968.6, -2755.77, 112.842, 1.309, 0, 0, 0.608763, 0.793352, 900, 900, 100, 1),
(32725, 179747, 0, 1, 1, 2958.54, -2878.55, 107.63, -1.36136, 0, 0, -0.62932, 0.777146, 900, 900, 100, 1),
(32726, 179747, 0, 1, 1, 3000.06, -2872.85, 93.6041, 0.087266, 0, 0, 0.0436192, 0.999048, 900, 900, 100, 1),
(32727, 179747, 0, 1, 1, 3015.58, -2830.42, 110.939, -1.09956, 0, 0, -0.522498, 0.85264, 900, 900, 100, 1),
(32728, 179747, 0, 1, 1, 2994.05, -2862.44, 107.63, 3.07178, 0, 0, 0.999391, 0.0348993, 900, 900, 100, 1),
(32729, 179747, 0, 1, 1, 2972.62, -3038.04, 120.298, -1.8675, 0, 0, -0.803857, 0.594823, 900, 900, 100, 1),
(32730, 179747, 0, 1, 1, 2913.28, -2891.7, 105.612, -0.523599, 0, 0, -0.258819, 0.965926, 900, 900, 100, 1),
(32731, 179747, 0, 1, 1, 2907.08, -3025.86, 110.025, -1.91986, 0, 0, -0.819152, 0.573577, 900, 900, 100, 1),
(32732, 179747, 0, 1, 1, 3116.67, -2819.62, 126.054, 1.67552, 0, 0, 0.743146, 0.669129, 900, 900, 100, 1),
(32733, 179747, 0, 1, 1, 2961.55, -2864.36, 107.63, -1.50098, 0, 0, -0.681998, 0.731354, 900, 900, 100, 1),
(32734, 179747, 0, 1, 1, 2954.12, -3026.99, 120.213, 3.10669, 0, 0, 0.999848, 0.0174505, 900, 900, 100, 1),
(32735, 179747, 0, 1, 1, 3003.44, -2829.65, 106.174, -1.67552, 0, 0, -0.743144, 0.669131, 900, 900, 100, 1),
(32736, 179747, 0, 1, 1, 2968.79, -2724.6, 112.788, 1.64061, 0, 0, 0.731354, 0.681998, 900, 900, 100, 1),
(32737, 179747, 0, 1, 1, 2999.99, -2750.22, 119.115, -1.02974, 0, 0, -0.492423, 0.870356, 900, 900, 100, 1),
(32738, 179747, 0, 1, 1, 2946.98, -2743.9, 109.499, -2.18166, 0, 0, -0.887011, 0.461749, 900, 900, 100, 1),
(32739, 179747, 0, 1, 1, 2980.18, -2783.62, 110.581, -2.54818, 0, 0, -0.956305, 0.292372, 900, 900, 100, 1),
(32740, 179747, 0, 1, 1, 2935.37, -2779.95, 110.451, -2.98451, 0, 0, -0.996917, 0.0784664, 900, 900, 100, 1),
(32742, 179747, 0, 1, 1, 2916.91, -2770.76, 120.46, -0.523599, 0, 0, -0.258819, 0.965926, 900, 900, 100, 1),
(32743, 179747, 0, 1, 1, 3000.26, -2825.68, 117.44, 0.628319, 0, 0, 0.309017, 0.951056, 900, 900, 100, 1),
(32744, 179747, 0, 1, 1, 2968.57, -2944.56, 105.866, 0.872665, 0, 0, 0.422618, 0.906308, 900, 900, 100, 1),
(32745, 179747, 0, 1, 1, 3071.87, -2859.33, 107.392, -0.959931, 0, 0, -0.461748, 0.887011, 900, 900, 100, 1),
(32746, 179747, 0, 1, 1, 3050.04, -2887.48, 109.743, 2.32129, 0, 0, 0.91706, 0.398748, 900, 900, 100, 1),
(32747, 179747, 0, 1, 1, 2941.44, -2979.87, 109.033, -1.32645, 0, 0, -0.615661, 0.788011, 900, 900, 100, 1);

UPDATE `creature_template` SET `GossipMenuId` = '0' WHERE `Entry` = 22292;
DELETE FROM `gossip_menu` WHERE `entry` = 9818;
