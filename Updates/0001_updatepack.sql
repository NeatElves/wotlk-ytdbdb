# Y2kCat
# ALTER TABLE db_version_ytdb CHANGE COLUMN 662_FIX_14017 663_FIX_14032 bit;
REPLACE INTO `db_version_ytdb` (`version`) VALUES ('663_FIX_14032');

UPDATE db_version SET `cache_id`= '663';
UPDATE db_version SET `version`= 'YTDB_0.15.1_R663_cMaNGOS_R14032_RuDB_R71';
