REPLACE INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES
('2315202','23152','2','2','100','0','2','0','0','0','0','0','53','10136','0','0','22','2','0','0','0','0','0','0','YTDB(TBCDB) - Vagath - Start Relay Script and Set Phase 2 at 1% HP (Phase 0)'),
('2315204','23152','6','0','100','0','0','0','0','0','0','0','1','20745','0','0','53','10134','0','0','0','0','0','0','YTDB(TBCDB) - Vagath - Yell and Start Relay Script on Death');

REPLACE INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action1_type`, `action1_param1`, `action1_param2`, `action1_param3`, `action2_type`, `action2_param1`, `action2_param2`, `action2_param3`, `action3_type`, `action3_param1`, `action3_param2`, `action3_param3`, `comment`) VALUES
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
# part of file 3_base_fixs.sql
(3036651, 30366, 1, 0, 100, 0, 1000, 1000, 0, 0, 0, 0, 12, 30340, 0, 300000, 11, 56577, 0, 0, 0, 0, 0, 0, 'YTDB - Quest 13011'),
# part of file 3_base_fixs.sql
(3283851, 32838, 10, 0, 100, 0, 1, 5, 21600000, 28800000, 1, 0, 11, 61839, 7, 11, 53, 50003, 6, 0, 41, 3000, 0, 0, 'YTDB - NPC 32838');


UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `Entry` IN (20666,21025,22990,30366,32838);

# [ACID] Ghostlands - Amani Pass rework
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES
('2376201','23762','8','0','100','0','42333','-1','0','0','0','0','47','7','0','0','0','0','0','0','0','0','0','0','Brend - Set Standstate on SpellHit'),
('2376202','23762','11','0','100','0','0','0','0','0','0','0','22','1','0','0','0','0','0','0','0','0','0','0','Brend - Set Phase 1 OnSpawn'),
('2376203','23762','1','5','100','1','8000','12000','8000','12000','0','0','10','1','11','92','0','0','0','0','0','0','0','0','Brend - Play RandomEmote (Phase 1)'),
('2376204','23762','30','28','100','1','5','0','0','0','0','0','22','0','0','0','0','0','0','0','0','0','0','0','Brend - Set Phase 0 on ReceiveEventAI A'),
('2376205','23762','30','0','100','1','6','0','0','0','0','0','22','1','0','0','0','0','0','0','0','0','0','0','Brend - Set Phase 1 on ReceiveEventAI B'),
-- Marge (23764)
-- On Spawn Bottle is equiped so we can throw torch or start rp with morgom/brend
('2376401','23764','11','0','100','0','0','0','0','0','0','0','22','2','0','0','0','0','0','0','0','0','0','0','Marge - Set Phase 2 OnSpawn'),
('2376402','23764','30','0','100','1','5','0','0','0','0','0','22','1','0','0','0','0','0','0','0','0','0','0','Marge - SetPhase 1 on ReceiveEventAI A'),
('2376403','23764','30','0','100','1','6','0','0','0','0','0','22','2','0','0','0','0','0','0','0','0','0','0','Marge - SetPhase 2 on ReceiveEventAI B'),
('2376404','23764','30','0','100','1','8','0','0','0','0','0','22','0','0','0','0','0','0','0','0','0','0','0','Marge - SetPhase 0 on ReceiveEventAI C'),
('2376405','23764','1','5','100','1','8000','12000','8000','12000','0','0','53','-10301','0','0','0','0','0','0','0','0','0','0','Marge - Start RandomScript (Phase 1)'),
('2376406','23764','1','3','100','1','8000','12000','8000','12000','0','0','53','-10302','0','0','0','0','0','0','0','0','0','0','Marge - Start RandomScript (Phase 2)'),
-- Morgom (23766)
('2376601','23766','8','0','100','0','42333','-1','0','0','0','0','47','7','0','0','0','0','0','0','0','0','0','0','Morgom - Set Standstate on SpellHit'),
('2376602','23766','11','0','100','0','0','0','0','0','0','0','22','1','0','0','0','0','0','0','0','0','0','0','Morgom - Set Phase 1 OnSpawn'),
('2376603','23766','30','0','100','1','5','0','0','0','0','0','22','1','0','0','0','0','0','0','0','0','0','0','Morgom - SetPhase 1 on ReceiveEventAI A'),
('2376604','23766','30','0','100','1','6','0','0','0','0','0','22','2','0','0','0','0','0','0','0','0','0','0','Morgom - SetPhase 2 on ReceiveEventAI B'),
('2376605','23766','30','0','100','1','8','0','0','0','0','0','22','0','0','0','0','0','0','0','0','0','0','0','Morgom - SetPhase 0 on ReceiveEventAI C'),
('2376606','23766','1','5','100','1','8000','12000','8000','12000','0','0','53','-10310','0','0','0','0','0','0','0','0','0','0','Morgom - RandomScript (Phase 1)'),
('2376607','23766','1','3','100','1','8000','12000','8000','12000','0','0','53','-10311','0','0','0','0','0','0','0','0','0','0','Morgom - RandomScript (Phase 2)');
UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `Entry` IN (23762,23764,23766);

# -- Ulduar: Boss encounter Hodir
UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `Entry` = 33169;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 33169;
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action1_type`, `action1_param1`, `action1_param2`, `action1_param3`, `action2_type`, `action2_param1`, `action2_param2`, `action2_param3`, `action3_type`, `action3_param1`, `action3_param2`, `action3_param3`, `comment`) VALUES
(3316901, 33169, 29, 0, 100, 1024, 3500, 3500, 0, 0, 0, 0, 11, 62453, 15, 0, 11, 62236, 15, 2, 0, 0, 0, 0, 'Time = 4 seconds - Self: Cast Icicle (62453) on none, Self: Cast Icicle (62236) on none with flags TRIGGERED, ');

# 5442_auriaya.sql
UPDATE `creature_ai_scripts` SET `event_param1`=100,`event_param2`=1000 WHERE `id` IN (3401404, 3401405);

INSERT INTO `creature_ai_summons`(`id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`comment`) VALUES
(101,-1252.25,1480.16,68.6433,2.57844,10000,'Map 543 - Shattered Hand Warhound 17280'),
(102,-1254.02,1475.32,68.6572,2.35442,10000,'Map 543 - Shattered Hand Warhound 17280'),
(103,-1256.66,1470.34,68.6661,1.8788,10000,'Map 543 - Shattered Hand Warhound 17280'),
(104,-1241.57,1466.78,68.5736,2.4672,10000,'Map 543 - Shattered Hand Warhound 17280');
