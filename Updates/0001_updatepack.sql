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
