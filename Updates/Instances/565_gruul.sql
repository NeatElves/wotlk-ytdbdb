-- =========
-- CREATURES
-- =========

INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `script_id`) VALUES
(53851, 1, 70.0753, 120.545, -6.80067, 1.4318, 0, 0),
(53851, 2, 74.2257, 138.495, -8.73136, 1.31713, 0, 0),
(53851, 3, 83.3225, 147.722, -9.90084, 0.792486, 40000, 0),
(53851, 4, 74.4423, 138.169, -8.68153, 4.25295, 0, 0),
(53851, 5, 70.2707, 120.313, -6.85253, 4.52706, 0, 0),
(53851, 6, 66.75, 87.7835, -4.95224, 4.63073, 25000, 0),
(51891, 1, 102.667, 285.111, 1.38343, 4.65193, 20000, 0),
(51891, 2, 108.475, 311.023, 1.56459, 1.38938, 0, 0),
(51891, 3, 107.422, 315.295, 1.25423, 2.00357, 0, 0),
(51891, 4, 108.58, 325.27, 1.51976, 2.29494, 55000, 0),
(51891, 5, 108.65, 310.837, 1.60571, 4.90954, 0, 0),
(51896, 1, 115.935, 345.887, 4.20579, 4.05816, 0, 0),
(51896, 2, 111.508, 332.61, 2.11866, 4.41238, 0, 0),
(51896, 3, 108.464, 331.853, 1.70997, 3.23349, 15000, 0),
(51896, 4, 114.04, 339.619, 3.30773, 1.08229, 0, 0),
(51896, 5, 117.389, 347.853, 4.67211, 1.05401, 0, 0),
(51896, 6, 124.308, 356.517, 6.12483, 0.896932, 0, 0),
(51896, 7, 132.508, 361.832, 6.57332, 0.68566, 0, 0),
(51896, 8, 139.363, 365.026, 4.24833, 0.386423, 0, 0),
(51896, 9, 148.868, 364.023, 3.74505, 6.14261, 0, 0),
(51896, 10, 166.153, 366.321, 1.37914, 0.187717, 55000, 0),
(51896, 11, 149.978, 364.845, 3.68824, 3.30496, 0, 0),
(51896, 12, 139.991, 365.852, 4.06457, 3.04107, 0, 0),
(51896, 13, 131.958, 361.136, 6.8412, 3.55001, 0, 0);

-- INSERT INTO `creature_movement_template` (`entry`, `pathId`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `script_id`) VALUES

REPLACE INTO `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_pvp_state`, `emote`, `moveflags`, `auras`) VALUES
(51894, 0, 1, 0, 0, 0, 0, NULL),
(51895, 0, 1, 0, 0, 0, 0, NULL),
(51897, 0, 0, 0, 0, 375, 0, NULL),
(51898, 0, 0, 0, 0, 375, 0, NULL),
(51899, 0, 0, 0, 0, 375, 0, NULL);

REPLACE INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_pvp_state`, `emote`, `moveflags`, `auras`) VALUES
(19389, 0, 0, 1, 16, 0, 0, NULL),
(21350, 0, 0, 1, 16, 0, 0, NULL);

INSERT INTO `creature_linking` (`guid`, `master_guid`, `flag`) VALUES
(54938, 54936, 1159),
(54937, 54936, 1159),
(54942, 54936, 1159),
(54939, 54936, 1159),
(53851, 54936, 1024),
(54941, 54936, 1024),
(54940, 54941, 1167),
(51890, 51865, 1167),
(51894, 51895, 1167),
(51897, 51898, 1167),
(51899, 51898, 1167),
(51865, 54943, 1024),
(51895, 54943, 1024),
(51898, 54943, 1024),
(51891, 54943, 1024),
(51896, 54943, 1024);

REPLACE INTO `creature_linking_template` (`entry`, `map`, `master_entry`, `flag`, `search_range`) VALUES
(18847, 565, 18834, 12304, 0);

INSERT INTO creature_spawn_entry (guid, entry) VALUES
(53851, 19389), (53851, 21350),
(54940, 19389), (54940, 21350),
(54941, 19389), (54941, 21350),
(51891, 19389), (51891, 21350),
(51890, 19389), (51890, 21350),
(51865, 19389), (51865, 21350),
(51894, 19389), (51894, 21350),
(51895, 19389), (51895, 21350),
(51896, 19389), (51896, 21350),
(51897, 19389), (51897, 21350),
(51898, 19389), (51898, 21350),
(51899, 19389), (51899, 21350);

INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(54936, 18831, 565, 1, 1, 0, 0, 143.049, 192.726, -11.2147, 3.40339, 604800, 604800, 0, 0, 531160, 0, 0, 0),
(54938, 18832, 565, 1, 1, 0, 0, 149.823, 178.019, -10.5928, 3.10669, 7200, 7200, 0, 0, 212450, 101610, 0, 0),
(54937, 18834, 565, 1, 1, 0, 0, 146.521, 185.358, -10.8378, 3.22886, 7200, 7200, 0, 0, 212450, 101610, 0, 0),
(54942, 18835, 565, 1, 1, 0, 0, 145.96, 207.296, -8.6713, 3.57792, 7200, 7200, 0, 0, 212450, 101610, 0, 0),
(54939, 18836, 565, 1, 1, 0, 0, 144.731, 199.921, -9.97698, 3.47321, 7200, 7200, 0, 0, 212450, 67740, 0, 0),
(54943, 19044, 565, 1, 1, 0, 0, 239.919, 359.057, -4.65222, 3.01282, 604800, 604800, 0, 0, 2390220, 0, 0, 0),
(53851, 0, 565, 1, 1, 0, 0, 67.1291, 99.4851, -5.41845, 1.4318, 3600, 3600, 0, 0, 0, 0, 0, 2),
(54940, 0, 565, 1, 1, 0, 0, 65.635, 130.703, -6.20328, 6.14971, 3600, 3600, 0, 0, 0, 0, 0, 0),
(54941, 0, 565, 1, 1, 0, 0, 76.6184, 129.076, -7.02181, 3.0576, 3600, 3600, 0, 0, 0, 0, 0, 0),
(51891, 0, 565, 1, 1, 0, 0, 102.559, 288.509, 1.11309, 4.65193, 3600, 3600, 0, 0, 0, 0, 0, 2),
(51890, 0, 565, 1, 1, 0, 0, 95.9796, 283.051, 2.23278, 0.017294, 3600, 3600, 0, 0, 0, 0, 0, 0),
(51865, 0, 565, 1, 1, 0, 0, 109.359, 281.634, 1.95785, 2.94604, 3600, 3600, 0, 0, 0, 0, 0, 0),
(51894, 0, 565, 1, 1, 0, 0, 101.226, 326.936, 1.57027, 1.28414, 3600, 3600, 0, 0, 0, 0, 0, 0),
(51895, 0, 565, 1, 1, 0, 0, 102.668, 335.433, 2.02522, 4.51134, 3600, 3600, 0, 0, 0, 0, 0, 0),
(51896, 0, 565, 1, 1, 0, 0, 121.425, 353.774, 5.57, 3.99279, 3600, 3600, 0, 0, 0, 0, 0, 2),
(51897, 0, 565, 1, 1, 0, 0, 177.683, 371.957, 0.435013, 3.14632, 3600, 3600, 0, 0, 0, 0, 0, 0),
(51898, 0, 565, 1, 1, 0, 0, 175.194, 365.85, 0.046197, 2.95075, 3600, 3600, 0, 0, 0, 0, 0, 0),
(51899, 0, 565, 1, 1, 0, 0, 177.139, 358.69, -1.00116, 2.79996, 3600, 3600, 0, 0, 0, 0, 0, 0);

-- ===========
-- GAMEOBJECTS
-- ===========

INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(25501, 183817, 565, 1, 1, 99.0729, 249.704, 18.3478, 3.14159, 0, 0, -1, 0, 180, 180, 100, 1),
(25500, 184662, 565, 1, 1, 166.897, 368.226, 16.9209, 4.71239, 0, 0, -0.707107, 0.707107, 180, 180, 100, 0);

-- ======
-- EVENTS
-- ======

-- INSERT INTO `game_event_creature` (`guid`, `event`) VALUES
-- INSERT INTO `game_event_creature_data` (`guid`, `entry_id`, `modelid`, `equipment_id`, `spell_start`, `spell_end`, `event`) VALUES
-- INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES

-- =======
-- POOLING
-- =======

-- INSERT INTO `pool_pool` (`pool_id`, `mother_pool`, `chance`, `description`) VALUES
-- INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES
-- INSERT INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES
-- INSERT INTO `pool_creature_template` (`id`, `pool_entry`, `chance`, `description`) VALUES
-- INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES
-- INSERT INTO `pool_gameobject_template` (`id`, `pool_entry`, `chance`, `description`) VALUES

-- =========
-- DBSCRIPTS
-- =========

-- INSERT INTO `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
-- INSERT INTO `dbscripts_on_creature_death` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
-- INSERT INTO `dbscripts_on_go_use` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
-- INSERT INTO `dbscripts_on_go_template_use` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
-- INSERT INTO `dbscripts_on_relay` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
-- INSERT INTO `dbscripts_on_event` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
-- INSERT INTO `dbscripts_on_spell` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
-- INSERT INTO `dbscripts_on_gossip` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
-- INSERT INTO `dbscripts_on_quest_start` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
-- INSERT INTO `dbscripts_on_quest_end` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
-- INSERT INTO `dbscript_string` (`entry`, `content_default`, `sound`, `type`, `language`, `emote`, `comment`) VALUES
-- INSERT INTO `dbscript_random_templates` (`id`, `type`, `target_id`, `chance`, `comments`) VALUES


