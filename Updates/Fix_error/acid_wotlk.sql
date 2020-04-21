REPLACE INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action1_type`, `action1_param1`, `action1_param2`, `action1_param3`, `action2_type`, `action2_param1`, `action2_param2`, `action2_param3`, `action3_type`, `action3_param1`, `action3_param2`, `action3_param3`, `comment`) VALUES
(2336402, 23364, 30, 0, 100, 0, 5, 23364, 0, 0, 0, 0, 4, 431, 0, 0, 41, 0, 0, 0, 0, 0, 0, 0, 'YTDB(TBCDB) - Black Dragon Whelpling - Play Sound 431 amd Despawn Self on Receive AI Event 5 (A)');

REPLACE INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES
('2315202','23152','2','2','100','0','2','0','0','0','0','0','53','10136','0','0','22','2','0','0','0','0','0','0','YTDB(TBCDB) - Vagath - Start Relay Script and Set Phase 2 at 1% HP (Phase 0)'),
('2315204','23152','6','0','100','0','0','0','0','0','0','0','1','-10042','0','0','53','10134','0','0','0','0','0','0','YTDB(TBCDB) - Vagath - Yell and Start Relay Script on Death');

REPLACE INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES
('1978001','19780','30','0','100','1','5','19617','0','0','0','0','0','0','0','0','22','1','0','0','0','0','0','0','YTDB(TBCDB) - Off-Duty Engineer - Set Phase 1 on Receive AI Event 5 (A)'),
('1978002','19780','30','0','100','1','6','19617','0','0','0','0','0','0','0','0','22','0','0','0','0','0','0','0','YTDB(TBCDB) - Off-Duty Engineer - Set Phase 0 on Receive AI Event 6 (B)'),
('1978003','19780','1','2','100','1','8000','14000','8000','14000','0','0','5','92','0','0','0','0','0','0','0','0','0','0','YTDB(TBCDB) - Off-Duty Engineer - OneShotEatNoSheathe OOC (Phase 0)');

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
(2306101, 23061, 30, 0, 100, 0, 5, 23061, 0, 0, 0, 0, 54, 0, 11, 10083, 22, 2, 0, 0, 0, 0, 0, 0, 'YTDB(TBCDB) - Rivendark - Random Yell and Set Phase 2 on Receive AI Event 5 (A)'),
(2306102, 23061, 29, 3, 100, 0, 2000, 2000, 0, 0, 0, 0, 19, 256, 0, 0, 55, 11, 0, 0, 22, 1, 0, 0, 'YTDB(TBCDB) - Rivendark - Remove UNIT_FLAG_IMMUNE_TO_PLAYER and Attack Spawner and Set Phase 1 on Generic Timer (Phase 2)'),
(2306103, 23061, 0, 6, 100, 1025, 6000, 6000, 6000, 6000, 0, 0, 11, 40032, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'YTDB(TBCDB) - Rivendark - Cast Fiery Breath (Phase 0)'),
(2306104, 23061, 0, 5, 100, 1025, 3500, 5500, 7000, 12000, 0, 0, 11, 40505, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'YTDB(TBCDB) - Rivendark - Cast Cleave (Phase 1)'),
(2306105, 23061, 0, 5, 100, 1025, 5000, 15000, 10000, 30000, 0, 0, 11, 9573, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'YTDB(TBCDB) - Rivendark - Cast Flame Breath (Phase 1)'),
(2306106, 23061, 33, 5, 100, 1025, 0, 0, 9000, 15000, 0, 0, 11, 15847, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'YTDB(TBCDB) - Rivendark - Cast Tail Sweep (Phase 1)'),
(2306107, 23061, 0, 5, 100, 1025, 8000, 25000, 25000, 60000, 0, 0, 11, 36922, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'YTDB(TBCDB) - Rivendark - Cast Bellowing Roar (Phase 1)'),
(2306108, 23061, 0, 5, 100, 1025, 10000, 20000, 40000, 60000, 0, 0, 11, 41988, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'YTDB(TBCDB) - Rivendark - Cast Corruption (Phase 1)'),
(2306109, 23061, 6, 5, 100, 0, 0, 0, 0, 0, 0, 0, 53, 10127, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'YTDB(TBCDB) - Rivendark - Start Relay Script on Death (Phase 1)'),
(2306110, 23061, 21, 5, 100, 0, 0, 0, 0, 0, 0, 0, 41, 8000, 0, 0, 53, 10128, 0, 0, 0, 0, 0, 0, 'YTDB(TBCDB) - Rivendark - Delayed Despawn and Start Relay Script on Reached Home (Phase 1)'),
(2326101, 23261, 30, 0, 100, 0, 5, 23261, 0, 0, 0, 0, 54, 0, 11, 10083, 22, 2, 0, 0, 0, 0, 0, 0, 'YTDB(TBCDB) - Furywing - Random Yell and Set Phase 2 on Receive AI Event 5 (A)'),
(2326102, 23261, 29, 3, 100, 0, 2000, 2000, 0, 0, 0, 0, 19, 256, 0, 0, 55, 11, 0, 0, 22, 1, 0, 0, 'YTDB(TBCDB) - Furywing - Remove UNIT_FLAG_IMMUNE_TO_PLAYER and Attack Spawner and Set Phase 1 on Generic Timer (Phase 2)'),
(2326103, 23261, 0, 6, 100, 1025, 6000, 6000, 6000, 6000, 0, 0, 11, 40032, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'YTDB(TBCDB) - Furywing - Cast Fiery Breath (Phase 0)'),
(2326104, 23261, 0, 5, 100, 1025, 3500, 5500, 7000, 12000, 0, 0, 11, 40505, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'YTDB(TBCDB) - Furywing - Cast Cleave (Phase 1)'),
(2326105, 23261, 0, 5, 100, 1025, 5000, 15000, 10000, 30000, 0, 0, 11, 9573, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'YTDB(TBCDB) - Furywing - Cast Flame Breath (Phase 1)'),
(2326106, 23261, 33, 5, 100, 1025, 0, 0, 9000, 15000, 0, 0, 11, 15847, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'YTDB(TBCDB) - Furywing - Cast Tail Sweep (Phase 1)'),
(2326107, 23261, 0, 5, 100, 1025, 8000, 25000, 25000, 60000, 0, 0, 11, 36922, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'YTDB(TBCDB) - Furywing - Cast Bellowing Roar (Phase 1)'),
(2326108, 23261, 0, 5, 100, 1025, 4000, 7000, 40000, 60000, 0, 0, 11, 41572, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'YTDB(TBCDB) - Furywing - Cast Wing Buffet (Phase 1)'),
(2326109, 23261, 6, 5, 100, 0, 0, 0, 0, 0, 0, 0, 53, 10129, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'YTDB(TBCDB) - Furywing - Start Relay Script on Death (Phase 1)'),
(2326110, 23261, 21, 5, 100, 0, 0, 0, 0, 0, 0, 0, 41, 8000, 0, 0, 53, 10130, 0, 0, 0, 0, 0, 0, 'YTDB(TBCDB) - Furywing - Delayed Despawn and Start Relay Script on Reached Home (Phase 1)'),
(2328101, 23281, 30, 0, 100, 0, 5, 23281, 0, 0, 0, 0, 54, 0, 11, 10083, 22, 2, 0, 0, 0, 0, 0, 0, 'YTDB(TBCDB) - Insidion - Random Yell and Set Phase 2 on Receive AI Event 5 (A)'),
(2328102, 23281, 29, 3, 100, 0, 2000, 2000, 0, 0, 0, 0, 19, 256, 0, 0, 55, 11, 0, 0, 22, 1, 0, 0, 'YTDB(TBCDB) - Insidion - Remove UNIT_FLAG_IMMUNE_TO_PLAYER and Attack Spawner and Set Phase 1 on Generic Timer (Phase 2)'),
(2328103, 23281, 0, 6, 100, 1025, 6000, 6000, 6000, 6000, 0, 0, 11, 40032, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'YTDB(TBCDB) - Insidion - Cast Fiery Breath (Phase 0)'),
(2328104, 23281, 0, 5, 100, 1025, 3500, 5500, 7000, 12000, 0, 0, 11, 40505, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'YTDB(TBCDB) - Insidion - Cast Cleave (Phase 1)'),
(2328105, 23281, 0, 5, 100, 1025, 5000, 15000, 10000, 30000, 0, 0, 11, 9573, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'YTDB(TBCDB) - Insidion - Cast Flame Breath (Phase 1)'),
(2328106, 23281, 33, 5, 100, 1025, 0, 0, 9000, 15000, 0, 0, 11, 15847, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'YTDB(TBCDB) - Insidion - Cast Tail Sweep (Phase 1)'),
(2328107, 23281, 0, 5, 100, 1025, 8000, 25000, 25000, 60000, 0, 0, 11, 36922, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'YTDB(TBCDB) - Insidion - Cast Bellowing Roar (Phase 1)'),
(2328108, 23281, 0, 5, 100, 1025, 3000, 7000, 10000, 30000, 0, 0, 11, 40719, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'YTDB(TBCDB) - Insidion - Cast Flame Buffet (Phase 1)'),
(2328109, 23281, 6, 5, 100, 0, 0, 0, 0, 0, 0, 0, 53, 10131, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'YTDB(TBCDB) - Insidion - Start Relay Script on Death (Phase 1)'),
(2328110, 23281, 21, 5, 100, 0, 0, 0, 0, 0, 0, 0, 41, 8000, 0, 0, 53, 10132, 0, 0, 0, 0, 0, 0, 'YTDB(TBCDB) - Insidion - Delayed Despawn and Start Relay Script on Reached Home (Phase 1)'),
(2328201, 23282, 30, 0, 100, 0, 5, 23282, 0, 0, 0, 0, 54, 0, 11, 10083, 22, 2, 0, 0, 0, 0, 0, 0, 'YTDB(TBCDB) - Obsidia - Random Yell and Set Phase 2 on Receive AI Event 5 (A)'),
(2328202, 23282, 29, 3, 100, 0, 2000, 2000, 0, 0, 0, 0, 19, 256, 0, 0, 55, 11, 0, 0, 22, 1, 0, 0, 'YTDB(TBCDB) - Obsidia - Remove UNIT_FLAG_IMMUNE_TO_PLAYER and Attack Spawner and Set Phase 1 on Generic Timer (Phase 2)'),
(2328203, 23282, 0, 6, 100, 1025, 6000, 6000, 6000, 6000, 0, 0, 11, 40032, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'YTDB(TBCDB) - Obsidia - Cast Fiery Breath (Phase 0)'),
(2328204, 23282, 0, 5, 100, 1025, 3500, 5500, 7000, 12000, 0, 0, 11, 40505, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'YTDB(TBCDB) - Obsidia - Cast Cleave (Phase 1)'),
(2328205, 23282, 0, 5, 100, 1025, 5000, 15000, 10000, 30000, 0, 0, 11, 9573, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'YTDB(TBCDB) - Obsidia - Cast Flame Breath (Phase 1)'),
(2328206, 23282, 33, 5, 100, 1025, 0, 0, 9000, 15000, 0, 0, 11, 15847, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'YTDB(TBCDB) - Obsidia - Cast Tail Sweep (Phase 1)'),
(2328207, 23282, 0, 5, 100, 1025, 8000, 25000, 25000, 60000, 0, 0, 11, 36922, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'YTDB(TBCDB) - Obsidia - Cast Bellowing Roar (Phase 1)'),
(2328208, 23282, 0, 5, 100, 1025, 5000, 7000, 20000, 30000, 0, 0, 11, 40717, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'YTDB(TBCDB) - Obsidia - Cast Hellfire (Phase 1)'),
(2328209, 23282, 6, 5, 100, 0, 0, 0, 0, 0, 0, 0, 53, 10125, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'YTDB(TBCDB) - Obsidia - Start Relay Script on Death (Phase 1)'),
(2328210, 23282, 21, 5, 100, 0, 0, 0, 0, 0, 0, 0, 41, 8000, 0, 0, 53, 10126, 0, 0, 0, 0, 0, 0, 'YTDB(TBCDB) - Obsidia - Delayed Despawn and Start Relay Script on Reached Home (Phase 1)'),
(2299001, 22990, 0, 0, 100, 1025, 2000, 9000, 7500, 12000, 0, 0, 11, 39945, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'YTDB(TBCDB) - Akama - Cast Chain Lightning'),
(2299002, 22990, 21, 0, 100, 0, 0, 0, 0, 0, 0, 0, 45, 5, 300, 11, 0, 0, 0, 0, 0, 0, 0, 0, 'YTDB(TBCDB) - Akama - Send AI Event A on Reached Home');

REPLACE INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action1_type`, `action1_param1`, `action1_param2`, `action1_param3`, `action2_type`, `action2_param1`, `action2_param2`, `action2_param3`, `action3_type`, `action3_param1`, `action3_param2`, `action3_param3`, `comment`) VALUES
(3036651, 30366, 1, 0, 100, 0, 1000, 1000, 0, 0, 0, 0, 12, 30340, 0, 300000, 11, 56577, 0, 0, 0, 0, 0, 0, 'YTDB - Quest 13011'),
(3283851, 32838, 10, 0, 100, 1, 1, 5, 21600000, 28800000, 0, 0, 11, 61839, 7, 22, 11, 61995, 0, 0, 41, 3000, 0, 0, 'YTDB - NPC 32838'),
(3321101, 33211, 22, 0, 100, 1, 58, 2878, 0, 0, 0, 0, 11, 62537, 0, 0, 28, 6, 62574, 0, 41, 20000, 0, 0, 'YTDB - Q. A Blade Fit For A Champion'),
(3321102, 33211, 22, 0, 100, 1, 58, 2879, 0, 0, 0, 0, 11, 62581, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'YTDB - Q. A Blade Fit For A Champion'),
(3322401, 33224, 22, 0, 100, 1, 58, 2878, 0, 0, 0, 0, 41, 0, 0, 0, 12, 33220, 0, 30000, 28, 6, 62574, 0, 'YTDB - Q. A Blade Fit For A Champion'),
(3322402, 33224, 22, 0, 100, 1, 58, 2879, 0, 0, 0, 0, 11, 62581, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'YTDB - Q. A Blade Fit For A Champion');

REPLACE INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action1_type`, `action1_param1`, `action1_param2`, `action1_param3`, `action2_type`, `action2_param1`, `action2_param2`, `action2_param3`, `action3_type`, `action3_param1`, `action3_param2`, `action3_param3`, `comment`) VALUES
(2111401, 21114, 1, 0, 100, 1, 30000, 300000, 300000, 600000, 0, 0, 11, 36301, 0, 0, 54, 0, 0, 10171, 53, 10164, 0, 0, 'YTDB(TBCDB) - Station Technician - Cast On Fire and Say Random Text amd Start Relay Script OOC'),
(2111402, 21114, 1, 0, 100, 33, 30000, 60000, 30000, 60000, 0, 0, 10, 273, 274, -1, 10, 6, 1, -1, 0, 0, 0, 0, 'YTDB(TBCDB) - Station Technician - Random Emote OOC'),
(2111403, 21114, 21, 0, 100, 0, 0, 0, 0, 0, 0, 0, 5, 133, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'YTDB(TBCDB) - Station Technician - Emote on Reached Home');

INSERT INTO `creature_ai_texts` (`entry`,`content_default`,`sound`,`type`,`language`,`emote`,`broadcast_text_id`,`comment`) VALUES
(-10042,'You''ve sealed your fate, Akama. The Master will learn of your betrayal!','0','1','0','0','0','YTDB(TBCDB) - Vagath'),
(-11206,'What''s this?!  $n and $g his : her; friends come to play?','7274','1','0','0','0','YTDB(TBCDB) - 23282/23281/23261/23281'),
(-11207,'The Skyguard shall pay for your temerity, $n!','7274','1','0','0','0','YTDB(TBCDB) - 23282/23281/23261/23281'),
(-11208,'Little $r, you will now come to appreciate my wrath!','7274','1','0','0','0','YTDB(TBCDB) - 23282/23281/23261/23281'),
(-11209,'You have dared to defile my perch and must now be cleansed in fire!','7274','1','0','0','0','YTDB(TBCDB) - 23282/23281/23261/23281'),
(-11210,'Get away from my clutch!!!','7274','1','0','0','0','YTDB(TBCDB) - 23282/23281/23261/23281'),
(-11211,'I tire of interruptions from the insignificant.  Your time has come, $n!','7274','1','0','0','0','YTDB(TBCDB) - 23282/23281/23261/23281'),
(-11212,'I know you by your stench, little $n.  Here, in my perch, is where your bones shall finally rest.','7274','1','0','0','0','YTDB(TBCDB) - 23282/23281/23261/23281'),
(-11213,'I believe that I shall feast upon both $r and ogre flesh tonight.','7274','1','0','0','0','YTDB(TBCDB) - 23282/23281/23261/23281'),
(-11222,'I''M ON FIRE!!!','0','0','0','0','0','YTDB(TBCDB) - Station Technician 21114'),
(-11223,'I''M ON FIRE!!!  AGAIN!!','0','0','0','0','0','YTDB(TBCDB) - Station Technician 21114'),
(-11224,'IT BURNS!!','0','0','0','0','0','YTDB(TBCDB) - Station Technician 21114'),
(-11225,'Not again...','0','0','0','0','0','YTDB(TBCDB) - Station Technician 21114'),
(-11226,'WHY ME!?!','0','0','0','0','0','YTDB(TBCDB) - Station Technician 21114'),
(-11227,'This is going to hurt in the morning.','0','0','0','0','0','YTDB(TBCDB) - Station Technician 21114'),
(-11228,'YEOW!!','0','0','0','0','0','YTDB(TBCDB) - Station Technician 21114');

INSERT INTO `dbscript_random_templates` (`id`, `type`, `target_id`, `chance`, `comments`) VALUES
(10083, 0, -11213, 0, '23282/23281/23261/23281 - Random Texts'),
(10083, 0, -11212, 0, '23282/23281/23261/23281 - Random Texts'),
(10083, 0, -11211, 0, '23282/23281/23261/23281 - Random Texts'),
(10083, 0, -11210, 0, '23282/23281/23261/23281 - Random Texts'),
(10083, 0, -11209, 0, '23282/23281/23261/23281 - Random Texts'),
(10083, 0, -11208, 0, '23282/23281/23261/23281 - Random Texts'),
(10083, 0, -11207, 0, '23282/23281/23261/23281 - Random Texts'),
(10083, 0, -11206, 0, '23282/23281/23261/23281 - Random Texts'),
(10171,0,-11222,0,'21114 - Random OOC Texts'),
(10171,0,-11223,0,'21114 - Random OOC Texts'),
(10171,0,-11224,0,'21114 - Random OOC Texts'),
(10171,0,-11225,0,'21114 - Random OOC Texts'),
(10171,0,-11226,0,'21114 - Random OOC Texts'),
(10171,0,-11227,0,'21114 - Random OOC Texts'),
(10171,0,-11228,0,'21114 - Random OOC Texts');

REPLACE INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action1_type`, `action1_param1`, `action1_param2`, `action1_param3`, `action2_type`, `action2_param1`, `action2_param2`, `action2_param3`, `action3_type`, `action3_param1`, `action3_param2`, `action3_param3`, `comment`) VALUES
(2286501, 22865, 11, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 39663, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'YTDB(TBCDB) - Illidan''s Presence - Cast Summon Cosmetic Fel Fire on Spawn');

REPLACE INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action1_type`, `action1_param1`, `action1_param2`, `action1_param3`, `action2_type`, `action2_param1`, `action2_param2`, `action2_param3`, `action3_type`, `action3_param1`, `action3_param2`, `action3_param3`, `comment`) VALUES
(1763601, 17636, 30, 0, 100, 1, 5, 19570, 0, 0, 0, 0, 53, -10172, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'YTDB(TBCDB) - Kalynna Lathred - Start Relay Script (Random Emote) on Receive AI Event 5'),
(1957101, 19571, 30, 0, 100, 1, 5, 19570, 0, 0, 0, 0, 53, -10172, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'YTDB(TBCDB) - Innkeeper Remi Dodoso  - Start Relay Script (Random Emote) on Receive AI Event 5'),
(1957201, 19572, 30, 0, 100, 1, 5, 19570, 0, 0, 0, 0, 53, -10172, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'YTDB(TBCDB) - Gant  - Start Relay Script (Random Emote) on Receive AI Event 5'),
(1957301, 19573, 30, 0, 100, 1, 5, 19570, 0, 0, 0, 0, 53, -10172, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'YTDB(TBCDB) - Dash  - Start Relay Script (Random Emote) on Receive AI Event 5'),
(1957401, 19574, 30, 0, 100, 1, 5, 19570, 0, 0, 0, 0, 53, -10172, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'YTDB(TBCDB) - Kizzie  - Start Relay Script (Random Emote) on Receive AI Event 5'),
(1957501, 19575, 30, 0, 100, 1, 5, 19570, 0, 0, 0, 0, 53, -10172, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'YTDB(TBCDB) - Qiff  - Start Relay Script (Random Emote) on Receive AI Event 5'),
(1957601, 19576, 30, 0, 100, 1, 5, 19570, 0, 0, 0, 0, 53, -10172, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'YTDB(TBCDB) - Xyrol  - Start Relay Script (Random Emote) on Receive AI Event 5'),
(1961001, 19610, 30, 0, 100, 1, 5, 19570, 0, 0, 0, 0, 53, -10172, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'YTDB(TBCDB) - Irradiated Worker - Start Relay Script (Random Emote) on Receive AI Event 5'),
(1961201, 19612, 30, 0, 100, 1, 5, 19570, 0, 0, 0, 0, 53, -10172, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'YTDB(TBCDB) - Irradiated Manager - Start Relay Script (Random Emote) on Receive AI Event 5'),
(1964502, 19645, 30, 0, 100, 1, 5, 19570, 0, 0, 0, 0, 53, -10172, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'YTDB(TBCDB) - Papa Wheeler  - Start Relay Script (Random Emote) on Receive AI Event 5'),
(1970901, 19709, 30, 0, 100, 1, 5, 19570, 0, 0, 0, 0, 53, -10172, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'YTDB(TBCDB) - Chief Engineer Trep - Start Relay Script (Random Emote) on Receive AI Event 5'),
(1973701, 19737, 30, 0, 100, 1, 5, 19570, 0, 0, 0, 0, 53, -10172, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'YTDB(TBCDB) - Engineering Crewmember - Start Relay Script (Random Emote) on Receive AI Event 5'),
(1988001, 19880, 30, 0, 100, 1, 5, 19570, 0, 0, 0, 0, 53, -10172, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'YTDB(TBCDB) - Nether-Stalker Khay''ji - Start Relay Script (Random Emote) on Receive AI Event 5'),
(2149301, 21493, 30, 0, 100, 1, 5, 19570, 0, 0, 0, 0, 53, -10172, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'YTDB(TBCDB) - Kablamm Farflinger - Start Relay Script (Random Emote) on Receive AI Event 5'),
(2175101, 21751, 30, 0, 100, 1, 5, 19570, 0, 0, 0, 0, 53, -10172, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'YTDB(TBCDB) - Chubis - Start Relay Script (Random Emote) on Receive AI Event 5');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `Entry` IN (888,17636,19571,19572,19573,19574,19575,19576,19610,19612,19709,19737,19780,19880,21114,21493,21751,20666,21025,22865,22990,23061,23261,23281,23282,30366,32838,33211,33224);
