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
