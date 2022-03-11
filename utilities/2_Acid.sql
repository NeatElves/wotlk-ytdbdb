REPLACE INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES
('2315202','23152','2','2','100','0','2','0','0','0','0','0','53','10136','0','0','22','2','0','0','0','0','0','0','YTDB(TBCDB) - Vagath - Start Relay Script and Set Phase 2 at 1% HP (Phase 0)'),
('2315204','23152','6','0','100','0','0','0','0','0','0','0','1','20745','0','0','53','10134','0','0','0','0','0','0','YTDB(TBCDB) - Vagath - Yell and Start Relay Script on Death');

REPLACE INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action1_type`, `action1_param1`, `action1_param2`, `action1_param3`, `action2_type`, `action2_param1`, `action2_param2`, `action2_param3`, `action3_type`, `action3_param1`, `action3_param2`, `action3_param3`, `comment`) VALUES
(88801, 888, 11, 0, 100, 0, 0, 0, 0, 0, 0, 0, 18, 512, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'YTDB(TBCDB) - Watcher Dodds - Set UnitFlag IMMUNE_TO_NPC on Spawn'),
(88802, 888, 21, 0, 100, 0, 0, 0, 0, 0, 0, 0, 18, 512, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'YTDB(TBCDB) - Watcher Dodds - Restore UnitFlag IMMUNE_TO_NPC on Reached Home'),
(2066601, 20666, 30, 0, 100, 1, 5, 20845, 0, 0, 0, 0, 0, 0, 0, 0, 11, 35740, 0, 0, 0, 0, 0, 0, 'YTDB(TBCDB) - Blade''s Edge - Orb Trigger 01 - Cast Holy Nova on Receive AI Event 5'),
(2066602, 20666, 30, 491521, 100, 1, 5, 20845, 0, 0, 0, 0, 23, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'YTDB(TBCDB) - Blade''s Edge - Orb Trigger 01 - Increment Phase on Receive AI Event 5 (Phase 1-14)'),
(2066603, 20666, 30, 458751, 100, 1, 5, 20845, 0, 0, 0, 0, 22, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'YTDB(TBCDB) - Blade''s Edge - Orb Trigger 01 - Set Phase 4 on Receive AI Event 5 (Phase 16)'),
(2066604, 20666, 30, 393215, 100, 1, 5, 20845, 0, 0, 0, 0, 22, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'YTDB(TBCDB) - Blade''s Edge - Orb Trigger 01 - Set Phase 8 on Receive AI Event 5 (Phase 17)'),
(2066605, 20666, 30, 262143, 100, 1, 5, 20845, 0, 0, 0, 0, 22, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'YTDB(TBCDB) - Blade''s Edge - Orb Trigger 01 - Set Phase 12 on Receive AI Event 5 (Phase 18)'),
(2066606, 20666, 30, 524286, 100, 1, 5, 20845, 0, 0, 0, 0, 53, 10051, 0, 0, 53, 10056, 0, 0, 23, 1, 0, 0, 'YTDB(TBCDB) - Blade''s Edge - Orb Trigger 01 - Start Relay Script and Increment Phase and Set Active Object on Receive AI Event 5 (Phase 0)'),
(2066607, 20666, 29, 524285, 100, 1, 300000, 300000, 300000, 300000, 0, 0, 53, 10058, 0, 0, 22, 0, 0, 0, 53, 10059, 0, 0, 'YTDB(TBCDB) - Blade''s Edge - Orb Trigger 01 - Despawn Closest Blade''s Edge - Nexus Prince Event - Orb01 and Set Phase 0 and Set Active Object Off on Generic Timer (Phase 1)'),
(2066608, 20666, 29, 524283, 100, 1, 300000, 300000, 300000, 300000, 0, 0, 53, 10058, 0, 0, 22, 0, 0, 0, 53, 10059, 0, 0, 'YTDB(TBCDB) - Blade''s Edge - Orb Trigger 01 - Despawn Closest Blade''s Edge - Nexus Prince Event - Orb01 and Set Phase 0 and Set Active Object Off on Generic Timer (Phase 2)'),
(2066609, 20666, 29, 524279, 100, 1, 300000, 300000, 300000, 300000, 0, 0, 53, 10058, 0, 0, 22, 0, 0, 0, 53, 10059, 0, 0, 'YTDB(TBCDB) - Blade''s Edge - Orb Trigger 01 - Despawn Closest Blade''s Edge - Nexus Prince Event - Orb01 and Set Phase 0 and Set Active Object Off on Generic Timer (Phase 3)'),
(2066610, 20666, 30, 524271, 100, 1, 5, 20845, 0, 0, 0, 0, 53, 10052, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'YTDB(TBCDB) - Blade''s Edge - Orb Trigger 01 - Start Relay Script on Receive AI Event 5 (Phase 4)'),
(2066611, 20666, 29, 524271, 100, 1, 300000, 300000, 300000, 300000, 0, 0, 53, 10058, 0, 0, 22, 16, 0, 0, 0, 0, 0, 0, 'YTDB(TBCDB) - Blade''s Edge - Orb Trigger 01 - Despawn Closest Blade''s Edge - Nexus Prince Event - Orb01 and Set Phase 16 on Generic Timer (Phase 4)'),
(2066612, 20666, 29, 524255, 100, 1, 300000, 300000, 300000, 300000, 0, 0, 53, 10058, 0, 0, 22, 16, 0, 0, 0, 0, 0, 0, 'YTDB(TBCDB) - Blade''s Edge - Orb Trigger 01 - Despawn Closest Blade''s Edge - Nexus Prince Event - Orb01 and Set Phase 16 on Generic Timer (Phase 5)'),
(2066613, 20666, 29, 524223, 100, 1, 300000, 300000, 300000, 300000, 0, 0, 53, 10058, 0, 0, 22, 16, 0, 0, 0, 0, 0, 0, 'YTDB(TBCDB) - Blade''s Edge - Orb Trigger 01 - Despawn Closest Blade''s Edge - Nexus Prince Event - Orb01 and Set Phase 16 on Generic Timer (Phase 6)'),
(2066614, 20666, 29, 524159, 100, 1, 300000, 300000, 300000, 300000, 0, 0, 53, 10058, 0, 0, 22, 16, 0, 0, 0, 0, 0, 0, 'YTDB(TBCDB) - Blade''s Edge - Orb Trigger 01 - Despawn Closest Blade''s Edge - Nexus Prince Event - Orb01 and Set Phase 16 on Generic Timer (Phase 7)'),
(2066615, 20666, 30, 524031, 100, 1, 5, 20845, 0, 0, 0, 0, 53, 10053, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'YTDB(TBCDB) - Blade''s Edge - Orb Trigger 01 - Start Relay Script on Receive AI Event 5 (Phase 8)'),
(2066616, 20666, 29, 524031, 100, 1, 300000, 300000, 300000, 300000, 0, 0, 53, 10058, 0, 0, 22, 17, 0, 0, 0, 0, 0, 0, 'YTDB(TBCDB) - Blade''s Edge - Orb Trigger 01 - Despawn Closest Blade''s Edge - Nexus Prince Event - Orb01 and Set Phase 17 on Generic Timer (Phase 8)'),
(2066617, 20666, 29, 523775, 100, 1, 300000, 300000, 300000, 300000, 0, 0, 53, 10058, 0, 0, 22, 17, 0, 0, 0, 0, 0, 0, 'YTDB(TBCDB) - Blade''s Edge - Orb Trigger 01 - Despawn Closest Blade''s Edge - Nexus Prince Event - Orb01 and Set Phase 17 on Generic Timer (Phase 9)'),
(2066618, 20666, 29, 523263, 100, 1, 300000, 300000, 300000, 300000, 0, 0, 53, 10058, 0, 0, 22, 17, 0, 0, 0, 0, 0, 0, 'YTDB(TBCDB) - Blade''s Edge - Orb Trigger 01 - Despawn Closest Blade''s Edge - Nexus Prince Event - Orb01 and Set Phase 17 on Generic Timer (Phase 10)'),
(2066619, 20666, 29, 522239, 100, 1, 300000, 300000, 300000, 300000, 0, 0, 53, 10058, 0, 0, 22, 17, 0, 0, 0, 0, 0, 0, 'YTDB(TBCDB) - Blade''s Edge - Orb Trigger 01 - Despawn Closest Blade''s Edge - Nexus Prince Event - Orb01 and Set Phase 17 on Generic Timer (Phase 11)'),
(2066620, 20666, 30, 520191, 100, 1, 5, 20845, 0, 0, 0, 0, 53, 10054, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'YTDB(TBCDB) - Blade''s Edge - Orb Trigger 01 - Start Relay Script on Receive AI Event 5 (Phase 12)'),
(2066621, 20666, 29, 520191, 100, 1, 300000, 300000, 300000, 300000, 0, 0, 53, 10058, 0, 0, 22, 18, 0, 0, 0, 0, 0, 0, 'YTDB(TBCDB) - Blade''s Edge - Orb Trigger 01 - Despawn Closest Blade''s Edge - Nexus Prince Event - Orb01 and Set Phase 18 on Generic Timer (Phase 12)'),
(2066622, 20666, 29, 516095, 100, 1, 300000, 300000, 300000, 300000, 0, 0, 53, 10058, 0, 0, 22, 18, 0, 0, 0, 0, 0, 0, 'YTDB(TBCDB) - Blade''s Edge - Orb Trigger 01 - Despawn Closest Blade''s Edge - Nexus Prince Event - Orb01 and Set Phase 18 on Generic Timer (Phase 13)'),
(2066623, 20666, 29, 507903, 100, 1, 300000, 300000, 300000, 300000, 0, 0, 53, 10058, 0, 0, 22, 18, 0, 0, 0, 0, 0, 0, 'YTDB(TBCDB) - Blade''s Edge - Orb Trigger 01 - Despawn Closest Blade''s Edge - Nexus Prince Event - Orb01 and Set Phase 18 on Generic Timer (Phase 14)'),
(2066624, 20666, 30, 491519, 100, 0, 5, 20845, 0, 0, 0, 0, 53, 10055, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'YTDB(TBCDB) - Blade''s Edge - Orb Trigger 01 - Start Relay Script on Receive AI Event 5 (Phase 15)'),
(2066625, 20666, 30, 491519, 100, 0, 6, 21057, 0, 0, 0, 0, 22, 0, 0, 0, 53, 10059, 0, 0, 24, 0, 0, 0, 'YTDB(TBCDB) - Blade''s Edge - Orb Trigger 01 - Set Phase 0 and Set Active Object Off and Enter Evade Mode on Receive AI Event 6 (Phase 15)'),
(2066626, 20666, 29, 65535, 100, 1, 60000, 60000, 60000, 60000, 0, 0, 45, 5, 10, 0, 22, 0, 0, 0, 53, 10059, 0, 0, 'YTDB(TBCDB) - Blade''s Edge - Orb Trigger 01 - Send AI Event 5 and Set Phase 0 and Set Active Object Off on Generic Timer (Phase 16-18)'),
(2102501, 21025, 30, 0, 100, 0, 5, 20666, 0, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'YTDB(TBCDB) - Blade''s Edge - Nexus Prince Event - Orb01 - Forced Despawn on Receive AI Event 5'),
(2299001, 22990, 0, 0, 100, 1025, 2000, 9000, 7500, 12000, 0, 0, 11, 39945, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'YTDB(TBCDB) - Akama - Cast Chain Lightning'),
(2299002, 22990, 21, 0, 100, 0, 0, 0, 0, 0, 0, 0, 45, 5, 300, 11, 0, 0, 0, 0, 0, 0, 0, 0, 'YTDB(TBCDB) - Akama - Send AI Event A on Reached Home');

REPLACE INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action1_type`, `action1_param1`, `action1_param2`, `action1_param3`, `action2_type`, `action2_param1`, `action2_param2`, `action2_param3`, `action3_type`, `action3_param1`, `action3_param2`, `action3_param3`, `comment`) VALUES
(3036651, 30366, 1, 0, 100, 0, 1000, 1000, 0, 0, 0, 0, 12, 30340, 0, 300000, 11, 56577, 0, 0, 0, 0, 0, 0, 'YTDB - Quest 13011'),
(3283851, 32838, 10, 0, 100, 1, 1, 5, 21600000, 28800000, 0, 0, 11, 61839, 7, 22, 11, 61995, 0, 0, 41, 3000, 0, 0, 'YTDB - NPC 32838'),
(3321101, 33211, 22, 0, 100, 1, 58, 2878, 0, 0, 0, 0, 11, 62537, 0, 0, 28, 6, 62574, 0, 41, 20000, 0, 0, 'YTDB - Q. A Blade Fit For A Champion'),
(3321102, 33211, 22, 0, 100, 1, 58, 2879, 0, 0, 0, 0, 11, 62581, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'YTDB - Q. A Blade Fit For A Champion'),
(3322401, 33224, 22, 0, 100, 1, 58, 2878, 0, 0, 0, 0, 41, 0, 0, 0, 12, 33220, 0, 30000, 28, 6, 62574, 0, 'YTDB - Q. A Blade Fit For A Champion'),
(3322402, 33224, 22, 0, 100, 1, 58, 2879, 0, 0, 0, 0, 11, 62581, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'YTDB - Q. A Blade Fit For A Champion');

-- Midsummer Fire Festival
REPLACE INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES
('2596201','25962','1','0','100','1','30000','45000','30000','45000','0','0','53','-12009','0','0','0','0','0','0','0','0','0','0','YTDB(TBCDB) - Fire Eater - Start Random Relay Script on Timer OOC'),
('2599401','25994','1','0','100','1','30000','45000','30000','45000','0','0','53','-12009','0','0','0','0','0','0','0','0','0','0','YTDB(TBCDB) - Flame Eater - Start Random Relay Script on Timer OOC');
-- Fire/Flame Eater has no equipment by default, handled via script instead
UPDATE creature_template SET EquipmentTemplateId=0 WHERE Entry IN (25962,25994);
UPDATE creature_template_addon SET auras=NULL WHERE entry IN (25962,25994);
-- Camp Pavilion seems to be visible from very long distance - add far view flag
UPDATE gameobject_template SET ExtraFlags=ExtraFlags|0x00040000 WHERE entry=188021;
DELETE FROM dbscripts_on_relay WHERE id IN (10202,10203,10204);
INSERT INTO dbscripts_on_relay (id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, condition_id, comments) VALUES
(10202, 1000, 0, 42, 0, 0, 0, 0, 0, 0, 2200, 0, 0, 0, 0, 0, 0, 0, 0, 'YTDB(TBCDB) - Fire/Flame Eater - Equip Monster - Item, Potion Green'),
(10202, 4000, 0, 1, 92, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'YTDB(TBCDB) - Fire/Flame Eater - Emote OneShotEatNoSheathe'),
(10202, 7000, 0, 15, 46332, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'YTDB(TBCDB) - Fire/Flame Eater - Cast Midsummer Flame Breath'),
(10202, 13000, 0, 15, 46332, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'YTDB(TBCDB) - Fire/Flame Eater - Cast Midsummer Flame Breath'),
(10202, 19000, 0, 15, 46332, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'YTDB(TBCDB) - Fire/Flame Eater - Cast Midsummer Flame Breath'),
(10202, 23000, 0, 42, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'YTDB(TBCDB) - Fire/Flame Eater - Remove Equipment'),
(10202, 24000, 0, 15, 45407, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'YTDB (TBCDB)- Fire/Flame Eater - Cast Reveler - Applause/Cheer'),
(10203, 1000, 0, 42, 0, 0, 0, 0, 0, 0, 1906, 2081, 0, 0, 0, 0, 0, 0, 0, 'YTDB(TBCDB) - Fire/Flame Eater - Equip Monster - Torch and Monster - Torch, Offhand'),
(10203, 4000, 0, 15, 46322, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'YTDB(TBCDB) - Fire/Flame Eater - Cast NPC Juggle Torch (Juggling)'),
(10203, 20000, 0, 42, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'YTDB(TBCDB) - Fire/Flame Eater - Remove Equipment'),
(10203, 21000, 0, 15, 45407, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'YTDB(TBCDB) - Fire/Flame Eater - Cast Reveler - Applause/Cheer'),
(10204, 3000, 0, 36, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'YTDB(TBCDB) - Fire/Flame Eater and Midsummer Celebrant - Reset Orientation');
DELETE FROM `dbscript_random_templates` WHERE `id` = 12009;
INSERT INTO dbscript_random_templates (id, type, target_id, chance, comments) VALUES
(12009,1,10202,0,'YTDB(TBCDB) - 25962/25994 - Fire Breathing Script'), (12009,1,10203,0,'YTDB(TBCDB) - 25962/25994 - Torch Juggling Script');

REPLACE INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES
('1686701','16867','30','0','100','1','5','16867','0','0','0','0','22','1','0','0','0','0','0','0','0','0','0','0','YTDB(TBCDB) - Shattered Hand Grunt - Set Phase 1 on Receive AI Event 5 (A)'),
('1686702','16867','1','5','100','1','2500','2500','2500','2500','0','0','10','36','60','39','0','0','0','0','0','0','0','0','YTDB(TBCDB) - Shattered Hand Grunt - Random Emote OOC (Phase 1)'),
('1686703','16867','1','5','100','1','8000','8000','8000','8000','0','0','22','2','0','0','0','0','0','0','0','0','0','0','YTDB(TBCDB) - Shattered Hand Grunt - Random Emote OOC (Phase 1)'),
('1686704','16867','1','3','100','1','2000','2000','2000','2000','0','0','5','66','0','0','0','0','0','0','0','0','0','0','YTDB(TBCDB) - Shattered Hand Grunt - OneShotSalute OOC (Phase 2)'),
('1686705','16867','1','3','100','1','3500','3500','3500','3500','0','0','53','10182','0','0','22','0','0','0','0','0','0','0','YTDB(TBCDB) - Shattered Hand Grunt - Set Waypoint Movement and Set Phase 0 OOC (Phase 2)'),
('1686706','16867','6','0','10','0','0','0','0','0','0','0','11','38879','1','7','0','0','0','0','0','0','0','0','YTDB(TBCDB) - Shattered Hand Grunt - Cast Soul Burden on Death'),
('1686707','16867','2','0','100','0','15','0','0','0','0','0','25','0','0','0','1','1150','0','0','0','0','0','0','YTDB(TBCDB) - Shattered Hand Grunt - Flee at 15% HP'),
('1686708','16867','0','0','100','1025','4200','6700','15600','20700','0','0','11','11976','1','0','0','0','0','0','0','0','0','0','YTDB(TBCDB) - Shattered Hand Grunt - Cast Strike'),
('1686709','16867','0','0','40','1025','8500','12500','10000','14000','0','0','11','11978','1','0','0','0','0','0','0','0','0','0','YTDB(TBCDB) - Shattered Hand Grunt - Cast Kick');

REPLACE INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES
('720701','7207','22','0','100','1','61','9011','0','0','0','0','53','9003','0','0','15','2608','6','0','0','0','0','0','YTDB(TBCDB) - Doc Mixilpixil - Start Relay Script and Quest Complete (2608) on Receive Emote');

REPLACE INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action1_type`, `action1_param1`, `action1_param2`, `action1_param3`, `action2_type`, `action2_param1`, `action2_param2`, `action2_param3`, `action3_type`, `action3_param1`, `action3_param2`, `action3_param3`, `comment`) VALUES
(2286501, 22865, 11, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 39663, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'YTDB(TBCDB) - Illidan''s Presence - Cast Summon Cosmetic Fel Fire on Spawn');

REPLACE INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES
('340101','3401','22','0','100','1','78','2460','0','0','0','0','53','3401','0','0','15','2460','6','0','0','0','0','0','YTDB(TBCDB) - Shenthul - OnReceive EMOTE_SALUTE - complete quest and start relay Script');
INSERT INTO `dbscripts_on_relay` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(3401, 0, 0, 1, 66, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Quest - The Shattered Salute'),
(3401, 4000, 0, 0, 0, 0, 0, 0, 0, 0, 3287, 0, 0, 0, 0, 0, 0, 0, 0, 'Quest - The Shattered Salute');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `Entry` IN (888,3401,7207,20666,21025,22865,22990,25962,25994,30366,32838,33211,33224);

# ACID tbc for 14041_01_mangos_creature_spell_lists.sql
DELETE FROM creature_ai_scripts WHERE Id IN(58905);
DELETE FROM creature_ai_scripts WHERE Id IN(59503);
DELETE FROM creature_ai_scripts WHERE Id IN(59504);

UPDATE `creature_ai_scripts` SET `action2_param1` = '1879401' WHERE `id` =1804607;
UPDATE `creature_ai_scripts` SET `action2_param1` = '1879402' WHERE `id` =1804612;
UPDATE `creature_ai_scripts` SET `action2_param1` = '1879403' WHERE `id` =1804616;
UPDATE `creature_ai_scripts` SET `action1_param3` = '256' WHERE `id` =2307802;
UPDATE `creature_ai_scripts` SET `event_type` = '0' WHERE `id` =1504702;
UPDATE `creature_ai_scripts` SET `event_type` = '0' WHERE `id` =1504703;
UPDATE `creature_ai_scripts` SET `action1_param3` = '256' WHERE `id` =2246102;

UPDATE `creature_ai_scripts` SET `action1_param3` = '105' WHERE `id` =1696401;
UPDATE `creature_ai_scripts` SET `action1_param1` = '10172' WHERE `id` IN (1763601,1957101,1957201,1957301,1957401,1957501,1957601,1961001,1961201,1964502,1970901,1973701,1988001,2149301,2175101);
UPDATE `creature_ai_scripts` SET `action1_param1` = '20101' WHERE `id` IN (2366305,2366404,2366505,2366604);
UPDATE `creature_ai_scripts` SET `action1_param1` = '20055' WHERE `id` IN (2367404,2406203,2644805,2751802);
UPDATE `creature_ai_scripts` SET `action1_param1` = '20040' WHERE `id` IN (2401501,2432201,2432301);
UPDATE `creature_ai_scripts` SET `action1_param1` = '20053' WHERE `id` IN (2408102,2486403,2655005,2655307,2655409,2669404,2815701,2836807);
UPDATE `creature_ai_scripts` SET `action1_param1` = '20060' WHERE `id` =2384408;
UPDATE `creature_ai_scripts` SET `action1_param1` = '20104' WHERE `id` =2401505;
UPDATE `creature_ai_scripts` SET `action1_param1` = '20051' WHERE `id` =2404401;
UPDATE `creature_ai_scripts` SET `action1_param1` = '20026' WHERE `id` =2617403;
UPDATE `creature_ai_scripts` SET `action1_param1` = '20232' WHERE `id` =2641703;
UPDATE `creature_ai_scripts` SET `action1_param1` = '20129' WHERE `id` =2649603;
UPDATE `creature_ai_scripts` SET `action2_param1` = '20029' WHERE `id` =2656101;
UPDATE `creature_ai_scripts` SET `action1_param1` = '20133' WHERE `id` =2656801;
UPDATE `creature_ai_scripts` SET `action1_param1` = '20137' WHERE `id` =2657203;
UPDATE `creature_ai_scripts` SET `action1_param1` = '20138' WHERE `id` =2658001;
UPDATE `creature_ai_scripts` SET `action1_param1` = '20223' WHERE `id` =2659104;
UPDATE `creature_ai_scripts` SET `action1_param1` = '20220' WHERE `id` =2686901;
UPDATE `creature_ai_scripts` SET `action1_param1` = '20028' WHERE `id` =2697102;
UPDATE `creature_ai_scripts` SET `action1_param1` = '20186' WHERE `id` =2716001;
UPDATE `creature_ai_scripts` SET `action1_param1` = '20221' WHERE `id` =2726008;
UPDATE `creature_ai_scripts` SET `action1_param1` = '20187' WHERE `id` =2735901;
UPDATE `creature_ai_scripts` SET `action1_param1` = '20163' WHERE `id` =2757205;
UPDATE `creature_ai_scripts` SET `action1_param1` = '20164' WHERE `id` =2757206;
UPDATE `creature_ai_scripts` SET `action1_param1` = '20165' WHERE `id` =2757207;
UPDATE `creature_ai_scripts` SET `action1_param1` = '20169' WHERE `id` =2758905;
UPDATE `creature_ai_scripts` SET `action1_param1` = '20170' WHERE `id` =2758906;
UPDATE `creature_ai_scripts` SET `action1_param1` = '20166' WHERE `id` =2776301;
UPDATE `creature_ai_scripts` SET `action1_param1` = '20106' WHERE `id` =2927701;
UPDATE `creature_ai_scripts` SET `action1_param1` = '20236' WHERE `id` =2945101;
UPDATE `creature_ai_scripts` SET `action2_param1` = '20233' WHERE `id` =2965404;
UPDATE `creature_ai_scripts` SET `action1_param1` = '20185' WHERE `id` =3135804;
UPDATE `creature_ai_scripts` SET `action1_param1` = '20205' WHERE `id` =3164901;
UPDATE `creature_ai_scripts` SET `action2_param1` = '20203' WHERE `id` =3165201;
UPDATE `creature_ai_scripts` SET `action1_param1` = '20204' WHERE `id` =3237601;
INSERT INTO dbscript_random_templates (id, `type`, target_id, chance, comments) VALUES
(10032,1,10045,0,'Warmaul Chef Bufferlo - Random OOC Events'),
(10032,1,10046,0,'Warmaul Chef Bufferlo - Random OOC Events'),
(10032,1,10047,0,'Warmaul Chef Bufferlo - Random OOC Events'),
(20015,0,24840,0,'32576 - Random Texts'),
(20015,0,24841,0,'32576 - Random Texts'),
(20015,0,24842,0,'32576 - Random Texts'),
(20015,0,24845,0,'32576 - Random Texts');

DELETE FROM `creature_ai_scripts` WHERE `id` = 327203;
DELETE FROM `creature_ai_scripts` WHERE `id` = 327204;

UPDATE `creature_ai_scripts` SET `event_param1` = '0', `event_param2` = '0' WHERE `id` =1146001;

DELETE FROM `creature_ai_scripts` WHERE `id` = 292201;
DELETE FROM `creature_ai_scripts` WHERE `id` = 292202;
DELETE FROM `creature_ai_scripts` WHERE `id` = 292203;
UPDATE `creature_template` SET `AIName` = '' WHERE `Entry` IN (2922);


-- ==================================
-- |   Special Game Event Scripts   |
-- ==================================

REPLACE INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES

-- ================
-- Scourge Invasion
-- ================
-- Argent Dawn Infantry 16228
-- Injured Argent Dawn Infantry 16229
-- Argent Recruiter 16241
-- Argent Scout 16255
-- Argent Medic 16284
('1628401','16284','2','0','100','0','15','0','0','0','0','0','25','0','0','0','1','1150','0','0','0','0','0','0','Argent Medic - Flee at 15% HP'),
-- Argent Emissary 16285
-- Argent Messenger 16359
-- Argent Sentry 16378
('1637801','16378','4','0','100','0','0','0','0','0','0','0','11','25821','1','0','0','0','0','0','0','0','0','0','Argent Sentry - Cast Charge on Aggro'),
('1637802','16378','0','0','100','1025','4000','6000','7000','9000','0','0','11','19643','1','0','0','0','0','0','0','0','0','0','Argent Sentry - Cast Mortal Strike'),
('1637803','16378','0','0','100','1025','1000','3000','9000','12000','0','0','11','18328','0','0','0','0','0','0','0','0','0','0','Argent Sentry - Cast Incapacitating Shout'),
('1637804','16378','9','0','100','1025','0','5','8000','14000','0','0','11','15618','1','0','0','0','0','0','0','0','0','0','Argent Sentry - Cast Snap Kick'),
('1637805','16378','9','0','100','1025','20','45','2300','3900','0','0','11','23337','1','0','0','0','0','0','0','0','0','0','Argent Sentry - Cast Shoot'),
-- Argent Dawn Initiate 16384
-- Argent Dawn Paladin 16395
-- Stormwind Elite Guard 16396
-- Argent Dawn Crusader 16433
-- Argent Dawn Champion 16434
-- Argent Dawn Cleric 16435
-- Argent Dawn Priest 16436
-- Argent Horse 16508
-- Argent Warhorse 16509
-- Argent Charger 16510
-- Argent Mount 16511
-- Argent Deathsteed 16512
-- Argent Deathcharger 16513
-- Argent Quartermaster 16786
-- Argent Outfitter 16787
-- Argent Protector 19320
-- Argent Guardian 19322
-- Argent Bowman 19365
('1936501','19365','11','0','100','0','0','0','0','0','0','0','57','2','25','0','0','0','0','0','0','0','0','0','Argent Bowman - Enable Range Mode on Spawn'),
('1936502','19365','9','0','100','1025','5','35','2300','3900','0','0','11','6660','4','256','0','0','0','0','0','0','0','0','Argent Bowman - Cast Shoot'),
-- Argent Hunter 19366
-- Argent Healer 27305
-- Lumbering Horror 14697 - Recheck Timers
('1469701','14697','6','0','100','0','0','0','0','0','0','0','11','28032','15','2','0','0','0','0','0','0','0','0','Lumbering Horror - Cast Zap Crystal on Death'),
('1469702','14697','8','0','100','1','17680','-1','0','0','0','0','41','3000','0','0','0','0','0','0','0','0','0','0','Lumbering Horror - Delayed Despawn on Spirit Spawn-out Spellhit'),
('1469703','14697','0','0','100','1025','0','0','5000','10000','0','0','11','28265','1','0','0','0','0','0','0','0','0','0','Lumbering Horror - Cast Scourge Strike'),
('1469704','14697','4','0','100','0','0','0','0','0','0','0','11','28313','0','0','0','0','0','0','0','0','0','0','Lumbering Horror - Cast Aura of Fear on Aggro'),
('1469705','14697','0','0','100','1025','0','17000','17000','17000','0','0','11','16790','1','0','0','0','0','0','0','0','0','0','Lumbering Horror - Cast Knockdown'),
('1469706','14697','0','0','100','1025','5000','10000','5000','10000','0','0','11','5568','15','0','0','0','0','0','0','0','0','0','Lumbering Horror - Cast Trample'),
-- Ghoul Berserker 16141 - Recheck Timers
('1614101','16141','6','0','100','0','0','0','0','0','0','0','11','28032','15','2','0','0','0','0','0','0','0','0','Ghoul Berserker - Cast Zap Crystal on Death'),
('1614102','16141','8','0','100','1','17680','-1','0','0','0','0','41','3000','0','0','0','0','0','0','0','0','0','0','Ghoul Berserker - Delayed Despawn on Spirit Spawn-out Spellhit'),
('1614103','16141','0','0','100','1025','0','0','5000','10000','0','0','11','28265','1','0','0','0','0','0','0','0','0','0','Ghoul Berserker - Cast Scourge Strike'),
('1614104','16141','2','0','100','1024','20','0','0','0','0','0','11','8599','0','0','0','0','0','0','0','0','0','0','Ghoul Berserker - Cast Enrage at 20% HP'),
('1614105','16141','0','0','50','1025','6000','12000','6000','12000','0','0','11','7367','1','32','0','0','0','0','0','0','0','0','Ghoul Berserker - Cast Infected Bite'),
-- Spectral Soldier 16298 - Recheck Timers
('1629801','16298','6','0','100','0','0','0','0','0','0','0','11','28032','15','2','0','0','0','0','0','0','0','0','Spectral Soldier - Cast Zap Crystal on Death'),
('1629802','16298','8','0','100','1','17680','-1','0','0','0','0','41','3000','0','0','0','0','0','0','0','0','0','0','Spectral Soldier - Delayed Despawn on Spirit Spawn-out Spellhit'),
('1629803','16298','0','0','100','1025','0','0','5000','10000','0','0','11','28265','1','0','0','0','0','0','0','0','0','0','Spectral Soldier - Cast Scourge Strike'),
('1629804','16298','0','0','50','1025','0','20000','20000','20000','0','0','11','16244','17','0','0','0','0','0','0','0','0','0','Spectral Soldier - Cast Demoralizing Shout'),
('1629805','16298','0','0','50','1025','6000','12000','6000','12000','0','0','11','21081','1','0','0','0','0','0','0','0','0','0','Spectral Soldier - Cast Sunder Armor'),
-- Skeletal Shocktrooper 16299 - Recheck Timers
('1629901','16299','6','0','100','0','0','0','0','0','0','0','11','28032','15','2','0','0','0','0','0','0','0','0','Skeletal Shocktrooper - Cast Zap Crystal on Death'),
('1629902','16299','8','0','100','1','17680','-1','0','0','0','0','41','3000','0','0','0','0','0','0','0','0','0','0','Skeletal Shocktrooper - Delayed Despawn on Spirit Spawn-out Spellhit'),
('1629903','16299','0','0','100','1025','0','0','5000','10000','0','0','11','28265','1','0','0','0','0','0','0','0','0','0','Skeletal Shocktrooper - Cast Scourge Strike'),
('1629904','16299','0','0','100','1025','0','16000','16000','16000','0','0','11','17014','15','0','0','0','0','0','0','0','0','0','Skeletal Shocktrooper - Cast Bone Shards'),
-- Spirit of the Damned 16379 - Recheck Timers
('1637901','16379','6','0','100','0','0','0','0','0','0','0','11','28032','15','2','0','0','0','0','0','0','0','0','Spirit of the Damned - Cast Zap Crystal on Death'),
('1637902','16379','8','0','100','1','17680','-1','0','0','0','0','41','3000','0','0','0','0','0','0','0','0','0','0','Spirit of the Damned - Delayed Despawn on Spirit Spawn-out Spellhit'),
('1637903','16379','0','0','100','1025','0','0','5000','10000','0','0','11','28265','1','0','0','0','0','0','0','0','0','0','Spirit of the Damned - Cast Scourge Strike'),
('1637904','16379','11','0','100','0','0','0','0','0','0','0','57','2','35','0','0','0','0','0','0','0','0','0','Spirit of the Damned - Enable Range Mode on Spawn'),
('1637905','16379','0','0','100','1025','1000','12000','6000','12000','0','0','11','22884','15','0','0','0','0','0','0','0','0','0','Spirit of the Damned - Cast Psychic Scream'),
('1637906','16379','0','0','100','1025','0','0','500','500','0','0','11','16243','1','0','0','0','0','0','0','0','0','0','Spirit of the Damned - Cast Ribbon of Souls'),
-- Bone Witch 16380 - Recheck Timers
('1638001','16380','6','0','100','0','0','0','0','0','0','0','11','28032','15','2','0','0','0','0','0','0','0','0','Bone Witch - Cast Zap Crystal on Death'),
('1638002','16380','8','0','100','1','17680','-1','0','0','0','0','41','3000','0','0','0','0','0','0','0','0','0','0','Bone Witch - Delayed Despawn on Spirit Spawn-out Spellhit'),
('1638003','16380','0','0','100','1025','0','0','5000','10000','0','0','11','28265','1','0','0','0','0','0','0','0','0','0','Bone Witch - Cast Scourge Strike'),
('1638004','16380','11','0','100','0','0','0','0','0','0','0','57','2','35','0','11','32900','0','34','0','0','0','0','Bone Witch - Enable Range Mode and Cast Bone Shards Proc on Spawn'),
('1638005','16380','0','0','100','1025','1000','3000','3000','3000','0','0','11','20720','1','256','0','0','0','0','0','0','0','0','Bone Witch - Cast Arcane Bolt'),
-- Flameshocker 16383 - Recheck Timers
('1638301','16383','29','0','100','1','0','0','10000','10000','0','0','45','5','75','0','0','0','0','0','0','0','0','0','Flameshocker - Send AI Event 5 on Generic Timer'),
('1638302','16383','11','0','100','0','0','0','0','0','0','0','11','28330','0','34','0','0','0','0','0','0','0','0','Flameshocker - Cast Flameshocker - Immolate Visual on Spawn'),
('1638303','16383','6','0','100','0','0','0','0','0','0','0','11','28323','15','2','0','0','0','0','0','0','0','0','Flameshocker - Cast Flameshocker''s Revenge on Death'),
('1638304','16383','0','0','100','1025','5000','10000','10000','20000','0','0','11','28314','1','32','0','0','0','0','0','0','0','0','Flameshocker - Cast Flameshocker''s Touch'),
-- Pallid Horror 16394 - Recheck Timers
('1639401','16394','29','0','100','1','0','0','10000','10000','0','0','45','5','75','0','0','0','0','0','0','0','0','0','Pallid Horror - Send AI Event 5 on Generic Timer'),
('1639402','16394','6','0','100','0','0','0','0','0','0','0','11','28699','15','2','0','0','0','0','0','0','0','0','Pallid Horror - Cast Summon Faint Necrotic Crystal on Death'),
('1639403','16394','0','0','100','1025','0','0','5000','10000','0','0','11','28364','15','0','0','0','0','0','0','0','0','0','Pallid Horror - Cast Damage vs. Guards'),
-- Skeletal Soldier 16422 - Recheck Timers
('1642201','16422','0','0','100','1025','0','0','5000','10000','0','0','11','28265','1','0','0','0','0','0','0','0','0','0','Skeletal Soldier - Cast Scourge Strike'),
-- Spectral Apparition 16423 - Recheck Timers
('1642301','16423','0','0','100','1025','0','0','5000','10000','0','0','11','28265','1','0','0','0','0','0','0','0','0','0','Spectral Apparition - Cast Scourge Strike'),
-- Spectral Spirit 16437 - Recheck Timers
('1643701','16437','0','0','100','1025','0','0','5000','10000','0','0','11','28265','1','0','0','0','0','0','0','0','0','0','Spectral Spirit - Cast Scourge Strike'),
-- Skeletal Trooper 16438 - Recheck Timers
('1643801','16438','0','0','100','1025','0','0','5000','10000','0','0','11','28265','1','0','0','0','0','0','0','0','0','0','Skeletal Trooper - Cast Scourge Strike'),
('1643802','16438','0','0','100','1025','1000','9000','9000','18000','0','0','11','589','1','32','0','0','0','0','0','0','0','0','Skeletal Trooper - Cast Shadow Word: Pain (Rank 1)');

UPDATE creature_template SET SpellList = 4543 WHERE entry = 4543;
UPDATE creature_template SET SpellList = 14682 WHERE entry = 14682;
UPDATE creature_template SET SpellList = 14686 WHERE entry = 14686;
UPDATE creature_template SET SpellList = 16141 WHERE entry = 16141;
UPDATE creature_template SET SpellList = 16299 WHERE entry = 16299;
UPDATE creature_template SET SpellList = 16298 WHERE entry = 16298;
UPDATE creature_template SET SpellList = 14697 WHERE entry = 14697;
UPDATE creature_template SET SpellList = 16380 WHERE entry = 16380;
UPDATE creature_template SET SpellList = 16379 WHERE entry = 16379;
UPDATE creature_template SET SpellList = 16438 WHERE entry = 16438;
DELETE FROM `creature_spell_list` WHERE `Id` IN (4543,14682,14686,16141,16299,16298,14697,16380,16379,16438);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(4543, 0, 8814, 0, 100, 0, 100, 0, 0, 8, 8, 16, 'Scarlet Monastery - Bloodmage Thalnos - Flame Spike'),
(4543, 1, 12470, 0, 0, 0, 100, 0, 0, 9, 9, 12, 'Scarlet Monastery - Bloodmage Thalnos - Fire Nova'),
(4543, 2, 8053, 0, 1, 0, 100, 0, 0, 16, 16, 60, 'Scarlet Monastery - Bloodmage Thalnos - Flame Shock (Rank 3)'),
(4543, 3, 9613, 2, 1, 0, 100, 0, 0, 3, 3, 5, 'Scarlet Monastery - Bloodmage Thalnos - Shadow Bolt'),
(14682, 0, 16508, 0, 1, 0, 100, 0, 5, 20, 30, 60, 'Shadowfang Keep - Sever - Intimidating Roar'),
(14682, 1, 17745, 0, 1, 0, 100, 0, 5, 8, 8, 16, 'Shadowfang Keep - Sever - Diseased Spit'),
(14686, 0, 16838, 0, 1, 0, 100, 0, 0, 20, 20, 20, 'Razorfen Downs - Lady Falther''ess - Banshee Shriek'),
(14686, 1, 17105, 0, 1, 0, 100, 0, 0, 30, 12, 30, 'Razorfen Downs - Lady Falther''ess - Banshee Curse'),
(14686, 2, 22743, 0, 1, 0, 100, 0, 0, 25, 5, 25, 'Razorfen Downs - Lady Falther''ess - Ribbon of Souls'),
(14686, 3, 7645, 0, 100, 0, 100, 0, 10, 30, 30, 60, 'Razorfen Downs - Lady Falther''ess - Dominate Mind'),
(16141, 0, 7367, 0, 1, 0, 100, 50, 6, 12, 6, 12, 'Scourge Invasion - Ghoul Berserker - Infected Bite'),
(16299, 0, 17014, 0, 0, 0, 100, 0, 0, 16, 16, 16, 'Scourge Invasion - Skeletal Shocktrooper - Bone Shards'),
(16298, 0, 16244, 0, 0, 0, 100, 50, 0, 20, 20, 20, 'Scourge Invasion - Spectral Soldier - Demoralizing Shout'),
(16298, 1, 21081, 0, 1, 0, 100, 50, 6, 12, 6, 12, 'Scourge Invasion - Spectral Soldier - Sunder Armor'),
(14697, 0, 16790, 0, 1, 0, 100, 0, 0, 17, 17, 17, 'Scourge Invasion - Lumbering Horror - Knockdown'),
(14697, 1, 5568, 0, 0, 0, 100, 0, 5, 10, 5, 10, 'Scourge Invasion - Lumbering Horror - Trample'),
(16380, 0, 17014, 0, 0, 0, 100, 50, 1, 8, 8, 19, 'Scourge Invasion - Bone Witch - Bone Shards'),
(16380, 1, 20720, 2, 1, 0, 100, 0, 1, 3, 3, 3, 'Scourge Invasion - Bone Witch - Arcane Bolt'),
(16379, 0, 22884, 0, 0, 0, 100, 0, 1, 12, 6, 12, 'Scourge Invasion - Spirit of the Damned - Psychic Scream'),
(16379, 1, 16243, 2, 1, 0, 100, 0, 1, 6, 3, 6, 'Scourge Invasion - Spirit of the Damned - Ribbon of Souls'),
(16438, 0, 589, 0, 1, 0, 100, 0, 1, 9, 9, 18, 'Scourge Invasion - Skeletal Trooper - Shadow Word: Pain (Rank 1)');
UPDATE creature_template INNER JOIN creature_ai_scripts ON creature_template.entry = creature_ai_scripts.creature_id SET AIName='EventAI';
