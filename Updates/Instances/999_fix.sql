# 109_sunken_temple.sql
# Gossip ID YTDB
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
# condition ID YTDB
DELETE FROM `dbscripts_on_creature_death` WHERE `id` IN (4543);
INSERT INTO `dbscripts_on_creature_death` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(4543, 1000, 0, 10, 14693, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1798.01, 1223.17, 18.274, 4.71161, 3712, 'Bloodmage Thalnos - Spawn Scorn on Death (Event 89');

# 230_blackrock_depths.sql
SET @OGUID := 2300000; -- gameobjects
DELETE FROM `gameobject` WHERE `guid` = @OGUID+457;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(@OGUID+800, 190395, 230, 1, 1, 891.688, -175.735, -43.925, 1.21, 0, 0, 0.886709, -0.462328, -180, -180, 100, 1),
(@OGUID+801, 190394, 230, 1, 1, 891.688, -175.735, -43.925, 1.21, 0, 0, 0.886709, -0.462328, -180, -180, 100, 1);

# 309_zulgurub.sql
# condition ID YTDB
DELETE FROM `dbscripts_on_go_template_use` WHERE `id` = 180327;
INSERT INTO `dbscripts_on_go_template_use` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(180327, 5000, 0, 10, 15082, 259200, 0, 0, 0, 0, 0, 0, 0, 0, -11901.3, -1906.52, 65.36, 0.87, 3691, 'Zul''Gurub - Brazier of Madness - Edge of Madness (Gri''lek)'),
(180327, 5000, 0, 10, 15083, 259200, 0, 0, 0, 0, 0, 0, 0, 0, -11901.3, -1906.52, 65.36, 0.87, 3692, 'Zul''Gurub - Brazier of Madness - Edge of Madness (Hazza''rah)'),
(180327, 5000, 0, 10, 15084, 259200, 0, 0, 0, 0, 0, 0, 0, 0, -11901.3, -1906.52, 65.36, 0.87, 3693, 'Zul''Gurub - Brazier of Madness - Edge of Madness (Renataki)'),
(180327, 5000, 0, 10, 15085, 259200, 0, 0, 0, 0, 0, 0, 0, 0, -11901.3, -1906.52, 65.36, 0.87, 3694, 'Zul''Gurub - Brazier of Madness - Edge of Madness (Wushoolay)');

# 531_temple_of_ahnqiraj.sql
# condition ID YTDB
SET @GROUP_ID := 5310000;
UPDATE `spawn_group` SET `WorldState` = 12002 WHERE `Id` =@GROUP_ID+14;
DELETE FROM conditions WHERE condition_entry=12002 AND type=42;
INSERT INTO conditions(condition_entry,type,value1,value2,value3) VALUES (12002, 42, 71101, 0, 1);

# 533_Naxxramas_WOTLK.sql
# [4325] Add Spell-Target-Position to "Summon Crypt Guard"
DELETE FROM creature WHERE guid=4791;
INSERT INTO creature VALUES (4791,17293,533,1,1,0,0,2772.57,-3685.28,273.666,5.5019,25,25,0,0,0,0,0,0);

# 543_hellfire_ramparts.sql
# Equipment ID YTDB
SET @CGUID := 5430000; -- creatures
-- Worker Equipment
UPDATE `creature` SET `equipment_id` = 2512 WHERE `guid` IN (@CGUID+16,@CGUID+17); -- Bonechewer Hungerer 17259
UPDATE `creature` SET `equipment_id` = 4286 WHERE `guid` IN (@CGUID+24,@CGUID+25); -- Bonechewer Ravener 17264

# 545_steamvault.sql
# Equipment ID YTDB
SET @CGUID := 5450000; -- creatures
-- Using nondefault weapon
UPDATE `creature` SET `equipment_id` = 35 WHERE `guid` IN (@CGUID+21,@CGUID+22);

# 548_serpentshrine_cavern.sql
# Equipment ID YTDB
SET @CGUID := 5480000; -- creatures
-- Greyheart Skulker - 1 dagger and 1 hammer
UPDATE creature SET equipment_id=4774 WHERE guid IN (@CGUID+138,@CGUID+135,@CGUID+134,@CGUID+131);
-- Greyheart Nether-Mage/Tidecaller - 1 hammer
UPDATE creature SET equipment_id=343 WHERE guid IN (@CGUID+119,@CGUID+95,@CGUID+93,@CGUID+110,@CGUID+108);

# 556_sethekk_halls.sql
# Gossip ID YTDB
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
# Equipment ID YTDB
# Event data YTDB
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
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(72796, 201794, 580, 1, 1, 1694.95, 604.023, 28.1494, 5.95759, 0, 0, 0.162079, -0.986778, -30, -30, 100, 1);
