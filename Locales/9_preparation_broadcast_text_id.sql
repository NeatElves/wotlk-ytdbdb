DELETE FROM `dbscript_string` WHERE `entry` = 2000002246;
DELETE FROM `dbscript_string` WHERE `entry` = 2000002248;
DELETE FROM `dbscript_string` WHERE `entry` = 2000002250;
DELETE FROM `dbscript_string` WHERE `entry` = 2000002252;
DELETE FROM `dbscript_string` WHERE `entry` = 2000002256;
DELETE FROM `dbscript_string` WHERE `entry` = 2000002258;
DELETE FROM `dbscript_random_templates` WHERE `id` = 20002 AND `type` = 0 AND `target_id` = 2000002246;
DELETE FROM `dbscript_random_templates` WHERE `id` = 20002 AND `type` = 0 AND `target_id` = 2000002248;
DELETE FROM `dbscript_random_templates` WHERE `id` = 20002 AND `type` = 0 AND `target_id` = 2000002250;
DELETE FROM `dbscript_random_templates` WHERE `id` = 20002 AND `type` = 0 AND `target_id` = 2000002252;
DELETE FROM `dbscript_random_templates` WHERE `id` = 20002 AND `type` = 0 AND `target_id` = 2000002256;
DELETE FROM `dbscript_random_templates` WHERE `id` = 20002 AND `type` = 0 AND `target_id` = 2000002258;

UPDATE dbscripts_on_creature_death JOIN dbscript_string ON dataint=entry JOIN broadcast_text ON dbscript_string.broadcast_text_id=broadcast_text.id
SET dataint=broadcast_text_id, broadcast_text.`ChatTypeID`=dbscript_string.`type`, broadcast_text.SoundEntriesID1=CASE WHEN broadcast_text.SoundEntriesID1 > 0 THEN broadcast_text.SoundEntriesID1 ELSE dbscript_string.sound END, broadcast_text.EmoteID1=CASE WHEN broadcast_text.EmoteID1 > 0 THEN broadcast_text.EmoteID1 ELSE dbscript_string.emote END;
UPDATE dbscripts_on_creature_death JOIN dbscript_string ON dataint2=entry JOIN broadcast_text ON dbscript_string.broadcast_text_id=broadcast_text.id
SET dataint2=broadcast_text_id, broadcast_text.`ChatTypeID`=dbscript_string.`type`, broadcast_text.SoundEntriesID1=CASE WHEN broadcast_text.SoundEntriesID1 > 0 THEN broadcast_text.SoundEntriesID1 ELSE dbscript_string.sound END, broadcast_text.EmoteID1=CASE WHEN broadcast_text.EmoteID1 > 0 THEN broadcast_text.EmoteID1 ELSE dbscript_string.emote END;
UPDATE dbscripts_on_creature_death JOIN dbscript_string ON dataint3=entry JOIN broadcast_text ON dbscript_string.broadcast_text_id=broadcast_text.id
SET dataint3=broadcast_text_id, broadcast_text.`ChatTypeID`=dbscript_string.`type`, broadcast_text.SoundEntriesID1=CASE WHEN broadcast_text.SoundEntriesID1 > 0 THEN broadcast_text.SoundEntriesID1 ELSE dbscript_string.sound END, broadcast_text.EmoteID1=CASE WHEN broadcast_text.EmoteID1 > 0 THEN broadcast_text.EmoteID1 ELSE dbscript_string.emote END;
UPDATE dbscripts_on_creature_death JOIN dbscript_string ON dataint4=entry JOIN broadcast_text ON dbscript_string.broadcast_text_id=broadcast_text.id
SET dataint4=broadcast_text_id, broadcast_text.`ChatTypeID`=dbscript_string.`type`, broadcast_text.SoundEntriesID1=CASE WHEN broadcast_text.SoundEntriesID1 > 0 THEN broadcast_text.SoundEntriesID1 ELSE dbscript_string.sound END, broadcast_text.EmoteID1=CASE WHEN broadcast_text.EmoteID1 > 0 THEN broadcast_text.EmoteID1 ELSE dbscript_string.emote END;

UPDATE dbscripts_on_creature_movement JOIN dbscript_string ON dataint=entry JOIN broadcast_text ON dbscript_string.broadcast_text_id=broadcast_text.id
SET dataint=broadcast_text_id, broadcast_text.`ChatTypeID`=dbscript_string.`type`, broadcast_text.SoundEntriesID1=CASE WHEN broadcast_text.SoundEntriesID1 > 0 THEN broadcast_text.SoundEntriesID1 ELSE dbscript_string.sound END, broadcast_text.EmoteID1=CASE WHEN broadcast_text.EmoteID1 > 0 THEN broadcast_text.EmoteID1 ELSE dbscript_string.emote END;
UPDATE dbscripts_on_creature_movement JOIN dbscript_string ON dataint2=entry JOIN broadcast_text ON dbscript_string.broadcast_text_id=broadcast_text.id
SET dataint2=broadcast_text_id, broadcast_text.`ChatTypeID`=dbscript_string.`type`, broadcast_text.SoundEntriesID1=CASE WHEN broadcast_text.SoundEntriesID1 > 0 THEN broadcast_text.SoundEntriesID1 ELSE dbscript_string.sound END, broadcast_text.EmoteID1=CASE WHEN broadcast_text.EmoteID1 > 0 THEN broadcast_text.EmoteID1 ELSE dbscript_string.emote END;
UPDATE dbscripts_on_creature_movement JOIN dbscript_string ON dataint3=entry JOIN broadcast_text ON dbscript_string.broadcast_text_id=broadcast_text.id
SET dataint3=broadcast_text_id, broadcast_text.`ChatTypeID`=dbscript_string.`type`, broadcast_text.SoundEntriesID1=CASE WHEN broadcast_text.SoundEntriesID1 > 0 THEN broadcast_text.SoundEntriesID1 ELSE dbscript_string.sound END, broadcast_text.EmoteID1=CASE WHEN broadcast_text.EmoteID1 > 0 THEN broadcast_text.EmoteID1 ELSE dbscript_string.emote END;
UPDATE dbscripts_on_creature_movement JOIN dbscript_string ON dataint4=entry JOIN broadcast_text ON dbscript_string.broadcast_text_id=broadcast_text.id
SET dataint4=broadcast_text_id, broadcast_text.`ChatTypeID`=dbscript_string.`type`, broadcast_text.SoundEntriesID1=CASE WHEN broadcast_text.SoundEntriesID1 > 0 THEN broadcast_text.SoundEntriesID1 ELSE dbscript_string.sound END, broadcast_text.EmoteID1=CASE WHEN broadcast_text.EmoteID1 > 0 THEN broadcast_text.EmoteID1 ELSE dbscript_string.emote END;

UPDATE dbscripts_on_quest_start JOIN dbscript_string ON dataint=entry JOIN broadcast_text ON dbscript_string.broadcast_text_id=broadcast_text.id
SET dataint=broadcast_text_id, broadcast_text.`ChatTypeID`=dbscript_string.`type`, broadcast_text.SoundEntriesID1=CASE WHEN broadcast_text.SoundEntriesID1 > 0 THEN broadcast_text.SoundEntriesID1 ELSE dbscript_string.sound END, broadcast_text.EmoteID1=CASE WHEN broadcast_text.EmoteID1 > 0 THEN broadcast_text.EmoteID1 ELSE dbscript_string.emote END;
UPDATE dbscripts_on_quest_start JOIN dbscript_string ON dataint2=entry JOIN broadcast_text ON dbscript_string.broadcast_text_id=broadcast_text.id
SET dataint2=broadcast_text_id, broadcast_text.`ChatTypeID`=dbscript_string.`type`, broadcast_text.SoundEntriesID1=CASE WHEN broadcast_text.SoundEntriesID1 > 0 THEN broadcast_text.SoundEntriesID1 ELSE dbscript_string.sound END, broadcast_text.EmoteID1=CASE WHEN broadcast_text.EmoteID1 > 0 THEN broadcast_text.EmoteID1 ELSE dbscript_string.emote END;
UPDATE dbscripts_on_quest_start JOIN dbscript_string ON dataint3=entry JOIN broadcast_text ON dbscript_string.broadcast_text_id=broadcast_text.id
SET dataint3=broadcast_text_id, broadcast_text.`ChatTypeID`=dbscript_string.`type`, broadcast_text.SoundEntriesID1=CASE WHEN broadcast_text.SoundEntriesID1 > 0 THEN broadcast_text.SoundEntriesID1 ELSE dbscript_string.sound END, broadcast_text.EmoteID1=CASE WHEN broadcast_text.EmoteID1 > 0 THEN broadcast_text.EmoteID1 ELSE dbscript_string.emote END;
UPDATE dbscripts_on_quest_start JOIN dbscript_string ON dataint4=entry JOIN broadcast_text ON dbscript_string.broadcast_text_id=broadcast_text.id
SET dataint4=broadcast_text_id, broadcast_text.`ChatTypeID`=dbscript_string.`type`, broadcast_text.SoundEntriesID1=CASE WHEN broadcast_text.SoundEntriesID1 > 0 THEN broadcast_text.SoundEntriesID1 ELSE dbscript_string.sound END, broadcast_text.EmoteID1=CASE WHEN broadcast_text.EmoteID1 > 0 THEN broadcast_text.EmoteID1 ELSE dbscript_string.emote END;

UPDATE dbscripts_on_quest_end JOIN dbscript_string ON dataint=entry JOIN broadcast_text ON dbscript_string.broadcast_text_id=broadcast_text.id
SET dataint=broadcast_text_id, broadcast_text.`ChatTypeID`=dbscript_string.`type`, broadcast_text.SoundEntriesID1=CASE WHEN broadcast_text.SoundEntriesID1 > 0 THEN broadcast_text.SoundEntriesID1 ELSE dbscript_string.sound END, broadcast_text.EmoteID1=CASE WHEN broadcast_text.EmoteID1 > 0 THEN broadcast_text.EmoteID1 ELSE dbscript_string.emote END;
UPDATE dbscripts_on_quest_end JOIN dbscript_string ON dataint2=entry JOIN broadcast_text ON dbscript_string.broadcast_text_id=broadcast_text.id
SET dataint2=broadcast_text_id, broadcast_text.`ChatTypeID`=dbscript_string.`type`, broadcast_text.SoundEntriesID1=CASE WHEN broadcast_text.SoundEntriesID1 > 0 THEN broadcast_text.SoundEntriesID1 ELSE dbscript_string.sound END, broadcast_text.EmoteID1=CASE WHEN broadcast_text.EmoteID1 > 0 THEN broadcast_text.EmoteID1 ELSE dbscript_string.emote END;
UPDATE dbscripts_on_quest_end JOIN dbscript_string ON dataint3=entry JOIN broadcast_text ON dbscript_string.broadcast_text_id=broadcast_text.id
SET dataint3=broadcast_text_id, broadcast_text.`ChatTypeID`=dbscript_string.`type`, broadcast_text.SoundEntriesID1=CASE WHEN broadcast_text.SoundEntriesID1 > 0 THEN broadcast_text.SoundEntriesID1 ELSE dbscript_string.sound END, broadcast_text.EmoteID1=CASE WHEN broadcast_text.EmoteID1 > 0 THEN broadcast_text.EmoteID1 ELSE dbscript_string.emote END;
UPDATE dbscripts_on_quest_end JOIN dbscript_string ON dataint4=entry JOIN broadcast_text ON dbscript_string.broadcast_text_id=broadcast_text.id
SET dataint4=broadcast_text_id, broadcast_text.`ChatTypeID`=dbscript_string.`type`, broadcast_text.SoundEntriesID1=CASE WHEN broadcast_text.SoundEntriesID1 > 0 THEN broadcast_text.SoundEntriesID1 ELSE dbscript_string.sound END, broadcast_text.EmoteID1=CASE WHEN broadcast_text.EmoteID1 > 0 THEN broadcast_text.EmoteID1 ELSE dbscript_string.emote END;

UPDATE dbscripts_on_go_use JOIN dbscript_string ON dataint=entry JOIN broadcast_text ON dbscript_string.broadcast_text_id=broadcast_text.id
SET dataint=broadcast_text_id, broadcast_text.`ChatTypeID`=dbscript_string.`type`, broadcast_text.SoundEntriesID1=CASE WHEN broadcast_text.SoundEntriesID1 > 0 THEN broadcast_text.SoundEntriesID1 ELSE dbscript_string.sound END, broadcast_text.EmoteID1=CASE WHEN broadcast_text.EmoteID1 > 0 THEN broadcast_text.EmoteID1 ELSE dbscript_string.emote END;
UPDATE dbscripts_on_go_use JOIN dbscript_string ON dataint2=entry JOIN broadcast_text ON dbscript_string.broadcast_text_id=broadcast_text.id
SET dataint2=broadcast_text_id, broadcast_text.`ChatTypeID`=dbscript_string.`type`, broadcast_text.SoundEntriesID1=CASE WHEN broadcast_text.SoundEntriesID1 > 0 THEN broadcast_text.SoundEntriesID1 ELSE dbscript_string.sound END, broadcast_text.EmoteID1=CASE WHEN broadcast_text.EmoteID1 > 0 THEN broadcast_text.EmoteID1 ELSE dbscript_string.emote END;
UPDATE dbscripts_on_go_use JOIN dbscript_string ON dataint3=entry JOIN broadcast_text ON dbscript_string.broadcast_text_id=broadcast_text.id
SET dataint3=broadcast_text_id, broadcast_text.`ChatTypeID`=dbscript_string.`type`, broadcast_text.SoundEntriesID1=CASE WHEN broadcast_text.SoundEntriesID1 > 0 THEN broadcast_text.SoundEntriesID1 ELSE dbscript_string.sound END, broadcast_text.EmoteID1=CASE WHEN broadcast_text.EmoteID1 > 0 THEN broadcast_text.EmoteID1 ELSE dbscript_string.emote END;
UPDATE dbscripts_on_go_use JOIN dbscript_string ON dataint4=entry JOIN broadcast_text ON dbscript_string.broadcast_text_id=broadcast_text.id
SET dataint4=broadcast_text_id, broadcast_text.`ChatTypeID`=dbscript_string.`type`, broadcast_text.SoundEntriesID1=CASE WHEN broadcast_text.SoundEntriesID1 > 0 THEN broadcast_text.SoundEntriesID1 ELSE dbscript_string.sound END, broadcast_text.EmoteID1=CASE WHEN broadcast_text.EmoteID1 > 0 THEN broadcast_text.EmoteID1 ELSE dbscript_string.emote END;

UPDATE dbscripts_on_go_template_use JOIN dbscript_string ON dataint=entry JOIN broadcast_text ON dbscript_string.broadcast_text_id=broadcast_text.id
SET dataint=broadcast_text_id, broadcast_text.`ChatTypeID`=dbscript_string.`type`, broadcast_text.SoundEntriesID1=CASE WHEN broadcast_text.SoundEntriesID1 > 0 THEN broadcast_text.SoundEntriesID1 ELSE dbscript_string.sound END, broadcast_text.EmoteID1=CASE WHEN broadcast_text.EmoteID1 > 0 THEN broadcast_text.EmoteID1 ELSE dbscript_string.emote END;
UPDATE dbscripts_on_go_template_use JOIN dbscript_string ON dataint2=entry JOIN broadcast_text ON dbscript_string.broadcast_text_id=broadcast_text.id
SET dataint2=broadcast_text_id, broadcast_text.`ChatTypeID`=dbscript_string.`type`, broadcast_text.SoundEntriesID1=CASE WHEN broadcast_text.SoundEntriesID1 > 0 THEN broadcast_text.SoundEntriesID1 ELSE dbscript_string.sound END, broadcast_text.EmoteID1=CASE WHEN broadcast_text.EmoteID1 > 0 THEN broadcast_text.EmoteID1 ELSE dbscript_string.emote END;
UPDATE dbscripts_on_go_template_use JOIN dbscript_string ON dataint3=entry JOIN broadcast_text ON dbscript_string.broadcast_text_id=broadcast_text.id
SET dataint3=broadcast_text_id, broadcast_text.`ChatTypeID`=dbscript_string.`type`, broadcast_text.SoundEntriesID1=CASE WHEN broadcast_text.SoundEntriesID1 > 0 THEN broadcast_text.SoundEntriesID1 ELSE dbscript_string.sound END, broadcast_text.EmoteID1=CASE WHEN broadcast_text.EmoteID1 > 0 THEN broadcast_text.EmoteID1 ELSE dbscript_string.emote END;
UPDATE dbscripts_on_go_template_use JOIN dbscript_string ON dataint4=entry JOIN broadcast_text ON dbscript_string.broadcast_text_id=broadcast_text.id
SET dataint4=broadcast_text_id, broadcast_text.`ChatTypeID`=dbscript_string.`type`, broadcast_text.SoundEntriesID1=CASE WHEN broadcast_text.SoundEntriesID1 > 0 THEN broadcast_text.SoundEntriesID1 ELSE dbscript_string.sound END, broadcast_text.EmoteID1=CASE WHEN broadcast_text.EmoteID1 > 0 THEN broadcast_text.EmoteID1 ELSE dbscript_string.emote END;

UPDATE dbscripts_on_event JOIN dbscript_string ON dataint=entry JOIN broadcast_text ON dbscript_string.broadcast_text_id=broadcast_text.id
SET dataint=broadcast_text_id, broadcast_text.`ChatTypeID`=dbscript_string.`type`, broadcast_text.SoundEntriesID1=CASE WHEN broadcast_text.SoundEntriesID1 > 0 THEN broadcast_text.SoundEntriesID1 ELSE dbscript_string.sound END, broadcast_text.EmoteID1=CASE WHEN broadcast_text.EmoteID1 > 0 THEN broadcast_text.EmoteID1 ELSE dbscript_string.emote END;
UPDATE dbscripts_on_event JOIN dbscript_string ON dataint2=entry JOIN broadcast_text ON dbscript_string.broadcast_text_id=broadcast_text.id
SET dataint2=broadcast_text_id, broadcast_text.`ChatTypeID`=dbscript_string.`type`, broadcast_text.SoundEntriesID1=CASE WHEN broadcast_text.SoundEntriesID1 > 0 THEN broadcast_text.SoundEntriesID1 ELSE dbscript_string.sound END, broadcast_text.EmoteID1=CASE WHEN broadcast_text.EmoteID1 > 0 THEN broadcast_text.EmoteID1 ELSE dbscript_string.emote END;
UPDATE dbscripts_on_event JOIN dbscript_string ON dataint3=entry JOIN broadcast_text ON dbscript_string.broadcast_text_id=broadcast_text.id
SET dataint3=broadcast_text_id, broadcast_text.`ChatTypeID`=dbscript_string.`type`, broadcast_text.SoundEntriesID1=CASE WHEN broadcast_text.SoundEntriesID1 > 0 THEN broadcast_text.SoundEntriesID1 ELSE dbscript_string.sound END, broadcast_text.EmoteID1=CASE WHEN broadcast_text.EmoteID1 > 0 THEN broadcast_text.EmoteID1 ELSE dbscript_string.emote END;
UPDATE dbscripts_on_event JOIN dbscript_string ON dataint4=entry JOIN broadcast_text ON dbscript_string.broadcast_text_id=broadcast_text.id
SET dataint4=broadcast_text_id, broadcast_text.`ChatTypeID`=dbscript_string.`type`, broadcast_text.SoundEntriesID1=CASE WHEN broadcast_text.SoundEntriesID1 > 0 THEN broadcast_text.SoundEntriesID1 ELSE dbscript_string.sound END, broadcast_text.EmoteID1=CASE WHEN broadcast_text.EmoteID1 > 0 THEN broadcast_text.EmoteID1 ELSE dbscript_string.emote END;

UPDATE dbscripts_on_gossip JOIN dbscript_string ON dataint=entry JOIN broadcast_text ON dbscript_string.broadcast_text_id=broadcast_text.id
SET dataint=broadcast_text_id, broadcast_text.`ChatTypeID`=dbscript_string.`type`, broadcast_text.SoundEntriesID1=CASE WHEN broadcast_text.SoundEntriesID1 > 0 THEN broadcast_text.SoundEntriesID1 ELSE dbscript_string.sound END, broadcast_text.EmoteID1=CASE WHEN broadcast_text.EmoteID1 > 0 THEN broadcast_text.EmoteID1 ELSE dbscript_string.emote END;
UPDATE dbscripts_on_gossip JOIN dbscript_string ON dataint2=entry JOIN broadcast_text ON dbscript_string.broadcast_text_id=broadcast_text.id
SET dataint2=broadcast_text_id, broadcast_text.`ChatTypeID`=dbscript_string.`type`, broadcast_text.SoundEntriesID1=CASE WHEN broadcast_text.SoundEntriesID1 > 0 THEN broadcast_text.SoundEntriesID1 ELSE dbscript_string.sound END, broadcast_text.EmoteID1=CASE WHEN broadcast_text.EmoteID1 > 0 THEN broadcast_text.EmoteID1 ELSE dbscript_string.emote END;
UPDATE dbscripts_on_gossip JOIN dbscript_string ON dataint3=entry JOIN broadcast_text ON dbscript_string.broadcast_text_id=broadcast_text.id
SET dataint3=broadcast_text_id, broadcast_text.`ChatTypeID`=dbscript_string.`type`, broadcast_text.SoundEntriesID1=CASE WHEN broadcast_text.SoundEntriesID1 > 0 THEN broadcast_text.SoundEntriesID1 ELSE dbscript_string.sound END, broadcast_text.EmoteID1=CASE WHEN broadcast_text.EmoteID1 > 0 THEN broadcast_text.EmoteID1 ELSE dbscript_string.emote END;
UPDATE dbscripts_on_gossip JOIN dbscript_string ON dataint4=entry JOIN broadcast_text ON dbscript_string.broadcast_text_id=broadcast_text.id
SET dataint4=broadcast_text_id, broadcast_text.`ChatTypeID`=dbscript_string.`type`, broadcast_text.SoundEntriesID1=CASE WHEN broadcast_text.SoundEntriesID1 > 0 THEN broadcast_text.SoundEntriesID1 ELSE dbscript_string.sound END, broadcast_text.EmoteID1=CASE WHEN broadcast_text.EmoteID1 > 0 THEN broadcast_text.EmoteID1 ELSE dbscript_string.emote END;

UPDATE dbscripts_on_relay JOIN dbscript_string ON dataint=entry JOIN broadcast_text ON dbscript_string.broadcast_text_id=broadcast_text.id
SET dataint=broadcast_text_id, broadcast_text.`ChatTypeID`=dbscript_string.`type`, broadcast_text.SoundEntriesID1=CASE WHEN broadcast_text.SoundEntriesID1 > 0 THEN broadcast_text.SoundEntriesID1 ELSE dbscript_string.sound END, broadcast_text.EmoteID1=CASE WHEN broadcast_text.EmoteID1 > 0 THEN broadcast_text.EmoteID1 ELSE dbscript_string.emote END;
UPDATE dbscripts_on_relay JOIN dbscript_string ON dataint2=entry JOIN broadcast_text ON dbscript_string.broadcast_text_id=broadcast_text.id
SET dataint2=broadcast_text_id, broadcast_text.`ChatTypeID`=dbscript_string.`type`, broadcast_text.SoundEntriesID1=CASE WHEN broadcast_text.SoundEntriesID1 > 0 THEN broadcast_text.SoundEntriesID1 ELSE dbscript_string.sound END, broadcast_text.EmoteID1=CASE WHEN broadcast_text.EmoteID1 > 0 THEN broadcast_text.EmoteID1 ELSE dbscript_string.emote END;
UPDATE dbscripts_on_relay JOIN dbscript_string ON dataint3=entry JOIN broadcast_text ON dbscript_string.broadcast_text_id=broadcast_text.id
SET dataint3=broadcast_text_id, broadcast_text.`ChatTypeID`=dbscript_string.`type`, broadcast_text.SoundEntriesID1=CASE WHEN broadcast_text.SoundEntriesID1 > 0 THEN broadcast_text.SoundEntriesID1 ELSE dbscript_string.sound END, broadcast_text.EmoteID1=CASE WHEN broadcast_text.EmoteID1 > 0 THEN broadcast_text.EmoteID1 ELSE dbscript_string.emote END;
UPDATE dbscripts_on_relay JOIN dbscript_string ON dataint4=entry JOIN broadcast_text ON dbscript_string.broadcast_text_id=broadcast_text.id
SET dataint4=broadcast_text_id, broadcast_text.`ChatTypeID`=dbscript_string.`type`, broadcast_text.SoundEntriesID1=CASE WHEN broadcast_text.SoundEntriesID1 > 0 THEN broadcast_text.SoundEntriesID1 ELSE dbscript_string.sound END, broadcast_text.EmoteID1=CASE WHEN broadcast_text.EmoteID1 > 0 THEN broadcast_text.EmoteID1 ELSE dbscript_string.emote END;

UPDATE dbscripts_on_spell JOIN dbscript_string ON dataint=entry JOIN broadcast_text ON dbscript_string.broadcast_text_id=broadcast_text.id
SET dataint=broadcast_text_id, broadcast_text.`ChatTypeID`=dbscript_string.`type`, broadcast_text.SoundEntriesID1=CASE WHEN broadcast_text.SoundEntriesID1 > 0 THEN broadcast_text.SoundEntriesID1 ELSE dbscript_string.sound END, broadcast_text.EmoteID1=CASE WHEN broadcast_text.EmoteID1 > 0 THEN broadcast_text.EmoteID1 ELSE dbscript_string.emote END;
UPDATE dbscripts_on_spell JOIN dbscript_string ON dataint2=entry JOIN broadcast_text ON dbscript_string.broadcast_text_id=broadcast_text.id
SET dataint2=broadcast_text_id, broadcast_text.`ChatTypeID`=dbscript_string.`type`, broadcast_text.SoundEntriesID1=CASE WHEN broadcast_text.SoundEntriesID1 > 0 THEN broadcast_text.SoundEntriesID1 ELSE dbscript_string.sound END, broadcast_text.EmoteID1=CASE WHEN broadcast_text.EmoteID1 > 0 THEN broadcast_text.EmoteID1 ELSE dbscript_string.emote END;
UPDATE dbscripts_on_spell JOIN dbscript_string ON dataint3=entry JOIN broadcast_text ON dbscript_string.broadcast_text_id=broadcast_text.id
SET dataint3=broadcast_text_id, broadcast_text.`ChatTypeID`=dbscript_string.`type`, broadcast_text.SoundEntriesID1=CASE WHEN broadcast_text.SoundEntriesID1 > 0 THEN broadcast_text.SoundEntriesID1 ELSE dbscript_string.sound END, broadcast_text.EmoteID1=CASE WHEN broadcast_text.EmoteID1 > 0 THEN broadcast_text.EmoteID1 ELSE dbscript_string.emote END;
UPDATE dbscripts_on_spell JOIN dbscript_string ON dataint4=entry JOIN broadcast_text ON dbscript_string.broadcast_text_id=broadcast_text.id
SET dataint4=broadcast_text_id, broadcast_text.`ChatTypeID`=dbscript_string.`type`, broadcast_text.SoundEntriesID1=CASE WHEN broadcast_text.SoundEntriesID1 > 0 THEN broadcast_text.SoundEntriesID1 ELSE dbscript_string.sound END, broadcast_text.EmoteID1=CASE WHEN broadcast_text.EmoteID1 > 0 THEN broadcast_text.EmoteID1 ELSE dbscript_string.emote END;

UPDATE dbscript_random_templates JOIN dbscript_string ON target_id=entry JOIN broadcast_text ON dbscript_string.broadcast_text_id=broadcast_text.id
SET target_id=broadcast_text_id, broadcast_text.`ChatTypeID`=dbscript_string.`type`, broadcast_text.SoundEntriesID1=CASE WHEN broadcast_text.SoundEntriesID1 > 0 THEN broadcast_text.SoundEntriesID1 ELSE dbscript_string.sound END, broadcast_text.EmoteID1=CASE WHEN broadcast_text.EmoteID1 > 0 THEN broadcast_text.EmoteID1 ELSE dbscript_string.emote END;

# Not found text id 2000003180, 2000003187 in script dbscripts_on_creature_movement id 2911205
DELETE FROM `dbscripts_on_creature_movement` WHERE `id` = 2911205;
UPDATE `creature_movement_template` SET `script_id` = '2911201' WHERE `entry` =29112 AND `pathId` =0 AND `point` =5;

# Remove table dbscript_string
# DROP TABLE dbscript_string;
# Remove table creature_ai_texts
# DROP TABLE creature_ai_texts;
