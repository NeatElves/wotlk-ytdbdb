# 090_gnomeregan.sql
# GUID NPC and GO not 9000000 -> 900000

# 109_sunken_temple.sql
SET @OGUID := 1090000; -- gameobjects
DELETE FROM `dbscripts_on_gossip` WHERE `id` = 1288;
DELETE FROM `dbscripts_on_gossip` WHERE `id` = 128801;
INSERT INTO `dbscripts_on_gossip` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
(128801, 1000, 9, @OGUID+14, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'AtalarionStatues S - rough script, details missing'),
(128801, 11000, 9, @OGUID+15, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'AtalarionStatues N'),
(128801, 22000, 9, @OGUID+16, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'AtalarionStatues SW'),
(128801, 33000, 9, @OGUID+17, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'AtalarionStatues SE'),
(128801, 44000, 9, @OGUID+18, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'AtalarionStatues NW'),
(128801, 55000, 9, @OGUID+19, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'AtalarionStatues NE');

# 189_scarlet_monastery.sql
DELETE FROM `dbscripts_on_creature_death` WHERE `id` IN (4543);
INSERT INTO `dbscripts_on_creature_death` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(4543, 1000, 0, 10, 14693, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1798.01, 1223.17, 18.274, 4.71161, 3712, 'Bloodmage Thalnos - Spawn Scorn on Death (Event 89');

# 230_blackrock_depths.sql
SET @OGUID := 2300000; -- gameobjects
DELETE FROM `gameobject` WHERE `guid` = @OGUID+457;

# 309_zulgurub.sql
DELETE FROM `dbscripts_on_go_template_use` WHERE `id` = 180327;
INSERT INTO `dbscripts_on_go_template_use` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(180327, 5000, 0, 10, 15082, 259200, 0, 0, 0, 0, 0, 0, 0, 0, -11901.3, -1906.52, 65.36, 0.87, 3691, 'Zul''Gurub - Brazier of Madness - Edge of Madness (Gri''lek)'),
(180327, 5000, 0, 10, 15083, 259200, 0, 0, 0, 0, 0, 0, 0, 0, -11901.3, -1906.52, 65.36, 0.87, 3692, 'Zul''Gurub - Brazier of Madness - Edge of Madness (Hazza''rah)'),
(180327, 5000, 0, 10, 15084, 259200, 0, 0, 0, 0, 0, 0, 0, 0, -11901.3, -1906.52, 65.36, 0.87, 3693, 'Zul''Gurub - Brazier of Madness - Edge of Madness (Renataki)'),
(180327, 5000, 0, 10, 15085, 259200, 0, 0, 0, 0, 0, 0, 0, 0, -11901.3, -1906.52, 65.36, 0.87, 3694, 'Zul''Gurub - Brazier of Madness - Edge of Madness (Wushoolay)');

# 534_hyjal_summit.sql
SET @CEGUID := 5340000; -- creatures Entrance Room
SET @CSGUID := 5341000; -- creatures Scourge Base
SET @CAGUID := 5342000; -- creatures Alliance Base
SET @CHGUID := 5343000; -- creatures Horde Base
SET @CNGUID := 5344000; -- creatures Nightelf Base
UPDATE `creature` SET `curhealth` = 5715 WHERE `guid` IN (@CEGUID+1);
UPDATE `creature` SET `curhealth` = 6986 WHERE `guid` IN (@CEGUID+2);
UPDATE `creature` SET `curhealth` = 86071 WHERE `guid` IN (@CSGUID+1,@CSGUID+2,@CSGUID+3,@CSGUID+4,@CSGUID+5,@CSGUID+6);
UPDATE `creature` SET `curhealth` = 125668 WHERE `guid` IN (@CSGUID+7,@CSGUID+8,@CSGUID+9,@CSGUID+10,@CSGUID+11,@CSGUID+12,@CSGUID+13,@CSGUID+14);
UPDATE `creature` SET `curhealth` = 97804 WHERE `guid` IN (@CSGUID+15,@CSGUID+16,@CSGUID+17,@CSGUID+18,@CSGUID+19);
UPDATE `creature` SET `curhealth` = 97804 WHERE `guid` IN (@CSGUID+20,@CSGUID+21,@CSGUID+22,@CSGUID+23,@CSGUID+24);
UPDATE `creature` SET `curhealth` = 97804 WHERE `guid` IN (@CSGUID+25,@CSGUID+26,@CSGUID+27);
UPDATE `creature` SET `curhealth` = 97804 WHERE `guid` IN (@CSGUID+28,@CSGUID+29,@CSGUID+30);
UPDATE `creature` SET `curhealth` = 6986 WHERE `guid` IN (@CAGUID+35,@CAGUID+36,@CAGUID+37,@CAGUID+38,@CAGUID+39,@CAGUID+40);
UPDATE `creature` SET `curhealth` = 455250 WHERE `guid` IN (@CHGUID+1);
UPDATE `creature` SET `curhealth` = 50805 WHERE `guid` IN (@CNGUID+38);
UPDATE `creature` SET `curhealth` = 7588 WHERE `guid` IN (@CNGUID+57);

# 543_hellfire_ramparts.sql
SET @CGUID := 5430000; -- creatures
-- Worker Equipment
UPDATE `creature` SET `equipment_id` = 2512 WHERE `guid` IN (@CGUID+16,@CGUID+17); -- Bonechewer Hungerer 17259
UPDATE `creature` SET `equipment_id` = 4286 WHERE `guid` IN (@CGUID+24,@CGUID+25); -- Bonechewer Ravener 17264

# 545_steamvault.sql
SET @CGUID := 5450000; -- creatures
-- Using nondefault weapon
UPDATE `creature` SET `equipment_id` = 35 WHERE `guid` IN (@CGUID+21,@CGUID+22);

# 547_slave_pens.sql
DELETE FROM dbscripts_on_gossip WHERE id IN(7540,7520);
DELETE FROM dbscripts_on_gossip WHERE id IN(754001,752001);
INSERT INTO `dbscripts_on_gossip` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
('752001', '0', '8', '17893', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Naturalist Bite - Give Kill Credit to Group'),
('752001', '0', '13', '0', '0', '0', '182094', '5', '1', '0', '0', '0', '0', '0', '0', '0', '0', 'Naturalist Bite - Open cage'),
('752001', '0', '48', '256', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Naturalist Bite - Remove UNIT_FLAG_IMMUNE_TO_PLAYER'),
('752001', '0', '48', '512', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Naturalist Bite - Remove UNIT_FLAG_IMMUNE_TO_NPC'),
('752001', '0', '22', '113', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Naturalist Bite - Change faction'),
('752001', '0', '29', '1', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Naturalist Bite - Remove NPC Gossip flag'),
('752001', '0', '20', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Naturalist Bite - Move Waypoint'),
('752001', '0', '10', '17957', '300000', '1', '0', '0', '8', '1', '0', '0', '0', '-97.29962', '-744.0187', '34.83808', '3.476041', 'Naturalist Bite - Spawn Coilfang Champion'),
('752001', '0', '10', '17960', '300000', '1', '0', '0', '8', '1', '0', '0', '0', '-93.89555', '-741.5464', '35.76108', '3.737259', 'Naturalist Bite - Spawn Coilfang Soothsayer'),
('752001', '0', '10', '17961', '300000', '1', '0', '0', '8', '1', '0', '0', '0', '-90.23283', '-740.959', '35.3191', '35.94978', 'Naturalist Bite - Spawn Coilfang Enchantress'),
('754001', '0', '15', '34906', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Naturalist Bite - Cast Mark of Bite');

# 548_serpentshrine_cavern.sql
SET @CGUID := 5480000; -- creatures
-- Greyheart Skulker - 1 dagger and 1 hammer
UPDATE creature SET equipment_id=4774 WHERE guid IN (@CGUID+138,@CGUID+135,@CGUID+134,@CGUID+131);
-- Greyheart Nether-Mage/Tidecaller - 1 hammer
UPDATE creature SET equipment_id=343 WHERE guid IN (@CGUID+119,@CGUID+95,@CGUID+93,@CGUID+110,@CGUID+108);

# 556_sethekk_halls.sql
SET @CGUID := 5560000; -- creatures
DELETE FROM dbscripts_on_gossip WHERE id=7868;
DELETE FROM dbscripts_on_gossip WHERE id=786801;
INSERT INTO `dbscripts_on_gossip` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
(786801, 4000, 20, 2, 0, 0, 18956, @CGUID+88, 16, 0, 0, 0, 0, 0, 0, 0, 0, 'Sethekk Halls - Lakka - Set Waypoint Movement'),
(786801, 4000, 13, 0, 0, 0, 183051, 50, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Sethekk Halls - Lakka - Open Cage'),
(786801, 1000, 0, 0, 0, 0, 18956, @CGUID+88, 16, 16049, 0, 0, 0, 0, 0, 0, 0, 'Sethekk Halls - Lakka - Say'),
(786801, 1000, 8, 18956, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Sethekk Halls - Lakka - Kill Credit');

# 557_mana_tombs.sql
SET @CGUID := 5570000; -- creatures
UPDATE `creature` SET `spawndist` = 0, `MovementType` = 2 WHERE `guid` = @CGUID+173;

# 560_old_hillsbrad_foothills.sql
SET @OGUID := 5600000; -- gameobjects
DELETE FROM `gameobject` WHERE `guid` = @OGUID+186;

# 568_zulaman.sql
SET @CGUID := 5680000; -- creatures
SET @OGUID := 5680000; -- gameobjects
UPDATE creature SET equipment_id=132 WHERE guid=@CGUID+104; -- Amanishi Guardian (starts holding a spear for gong event RP script)
INSERT INTO `game_event_creature_data` (`guid`, `entry_id`, `modelid`, `equipment_id`, `spell_start`, `spell_end`, `event`) VALUES
(@CGUID+254, 0, 21934, 0, 0, 0, 2); -- Zul'jin (Feast of Winter Veil)
INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES
(@OGUID+4, 12), -- Sitting Skeleton 01 (Hallow's End)
(@OGUID+5, 12), -- Sitting Skeleton 01 (Hallow's End)
(@OGUID+6, 12), -- Sitting Skeleton 01 (Hallow's End)
(@OGUID+7, 12), -- Sitting Skeleton 01 (Hallow's End)
(@OGUID+8, 12), -- Sitting Skeleton 01 (Hallow's End)
(@OGUID+9, 12), -- Sitting Skeleton 01 (Hallow's End)
(@OGUID+10, 12), -- Sitting Skeleton 01 (Hallow's End)
(@OGUID+11, 12), -- Sitting Skeleton 04 (Hallow's End)
(@OGUID+12, 12), -- Sitting Skeleton 04 (Hallow's End)
(@OGUID+13, 12), -- Laying Skeleton 02 (Hallow's End)
(@OGUID+14, 12), -- Laying Skeleton 02 (Hallow's End)
(@OGUID+15, 12), -- Laying Skeleton 02 (Hallow's End)
(@OGUID+16, 12), -- Laying Skeleton 02 (Hallow's End)
(@OGUID+17, 12), -- Laying Skeleton 02 (Hallow's End)
(@OGUID+18, 12), -- Laying Skeleton 02 (Hallow's End)
(@OGUID+19, 12), -- Laying Skeleton 02 (Hallow's End)
(@OGUID+20, 12), -- Laying Skeleton 02 (Hallow's End)
(@OGUID+21, 12), -- Laying Skeleton 02 (Hallow's End)
(@OGUID+22, 12), -- Laying Skeleton 02 (Hallow's End)
(@OGUID+23, 12), -- Laying Skeleton 03 (Hallow's End)
(@OGUID+24, 12), -- Laying Skeleton 03 (Hallow's End)
(@OGUID+25, 12), -- Laying Skeleton 03 (Hallow's End)
(@OGUID+26, 12), -- Laying Skeleton 03 (Hallow's End)
(@OGUID+27, 12), -- Laying Skeleton 03 (Hallow's End)
(@OGUID+28, 12), -- Laying Skeleton 03 (Hallow's End)
(@OGUID+29, 12), -- Laying Skeleton 03 (Hallow's End)
(@OGUID+30, 12); -- Laying Skeleton 03 (Hallow's End)

# 580_sunwell_plateau.sql
SET @CGUID := 5800000; -- creatures
UPDATE `creature` SET `MovementType` = 2 WHERE `guid` = @CGUID+155;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(72796, 201794, 580, 1, 1, 1694.95, 604.023, 28.1494, 5.95759, 0, 0, 0.162079, -0.986778, -30, -30, 100, 1);

# 600_draktharon_keep.sql
SET @CGUID := 6000000; -- creatures
UPDATE `creature` SET `curhealth` = 0 WHERE `guid` IN (@CGUID+107,@CGUID+108,@CGUID+116,@CGUID+117);

# 619_ahn_kahet.sql
SET @CGUID := 6190000; -- creatures
UPDATE `creature` SET `curhealth` = 63000 WHERE `guid` IN (@CGUID+259,@CGUID+260);

# 631_icecrown_citadel.sql
SET @CGUID := 6310000; -- creatures
SET @CAGUID := 6720000; -- creatures
SET @CHGUID := 6730000; -- creatures
UPDATE `creature` SET `curmana` = 425800 WHERE `guid` IN (@CGUID+352);
UPDATE `creature` SET `curmana` = 4258000 WHERE `guid` IN (@CGUID+412);
UPDATE `creature` SET `curhealth` = 13033 WHERE `guid` IN (@CAGUID+16,@CAGUID+17,@CAGUID+18,@CAGUID+19,@CAGUID+20,@CAGUID+21,@CAGUID+22,@CAGUID+23,@CAGUID+24,@CAGUID+25);
UPDATE `creature` SET `curhealth` = 690000 WHERE `guid` IN (@CAGUID+28);
UPDATE `creature` SET `curhealth` = 13033 WHERE `guid` IN (@CHGUID+5,@CHGUID+6,@CHGUID+7,@CHGUID+8,@CHGUID+9,@CHGUID+10,@CHGUID+11,@CHGUID+12,@CHGUID+13,@CHGUID+14);
UPDATE `creature` SET `curhealth` = 690000 WHERE `guid` IN (@CHGUID+29);
