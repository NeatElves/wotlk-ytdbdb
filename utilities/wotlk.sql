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

INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES
('2111801','21118','11','0','100','0','0','0','0','0','0','0','57','2','25','0','0','0','0','0','0','0','0','0','YTDB(TBCDB) - Razak Ironsides - Enable Range Mode on Spawn'),
('2111802','21118','4','0','50','0','0','0','0','0','0','0','54','0','0','10172','0','0','0','0','0','0','0','0','YTDB(TBCDB) - Razak Ironsides - Random Say on Aggro'),
('2111803','21118','9','0','100','1025','5','30','2300','3900','0','0','11','36246','1','256','0','0','0','0','0','0','0','0','YTDB(TBCDB) - Razak Ironsides - Cast Shoot Tech Gun'),
('2142601','21426','30','0','100','1','6','0','0','0','0','0','51','0','0','0','0','0','0','0','0','0','0','0','YTDB(TBCDB) - Gnome Defender - 209 - Unpause Waypoint Movement on Receive AI Event Custom B'),
('2144104','21441','30','0','100','1','5','0','0','0','0','0','51','0','0','0','0','0','0','0','0','0','0','0','YTDB(TBCDB) - Station Sharpshooter - Unpause Waypoint Movement on Receive AI Event Custom A');

INSERT INTO dbscript_random_templates (id, type, target_id, chance, comments) VALUES
(10172,0,-11229,0,'YTDB(TBCDB) - 21118 - Random Aggro Texts'),
(10172,0,-11230,0,'YTDB(TBCDB) - 21118 - Random Aggro Texts'),
(10172,0,-11231,0,'YTDB(TBCDB) - 21118 - Random Aggro Texts'),
(10172,0,-11232,0,'YTDB(TBCDB) - 21118 - Random Aggro Texts');

REPLACE INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action1_type`, `action1_param1`, `action1_param2`, `action1_param3`, `action2_type`, `action2_param1`, `action2_param2`, `action2_param3`, `action3_type`, `action3_param1`, `action3_param2`, `action3_param3`, `comment`) VALUES
(3036651, 30366, 1, 0, 100, 0, 1000, 1000, 0, 0, 0, 0, 12, 30340, 0, 300000, 11, 56577, 0, 0, 0, 0, 0, 0, 'YTDB - Quest 13011'),
(3283851, 32838, 10, 0, 100, 1, 1, 5, 21600000, 28800000, 0, 0, 11, 61839, 7, 22, 11, 61995, 0, 0, 41, 3000, 0, 0, 'YTDB - NPC 32838'),
(3321101, 33211, 22, 0, 100, 1, 58, 2878, 0, 0, 0, 0, 11, 62537, 0, 0, 28, 6, 62574, 0, 41, 20000, 0, 0, 'YTDB - Q. A Blade Fit For A Champion'),
(3321102, 33211, 22, 0, 100, 1, 58, 2879, 0, 0, 0, 0, 11, 62581, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'YTDB - Q. A Blade Fit For A Champion'),
(3322401, 33224, 22, 0, 100, 1, 58, 2878, 0, 0, 0, 0, 41, 0, 0, 0, 12, 33220, 0, 30000, 28, 6, 62574, 0, 'YTDB - Q. A Blade Fit For A Champion'),
(3322402, 33224, 22, 0, 100, 1, 58, 2879, 0, 0, 0, 0, 11, 62581, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'YTDB - Q. A Blade Fit For A Champion');

INSERT INTO `creature_ai_texts` (`entry`,`content_default`,`sound`,`type`,`language`,`emote`,`broadcast_text_id`,`comment`) VALUES
(-10042,'You''ve sealed your fate, Akama. The Master will learn of your betrayal!','0','1','0','0','20745','YTDB(TBCDB) - Vagath'),
('-11229','I only have one rule. Everyone fights. No one quits.','0','0','0','0','19093','YTDB(TBCDB) - Razak Ironsides 21118'),
('-11230','You don''t do your job, I''ll shoot you myself.','0','0','0','0','19094','YTDB(TBCDB) - Razak Ironsides 21118'),
('-11231','Come on you apes. You want to live forever?','0','0','0','0','19095','YTDB(TBCDB) - Razak Ironsides 21118'),
('-11232','Warm it up and give ''em everything you''ve got.','0','0','0','0','19096','YTDB(TBCDB) - Razak Ironsides 21118');

REPLACE INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action1_type`, `action1_param1`, `action1_param2`, `action1_param3`, `action2_type`, `action2_param1`, `action2_param2`, `action2_param3`, `action3_type`, `action3_param1`, `action3_param2`, `action3_param3`, `comment`) VALUES
(2286501, 22865, 11, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 39663, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'YTDB(TBCDB) - Illidan''s Presence - Cast Summon Cosmetic Fel Fire on Spawn');

# xak, vremennaya zamena id 20390 na 50000
UPDATE creature_ai_scripts SET action1_param1 = 50000 WHERE id =2737002;
DELETE FROM dbscripts_on_relay WHERE id IN (50000);
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(50000,10,31,27370,5,0,27359,50,7 | 0x08,0,0,0,0,0,0,0,0,'Part of Vengeful Geist EAI: buddy search for 27370 - terminate if alive'),
(50000,100,1,0,0,0,27359,40,7,0,0,0,0,0,0,0,0,'Part of Vengeful Geist EAI: buddy emote 0'),
(50000,150,25,1,0,0,27359,40,7,0,0,0,0,0,0,0,0,'Part of Vengeful Geist EAI: buddy Run ON'),
(50000,1000,0,0,10,0,27359,50,7,2000003640,2000003641,2000003642,2000003643,0,0,0,0,'Part of Vengeful Geist EAI: buddy - random say'),
(50000,2000,8,27359,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Vengeful Geist EAI: kill credit'),
(50000,3000,20,2,0,0,27359,40,7,0,0,0,0,0,0,0,0,'Part of Vengeful Geist EAI: buddy waypoints');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `Entry` IN (888,20666,21025,21118,21426,22865,22990,30366,32838,33211,33224);
