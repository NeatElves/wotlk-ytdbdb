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
