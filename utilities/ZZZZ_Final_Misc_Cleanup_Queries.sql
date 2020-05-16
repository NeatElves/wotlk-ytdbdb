-- =========================================================================================================================================================
-- =================                    APPLY LATEST ITEM NAMES AND REFERENCE NAMES TO LOOT / REFERENCE / VENDOR TABLES                    =================
-- =========================================================================================================================================================
UPDATE `reference_loot_template` SET comments='';
UPDATE `reference_loot_template` ct JOIN `item_template` it ON it.entry = ct.item AND ct.MinCountOrRef > 0 SET ct.comments = CONCAT(ct.comments, "", it.name);
UPDATE `reference_loot_template` ct JOIN `reference_loot_template_names` rltn ON rltn.entry = ct.item AND ct.MinCountOrRef < 0 SET ct.comments = CONCAT(ct.comments, "", rltn.name);

UPDATE `creature_loot_template` SET comments='';
UPDATE `creature_loot_template` ct JOIN `item_template` it ON it.entry = ct.item AND ct.MinCountOrRef > 0 SET ct.comments = CONCAT(ct.comments, "", it.name);
UPDATE `creature_loot_template` ct JOIN `reference_loot_template_names` rltn ON rltn.entry = ct.item AND ct.MinCountOrRef < 0 SET ct.comments = CONCAT(ct.comments, "", rltn.name);

UPDATE `gameobject_loot_template` SET comments='';
UPDATE `gameobject_loot_template` ct JOIN `item_template` it ON it.entry = ct.item AND ct.MinCountOrRef > 0 SET ct.comments = CONCAT(ct.comments, "", it.name);
UPDATE `gameobject_loot_template` ct JOIN `reference_loot_template_names` rltn ON rltn.entry = ct.item AND ct.MinCountOrRef < 0 SET ct.comments = CONCAT(ct.comments, "", rltn.name);

UPDATE `disenchant_loot_template` SET comments='';
UPDATE `disenchant_loot_template` ct JOIN `item_template` it ON it.entry = ct.item AND ct.MinCountOrRef > 0 SET ct.comments = CONCAT(ct.comments, "", it.name);
UPDATE `disenchant_loot_template` ct JOIN `reference_loot_template_names` rltn ON rltn.entry = ct.item AND ct.MinCountOrRef < 0 SET ct.comments = CONCAT(ct.comments, "", rltn.name);

UPDATE `fishing_loot_template` SET comments='';
UPDATE `fishing_loot_template` ct JOIN `item_template` it ON it.entry = ct.item AND ct.MinCountOrRef > 0 SET ct.comments = CONCAT(ct.comments, "", it.name);
UPDATE `fishing_loot_template` ct JOIN `reference_loot_template_names` rltn ON rltn.entry = ct.item AND ct.MinCountOrRef < 0 SET ct.comments = CONCAT(ct.comments, "", rltn.name);

UPDATE `item_loot_template` SET comments='';
UPDATE `item_loot_template` ct JOIN `item_template` it ON it.entry = ct.item AND ct.MinCountOrRef > 0 SET ct.comments = CONCAT(ct.comments, "", it.name);
UPDATE `item_loot_template` ct JOIN `reference_loot_template_names` rltn ON rltn.entry = ct.item AND ct.MinCountOrRef < 0 SET ct.comments = CONCAT(ct.comments, "", rltn.name);

UPDATE `prospecting_loot_template` SET comments='';
UPDATE `prospecting_loot_template` ct JOIN `item_template` it ON it.entry = ct.item AND ct.MinCountOrRef > 0 SET ct.comments = CONCAT(ct.comments, "", it.name);
UPDATE `prospecting_loot_template` ct JOIN `reference_loot_template_names` rltn ON rltn.entry = ct.item AND ct.MinCountOrRef < 0 SET ct.comments = CONCAT(ct.comments, "", rltn.name);

UPDATE `skinning_loot_template` SET comments='';
UPDATE `skinning_loot_template` ct JOIN `item_template` it ON it.entry = ct.item AND ct.MinCountOrRef > 0 SET ct.comments = CONCAT(ct.comments, "", it.name);
UPDATE `skinning_loot_template` ct JOIN `reference_loot_template_names` rltn ON rltn.entry = ct.item AND ct.MinCountOrRef < 0 SET ct.comments = CONCAT(ct.comments, "", rltn.name);

UPDATE `pickpocketing_loot_template` SET comments='';
UPDATE `pickpocketing_loot_template` ct JOIN `item_template` it ON it.entry = ct.item AND ct.MinCountOrRef > 0 SET ct.comments = CONCAT(ct.comments, "", it.name);
UPDATE `pickpocketing_loot_template` ct JOIN `reference_loot_template_names` rltn ON rltn.entry = ct.item AND ct.MinCountOrRef < 0 SET ct.comments = CONCAT(ct.comments, "", rltn.name);

UPDATE `npc_vendor_template` SET comments='';
UPDATE `npc_vendor_template` ct JOIN `item_template` it ON it.entry = ct.item SET ct.comments = CONCAT(ct.comments, "", it.name);

UPDATE `npc_vendor` SET comments='';
UPDATE `npc_vendor` ct JOIN `item_template` it ON it.entry = ct.item SET ct.comments = CONCAT(ct.comments, "", it.name);

-- ==============================
-- Populate Condition Comments
-- ==============================
UPDATE conditions SET comments=NULL;
-- CONDITION_NONE
UPDATE conditions SET comments=CONCAT('Player Has Aura: ',value1, ', EffectIndex: ',value2) WHERE type=1 AND comments IS NULL; -- CONDITION_AURA
UPDATE conditions SET comments=CONCAT('Player Has ',value2,' or more of Item ID ',value1,' in Inventory') WHERE type=2 AND comments IS NULL; -- CONDITION_ITEM
UPDATE conditions SET comments=CONCAT('Player Has Item ID ',value1,' Equipped') WHERE type=3 AND comments IS NULL; -- CONDITION_ITEM_EQUIPPED
UPDATE conditions SET comments=CONCAT('Is In Area ID: ',value1) WHERE type=4 AND value2=0 AND comments IS NULL; -- CONDITION_AREAID
UPDATE conditions SET comments=CONCAT('NOT In Area ID: ',value1) WHERE type=4 AND value2=1 AND comments IS NULL; -- CONDITION_AREAID
UPDATE conditions SET comments=CONCAT('Has Minimum Rank Hated With Faction ID: ',value1) WHERE type=5 AND value2=0 AND comments IS NULL; -- CONDITION_REPUTATION_RANK_MIN
UPDATE conditions SET comments=CONCAT('Has Minimum Rank Hostile With Faction ID: ',value1) WHERE type=5 AND value2=1 AND comments IS NULL; -- CONDITION_REPUTATION_RANK_MIN
UPDATE conditions SET comments=CONCAT('Has Minimum Rank Unfriendly With Faction ID: ',value1) WHERE type=5 AND value2=2 AND comments IS NULL; -- CONDITION_REPUTATION_RANK_MIN
UPDATE conditions SET comments=CONCAT('Has Minimum Rank Neutral With Faction ID: ',value1) WHERE type=5 AND value2=3 AND comments IS NULL; -- CONDITION_REPUTATION_RANK_MIN
UPDATE conditions SET comments=CONCAT('Has Minimum Rank Friendly With Faction ID: ',value1) WHERE type=5 AND value2=4 AND comments IS NULL; -- CONDITION_REPUTATION_RANK_MIN
UPDATE conditions SET comments=CONCAT('Has Minimum Rank Honored With Faction ID: ',value1) WHERE type=5 AND value2=5 AND comments IS NULL; -- CONDITION_REPUTATION_RANK_MIN
UPDATE conditions SET comments=CONCAT('Has Minimum Rank Revered With Faction ID: ',value1) WHERE type=5 AND value2=6 AND comments IS NULL; -- CONDITION_REPUTATION_RANK_MIN
UPDATE conditions SET comments=CONCAT('Has Minimum Rank Exalted With Faction ID: ',value1) WHERE type=5 AND value2=7 AND comments IS NULL; -- CONDITION_REPUTATION_RANK_MIN
UPDATE conditions SET comments=CONCAT('Alliance Player') WHERE type=6 AND value1=469 AND comments IS NULL; -- CONDITION_TEAM
UPDATE conditions SET comments=CONCAT('Horde Player') WHERE type=6 AND value1=67 AND comments IS NULL; -- CONDITION_TEAM
UPDATE conditions SET comments=CONCAT('Has Skill ID ',value1,', Minimum Skill Value ',value2) WHERE type=7 AND comments IS NULL; -- CONDITION_SKILL
UPDATE conditions SET comments=CONCAT('Quest ID ',value1,' Rewarded') WHERE type=8 AND comments IS NULL; -- CONDITION_QUESTREWARDED
UPDATE conditions SET comments=CONCAT('Quest ID ',value1,' Taken') WHERE type=9 AND value2=0 AND comments IS NULL; -- CONDITION_QUESTTAKEN
UPDATE conditions SET comments=CONCAT('Quest ID ',value1,' Taken AND NOT Completed') WHERE type=9 AND value2=1 AND comments IS NULL; -- CONDITION_QUESTTAKEN
UPDATE conditions SET comments=CONCAT('Quest ID ',value1,' Taken AND Completed') WHERE type=9 AND value2=2 AND comments IS NULL; -- CONDITION_QUESTTAKEN
UPDATE conditions SET comments=CONCAT('Player has any Argent Dawn Commission Aura Active (17670,23930,24198,29112,29113)') WHERE type=10 AND comments IS NULL; -- CONDITION_AD_COMMISSION_AURA
UPDATE conditions SET comments=CONCAT('NOT Player Has Aura: ',value1, ', EffectIndex: ',value2) WHERE type=11 AND comments IS NULL; -- CONDITION_NO_AURA
UPDATE conditions SET comments=CONCAT('Event ID ',value1, ' Active') WHERE type=12 AND comments IS NULL; -- CONDITION_ACTIVE_EVENT
UPDATE conditions SET comments=CONCAT('Area Flag ',value1, ' Present in Current Area') WHERE type=13 AND value1 !=0 AND value2=0 AND comments IS NULL; -- CONDITION_AREA_FLAG
UPDATE conditions SET comments=CONCAT('Area Flag ',value2, ' NOT Present in Current Area') WHERE type=13 AND value1 =0 AND value2 !=0 AND comments IS NULL; -- CONDITION_AREA_FLAG
UPDATE conditions SET comments=CONCAT('Area Flag ',value1, ' Present in Current Area AND Area Flag ',value2,' NOT Present in Current Area') WHERE type=13 AND value1 !=0 AND value2 !=0 AND comments IS NULL; -- CONDITION_AREA_FLAG
UPDATE conditions SET comments=CONCAT('Player RaceMask: ',value1) WHERE type=14 AND value1 !=0 AND value2=0 AND comments IS NULL; -- CONDITION_RACE_CLASS
UPDATE conditions SET comments=CONCAT('Player ClassMask: ',value2) WHERE type=14 AND value1 =0 AND value2 !=0 AND comments IS NULL; -- CONDITION_RACE_CLASS
UPDATE conditions SET comments=CONCAT('Player RaceMask: ',value1, ' AND Player ClassMask: ',value2) WHERE type=14 AND value1 !=0 AND value2 !=0 AND comments IS NULL; -- CONDITION_RACE_CLASS
UPDATE conditions SET comments=CONCAT('Player Level == ',value1) WHERE type=15 AND value2=0 AND comments IS NULL; -- CONDITION_LEVEL
UPDATE conditions SET comments=CONCAT('Player Level >= ',value1) WHERE type=15 AND value2=1 AND comments IS NULL; -- CONDITION_LEVEL
UPDATE conditions SET comments=CONCAT('Player Level <= ',value1) WHERE type=15 AND value2=2 AND comments IS NULL; -- CONDITION_LEVEL
UPDATE conditions SET comments=CONCAT('Player Has Less Than ',value2,' of Item ID ',value1,' in Inventory') WHERE type=16 AND comments IS NULL; -- CONDITION_NOITEM
UPDATE conditions SET comments=CONCAT('Player Has Learned Spell: ',value1) WHERE type=17 AND value2=0 AND comments IS NULL; -- CONDITION_SPELL
UPDATE conditions SET comments=CONCAT('NOT Player Has Learned Spell: ',value1) WHERE type=17 AND value2=1 AND comments IS NULL; -- CONDITION_SPELL
-- CONDITION_INSTANCE_SCRIPT
UPDATE conditions SET comments=CONCAT('Quest ID ',value1,' Available') WHERE type=19 AND comments IS NULL; -- CONDITION_QUESTAVAILABLE
-- CONDITION_ACHIEVEMENT
-- CONDITION_ACHIEVEMENT_REALM
UPDATE conditions SET comments=CONCAT('Quest ID ',value1,' NOT Taken AND NOT Rewarded') WHERE type=22 AND comments IS NULL; -- CONDITION_QUEST_NONE
UPDATE conditions SET comments=CONCAT('Player Has ',value2,' or more of Item ID ',value1,' in Inventory/Bank') WHERE type=23 AND comments IS NULL; -- CONDITION_ITEM_WITH_BANK
UPDATE conditions SET comments=CONCAT('Player Has Less Than ',value2,' of Item ID ',value1,' in Inventory/Bank') WHERE type=24 AND comments IS NULL; -- CONDITION_NOITEM_WITH_BANK
UPDATE conditions SET comments=CONCAT('Game Event ',value1,' NOT Active') WHERE type=25 AND comments IS NULL; -- CONDITION_NOT_ACTIVE_GAME_EVENT
UPDATE conditions SET comments=CONCAT('Holiday ',value1,' Active') WHERE type=26 AND comments IS NULL; -- CONDITION_ACTIVE_HOLIDAY
UPDATE conditions SET comments=CONCAT('NOT Holiday ',value1,' Active') WHERE type=27 AND comments IS NULL; -- CONDITION_NOT_ACTIVE_HOLIDAY
UPDATE conditions SET comments=CONCAT('Player can learn Ability from Spell ID: ',value1) WHERE type=28 AND value2=0 AND comments IS NULL; -- CONDITION_LEARNABLE_ABILITY
UPDATE conditions SET comments=CONCAT('(Player can learn Ability from Spell ID ',value1,' AND NOT has Item ID ',value2,' in Inventory or Bank)') WHERE type=28 AND value2 !=0 AND comments IS NULL; -- CONDITION_LEARNABLE_ABILITY
UPDATE conditions SET comments=CONCAT('Skill level of Skill ID ',value1,' Below level ',value2) WHERE type=29 AND comments IS NULL; -- CONDITION_SKILL_BELOW
UPDATE conditions SET comments=CONCAT('Has Maximum Rank Hated With Faction ID: ',value1) WHERE type=30 AND value2=0 AND comments IS NULL; -- CONDITION_REPUTATION_RANK_MAX
UPDATE conditions SET comments=CONCAT('Has Maximum Rank Hostile With Faction ID: ',value1) WHERE type=30 AND value2=1 AND comments IS NULL; -- CONDITION_REPUTATION_RANK_MAX
UPDATE conditions SET comments=CONCAT('Has Maximum Rank Unfriendly With Faction ID: ',value1) WHERE type=30 AND value2=2 AND comments IS NULL; -- CONDITION_REPUTATION_RANK_MAX
UPDATE conditions SET comments=CONCAT('Has Maximum Rank Neutral With Faction ID: ',value1) WHERE type=30 AND value2=3 AND comments IS NULL; -- CONDITION_REPUTATION_RANK_MAX
UPDATE conditions SET comments=CONCAT('Has Maximum Rank Friendly With Faction ID: ',value1) WHERE type=30 AND value2=4 AND comments IS NULL; -- CONDITION_REPUTATION_RANK_MAX
UPDATE conditions SET comments=CONCAT('Has Maximum Rank Honored With Faction ID: ',value1) WHERE type=30 AND value2=5 AND comments IS NULL; -- CONDITION_REPUTATION_RANK_MAX
UPDATE conditions SET comments=CONCAT('Has Maximum Rank Revered With Faction ID: ',value1) WHERE type=30 AND value2=6 AND comments IS NULL; -- CONDITION_REPUTATION_RANK_MAX
UPDATE conditions SET comments=CONCAT('Has Maximum Rank Exalted With Faction ID: ',value1) WHERE type=30 AND value2=7 AND comments IS NULL; -- CONDITION_REPUTATION_RANK_MAX
UPDATE conditions SET comments=CONCAT('Dungeon Encounter ID ',value1,' Completed') WHERE type=31 AND value2=0 AND comments IS NULL; -- CONDITION_COMPLETED_ENCOUNTER
UPDATE conditions SET comments=CONCAT('Dungeon Encounter ID ',value1,' Completed OR Dungeon Encounter ID ',value2,' Completed') WHERE type=31 AND value2 !=0 AND comments IS NULL; -- CONDITION_COMPLETED_ENCOUNTER
UPDATE conditions SET comments=CONCAT('Source of Condition Has Aura: ',value1, ', EffectIndex: ',value2) WHERE type=32 AND comments IS NULL; -- CONDITION_SOURCE_AURA
UPDATE conditions SET comments=CONCAT('Source of Condition''s Last Waypoint == ',value1) WHERE type=33 AND value2=0 AND comments IS NULL; -- CONDITION_LAST_WAYPOINT
UPDATE conditions SET comments=CONCAT('Source of Condition''s Last Waypoint <= ',value1) WHERE type=33 AND value2=1 AND comments IS NULL; -- CONDITION_LAST_WAYPOINT
UPDATE conditions SET comments=CONCAT('Source of Condition''s Last Waypoint >= ',value1) WHERE type=33 AND value2=2 AND comments IS NULL; -- CONDITION_LAST_WAYPOINT
-- CONDITION_XP_USER
UPDATE conditions SET comments=CONCAT('Player Gender: Male') WHERE type=35 AND value1=0 AND comments IS NULL; -- CONDITION_GENDER
UPDATE conditions SET comments=CONCAT('Player Gender: Femal') WHERE type=35 AND value1=1 AND comments IS NULL; -- CONDITION_GENDER
UPDATE conditions SET comments=CONCAT('Player Gender: None') WHERE type=35 AND value1=2 AND comments IS NULL; -- CONDITION_GENDER
UPDATE conditions SET comments=CONCAT('Player is Dead') WHERE type=36 AND value1=0 AND value2=0 AND comments IS NULL; -- CONDITION_DEAD_OR_AWAY
UPDATE conditions SET comments=CONCAT('All Players in Group are Dead') WHERE type=36 AND value1=1 AND value2=0 AND comments IS NULL; -- CONDITION_DEAD_OR_AWAY
UPDATE conditions SET comments=CONCAT('All Players in Instance are Dead') WHERE type=36 AND value1=2 AND value2=0 AND comments IS NULL; -- CONDITION_DEAD_OR_AWAY
UPDATE conditions SET comments=CONCAT('Player is Dead OR NOT Within ',value2,'y of Source') WHERE type=36 AND value1=0 AND value2 !=0 AND comments IS NULL; -- CONDITION_DEAD_OR_AWAY
UPDATE conditions SET comments=CONCAT('All Players in Group are Dead OR NOT Within ',value2,'y of Source') WHERE type=36 AND value1=1 AND value2 !=0 AND comments IS NULL; -- CONDITION_DEAD_OR_AWAY
UPDATE conditions SET comments=CONCAT('All Players in Instance are Dead OR NOT Within ',value2,'y of Source') WHERE type=36 AND value1=2 AND value2 !=0 AND comments IS NULL; -- CONDITION_DEAD_OR_AWAY
UPDATE conditions SET comments=CONCAT('Creature Source is Dead') WHERE type=36 AND value1=3 AND comments IS NULL; -- CONDITION_DEAD_OR_AWAY
UPDATE conditions SET comments=CONCAT('Creature of Entry ',value1,' Found Alive Within ',value2,'y of Source') WHERE type=37 AND comments IS NULL;
-- CONDITION_PVP_SCRIPT

-- NOT, OR, AND (Run a few times to completely fill out the most complex conditions)
UPDATE conditions t, (SELECT DISTINCT condition_entry, comments FROM conditions) t1 -- CONDITION_NOT
   SET t.comments = CONCAT('NOT (',t1.comments,')')
 WHERE t.value1 = t1.condition_entry AND t.comments IS NULL
   AND t.type = -3;

UPDATE conditions t, (SELECT DISTINCT condition_entry, comments FROM conditions) t1, (SELECT DISTINCT condition_entry, comments FROM conditions) t2 -- CONDITION_OR
   SET t.comments = CONCAT('(',t1.comments,' OR ',t2.comments,')')
 WHERE t.value1 = t1.condition_entry AND t.value2= t2.condition_entry AND t.comments IS NULL
   AND t.type = -2;

UPDATE conditions t, (SELECT DISTINCT condition_entry, comments FROM conditions) t1, (SELECT DISTINCT condition_entry, comments FROM conditions) t2 -- CONDITION_AND
   SET t.comments = CONCAT('(',t1.comments,' AND ',t2.comments,')')
 WHERE t.value1 = t1.condition_entry AND t.value2= t2.condition_entry AND t.comments IS NULL
   AND t.type = -1;

UPDATE conditions t, (SELECT DISTINCT condition_entry, comments FROM conditions) t1 -- CONDITION_NOT
   SET t.comments = CONCAT('NOT (',t1.comments,')')
 WHERE t.value1 = t1.condition_entry AND t.comments IS NULL
   AND t.type = -3;

UPDATE conditions t, (SELECT DISTINCT condition_entry, comments FROM conditions) t1, (SELECT DISTINCT condition_entry, comments FROM conditions) t2 -- CONDITION_OR
   SET t.comments = CONCAT('(',t1.comments,' OR ',t2.comments,')')
 WHERE t.value1 = t1.condition_entry AND t.value2= t2.condition_entry AND t.comments IS NULL
   AND t.type = -2;

UPDATE conditions t, (SELECT DISTINCT condition_entry, comments FROM conditions) t1, (SELECT DISTINCT condition_entry, comments FROM conditions) t2 -- CONDITION_AND
   SET t.comments = CONCAT('(',t1.comments,' AND ',t2.comments,')')
 WHERE t.value1 = t1.condition_entry AND t.value2= t2.condition_entry AND t.comments IS NULL
   AND t.type = -1;

UPDATE conditions t, (SELECT DISTINCT condition_entry, comments FROM conditions) t1 -- CONDITION_NOT
   SET t.comments = CONCAT('NOT (',t1.comments,')')
 WHERE t.value1 = t1.condition_entry AND t.comments IS NULL
   AND t.type = -3;

UPDATE conditions t, (SELECT DISTINCT condition_entry, comments FROM conditions) t1, (SELECT DISTINCT condition_entry, comments FROM conditions) t2 -- CONDITION_OR
   SET t.comments = CONCAT('(',t1.comments,' OR ',t2.comments,')')
 WHERE t.value1 = t1.condition_entry AND t.value2= t2.condition_entry AND t.comments IS NULL
   AND t.type = -2;

UPDATE conditions t, (SELECT DISTINCT condition_entry, comments FROM conditions) t1, (SELECT DISTINCT condition_entry, comments FROM conditions) t2 -- CONDITION_AND
   SET t.comments = CONCAT('(',t1.comments,' AND ',t2.comments,')')
 WHERE t.value1 = t1.condition_entry AND t.value2= t2.condition_entry AND t.comments IS NULL
   AND t.type = -1;

UPDATE conditions t, (SELECT DISTINCT condition_entry, comments FROM conditions) t1 -- CONDITION_NOT
   SET t.comments = CONCAT('NOT (',t1.comments,')')
 WHERE t.value1 = t1.condition_entry AND t.comments IS NULL
   AND t.type = -3;

UPDATE conditions t, (SELECT DISTINCT condition_entry, comments FROM conditions) t1, (SELECT DISTINCT condition_entry, comments FROM conditions) t2 -- CONDITION_OR
   SET t.comments = CONCAT('(',t1.comments,' OR ',t2.comments,')')
 WHERE t.value1 = t1.condition_entry AND t.value2= t2.condition_entry AND t.comments IS NULL
   AND t.type = -2;

UPDATE conditions t, (SELECT DISTINCT condition_entry, comments FROM conditions) t1, (SELECT DISTINCT condition_entry, comments FROM conditions) t2 -- CONDITION_AND
   SET t.comments = CONCAT('(',t1.comments,' AND ',t2.comments,')')
 WHERE t.value1 = t1.condition_entry AND t.value2= t2.condition_entry AND t.comments IS NULL
   AND t.type = -1;

# Final_Fix
UPDATE `creature_ai_scripts` SET `event_param1` =1544 WHERE `event_type` =6 AND `event_param1` =1409 AND `event_param2` =0;
UPDATE `creature_ai_scripts` SET `event_param2` =1544 WHERE `event_type` =22 AND `event_param2` =1409 AND `event_param3` =0;
UPDATE `creature_ai_scripts` SET `event_param2` =340 WHERE `event_type` =22 AND `event_param2` =22 AND `event_param3` =0;
UPDATE `creature_ai_scripts` SET `event_param2` =273 WHERE `event_type` =22 AND `event_param2` =21 AND `event_param3` =0;
UPDATE `creature_ai_scripts` SET `event_param2` =2756 WHERE `event_type` =22 AND `event_param2` =1545 AND `event_param3` =0;
UPDATE `creature_ai_scripts` SET `event_param2` =2757 WHERE `event_type` =22 AND `event_param2` =1546 AND `event_param3` =0;
UPDATE `creature_ai_scripts` SET `event_param2` =2758 WHERE `event_type` =22 AND `event_param2` =1547 AND `event_param3` =0;
UPDATE `creature_ai_scripts` SET `event_param2` =2759 WHERE `event_type` =22 AND `event_param2` =1548 AND `event_param3` =0;
UPDATE `creature_ai_scripts` SET `event_param2` =2760 WHERE `event_type` =22 AND `event_param2` =1549 AND `event_param3` =0;
UPDATE `creature_ai_scripts` SET `event_param2` =2761 WHERE `event_type` =22 AND `event_param2` =1550 AND `event_param3` =0;
UPDATE `creature_ai_scripts` SET `event_param2` =2762 WHERE `event_type` =22 AND `event_param2` =1551 AND `event_param3` =0;
UPDATE `creature_ai_scripts` SET `event_param2` =2763 WHERE `event_type` =22 AND `event_param2` =1552 AND `event_param3` =0;
UPDATE `creature_ai_scripts` SET `event_param1` =2715 WHERE `event_type` =6 AND `event_param1` =10083 AND `event_param2` =0;
UPDATE `creature_ai_scripts` SET `event_param6` =2837 WHERE `event_type` =10 AND `event_param5` =30 AND `event_param6` =20007;
UPDATE `creature_ai_scripts` SET `event_param1` =1544 WHERE `event_param1` =1409 AND `action1_type` =54 AND `action1_param3` =10029;
UPDATE `creature_ai_scripts` SET `event_param6` =3025 WHERE `event_type` =10 AND `event_param5` =1 AND `event_param6` =10120;
UPDATE `creature_ai_scripts` SET `event_param6` =3142 WHERE `event_type` =10 AND `event_param5` =1 AND `event_param6` =9000;

# Finall_Spell_UP
UPDATE dbscripts_on_creature_death SET datalong = 59 WHERE command IN (2,4,5) AND datalong IN (46,58);
UPDATE dbscripts_on_creature_movement SET datalong = 59 WHERE command IN (2,4,5) AND datalong IN (46,58);
UPDATE dbscripts_on_event SET datalong = 59 WHERE command IN (2,4,5) AND datalong IN (46,58);
UPDATE dbscripts_on_go_use SET datalong = 59 WHERE command IN (2,4,5) AND datalong IN (46,58);
UPDATE dbscripts_on_go_template_use SET datalong = 59 WHERE command IN (2,4,5) AND datalong IN (46,58);
UPDATE dbscripts_on_gossip SET datalong = 59 WHERE command IN (2,4,5) AND datalong IN (46,58);
UPDATE dbscripts_on_quest_end SET datalong = 59 WHERE command IN (2,4,5) AND datalong IN (46,58);
UPDATE dbscripts_on_quest_start SET datalong = 59 WHERE command IN (2,4,5) AND datalong IN (46,58);
UPDATE dbscripts_on_spell SET datalong = 59 WHERE command IN (2,4,5) AND datalong IN (46,58);
UPDATE dbscripts_on_relay SET datalong = 59 WHERE command IN (2,4,5) AND datalong IN (46,58);

# NPC_ADDON_FIX
INSERT IGNORE INTO `creature_template_addon`
SELECT
`creature_template`.`DifficultyEntry1`,
`creature_template_addon`.`mount`,
`creature_template_addon`.`bytes1`,
`creature_template_addon`.`b2_0_sheath`,
`creature_template_addon`.`b2_1_pvp_state`,
`creature_template_addon`.`emote`,
`creature_template_addon`.`moveflags`,
`creature_template_addon`.`auras`
FROM
`creature_template`, `creature_template_addon`
WHERE
`creature_template_addon`.`entry`=`creature_template`.`entry`
AND `creature_template`.`DifficultyEntry1`>0;
INSERT IGNORE INTO `creature_template_addon`
SELECT
`creature_template`.`DifficultyEntry2`,
`creature_template_addon`.`mount`,
`creature_template_addon`.`bytes1`,
`creature_template_addon`.`b2_0_sheath`,
`creature_template_addon`.`b2_1_pvp_state`,
`creature_template_addon`.`emote`,
`creature_template_addon`.`moveflags`,
`creature_template_addon`.`auras`
FROM
`creature_template`, `creature_template_addon`
WHERE
`creature_template_addon`.`entry`=`creature_template`.`entry`
AND `creature_template`.`DifficultyEntry2`>0;
INSERT IGNORE INTO `creature_template_addon`
SELECT
`creature_template`.`DifficultyEntry3`,
`creature_template_addon`.`mount`,
`creature_template_addon`.`bytes1`,
`creature_template_addon`.`b2_0_sheath`,
`creature_template_addon`.`b2_1_pvp_state`,
`creature_template_addon`.`emote`,
`creature_template_addon`.`moveflags`,
`creature_template_addon`.`auras`
FROM
`creature_template`, `creature_template_addon`
WHERE
`creature_template_addon`.`entry`=`creature_template`.`entry`
AND `creature_template`.`DifficultyEntry3`>0;

# NPC_FIX
UPDATE
`creature_template`, `creature_template` AS `copy`
SET
`copy`.`RegenerateStats`=`creature_template`.`RegenerateStats`,
`copy`.`UnitClass`=`creature_template`.`UnitClass`,
`copy`.`UnitFlags`=`creature_template`.`UnitFlags`,
`copy`.`NpcFlags`=`creature_template`.`NpcFlags`,
`copy`.`dynamicflags`=`creature_template`.`dynamicflags`,
`copy`.`EquipmentTemplateId`=`creature_template`.`EquipmentTemplateId`,
`copy`.`Faction`=`creature_template`.`Faction`,
`copy`.`SpeedRun`=`creature_template`.`SpeedRun`,
`copy`.`SpeedWalk`=`creature_template`.`SpeedWalk`,
`copy`.`scale`=`creature_template`.`scale`,
`copy`.`DamageSchool`=`creature_template`.`DamageSchool`,
`copy`.`SchoolImmuneMask`=`creature_template`.`SchoolImmuneMask`,
`copy`.`MinLootGold`=`creature_template`.`MinLootGold`,
`copy`.`MaxLootGold`=`creature_template`.`MaxLootGold`,
`copy`.`VehicleTemplateId`=`creature_template`.`VehicleTemplateId`,
`copy`.`MechanicImmuneMask`=`creature_template`.`MechanicImmuneMask`,
`copy`.`VisibilityDistanceType`=`creature_template`.`VisibilityDistanceType`
WHERE
`copy`.`entry`=`creature_template`.`DifficultyEntry1`;
UPDATE
`creature_template`, `creature_template` AS `copy`
SET
`copy`.`RegenerateStats`=`creature_template`.`RegenerateStats`,
`copy`.`UnitClass`=`creature_template`.`UnitClass`,
`copy`.`UnitFlags`=`creature_template`.`UnitFlags`,
`copy`.`NpcFlags`=`creature_template`.`NpcFlags`,
`copy`.`dynamicflags`=`creature_template`.`dynamicflags`,
`copy`.`EquipmentTemplateId`=`creature_template`.`EquipmentTemplateId`,
`copy`.`Faction`=`creature_template`.`Faction`,
`copy`.`SpeedRun`=`creature_template`.`SpeedRun`,
`copy`.`SpeedWalk`=`creature_template`.`SpeedWalk`,
`copy`.`scale`=`creature_template`.`scale`,
`copy`.`DamageSchool`=`creature_template`.`DamageSchool`,
`copy`.`SchoolImmuneMask`=`creature_template`.`SchoolImmuneMask`,
`copy`.`MinLootGold`=`creature_template`.`MinLootGold`,
`copy`.`MaxLootGold`=`creature_template`.`MaxLootGold`,
`copy`.`VehicleTemplateId`=`creature_template`.`VehicleTemplateId`,
`copy`.`MechanicImmuneMask`=`creature_template`.`MechanicImmuneMask`,
`copy`.`VisibilityDistanceType`=`creature_template`.`VisibilityDistanceType`
WHERE
`copy`.`entry`=`creature_template`.`DifficultyEntry2`;
UPDATE
`creature_template`, `creature_template` AS `copy`
SET
`copy`.`RegenerateStats`=`creature_template`.`RegenerateStats`,
`copy`.`UnitClass`=`creature_template`.`UnitClass`,
`copy`.`UnitFlags`=`creature_template`.`UnitFlags`,
`copy`.`NpcFlags`=`creature_template`.`NpcFlags`,
`copy`.`dynamicflags`=`creature_template`.`dynamicflags`,
`copy`.`EquipmentTemplateId`=`creature_template`.`EquipmentTemplateId`,
`copy`.`Faction`=`creature_template`.`Faction`,
`copy`.`SpeedRun`=`creature_template`.`SpeedRun`,
`copy`.`SpeedWalk`=`creature_template`.`SpeedWalk`,
`copy`.`scale`=`creature_template`.`scale`,
`copy`.`DamageSchool`=`creature_template`.`DamageSchool`,
`copy`.`SchoolImmuneMask`=`creature_template`.`SchoolImmuneMask`,
`copy`.`MinLootGold`=`creature_template`.`MinLootGold`,
`copy`.`MaxLootGold`=`creature_template`.`MaxLootGold`,
`copy`.`VehicleTemplateId`=`creature_template`.`VehicleTemplateId`,
`copy`.`MechanicImmuneMask`=`creature_template`.`MechanicImmuneMask`,
`copy`.`VisibilityDistanceType`=`creature_template`.`VisibilityDistanceType`
WHERE
`copy`.`entry`=`creature_template`.`DifficultyEntry3`;

# Final_FIX
# UPDATE `creature` SET `phaseMask` = 65535 WHERE guid in (select (guid) from game_event_creature);
# UPDATE `gameobject` SET `phaseMask` = 65535 WHERE guid in (select (guid) from game_event_gameobject);
# UPDATE quest_template SET SpecialFlags=SpecialFlags|1 WHERE QuestFlags=QuestFlags|4096;
# UPDATE quest_template SET SpecialFlags=SpecialFlags|1 WHERE QuestFlags=QuestFlags|32768;
# DELETE FROM `creature_addon` WHERE `guid` NOT IN (SELECT `guid` FROM `creature`);
# DELETE FROM `creature_movement` WHERE `id` NOT IN (SELECT `guid` FROM `creature`);
# DELETE FROM `game_event_gameobject` WHERE `guid` NOT IN (SELECT `guid` FROM `gameobject`);
# DELETE FROM `game_event_creature` WHERE `guid` NOT IN (SELECT `guid` FROM `creature`);
# UPDATE creature_template SET UnitFlags=UnitFlags&~2048 WHERE UnitFlags&2048=2048;
# UPDATE creature_template SET UnitFlags=UnitFlags&~524288 WHERE UnitFlags&524288=524288;
# UPDATE creature_template SET UnitFlags=UnitFlags&~67108864 WHERE UnitFlags&67108864=67108864;
# UPDATE creature_template SET UnitFlags=UnitFlags&~8388608 WHERE UnitFlags&8388608=8388608;
# UPDATE creature, creature_template SET creature.curhealth = creature_template.MinLevelHealth,creature.curmana = creature_template.MinLevelMana WHERE creature.id = creature_template.entry AND creature_template.RegenerateStats & 1;
# UPDATE `creature` SET `spawndist` = 5 WHERE `spawndist` = 0 AND `MovementType`=1;
# UPDATE `creature` SET `spawndist`=0 WHERE `MovementType`=0;
# UPDATE `creature_template` SET `scale` = 1 WHERE `scale` = 0;
# UPDATE `creature` SET `spawndist` = 0, `MovementType` = 2 WHERE guid in (select distinct(id) from creature_movement);
# UPDATE `creature` SET `spawndist` = 0, `MovementType` = 2 WHERE id in (select distinct(entry) from creature_movement_template);
# UPDATE `creature` LEFT JOIN (`creature_movement`) ON (`creature_movement`.`id`=`creature`.`guid`) LEFT JOIN (`creature_movement_template`) ON (`creature_movement_template`.`entry`=`creature`.`id`) SET `creature`.`spawndist`=5, `creature`.`MovementType`=1 WHERE `creature`.`MovementType`=2 AND (`creature_movement`.`id` IS NULL AND `creature_movement_template`.`entry` IS NULL);
# UPDATE gameobject_template, gameobject set gameobject.animprogress = 100 where gameobject_template.entry = gameobject.id and gameobject_template.type = 0;
# UPDATE gameobject_template, gameobject set gameobject.animprogress = 100 where gameobject_template.entry = gameobject.id and gameobject_template.type = 3;
# UPDATE gameobject_template, gameobject set gameobject.animprogress = 100 where gameobject_template.entry = gameobject.id and gameobject_template.type = 10;
# UPDATE gameobject_template, gameobject set gameobject.animprogress = 100 where gameobject_template.entry = gameobject.id and gameobject_template.type = 25;
# UPDATE `gameobject` SET `state`=1 WHERE `state`=0 AND `id` IN (SELECT entry FROM `gameobject_template` WHERE `type`=3);
# UPDATE `creature_template` SET `NpcFlags`=`NpcFlags`|2 WHERE `entry` IN (SELECT `id` FROM `creature_questrelation`);
# UPDATE `creature_template` SET `NpcFlags`=`NpcFlags`|2 WHERE `entry` IN (SELECT `id` FROM `creature_involvedrelation`);
# UPDATE `gameobject` SET `state` = 0 WHERE `id` IN (SELECT `entry` FROM `gameobject_template` WHERE `type` = 0 AND `data0` = 1);
# DELETE FROM `gameobject_scripts` WHERE `id` NOT IN (SELECT `guid` FROM `gameobject`);
# DELETE FROM `gameobject_scripts` WHERE `command` in (11, 12) and `datalong` NOT IN (SELECT `guid` FROM `gameobject`);
# DELETE FROM `creature_onkill_reputation` WHERE `creature_id` NOT IN (SELECT `entry` FROM `creature_template`);
# UPDATE creature_addon SET moveflags=moveflags &~ 0x00000100;
# UPDATE creature_addon SET moveflags=moveflags &~ 0x00000800;
# UPDATE creature_addon SET moveflags=moveflags &~ 0x00200000;
# UPDATE creature_addon SET moveflags=moveflags &~ 0x08000000;
# UPDATE creature_template_addon SET moveflags=moveflags &~ 0x00000100;
# UPDATE creature_template_addon SET moveflags=moveflags &~ 0x00000800;
# UPDATE creature_template_addon SET moveflags=moveflags &~ 0x00200000;
# UPDATE creature_template_addon SET moveflags=moveflags &~ 0x08000000;
# UPDATE `creature_template` SET `ScriptName` = '' WHERE `AIName` = 'EventAI' AND `ScriptName` = 'generic_creature';
UPDATE `creature_template` SET NpcFlags = NpcFlags|1 WHERE `GossipMenuId` > 0;
UPDATE `gossip_menu_option` SET `action_menu_id` = '-1' WHERE `action_menu_id` =0 AND `action_script_id` >0;
# UPDATE quest_template SET SpecialFlags=SpecialFlags|1 WHERE SpecialFlags=4;
# UPDATE creature_template SET ExtraFlags=ExtraFlags|0x8000 WHERE (InhabitType&2)!=0 AND (CreatureType IN (5) OR family IN (8));
# UPDATE creature_template SET ExtraFlags=ExtraFlags|0x10000 WHERE (InhabitType&2)!=0 AND (CreatureType IN (5));
