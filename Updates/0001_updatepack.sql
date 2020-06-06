# Y2kCat
# ALTER TABLE db_version_ytdb CHANGE COLUMN 661_FIX_13994 662_FIX_14017 bit;
REPLACE INTO `db_version_ytdb` (`version`) VALUES ('662_FIX_14017');

UPDATE `creature_template` SET `GossipMenuId` = '5709' WHERE `Entry` =14354;
DELETE FROM `gossip_menu` WHERE `entry` = 5710 AND `text_id` = 6878;
DELETE FROM `gossip_menu` WHERE `entry` = 5711 AND `text_id` = 6879;
DELETE FROM `gossip_menu` WHERE `entry` = 5712 AND `text_id` = 6880;
DELETE FROM `gossip_menu` WHERE `entry` = 5713 AND `text_id` = 6881;
