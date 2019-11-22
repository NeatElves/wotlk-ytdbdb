UPDATE `creature_template` SET `UnitFlags` = 2832 WHERE `Entry` =10184;

UPDATE `conditions` SET `value1` = '12309', `comments` = 'Quest ID 12309 Rewarded' WHERE `condition_entry` =449;
REPLACE INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `comments`) VALUES ('3073', '8', '12312', '0', ''), ('3074', '-1', '3073', '449', '');
UPDATE `gossip_menu` SET `condition_id` = '3074' WHERE `entry` =9562 AND `text_id` =12883;
REPLACE INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `comments`) VALUES ('3075', '9', '13219', '0', ''), ('3076', '-1', '3075', '2521', '');
UPDATE `gossip_menu` SET `condition_id` = '3076' WHERE `entry` =10034 AND `text_id` =13944;

DELETE FROM spell_script_target WHERE entry=28732;
INSERT INTO spell_script_target (entry, type, targetEntry, inverseEffectMask) VALUES (28732, 1, 15953, 6);

UPDATE creature_template SET UnitFlags=33600 WHERE entry IN(11502);

DELETE FROM dbscripts_on_gossip WHERE id IN(140500);
INSERT INTO `dbscripts_on_gossip` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
(140500, 0, 8, 8612, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'give killcredit - Screecher Spirit'),
(140500, 1, 36, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Screecher Spirit - turn to player'),
(140500, 1, 4, 59, 33554432, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Screecher Spirit - add non_selectable'),
(140500, 2, 18, 6000, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Screecher Spirit - despawn');

UPDATE `quest_template` SET `NextQuestId` = 0 WHERE `entry` =10715;

REPLACE INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(1520, 35252, 0, 1, -3444.59, -1833.84, 24.9106, -1.39626, 0, 0, 0, 0, 60, 60, 100, 1),
(8742, 35252, 0, 1, -3549.77, -1723.89, 81.994, 2.75761, 0, 0, 0.9816265, 0.1908124, 60, 60, 100, 1),
(11911, 35252, 0, 1, -3469.87, -1836.43, 17.2882, 0, 0, 0, 0, 0, 60, 60, 100, 1);
UPDATE `gameobject` SET `spawntimesecsmin` = 60, `spawntimesecsmax` = 60 WHERE `guid` IN (42312,42307);
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(7037, 334, 0, 1, -3373.47, -1810.15, 16.2407, 2.67035, 0, 0, 0, 0, 60, 60, 100, 1),
(7438, 334, 0, 1, -3568.4, -1845.56, 24.3617, -2.96704, 0, 0, -0.9961939, 0.08716504, 60, 60, 100, 1),
(8978, 334, 0, 1, -3408.6, -1807.26, 17.8659, -1.39626, 0, 0, 0, 0, 60, 60, 100, 1),
(13157, 334, 0, 1, -3525.93, -1884.599, 24.24283, -0.5759573, 0, 0, -0.2840147, 0.9588199, 60, 60, 100, 1);
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(215, 333, 0, 1, -3371.96, -1846.54, 16.5207, -1.8326, 0, 0, -0.793355, 0.60876, 60, 60, 100, 1),
(7436, 333, 0, 1, -3461.63, -1803.47, 25.7061, -1.83259, 0, 0, -0.7933531, 0.6087617, 60, 60, 100, 1),
(7437, 333, 0, 1, -3420.89, -1856.84, 16.9872, 2.51327, 0, 0, 0, 0, 60, 60, 100, 1),
(7451, 333, 0, 1, -3469.871, -1836.429, 17.28823, 0, 0, 0, 0, 0, 60, 60, 100, 1);
DELETE FROM `gameobject` WHERE `guid` = 8642;
UPDATE `gameobject` SET `spawntimesecsmin` = 60, `spawntimesecsmax` = 60 WHERE `id` IN (331);
UPDATE `gameobject` SET `position_x` = '-3563.83', `position_y` = '-1767.35', `position_z` = '79.1001', `orientation` = '4.26498', `rotation2` = '0.846354', `rotation3` = '-0.53262' WHERE `guid` =12165;
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(8642, 331, 0, 1, -3525.93, -1884.599, 24.24283, -0.5759573, 0, 0, -0.2840147, 0.9588199, 60, 60, 100, 1);

UPDATE `creature_template` SET `UnitFlags` = 33024, `ExtraFlags` = 66 WHERE `Entry` IN (19006,19007);

DELETE FROM `creature_questrelation` WHERE `id` = 30107 AND `quest` = 12973;

UPDATE `dbscript_string` SET `content_default` = '%s inspects the snapjaw shells...' WHERE `entry` =2000000108;
UPDATE `dbscript_string` SET `content_default` = 'Billy says Fizzles used to be a great wizard. But he got turned into a rabbit when one of his spells went bad.' WHERE `entry` =2000000187;

UPDATE creature_template SET UnitFlags=33024 WHERE entry IN(22454);
UPDATE gossip_menu_option SET condition_id=3081 WHERE menu_id=8081 AND id = 0;
REPLACE INTO conditions(condition_entry, type, value1, value2) VALUES (3077,8,10286,0), (3078,9,10287,0), (3079,-3,3078,0), (3080,-1,3077,3079), (3081,-2,916,3080);

UPDATE creature_template_addon SET auras='15876' WHERE entry IN (7457, 7458, 7459, 7460);
DELETE FROM creature_template_addon WHERE entry IN (4358, 4360, 4411);
INSERT INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_pvp_state`, `emote`, `moveflags`, `auras`) VALUES
(4358, 0, 0, 1, 16, 0, 0, NULL), (4360, 0, 0, 1, 16, 0, 0, NULL), (4411, 0, 0, 1, 16, 0, 0, '3616');

REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(51424, 8120, 209, 1, 1, 0, 0, 1744.88, 1066.61, 51.2345, 5.51524, 18000, 18000, 5, 0, 3696, 0, 0, 1),
(53755, 8120, 209, 1, 1, 0, 0, 1769.01, 1043.17, 50.5992, 2.40855, 18000, 18000, 5, 0, 3696, 0, 0, 1);
DELETE FROM creature_linking WHERE guid IN (51424, 53755);
INSERT INTO creature_linking (guid, master_guid, flag) VALUES (51424, 53755, 3);
DELETE FROM `creature` WHERE `guid` = 49288;

UPDATE creature_template SET SchoolImmuneMask=SchoolImmuneMask|(8) WHERE entry IN(2919);
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|(16384) WHERE entry IN(2919,11561);
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|(16) WHERE entry IN(7396,7397);

UPDATE `dbscript_string` SET `content_default` = 'Samia, do you know who Kolphis Darkscale is?' WHERE `entry` =2000000445;

UPDATE `quest_template` SET `SrcItemId` = '0', `SrcItemCount` = '0' WHERE `entry` =10842;
DELETE FROM `gameobject_loot_template` WHERE `entry` = 184810;
INSERT INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('184810', '30527', '-100', '0', '1', '1', '0', '');

UPDATE creature_template SET SpeedWalk=2.5/2.5,SpeedRun=8/7 WHERE entry IN(22424);

DELETE FROM `creature` WHERE `guid` = 91540;

REPLACE INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `comments`) VALUES
('3082', '8', '4004', '0', 'Quest ID 4004 Rewarded'),
('3083', '8', '4363', '0', 'Quest ID 4363 Rewarded'),
('3084', '-2', '3082', '3083', '(Quest ID 4004 OR Quest ID 4363 Rewarded)');
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '0', `groupid` = '1', `condition_id` = '3084' WHERE `entry` =8929 AND `item` IN ('12553', '12554', '12556', '12557');
UPDATE `creature_loot_template` SET `groupid` = '0' WHERE `entry` =8929 AND `item` =22891;

DELETE FROM `creature` WHERE `guid` = 124380;

REPLACE INTO `creature_template_spells` (`entry`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`) VALUES
(8929, 15586, 8362, 15587, 0, 0, 0, 0, 0);

UPDATE `creature` SET `position_x` = '-10590.5', `position_y` = '-1164.79', `position_z` = '30.1331', `orientation` = '1.309', `spawntimesecsmin` = '300', `spawntimesecsmax` = '300' WHERE `guid` =2551;

REPLACE INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(400, 3523, 1, 1, 1, 324.068, -2239.23, 212.084, 1.16937, 0, 0, 0.551937, 0.833886, 120, 120, 100, 1),
(4577, 3524, 1, 1, 1, 324.005, -2238.76, 215.04, 2.14675, 0, 0, 0.878816, 0.477161, 120, 120, 100, 1);
UPDATE gameobject_template SET data3=65536, data5=1 WHERE entry=3524;
DELETE FROM dbscripts_on_event WHERE id=510;
INSERT INTO `dbscripts_on_event` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
(510, 1, 13, 0, 0, 0, 3524, 30, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Activate Demon Seed'),
(510, 2, 40, 0, 0, 0, 3523, 30, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Despawn Circle of Flame');

UPDATE creature_model_info SET bounding_radius=0.8,combat_reach=3 WHERE modelid IN(15738);
UPDATE creature_model_info SET bounding_radius=1.05,combat_reach=7.5 WHERE modelid IN(15547);

DELETE FROM spell_script_target WHERE entry = 24062;
INSERT INTO spell_script_target (entry, type, targetEntry, inverseEffectMask) VALUES (24062, 1, 15010, 0);

UPDATE dbscripts_on_go_template_use SET search_radius=70 WHERE Id IN(179148) AND command=11;

UPDATE creature_template SET SchoolImmuneMask=SchoolImmuneMask|64 WHERE entry IN(15527);
UPDATE creature_template SET Detection=50 WHERE entry IN(15369);
UPDATE creature SET position_x=-9719.611,position_y=1514.752,position_z=27.55229,orientation=0.7679449 WHERE id IN(15369);

UPDATE `creature` SET `position_x` = '2795.29', `position_y` = '-3708.85', `position_z` = '276.563', `orientation` = '0.6102', `spawndist` = '5', `MovementType` = '1' WHERE `guid` =52240;
DELETE FROM spell_target_position WHERE id=29273;
INSERT INTO spell_target_position (id, target_map, target_position_x, target_position_y, target_position_z, target_orientation) VALUES
(29273, 533, 2905.63, -3769.96, 273.62, 3.13);

UPDATE `creature` SET `spawntimesecsmin` = '300', `spawntimesecsmax` = '300' WHERE `guid` in (58336,58354,58300,58284);
DELETE FROM creature_movement_template WHERE entry = "19435";
INSERT INTO `creature_movement_template` (`entry`, `pathId`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `script_id`, `comment`) VALUES 
('19435', '0', '0', '-140.467', '982.053', '54.2479', '2.32129', '3600000', '0', 'Dark Clearic Malod Spawn'),
('19435', '0', '1', '-135.922', '997.979', '54.1678', '0', '0', '0', 'Dark Clearic Malod Waypoint'),
('19435', '0', '2', '-130.295', '1001.47', '54.1352', '6.19592', '4000', '1943501', 'Dark Clearic Malod first event'),
('19435', '0', '3', '-129.399', '1005.35', '54.1277', '0', '0', '0', 'Dark Clearic Malod Waypoint'),
('19435', '0', '4', '-129.399', '1005.35', '54.1277', '5.70723', '3000', '0', 'Dark Clearic Malod Change Orientation'),
('19435', '0', '5', '-129.399', '1005.35', '54.1277', '0.383972', '3000', '0', 'Dark Clearic Malod Change Orientation'),
('19435', '0', '6', '-138.249', '1017.98', '54.1666', '0', '0', '0', 'Dark Clearic Malod Waypoint'),
('19435', '0', '7', '-133.805', '1024.5', '54.1383', '0', '0', '0', 'Dark Clearic Malod Waypoint'),
('19435', '0', '8', '-133.805', '1024.5', '54.1383', '0.925025', '4000', '0', 'Dark Clearic Malod Change Orientation'),
('19435', '0', '9', '-133.805', '1024.5', '54.1383', '0.261799', '4000', '0', 'Dark Clearic Malod Change Orientation'),
('19435', '0', '10', '-133.805', '1024.5', '54.1383', '1.69297', '4000', '0', 'Dark Clearic Malod Change Orientation'),
('19435', '0', '11', '-133.805', '1024.5', '54.1383', '0.925025', '28000', '1943502', 'Dark Clearic Malod Second Event'),
('19435', '0', '12', '-157.823', '1010.55', '54.1879', '0', '0', '0', 'Dark Clearic Malod Waypoint'),
('19435', '0', '13', '-172.394', '1017.44', '54.238', '0', '0', '0', 'Dark Clearic Malod Waypoint'),
('19435', '0', '14', '-201.42', '1016.82', '54.3039', '0', '0', '0', 'Dark Clearic Malod Waypoint'),
('19435', '0', '15', '-226.246', '1016.51', '54.3208', '0', '0', '0', 'Dark Clearic Malod Waypoint'),
('19435', '0', '16', '-237.851', '1023.36', '54.309', '0', '0', '0', 'Dark Clearic Malod Waypoint'),
('19435', '0', '17', '-234.792', '1026.51', '54.3085', '0.717042', '45000', '1943503', 'Dark Clearic Malod third Event'),
('19435', '0', '18', '-201.884', '1016.94', '54.3022', '0', '0', '0', 'Dark Clearic Malod Waypoint'),
('19435', '0', '19', '-166.062', '1017.46', '54.2065', '0', '0', '0', 'Dark Clearic Malod Waypoint'),
('19435', '0', '20', '-151.175', '1012.26', '54.183', '0', '0', '0', 'Dark Clearic Malod Waypoint'),
('19435', '0', '21', '-145.295', '1000.05', '54.2113', '0', '0', '0', 'Dark Clearic Malod Waypoint'),
('19435', '0', '22', '-140.269', '982.351', '54.2018', '0', '0', '0', 'Dark Clearic Malod Waypoint');
DELETE FROM dbscript_string WHERE entry BETWEEN 2000003288 AND 2000003292;
INSERT INTO `dbscript_string` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`, `sound`, `type`, `language`, `emote`, `comment`) VALUES
('2000003288', 'AIEE! What are you doing?! I\'m still ALIVE, damn you!', null, null, null, null, null, null, null, null, '0', '0', '0', '1', 'Injured Grunt Text'),
('2000003289', 'Oh! So sorry. How terribly embarrassing! I didn\'t realize... ah... please, lie down, get some more rest.', null, null, null, null, null, null, null, null, '0', '0', '0', '1', 'Dark Clearic Malod Text 1'),
('2000003290', 'Ah, Lieutenant General Orion. I\'ve come to report that casualties are well within acceptable levels for this operation. In fact, the wounded are quite... ah... lively.', null, null, null, null, null, null, null, null, '0', '0', '0', '1', 'Dark Clearic Malod Talk 2'),
('2000003291', 'This is good news. Return to them, priest. But heed this: do not eat ANYONE.', null, null, null, null, null, null, null, null, '0', '0', '0', '1', 'Lieutnant Orion'),
('2000003292', 'Oh dear, Lieutenant General, how ghastly! I would most certainly never. I shall return to my charges now.', null, null, null, null, null, null, null, null, '0', '0', '0', '1', 'Dark Clearic Malod Text 3');
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 1943501 AND 1943503;
INSERT INTO `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES 
('1943502', '2', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Dark Clearic Malod Emote Talk'),
('1943502', '5', '15', '33963', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Dark Clearic Malod Cast CANNIBALIZE'),
('1943502', '8', '31', '19432', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Dark Clearic Malod search for buddy - 19432'),
('1943502', '8', '21', '1', '0', '0', '19432', '5', '7', '0', '0', '0', '0', '0', '0', '0', '0', 'Dark Clearic Malod buddy active'),
('1943502', '8', '28', '0', '0', '0', '19432', '5', '7', '0', '0', '0', '0', '0', '0', '0', '0', 'Dark Clearic Malod force buddy to stand up'),
('1943502', '10', '0', '0', '0', '0', '19432', '5', '7', '2000003288', '0', '0', '0', '0', '0', '0', '0', 'Dark Clearic Malod force buddy to say text'),
('1943502', '19', '0', '0', '0', '0', '0', '0', '0', '2000003289', '0', '0', '0', '0', '0', '0', '0', 'Dark Clearic Malod talk'),
('1943502', '27', '31', '19432', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Dark Clearic Malod search for buddy - 19432'),
('1943502', '27', '21', '1', '0', '0', '19432', '5', '7', '0', '0', '0', '0', '0', '0', '0', '0', 'Dark Clearic Malod buddy active'),
('1943502', '27', '28', '3', '0', '0', '19432', '5', '7', '3', '0', '0', '0', '0', '0', '0', '0', 'Dark Clearic Malod force buddy to sit '),
('1943501', '1', '1', '16', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Dark Clearic Malod Emote Kneel'),
('1943503', '3', '1', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Dark Clearic Malod Emote bow'),
('1943503', '5', '0', '0', '0', '0', '0', '0', '0', '2000003290', '0', '0', '0', '0', '0', '0', '0', 'Dark Clearic Malod say text'),
('1943503', '18', '31', '19253', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Dark Clearic Malod search for buddy - 19253'),
('1943503', '18', '21', '1', '0', '0', '19253', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Dark Clearic Malod buddy active'),
('1943503', '18', '0', '0', '0', '0', '19253', '5', '7', '2000003291', '0', '0', '0', '0', '0', '0', '0', 'Dark Clearic Malod force buddy to say text'),
('1943503', '29', '0', '0', '0', '0', '0', '0', '0', '2000003292', '0', '0', '0', '0', '0', '0', '0', 'Dark Clearic Malod say text'),
('1943503', '40', '1', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Dark Clearic Malod Emote bow');
UPDATE `creature` SET `MovementType` = 2 WHERE `guid` =58336;
UPDATE creature_movement_template SET waittime=1800000 WHERE entry IN(19436) AND point=1;
UPDATE creature_movement_template SET pathId=1 WHERE pathId=0 AND entry=19436;
INSERT INTO `creature_movement_template` (`entry`, `pathId`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `script_id`, `comment`) VALUES 
('19436', '0', '1', '-182.049', '1000.29', '54.2398', '0.364398', '900000', '1943601', 'Delay script of Broog by 15 minutes to avoid conflicts with others');
INSERT INTO dbscripts_on_creature_movement(id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
('1943601', '0', '20', '2', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Supply Master Broog - Set PathId 1');

UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '-100' WHERE `entry` =29695 AND `item` =40971;

DELETE FROM dbscripts_on_gossip WHERE id IN (985400,992900);
INSERT INTO `dbscripts_on_gossip` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
('985400', '0', '15', '57093', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Moteha Windborn - Invoker cast Branns Communicator Replacement'),
('992900', '0', '15', '57093', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Archaeologist Andorin - Invoker cast Branns Communicator Replacement');
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `condition_id`) VALUES
(9854, 0, 0, 'I lost Brann''s Communicator and need a replacement.', 1, 1, -1, 0, 985400, 0, 0, NULL, 3094),
(9929, 0, 0, 'I lost Brann''s Communicator and need a replacement.', 1, 1, -1, 0, 992900, 0, 0, NULL, 3095);
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `comments`) VALUES
('3085', '16', '40971', '1', ''), ('3086', '8', '12910', '0', ''), ('3087', '8', '12855', '0', ''),
('3088', '9', '12910', '2', ''), ('3089', '9', '12855', '2', ''), ('3090', '-1', '3085', '3086', ''),
('3091', '-1', '3085', '3087', ''), ('3092', '-1', '3085', '3088', ''), ('3093', '-1', '3085', '3089', ''),
('3094', '-2', '3090', '3092', ''), ('3095', '-2', '3091', '3093', '');

UPDATE creature_template SET UnitFlags=UnitFlags|64 WHERE entry IN(15348);
UPDATE creature_template SET UnitFlags=UnitFlags|64 WHERE entry IN(15341);
UPDATE creature_template SET UnitFlags=UnitFlags|64 WHERE entry IN(15385,15386,15388,15389,15390,15391,15392);
UPDATE creature_template SET UnitFlags=UnitFlags|64 WHERE entry IN(15340);
UPDATE creature_template SET UnitFlags=UnitFlags|64,Faction=16 WHERE entry IN(15527);
UPDATE creature_template SET UnitFlags=UnitFlags|64 WHERE entry IN(15370);
UPDATE creature_template SET UnitFlags=UnitFlags|64 WHERE entry IN(15369);
UPDATE creature_template SET UnitFlags=UnitFlags|64 WHERE entry IN(15339);
UPDATE creature_template SET UnitFlags=UnitFlags|(33280+4096), ExtraFlags=0 WHERE entry IN(15471);
UPDATE creature_template SET UnitFlags=UnitFlags|(33280+4096) WHERE entry IN(15473);

UPDATE `gameobject` SET `position_x` = '4671.726', `position_y` = '2512.325', `position_z` = '240.0145', `orientation` = '0.802851', `rotation2` = '0.3907309', `rotation3` = '0.920505' WHERE `guid` =72028;

DELETE FROM `creature` WHERE `guid` IN (49288) AND `id`=20114;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`) VALUES
(49288, 20114, 530, 1, 1, 0, 0, 3923.06, 3873.36, 180.752, 0, 60, 60, 0, 0, 1, 0, 0);
UPDATE `creature_template_addon` SET `auras` = '34858 34832' WHERE `entry` =20114;
UPDATE `creature_template_addon` SET `auras` = '34840 34832' WHERE `entry` =20086;

UPDATE `gameobject_template` SET `data1` = '179486' WHERE `entry` IN (179487,179488,179489);
DELETE FROM `gameobject_loot_template` WHERE `entry` IN (179486,179487,179488,179489);
INSERT INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(179486, 422, 0, 2, 1, 1, 0, 'Dwarven Mild'), (179486, 929, 30, 1, 1, 1, 0, 'Healing Potion'), (179486, 1205, 0, 2, 1, 1, 0, 'Melon Juice'),
(179486, 1206, 1, 1, 1, 1, 0, 'Moss Agate'), (179486, 1705, 1, 1, 1, 1, 0, 'Lesser Moonstone'), (179486, 1707, 0, 2, 1, 1, 0, ''),
(179486, 1708, 0, 2, 1, 1, 0, ''), (179486, 1710, 15, 1, 1, 1, 0, ''), (179486, 3770, 0, 2, 1, 1, 0, 'Mutton Chop'),
(179486, 3771, 0, 2, 1, 1, 0, ''), (179486, 4538, 0, 2, 1, 1, 0, 'Snapvine Watermelon'), (179486, 4539, 0, 2, 1, 1, 0, ''),
(179486, 4542, 0, 2, 1, 1, 0, 'Moist Cornbread'), (179486, 4544, 0, 2, 1, 1, 0, ''), (179486, 4606, 0, 2, 1, 1, 0, 'Spongy Morel'),
(179486, 4607, 0, 2, 1, 1, 0, '');
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(70744, 22223, 0, 1, -4152.31, -1137.39, 167.103, 5.37559, -0.0070591, 0.00512886, -0.438354, 0.89876, 180, 180, 100, 1),
(70756, 22223, 0, 1, -2866.83, -1447.43, 8.64641, 2.63542, 0, 0, 0, 0, 180, 180, 100, 1),
(70757, 22223, 0, 1, -2667.69, -2384.03, 87.6738, -2.05951, 0, 0, 0, 0, 180, 180, 100, 1),
(31416, 22223, 0, 1, -2559.14, -2373.68, 77.6498, 1.12571, 0, 0, 0, 0, 180, 180, 100, 1),
(31417, 22223, 0, 1, -5387.93, -3021.94, 327.62, -1.16067, 0, 0, 0, 0, 180, 180, 100, 1),
(31418, 22223, 0, 1, -5309.71, -2980.72, 322.161, 1.1868, 0, 0, 0, 0, 180, 180, 100, 1),
(31419, 22223, 0, 1, -5345.58, -2909.31, 321.346, 2.42598, 0, 0, 0, 0, 180, 180, 100, 1),
(31420, 22223, 0, 1, -5278.2, -2960.83, 338.777, 1.98092, 0, 0, 0, 0, 180, 180, 100, 1),
(31421, 22223, 0, 1, -5219.02, -3083, 300.156, 2.73142, 0, 0, 0, 0, 180, 180, 100, 1),
(31422, 22223, 0, 1, 47.0671, -2093.99, 111.269, -1.97225, 0, 0, 0, 0, 180, 180, 100, 1);
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(70747, 29150, 0, 1, -4118.35, -1259.76, 142.855, 0.401425, 0, 0, 0.199367, 0.979925, 180, 180, 100, 1),
(31423, 29150, 0, 1, -2561.86, -2343.63, 80.4973, -1.85878, 0, 0, 0, 0, 180, 180, 100, 1),
(31424, 29150, 0, 1, -5362.05, -3024.74, 320.128, 1.39626, 0, 0, 0, 0, 180, 180, 100, 1),
(31425, 29150, 0, 1, -5286.71, -2941.47, 330.654, -1.77151, 0, 0, 0, 0, 180, 180, 100, 1),
(31426, 29151, 0, 1, -4119.26, -1260.4, 142.855, 3.54302, 0, 0, -0.979924, 0.19937, 180, 180, 100, 1),
(31427, 29151, 0, 1, -2561.78, -2342.52, 80.4973, 1.28282, 0, 0, 0, 0, 180, 180, 100, 1);
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(2136, 179488, 0, 1, -3221.37, -1020.48, 7.92467, 3.61284, 0, 0, -0.972369, 0.233448, 180, 180, 100, 1),
(2476, 179488, 0, 1, -3208.96, -1023, 10.0995, 0, 0, 0, 0, 1, 180, 180, 100, 1),
(5156, 179488, 0, 1, -3053.2, -988.194, 8.76575, 4.10152, 0, 0, -0.887011, 0.461749, 180, 180, 100, 1),
(5174, 179488, 0, 1, -538.906, -1586.92, 64.7883, 1.79769, 0, 0, 0.782608, 0.622515, 180, 180, 100, 1),
(6281, 179488, 0, 1, -477.884, -1472.52, 87.8191, 2.70526, 0, 0, 0.976295, 0.216442, 180, 180, 100, 1),
(7606, 179488, 0, 1, -404.957, -1336.19, 64.8962, 3.21142, 0, 0, -0.999391, 0.0349061, 180, 180, 100, 1),
(12401, 179488, 0, 1, -3291.57, -953.24, 9.11977, 3.12412, 0, 0, 0.999962, 0.00873464, 180, 180, 100, 1),
(12836, 179488, 0, 1, -3287.25, -943.397, 8.92945, 2.05949, 0, 0, 0.857167, 0.515038, 180, 180, 100, 1),
(12855, 179488, 0, 1, -3241.39, -1137.58, 8.76748, 2.96706, 0, 0, 0, 0, 180, 180, 100, 1),
(15170, 179488, 0, 1, -3198.15, -941.809, 9.54875, 2.80998, 0, 0, 0, 0, 180, 180, 100, 1),
(15639, 179488, 0, 1, -3132.61, -1061.62, 9.86605, -0.331612, 0, 0, 0, 0, 180, 180, 100, 1),
(15911, 179488, 0, 1, -3281.44, -956.815, 8.60494, 0.10472, 0, 0, 0, 0, 180, 180, 100, 1),
(16648, 179488, 0, 1, -3050.98, -981.896, 8.94378, 3.01942, 0, 0, 0, 0, 180, 180, 100, 1),
(947, 179488, 0, 1, -434.04, -1425.26, 99.7115, -1.43117, 0, 0, 0, 0, 180, 180, 100, 1),
(5507, 179488, 0, 1, -528.988, -1438.78, 65.8266, -0.628319, 0, 0, 0, 0, 180, 180, 100, 1),
(6739, 179488, 0, 1, -432.836, -1412.54, 98.9434, 1.74533, 0, 0, 0, 0, 180, 180, 100, 1),
(8733, 179488, 0, 1, -452.439, -1591.42, 64.9381, 2.72271, 0, 0, 0, 0, 180, 180, 100, 1),
(9830, 179488, 0, 1, -464.596, -1510.61, 89.6376, 2.47837, 0, 0, 0, 0, 180, 180, 100, 1),
(12452, 179488, 1, 1, 929.189, -277.671, 18.1227, -2.37365, 0, 0, 0, 0, 180, 180, 100, 1),
(12479, 179488, 1, 1, 990.512, -375.106, 8.20421, 0.593412, 0, 0, 0, 0, 180, 180, 100, 1),
(13037, 179488, 1, 1, 977.922, -379.317, 8.87022, -1.65806, 0, 0, 0, 0, 180, 180, 100, 1),
(13124, 179488, 1, 1, 861.138, -294.96, 18.0027, -0.383972, 0, 0, 0, 0, 180, 180, 100, 1),
(13287, 179488, 1, 1, 962.366, -351.622, 17.3785, -0.523599, 0, 0, 0, 0, 180, 180, 100, 1);
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(14500, 179486, 0, 1, -584.293, -1474.19, 53.3182, -0.453786, 0, 0, 0, 0, 180, 180, 100, 1),
(14678, 179486, 0, 1, -549.894, -1460.29, 52.6552, 3.05433, 0, 0, 0, 0, 180, 180, 100, 1),
(15506, 179486, 0, 1, -580.359, -1460.68, 52.4409, 1.13446, 0, 0, 0, 0, 180, 180, 100, 1),
(15520, 179486, 0, 1, -545.406, -1413.07, 53.4511, -0.593412, 0, 0, 0, 0, 180, 180, 100, 1),
(16813, 179486, 0, 1, -507.908, -1585.03, 52.818, 1.23918, 0, 0, 0, 0, 180, 180, 100, 1),
(18991, 179486, 1, 1, 1259.45, 18.4913, -6.00124, 2.42601, 0, 0, 0, 0, 180, 180, 100, 1),
(31385, 179486, 1, 1, 1174.1, 328.936, 25.3013, -0.366519, 0, 0, 0, 0, 180, 180, 100, 1),
(31388, 179486, 1, 1, 1074.21, -67.168, 9.75521, -0.383972, 0, 0, 0, 0, 180, 180, 100, 1),
(31405, 179486, 1, 1, 1303.87, -263.335, 2.5265, 2.82743, 0, 0, 0, 0, 180, 180, 100, 1),
(31406, 179486, 1, 1, 1107.43, 249.567, 16.722, -1.0472, 0, 0, 0, 0, 180, 180, 100, 1),
(31407, 179486, 1, 1, 1239.45, 222.891, 14.8428, -3.10669, 0, 0, 0, 0, 180, 180, 100, 1),
(31408, 179486, 1, 1, 1067.31, -245.852, 4.23911, -0.05236, 0, 0, 0, 0, 180, 180, 100, 1),
(31409, 179486, 1, 1, 1329.49, -181.49, 5.93555, 2.58309, 0, 0, 0, 0, 180, 180, 100, 1),
(31410, 179486, 1, 1, 1185.02, 173.503, 2.90554, -0.628319, 0, 0, 0, 0, 180, 180, 100, 1),
(31411, 179486, 1, 1, 1202.77, -239.405, -20.4256, 2.32129, 0, 0, 0, 0, 180, 180, 100, 1),
(31412, 179486, 1, 1, 1249.3, 154.684, 4.96865, -1.02974, 0, 0, 0, 0, 180, 180, 100, 1),
(31413, 179486, 0, 1, -475.535, -1576.44, 53.669, 2.74017, 0, 0, 0, 0, 180, 180, 100, 1),
(31414, 179486, 0, 1, -541.082, -1515.59, 53.3401, -2.35619, 0, 0, 0, 0, 180, 180, 100, 1),
(31415, 179486, 0, 1, -489.764, -1554.22, 53.2001, -2.09439, 0, 0, 0, 0, 180, 180, 100, 1),
(2431, 179486, 0, 1, -3260.83, -1094.46, 7.53431, 0.750491, 0, 0, 0.366501, 0.930418, 180, 180, 100, 1),
(2907, 179486, 0, 1, -3139.77, -1226.99, 7.55713, 4.57276, 0, 0, -0.754709, 0.656059, 180, 180, 100, 1),
(3028, 179486, 0, 1, -3092.38, -1276.26, 7.68682, 0.191985, 0, 0, 0.0958452, 0.995396, 180, 180, 100, 1),
(4217, 179486, 0, 1, -450.625, -1358.9, 52.4847, 4.11898, 0, 0, -0.882947, 0.469473, 180, 180, 100, 1),
(4547, 179486, 0, 1, -590.885, -1479.43, 53.846, 2.75761, 0, 0, 0.981627, 0.190812, 180, 180, 100, 1),
(5751, 179486, 0, 1, -3138.7, -981.94, 7.86911, 3.21142, 0, 0, -0.999391, 0.0349061, 180, 180, 100, 1),
(7229, 179486, 0, 1, -3159.01, -1022.51, 7.19671, 5.0091, 0, 0, -0.594823, 0.803857, 180, 180, 100, 1),
(8683, 179486, 0, 1, -3187.43, -1176.53, 7.97092, 0.785398, 0, 0, 0, 0, 180, 180, 100, 1),
(9829, 179486, 0, 1, -3144.5, -1101.39, 8.22152, 1.3439, 0, 0, 0, 0, 180, 180, 100, 1),
(10100, 179486, 0, 1, -3297.66, -908.377, 0.793502, 1.81514, 0, 0, 0, 0, 180, 180, 100, 1),
(14934, 179486, 0, 1, -3006.84, -1297.63, 9.81489, -0.715585, 0, 0, 0, 0, 180, 180, 100, 1),
(15207, 179486, 0, 1, -3123.85, -1240.93, 2.26409, -0.453786, 0, 0, 0, 0, 180, 180, 100, 1),
(16167, 179486, 0, 1, -3027.38, -1348.24, 2.4894, -1.6057, 0, 0, 0, 0, 180, 180, 100, 1);
DELETE FROM `pool_gameobject_template` WHERE `id` = 179488;
DELETE FROM `pool_gameobject_template` WHERE `id` = 179486;
UPDATE `pool_template` SET `max_limit` = '12' WHERE `entry` =378;
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES
(13124, 378, 0, 'Stonetalon Mountains - Battered Footlocker 179488'),
(12452, 378, 0, 'Stonetalon Mountains - Battered Footlocker 179488'), 
(12479, 378, 0, 'Stonetalon Mountains - Battered Footlocker 179488'),
(13037, 378, 0, 'Stonetalon Mountains - Battered Footlocker 179488'),
(13287, 378, 0, 'Stonetalon Mountains - Battered Footlocker 179488'),
(31406, 378, 0, 'Stonetalon Mountains - Battered Footlocker 179486'),
(18991, 378, 0, 'Stonetalon Mountains - Battered Footlocker 179486'),
(31385, 378, 0, 'Stonetalon Mountains - Battered Footlocker 179486'),
(31388, 378, 0, 'Stonetalon Mountains - Battered Footlocker 179486'),
(31405, 378, 0, 'Stonetalon Mountains - Battered Footlocker 179486'),
(31407, 378, 0, 'Stonetalon Mountains - Battered Footlocker 179486'),
(31408, 378, 0, 'Stonetalon Mountains - Battered Footlocker 179486'),
(31409, 378, 0, 'Stonetalon Mountains - Battered Footlocker 179486'),
(31410, 378, 0, 'Stonetalon Mountains - Battered Footlocker 179486'),
(31411, 378, 0, 'Stonetalon Mountains - Battered Footlocker 179486'),
(31412, 378, 0, 'Stonetalon Mountains - Battered Footlocker 179486');
UPDATE `pool_template` SET `max_limit` = '13' WHERE `entry` =379;
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES
(947, 379, 0, 'Hillsbrad Foothills - Battered Footlocker 179488'),
(5507, 379, 0, 'Hillsbrad Foothills - Battered Footlocker 179488'), 
(6739, 379, 0, 'Hillsbrad Foothills - Battered Footlocker 179488'),
(8733, 379, 0, 'Hillsbrad Foothills - Battered Footlocker 179488'),
(9830, 379, 0, 'Hillsbrad Foothills - Battered Footlocker 179488'),
(5174, 379, 0, 'Hillsbrad Foothills - Battered Footlocker 179488'),
(6281, 379, 0, 'Hillsbrad Foothills - Battered Footlocker 179488'),
(7606, 379, 0, 'Hillsbrad Foothills - Battered Footlocker 179488'),
(4217, 379, 0, 'Hillsbrad Foothills - Battered Footlocker 179486'),
(4547, 379, 0, 'Hillsbrad Foothills - Battered Footlocker 179486'),
(31413, 379, 0, 'Hillsbrad Foothills - Battered Footlocker 179486'),
(31414, 379, 0, 'Hillsbrad Foothills - Battered Footlocker 179486'),
(31415, 379, 0, 'Hillsbrad Foothills - Battered Footlocker 179486'),
(14500, 379, 0, 'Hillsbrad Foothills - Battered Footlocker 179486'),
(14678, 379, 0, 'Hillsbrad Foothills - Battered Footlocker 179486'),
(15506, 379, 0, 'Hillsbrad Foothills - Battered Footlocker 179486'),
(15520, 379, 0, 'Hillsbrad Foothills - Battered Footlocker 179486'),
(16813, 379, 0, 'Hillsbrad Foothills - Battered Footlocker 179486');
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES ('5689', '16', 'Battered Footlocker');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES
(2136, 5689, 0, 'Wetlands - Battered Footlocker 179488'),
(2476, 5689, 0, 'Wetlands - Battered Footlocker 179488'), 
(5156, 5689, 0, 'Wetlands - Battered Footlocker 179488'),
(12401, 5689, 0, 'Wetlands - Battered Footlocker 179488'),
(12836, 5689, 0, 'Wetlands - Battered Footlocker 179488'),
(12855, 5689, 0, 'Wetlands - Battered Footlocker 179488'),
(15170, 5689, 0, 'Wetlands - Battered Footlocker 179488'),
(15639, 5689, 0, 'Wetlands - Battered Footlocker 179488'),
(15911, 5689, 0, 'Wetlands - Battered Footlocker 179488'),
(16648, 5689, 0, 'Wetlands - Battered Footlocker 179488'),
(10100, 5689, 0, 'Wetlands - Battered Footlocker 179486'),
(5751, 5689, 0, 'Wetlands - Battered Footlocker 179486'), 
(7229, 5689, 0, 'Wetlands - Battered Footlocker 179486'),
(8683, 5689, 0, 'Wetlands - Battered Footlocker 179486'),
(9829, 5689, 0, 'Wetlands - Battered Footlocker 179486'),
(14934, 5689, 0, 'Wetlands - Battered Footlocker 179486'),
(15207, 5689, 0, 'Wetlands - Battered Footlocker 179486'),
(16167, 5689, 0, 'Wetlands - Battered Footlocker 179486'),
(2431, 5689, 0, 'Wetlands - Battered Footlocker 179486'),
(2907, 5689, 0, 'Wetlands - Battered Footlocker 179486'),
(3028, 5689, 0, 'Wetlands - Battered Footlocker 179486');

REPLACE INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(31428, 19018, 0, 1, -2646.41, -1246.56, -14.4197, 0.0698117, 0, 0, 0.0348988, 0.999391, 180, 180, 100, 1),
(31429, 19018, 0, 1, -2631.94, -1345.48, -12.8758, 1.48353, 0, 0, 0.67559, 0.737278, 180, 180, 100, 1),
(31430, 19018, 0, 1, -3772.39, -1127.48, -32.052, 5.48033, 0, 0, -0.390731, 0.920505, 180, 180, 100, 1),
(31431, 19018, 0, 1, -2506.35, -1474.37, -28.145, 1.36136, 0, 0, 0, 0, 180, 180, 100, 1);
UPDATE `gameobject` SET `spawntimesecsmin` = '180', `spawntimesecsmax` = '180' WHERE `id` IN (19018,184740,179498);

REPLACE INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(31432, 176635, 1, 1, 1, -2019.89, 3268.79, -25.8445, 0.737467, 0, 0, 0.360434, 0.932785, 180, 180, 100, 1),
(31433, 176635, 1, 1, 1, -1897.24, 3251.35, -44.828, 1.94227, 0, 0, 0.825527, 0.564363, 180, 180, 100, 1),
(31434, 176635, 1, 1, 1, -1888.22, 3340.69, -70.0776, 4.09113, 0, 0, 0.889399, -0.457133, 180, 180, 100, 1),
(31435, 176635, 1, 1, 1, -1658.57, 3314.88, -44.8758, 2.91303, 0, 0, 0.993477, 0.114033, 180, 180, 100, 1),
(31436, 176635, 1, 1, 1, -1648.51, 3317.45, -43.9276, 1.13489, 0, 0, 0.537479, 0.843277, 180, 180, 100, 1),
(31437, 176635, 1, 1, 1, -1799.02, 3201.89, -25.3798, 3.21777, 0, 0, 0.999275, -0.0380795, 180, 180, 100, 1);
UPDATE `gameobject` SET `spawntimesecsmin` = '180', `spawntimesecsmax` = '180' WHERE `id` =176582;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (15864, 1, 'Shellfish Trap 1+2');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES
(22502, 15864, 0, 'Shellfish Trap 1'), (31432, 15864, 0, 'Shellfish Trap 2');
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (15865, 1, 'Shellfish Trap 1+2');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES
(22503, 15865, 0, 'Shellfish Trap 1'), (31433, 15865, 0, 'Shellfish Trap 2');
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (15866, 1, 'Shellfish Trap 1+2');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES
(22504, 15866, 0, 'Shellfish Trap 1'), (31434, 15866, 0, 'Shellfish Trap 2');
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (15867, 1, 'Shellfish Trap 1+2');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES
(22505, 15867, 0, 'Shellfish Trap 1'), (31435, 15867, 0, 'Shellfish Trap 2');
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (15868, 1, 'Shellfish Trap 1+2');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES
(22506, 15868, 0, 'Shellfish Trap 1'), (31436, 15868, 0, 'Shellfish Trap 2');
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (15869, 1, 'Shellfish Trap 1+2');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES
(22507, 15869, 0, 'Shellfish Trap 1'), (31437, 15869, 0, 'Shellfish Trap 2');

UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = '0', `groupid` =  '1' WHERE `entry` IN (2744,19017,19018) AND `item` IN (4611,4655,5503,5504);

DELETE FROM `gameobject_loot_template` WHERE `entry` IN (179490,179491,179492,179493);
INSERT INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(179490, 1529, 1, 0, 1, 1, 0, 'Jade'), (179490, 1645, 0, 1, 1, 1, 0, 'Moonberry Juice'), (179490, 1707, 0, 1, 1, 1, 0, 'Stormwind Brie'),
(179490, 1708, 0, 1, 1, 1, 0, 'Sweet Nectar'), (179490, 1710, 25, 0, 1, 1, 0, 'Greater Healing Potion'), (179490, 3771, 0, 1, 1, 1, 0, 'Wild Hog Shank'),
(179490, 3864, 1, 0, 1, 1, 0, 'Citrine'), (179490, 3927, 0, 1, 1, 1, 0, 'Fine Aged Cheddar'), (179490, 3928, 25, 0, 1, 1, 0, 'Superior Healing Potion'),
(179490, 4539, 0, 1, 1, 1, 0, 'Goldenbark Apple'), (179490, 4544, 0, 1, 1, 1, 0, 'Mulgore Spice Bread'), (179490, 4599, 0, 1, 1, 1, 0, 'Cured Ham Steak'),
(179490, 4601, 0, 1, 1, 1, 0, 'Soft Banana Bread'), (179490, 4602, 0, 1, 1, 1, 0, 'Moon Harvest Pumpkin'), (179490, 4607, 0, 1, 1, 1, 0, 'Delicious Cave Mold'),
(179490, 4608, 0, 1, 1, 1, 0, 'Raw Black Truffle');
UPDATE `gameobject_template` SET `data1` = '179490' WHERE `entry` IN (179491,179492,179493);

DELETE FROM `gameobject_loot_template` WHERE `entry` IN (179494,179496,179497);
INSERT INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(179494, 1645, 0, 2, 1, 1, 0, 'Moonberry Juice'), (179494, 1707, 0, 2, 1, 1, 0, 'Stormwind Brie'), (179494, 1708, 0, 2, 1, 1, 0, 'Sweet Nectar'),
(179494, 1710, 25, 1, 1, 1, 0, 'Greater Healing Potion'), (179494, 3771, 0, 2, 1, 1, 0, 'Wild Hog Shank'), (179494, 3864, 1, 1, 1, 1, 0, ''),
(179494, 3927, 0, 2, 1, 1, 0, 'Fine Aged Cheddar'), (179494, 3928, 25, 1, 1, 1, 0, 'Superior Healing Potion'), (179494, 4539, 0, 2, 1, 1, 0, 'Goldenbark Apple'),
(179494, 4544, 0, 2, 1, 1, 0, 'Mulgore Spice Bread'), (179494, 4599, 0, 2, 1, 1, 0, 'Cured Ham Steak'), (179494, 4601, 0, 2, 1, 1, 0, 'Soft Banana Bread'),
(179494, 4602, 0, 2, 1, 1, 0, 'Moon Harvest Pumpkin'), (179494, 4607, 0, 2, 1, 1, 0, 'Delicious Cave Mold'), (179494, 4608, 0, 2, 1, 1, 0, 'Raw Black Truffle'),
(179494, 7909, 1, 1, 1, 1, 0, 'Aquamarine'), (179494, 7910, 1, 0, -7910, 1, 0, '');
UPDATE `gameobject_template` SET `data1` = '179494' WHERE `entry` IN (179496,179497);
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(11536, 179494, 0, 1, -6856.14, -1180.4, 185.222, -0.663225, 0, 0, 0, 0, 180, 180, 100, 1),
(317, 179494, 0, 1, -6667.9, -1224.41, 179.759, 1.79769, 0, 0, 0, 0, 180, 180, 100, 1),
(7752, 179494, 0, 1, -6782.21, -1170.7, 190.923, -2.19912, 0, 0, 0, 0, 180, 180, 100, 1);
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(13643, 179496, 0, 1, -6521.48, -1343.77, 208.739, -1.71042, 0, 0, 0, 0, 180, 180, 100, 1),
(4833, 179496, 0, 1, -6752.12, -1368.35, 194.723, -2.02458, 0, 0, 0, 0, 180, 180, 100, 1),
(8868, 179496, 0, 1, -6482.19, -1369.14, 212.107, 1.55334, 0, 0, 0, 0, 180, 180, 100, 1),
(31438, 179496, 0, 1, -6563.62, -1280.27, 208.743, -2.63545, 0, 0, 0, 0, 180, 180, 100, 1),
(31439, 179496, 0, 1, -6559.39, -1303.17, 208.742, 2.94961, 0, 0, 0, 0, 180, 180, 100, 1);
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = '0', `groupid` = '1' WHERE `entry` = 179498 AND `item` IN (3928,8766,8932,8948,8950,8952,8953);
DELETE FROM `pool_gameobject_template` WHERE `id` = 179496;
UPDATE `pool_template` SET `max_limit` = '5' WHERE `entry` =348;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (5690, 3, 'Dented Footlocker');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES ('349', '348', '0', 'Tanaris - Dented Footlocker'), ('369', '348', '0', 'Tanaris - Dented Footlocker'), ('11396', '348', '0', 'Tanaris - Dented Footlocker'), ('13748', '348', '0', 'Tanaris - Dented Footlocker'),
('12511', '348', '0', 'Tanaris - Dented Footlocker'), ('12512', '348', '0', 'Tanaris - Dented Footlocker'), ('12506', '348', '0', 'Tanaris - Dented Footlocker'), ('1365', '348', '0', 'Tanaris - Dented Footlocker');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES ('13643', '5690', '0', 'Tanaris - Dented Footlocker'), ('4833', '5690', '0', 'Tanaris - Dented Footlocker'), ('8868', '5690', '0', 'Tanaris - Dented Footlocker'),
('31438', '5690', '0', 'Tanaris - Dented Footlocker'), ('31439', '5690', '0', 'Tanaris - Dented Footlocker');

DELETE FROM `creature_loot_template` WHERE `entry` IN (4856,4851,4846,4845,4844) AND `item` = 9427;
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('9427', '9465', '0', '1', '1', '1', '0', '');

REPLACE INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(55183, 124389, 0, 1, 1, -6279.4, -2963.6, 223.618, 0.331613, 0, 0, 0.165048, 0.986286, 120, 120, 100, 1);
UPDATE `creature` SET `position_x` = '-4618.8', `position_y` = '-1300.12', `position_z` = '503.465', `orientation` = '0.488692', `spawntimesecsmin` = '180', `spawntimesecsmax` = '180' WHERE `guid` =9693;
UPDATE `creature` SET `position_x` = '-6272.73', `position_y` = '-2939.81', `position_z` = '222.31', `orientation` = '5.72468' WHERE `guid` =53354;

REPLACE INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(58, 3695, 1, 1, 2697.92, 1456.44, 234.873, -1.0472, 0, 0, 0, 0, 3600, 7200, 100, 1),
(200, 3695, 0, 1, -674.383, -438.202, 31.6388, -2.72271, 0, 0, 0, 0, 3600, 7200, 100, 1),
(313, 3695, 0, 1, -336.972, -2.99089, 55.9979, 0.471239, 0, 0, 0, 0, 3600, 7200, 100, 1),
(1821, 3695, 0, 1, -1345.93, -1232.94, 49.9038, -1.74533, 0, 0, 0, 0, 3600, 7200, 100, 1),
(1853, 3695, 0, 1, -910.543, -1058.96, 30.3488, 1.16937, 0, 0, 0, 0, 3600, 7200, 100, 1),
(2690, 3695, 0, 1, -3048.5, -1346.18, 6.69699, 0.506145, 0, 0, 0.25038, 0.968148, 3600, 7200, 100, 1),
(2814, 3695, 0, 1, -9710.18, -3166.36, 58.6868, -1.6057, 0, 0, 0, 0, 3600, 7200, 100, 1),
(3110, 3695, 0, 1, -9195.45, -2873.63, 113.036, -0.436333, 0, 0, 0, 0, 3600, 7200, 100, 1),
(3227, 3695, 0, 1, -9371.79, -3082.53, 140.675, 3.01942, 0, 0, 0, 0, 3600, 7200, 100, 1),
(3553, 3695, 0, 1, -10326.5, 354.035, 60.7475, 2.35619, 0, 0, 0, 0, 3600, 7200, 100, 1),
(3616, 3695, 0, 1, -10585.9, -1205.39, 28.4989, 0.802851, 0, 0, 0, 0, 3600, 7200, 100, 1),
(3760, 3695, 0, 1, -11148.2, -849.795, 77.2473, 1.46608, 0, 0, 0, 0, 3600, 7200, 100, 1),
(4617, 3695, 0, 1, -11087.6, -543.905, 32.4458, -3.12414, 0, 0, 0, 0, 3600, 7200, 100, 1),
(4831, 3695, 0, 1, -10342.2, -1551.89, 92.6508, -1.65806, 0, 0, 0, 0, 3600, 7200, 100, 1),
(5178, 3695, 0, 1, -11022.4, -1108.87, 40.6748, -1.32645, 0, 0, 0, 0, 3600, 7200, 100, 1),
(5527, 3695, 0, 1, -3317.71, -910.537, -0.696205, 5.18363, 0, 0, -0.522498, 0.852641, 3600, 7200, 100, 1),
(6153, 3695, 0, 1, -3720.13, -1282.39, -0.681436, 1.13446, 0, 0, 0, 0, 3600, 7200, 100, 1),
(6256, 3695, 0, 1, -2652.25, -2442.3, 79.8937, -0.663225, 0, 0, 0, 0, 3600, 7200, 100, 1),
(6319, 3695, 0, 1, -3381.16, -2943.47, 16.509, 1.67552, 0, 0, 0, 0, 3600, 7200, 100, 1),
(6444, 3695, 0, 1, -3151.69, -1057.31, 7.35313, -0.959931, 0, 0, 0, 0, 3600, 7200, 100, 1),
(7729, 3695, 0, 1, -2987.1, -1067.95, 6.72834, -1.98968, 0, 0, 0, 0, 3600, 7200, 100, 1),
(7757, 3695, 0, 1, -2854.5, -1475.8, 10.1537, -0.715585, 0, 0, 0, 0, 3600, 7200, 100, 1),
(8001, 3695, 0, 1, -3118.81, -916.972, -0.645712, -0.034907, 0, 0, 0, 0, 3600, 7200, 100, 1),
(8451, 3695, 0, 1, -2863.07, -2948.95, 33.7046, 0.488692, 0, 0, 0, 0, 3600, 7200, 100, 1),
(8639, 3695, 0, 1, -3678.28, -891.935, 10.0351, -0.244346, 0, 0, 0, 0, 3600, 7200, 100, 1),
(8736, 3695, 0, 1, -3396.97, -2265.16, 51.9177, -1.48353, 0, 0, 0, 0, 3600, 7200, 100, 1),
(8741, 3695, 1, 1, -4084.18, -2386.98, 124.743, -2.56563, 0, 0, 0, 0, 3600, 7200, 100, 1),
(10157, 3695, 0, 1, 177.03, 217.541, 41.3711, -1.64061, 0, 0, 0, 0, 3600, 7200, 100, 1),
(12671, 3695, 0, 1, 11.3366, -337.718, 131.157, -2.3911, 0, 0, 0, 0, 3600, 7200, 100, 1),
(12791, 3695, 1, 1, 2751.67, 687.588, 104.479, -2.37365, 0, 0, 0, 0, 3600, 7200, 100, 1),
(13188, 3695, 1, 1, 3179.82, -280.294, 121.935, -1.01229, 0, 0, 0, 0, 3600, 7200, 100, 1),
(13963, 3695, 1, 1, 2506.74, -3429.32, 104.121, -2.44346, 0, 0, 0, 0, 3600, 7200, 100, 1),
(14166, 3695, 1, 1, 3351.38, 990.952, 4.481, 1.44862, 0, 0, 0, 0, 3600, 7200, 100, 1),
(15857, 3695, 1, 1, 3268.22, -601.467, 161.684, -1.22173, 0, 0, 0, 0, 3600, 7200, 100, 1),
(16334, 3695, 1, 1, 2471.38, -2152.43, 202.284, 2.23402, 0, 0, 0, 0, 3600, 7200, 100, 1),
(16432, 3695, 90, 1, -910.038, 357.305, -272.596, -1.76278, 0, 0, 0.771625, -0.636078, 3600, 7200, 100, 1),
(753, 3695, 33, 1, -257.011, 2279.7, 74.9993, 1.23918, 0, 0, 0.580703, 0.814116, 3600, 7200, 100, 1),
(767, 3695, 33, 1, -206.199, 2249.48, 76.2013, 1.16937, 0, 0, 0.551937, 0.833886, 3600, 7200, 100, 1);
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(10989, 153473, 0, 1, 1, 3081.58, -565.609, 131.491, 2.89725, 0, 0, 0.992546, 0.121868, 3600, 7200, 100, 1),
(11727, 153473, 0, 1, 1, 2166.62, -561.002, 79.265, 2.00713, 0, 0, 0.843392, 0.537299, 3600, 7200, 100, 1),
(14292, 153473, 0, 1, 1, 1782.73, 698.258, 45.757, -1.91986, 0, 0, -0.819151, 0.573577, 3600, 7200, 100, 1);
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(3269, 153472, 0, 1, 1, 2277.38, 254.764, 34.1961, -2.40855, 0, 0, -0.93358, 0.35837, 3600, 7200, 100, 1),
(9076, 153472, 0, 1, 1, 2948.7, 727.587, 103.686, 2.49582, 0, 0, 0.948324, 0.317305, 3600, 7200, 100, 1),
(16718, 153472, 0, 1, 1, 2904.5, 385.574, 30.3958, -2.77507, 0, 0, -0.983255, 0.182237, 3600, 7200, 100, 1);
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(2443, 153471, 0, 1, 1, 2317.03, -1867.21, 91.1002, -2.09439, 0, 0, -0.866024, 0.500002, 3600, 7200, 100, 1),
(3776, 153471, 0, 1, 1, 2833.18, -1430.73, 146.347, -0.977384, 0, 0, -0.469471, 0.882948, 3600, 7200, 100, 1),
(4517, 153471, 0, 1, 1, 1999.12, -2418.34, 60.1171, 1.43117, 0, 0, 0.656059, 0.75471, 3600, 7200, 100, 1),
(5166, 153471, 0, 1, 1, 1879.78, -1331.77, 59.8191, -3.01942, 0, 0, -0.998135, 0.0610484, 3600, 7200, 100, 1),
(5459, 153471, 0, 1, 1, 1269.15, -1584.73, 59.488, 0.314159, 0, 0, 0.156434, 0.987688, 3600, 7200, 100, 1),
(6203, 153471, 0, 1, 1, 2558.21, -1812.66, 34.1335, -3.12414, 0, 0, -0.999962, 0.0087262, 3600, 7200, 100, 1),
(10591, 153471, 0, 1, 1, 2713.43, -1637.06, 131.475, 0.174533, 0, 0, 0.0871558, 0.996195, 3600, 7200, 100, 1),
(16235, 153471, 0, 1, 1, 1547.82, -1440.9, 65.0662, 2.37365, 0, 0, 0.927184, 0.374606, 3600, 7200, 100, 1);
DELETE FROM `gameobject` WHERE `guid` IN (13381,13695,13814,14406,14623,15627,15636);
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(892, 3659, 0, 1, -1172.82, 102.157, 0.00608, 2.68781, 0, 0, 0, 0, 3600, 7200, 100, 1),
(1293, 3659, 0, 1, -1084.94, -105.958, 0.012003, 3.05433, 0, 0, 0, 0, 3600, 7200, 100, 1),
(1458, 3659, 0, 1, -470.151, -1324.74, 52.6928, -1.95477, 0, 0, 0, 0, 3600, 7200, 100, 1),
(2353, 3659, 0, 1, -876.26, 213.034, 8.80425, 1.46608, 0, 0, 0, 0, 3600, 7200, 100, 1),
(2576, 3659, 0, 1, -1429.34, -1051.7, -0.013546, 1.98968, 0, 0, 0, 0, 3600, 7200, 100, 1),
(3466, 3659, 0, 1, -59.0124, -958.949, 54.274, 1.36136, 0, 0, 0, 0, 3600, 7200, 100, 1),
(3692, 3659, 0, 1, -467.071, -1619.44, 64.8736, -1.95477, 0, 0, 0, 0, 3600, 7200, 100, 1),
(3896, 3659, 0, 1, -3903.3, -1018.76, 0.188679, 0.837758, 0, 0, 0.406736, 0.913545, 3600, 7200, 100, 1),
(4074, 3659, 0, 1, -3151.69, -1057.31, 7.35313, 5.32326, 0, 0, -0.461748, 0.887011, 3600, 7200, 100, 1),
(4082, 3659, 0, 1, -3046.7, -987.505, 7.71378, 6.16101, 0, 0, -0.0610485, 0.998135, 3600, 7200, 100, 1),
(4366, 3659, 0, 1, -8680.4, -2357.14, 159.703, -1.3439, 0, 0, 0, 0, 3600, 7200, 100, 1),
(4848, 3659, 0, 1, -9250.18, -3211.8, 100.666, 2.07694, 0, 0, 0, 0, 3600, 7200, 100, 1),
(5015, 3659, 0, 1, -9271.67, -3290.89, 115.668, 1.25664, 0, 0, 0, 0, 3600, 7200, 100, 1),
(5386, 3659, 0, 1, -10740.1, -1120.25, 27.6742, -1.71042, 0, 0, 0, 0, 3600, 7200, 100, 1),
(10374, 3659, 0, 1, -11093.7, -72.5793, 14.7385, 2.35619, 0, 0, 0, 0, 3600, 7200, 100, 1),
(6003, 3659, 0, 1, -11027.4, 252.967, 27.6034, -2.6529, 0, 0, 0, 0, 3600, 7200, 100, 1),
(6038, 3659, 0, 1, -10441.3, -794.54, 52.3904, 0.890118, 0, 0, 0, 0, 3600, 7200, 100, 1),
(6461, 3659, 0, 1, -10717.8, 256.985, 43.9064, -1.01229, 0, 0, 0, 0, 3600, 7200, 100, 1),
(6670, 3659, 0, 1, -10942.5, -934.878, 76.8786, 2.75762, 0, 0, 0, 0, 3600, 7200, 100, 1),
(7203, 3659, 0, 1, -2902.53, -2053.89, 9.19539, 0.855211, 0, 0, 0, 0, 3600, 7200, 100, 1),
(8510, 3659, 0, 1, -3721.17, -619.176, 6.98369, -2.82743, 0, 0, 0, 0, 3600, 7200, 100, 1),
(8895, 3659, 0, 1, -2606.32, -1581.65, 0.205016, 1.6057, 0, 0, 0, 0, 3600, 7200, 100, 1),
(9407, 3659, 0, 1, -4182.13, -2372.79, 209.707, -2.58309, 0, 0, 0, 0, 3600, 7200, 100, 1),
(9527, 3659, 0, 1, -4054.09, -2979.75, 11.8781, -2.54818, 0, 0, 0, 0, 3600, 7200, 100, 1),
(9737, 3659, 0, 1, -100.047, 242.911, 55.215, -2.40855, 0, 0, 0, 0, 3600, 7200, 100, 1),
(9738, 3659, 0, 1, 375.083, 148.578, 43.1998, -1.50098, 0, 0, 0, 0, 3600, 7200, 100, 1),
(5783, 3659, 1, 1, 2321.68, -1433.86, 87.0652, -1.91986, 0, 0, 0, 0, 3600, 7200, 100, 1),
(10456, 3659, 1, 1, 2941.95, -106.883, 96.973, -1.69297, 0, 0, 0, 0, 3600, 7200, 100, 1),
(10814, 3659, 1, 1, 1768.68, -2032.74, 109.836, 2.32129, 0, 0, 0, 0, 3600, 7200, 100, 1),
(12011, 3659, 1, 1, 1711.78, -3438.29, 144.293, 0.820305, 0, 0, 0, 0, 3600, 7200, 100, 1),
(12269, 3659, 1, 1, 2188.77, -3203.47, 103.816, 2.30383, 0, 0, 0, 0, 3600, 7200, 100, 1),
(12282, 3659, 90, 1, -571.492, 510.91, -216.81, -2.61799, 0, 0, 0.965926, -0.258819, 3600, 7200, 100, 1),
(12378, 3659, 33, 1, -232.514, 2290.86, 74.9993, -2.02458, 0, 0, 0.848048, -0.529919, 3600, 7200, 100, 1),
(13155, 3659, 33, 1, -197.138, 2268.28, 76.2013, -2.21657, 0, 0, 0.894934, -0.446198, 3600, 7200, 100, 1);

UPDATE `quest_template` SET `RequestItemsText`='Those blasted Forsaken... it''s already bad enough that they''re undead, but then they get all riled up and start causing trouble in MY village!' WHERE `entry`=8373;

UPDATE `creature_template_addon` SET `auras` = NULL WHERE `entry` IN (519,937,18297,26253,7209,7329,7356,7351,7352,7353,7347,7348,8933,7458,7459,7460,7980,978,1529,1530,2090,2208,2242,2268,2547,2644,2651,2686,2977,
3260,3736,3763,5224,5277,5856,6004,7349,7980,8532,8550,8556,8717,8762,10417,10439,10882,11387,11452,11790,13217,13219,13777,13841,14532,14880,15162,15196,15429,15609,15610,15611,16024,16485,16504,16879,16880,17236,
17278,17475,18099,18103,18319,18320,18327,18553,19913,21050,21061,20923,20806,20668,20477,21198,21271,21200,21179,21324,21878,21897,22093,22180,22259,22289,22505,23398,24917,25460,25652,29790,30222,31036,31053,31091,
31556,32722,32724,3806,3807,5760,7604,11723,11730,21651,21763,21787,22074,22075,11882,19797,2246,2652,3950,10405,7457,7355,11374,11791,15341,16400,18944,20474,24029,25001,28779,32374,32375,32373,7332,7358,22221,22454,
24685,11793,3204);
UPDATE `creature_template_addon` SET `auras` = '18950' WHERE `entry` =24777;
UPDATE `creature_template_addon` SET `auras` = '18146' WHERE `entry` =814;
UPDATE `creature_template_addon` SET `auras` = NULL WHERE `entry` IN (21849,21380,16844,18965,18970,20397,23285,16857,16968,24216,24897,24896,8924,22466,22038,22482,30400,30499,18105,20168,9026,25033,24938,24979,25132);
UPDATE `creature_addon` SET `auras` = NULL WHERE `guid` IN (36766,58299,58296,36762,36739,36723,36637,50694,36635,50692,50683,81314,36836,36819,151061,151060,151059,151058,151057,151056,151055,151054,151053,151052,151051,
151050,50699,50697,50698,124249,151062,151063,151064,151065,151066,151067,151068,151069,151070,151071,151072,151073,151074,151075,151076,151077,151078,151079,151080,151081,151082,151083,151084,151085,151086,151087,151088,
151089,151090,151092,151093,151094,151095,151096,151097,151098,151099,151100,151101,151102,151103,151104,151105,151106,151107,151108,151109,151110,151111,151112,151113,151114,151115,151116,151117,151118,151119,151120,151121,
151122,151123,151124,151125,151126,151127,151128,151129,151130,151131,151132,151133,151134,151135,151136,151137,151138,151139,151140,151141,151142,151143,151144,151145,151146,151147);

UPDATE `creature` SET `position_x` = '1469.35', `position_y` = '-4705.08', `position_z` = '2.23116', `orientation` = '3.7125', `spawntimesecsmin` = '300', `spawntimesecsmax` = '300', `spawndist` = '0', `MovementType` = '0' WHERE `guid` =39692;

UPDATE `creature` SET `position_x` = '-1818.57', `position_y` = '1673.18', `position_z` = '61.8251', `orientation` = '2.85864', `spawntimesecsmin` = '600', `spawntimesecsmax` = '600', `spawndist` = '0', `MovementType` = '2' WHERE `guid` =31420;
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `script_id`, `comment`) VALUES
(31420, 1, -1819.59, 1674.54, 61.8802, 0, 0, 0, NULL),
(31420, 2, -1830.75, 1675.43, 61.3647, 0, 0, 0, NULL),
(31420, 3, -1848.78, 1679.99, 61.2935, 0, 0, 0, NULL),
(31420, 4, -1855.55, 1684, 61.4546, 0, 0, 0, NULL),
(31420, 5, -1868.23, 1693.11, 61.4642, 0, 0, 0, NULL),
(31420, 6, -1878.02, 1696.69, 61.4602, 0, 0, 0, NULL),
(31420, 7, -1898.79, 1698.41, 61.1839, 0, 0, 0, NULL),
(31420, 8, -1912.02, 1693.38, 61.1388, 0, 0, 0, NULL),
(31420, 9, -1917.42, 1688.85, 61.1873, 0, 0, 0, NULL),
(31420, 10, -1922.43, 1678.89, 61.594, 0, 0, 0, NULL),
(31420, 11, -1924.47, 1661.53, 61.1283, 0, 0, 0, NULL),
(31420, 12, -1922.9, 1648.57, 61.2921, 0, 0, 0, NULL),
(31420, 13, -1920, 1639.71, 61.7601, 0, 0, 0, NULL),
(31420, 14, -1910.88, 1622.66, 61.8971, 0, 0, 0, NULL),
(31420, 15, -1896.17, 1611.47, 61.033, 0, 0, 0, NULL),
(31420, 16, -1883.5, 1611.2, 60.9383, 0, 0, 0, NULL),
(31420, 17, -1871.27, 1612.83, 60.9496, 0, 0, 0, NULL),
(31420, 18, -1859.18, 1617.34, 61.1992, 0, 0, 0, NULL),
(31420, 19, -1850.43, 1624.33, 61.1568, 0, 0, 0, NULL),
(31420, 20, -1843.69, 1631.79, 61.135, 0, 0, 0, NULL),
(31420, 21, -1835.35, 1647.26, 61.135, 0, 0, 0, NULL),
(31420, 22, -1841.3, 1658.94, 61.1352, 0, 0, 0, NULL),
(31420, 23, -1848.73, 1662.15, 61.3146, 0, 0, 0, NULL),
(31420, 24, -1862.5, 1664.71, 61.6026, 0, 0, 0, NULL),
(31420, 25, -1876.26, 1667.27, 61.435, 0, 0, 0, NULL),
(31420, 26, -1903.77, 1672.49, 61.1349, 0, 0, 0, NULL),
(31420, 27, -1917.44, 1675.39, 61.3046, 0, 0, 0, NULL),
(31420, 28, -1929.23, 1679.83, 61.9213, 0, 0, 0, NULL),
(31420, 29, -1915.94, 1701.77, 61.2051, 0, 0, 0, NULL),
(31420, 30, -1901.95, 1702.29, 61.1781, 0, 0, 0, NULL),
(31420, 31, -1883.39, 1700.4, 61.2371, 0, 0, 0, NULL),
(31420, 32, -1875.49, 1697.07, 61.3655, 0, 0, 0, NULL),
(31420, 33, -1852.53, 1684.79, 61.7007, 0, 0, 0, NULL),
(31420, 34, -1830.42, 1680.04, 61.4274, 0, 0, 0, NULL),
(31420, 35, -1828.94, 1680.02, 61.5476, 0, 0, 0, NULL),
(31420, 36, -1814.94, 1680.37, 61.6607, 0, 0, 0, NULL),
(31420, 37, -1800.95, 1680.75, 61.1515, 0, 0, 0, NULL),
(31420, 38, -1786.99, 1681.39, 62.0859, 0, 0, 0, NULL),
(31420, 39, -1773.01, 1682.25, 61.1839, 0, 0, 0, NULL),
(31420, 40, -1749.39, 1681.49, 61.0302, 0, 0, 0, NULL),
(31420, 41, -1750.47, 1681.2, 61.0262, 0, 0, 0, NULL),
(31420, 42, -1764.33, 1679.3, 60.737, 0, 0, 0, NULL),
(31420, 43, -1778.26, 1677.94, 61.5524, 0, 0, 0, NULL),
(31420, 44, -1792.24, 1677.1, 61.455, 0, 0, 0, NULL),
(31420, 45, -1792.24, 1677.1, 61.455, 0, 0, 0, NULL);

INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `comments`) VALUES ('3096', '9', '11464', '0', '');
UPDATE `gossip_menu_option` SET `condition_id` = '3096' WHERE `menu_id` =9010 AND `id` =0;

UPDATE `quest_template` SET `SpecialFlags` = '2', `ReqCreatureOrGOId1` = '0', `ReqCreatureOrGOCount1` = '0', `RewMoneyMaxLevel` = '114000' WHERE `entry` =10946;
