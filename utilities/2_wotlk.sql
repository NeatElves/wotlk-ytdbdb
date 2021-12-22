REPLACE INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES
('2315202','23152','2','2','100','0','2','0','0','0','0','0','53','10136','0','0','22','2','0','0','0','0','0','0','YTDB(TBCDB) - Vagath - Start Relay Script and Set Phase 2 at 1% HP (Phase 0)'),
('2315204','23152','6','0','100','0','0','0','0','0','0','0','1','-10042','0','0','53','10134','0','0','0','0','0','0','YTDB(TBCDB) - Vagath - Yell and Start Relay Script on Death');

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
('1686707','16867','2','0','100','0','15','0','0','0','0','0','25','0','0','0','1','-47','0','0','0','0','0','0','YTDB(TBCDB) - Shattered Hand Grunt - Flee at 15% HP'),
('1686708','16867','0','0','100','1025','4200','6700','15600','20700','0','0','11','11976','1','0','0','0','0','0','0','0','0','0','YTDB(TBCDB) - Shattered Hand Grunt - Cast Strike'),
('1686709','16867','0','0','40','1025','8500','12500','10000','14000','0','0','11','11978','1','0','0','0','0','0','0','0','0','0','YTDB(TBCDB) - Shattered Hand Grunt - Cast Kick');

REPLACE INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES
('720701','7207','22','0','100','1','61','9011','0','0','0','0','53','9003','0','0','15','2608','6','0','0','0','0','0','YTDB(TBCDB) - Doc Mixilpixil - Start Relay Script and Quest Complete (2608) on Receive Emote');

INSERT INTO `creature_ai_texts` (`entry`,`content_default`,`sound`,`type`,`language`,`emote`,`broadcast_text_id`,`comment`) VALUES
(-10042,'You''ve sealed your fate, Akama. The Master will learn of your betrayal!','0','1','0','0','20745','YTDB(TBCDB) - Vagath');

REPLACE INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action1_type`, `action1_param1`, `action1_param2`, `action1_param3`, `action2_type`, `action2_param1`, `action2_param2`, `action2_param3`, `action3_type`, `action3_param1`, `action3_param2`, `action3_param3`, `comment`) VALUES
(2286501, 22865, 11, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 39663, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'YTDB(TBCDB) - Illidan''s Presence - Cast Summon Cosmetic Fel Fire on Spawn');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `Entry` IN (888,7207,20666,21025,22865,22990,25962,25994,30366,32838,33211,33224);

# ACID tbc for 14041_01_mangos_creature_spell_lists.sql
DELETE FROM creature_ai_scripts WHERE Id IN(58905);
DELETE FROM creature_ai_scripts WHERE Id IN(59503);
DELETE FROM creature_ai_scripts WHERE Id IN(59504);

UPDATE `creature_ai_scripts` SET `action2_param1` = '1879401' WHERE `id` =1879407;
UPDATE `creature_ai_scripts` SET `action2_param1` = '1879402' WHERE `id` =1879412;
UPDATE `creature_ai_scripts` SET `action2_param1` = '1879403' WHERE `id` =1879416;
UPDATE `creature_ai_scripts` SET `action1_param3` = '256' WHERE `id` =2307802;
