-- =========================================================================================================================================================
-- =================                    APPLY LATEST ITEM NAMES AND REFERENCE NAMES TO LOOT / REFERENCE / VENDOR TABLES                    ================= 
-- =========================================================================================================================================================
UPDATE `reference_loot_template` SET comments='';
UPDATE `reference_loot_template` ct JOIN `item_template` it ON it.entry = ct.item AND ct.MinCountOrRef > 0 SET ct.comments = CONCAT(ct.comments, "", it.name);
UPDATE `reference_loot_template` ct JOIN `reference_loot_template_names` rltn ON rltn.entry = -ct.MinCountOrRef AND ct.MinCountOrRef < 0 SET ct.comments = CONCAT(ct.comments, "", rltn.name);

UPDATE `creature_loot_template` SET comments='';
UPDATE `creature_loot_template` ct JOIN `item_template` it ON it.entry = ct.item AND ct.MinCountOrRef > 0 SET ct.comments = CONCAT(ct.comments, "", it.name);
UPDATE `creature_loot_template` ct JOIN `reference_loot_template_names` rltn ON rltn.entry = -ct.MinCountOrRef AND ct.MinCountOrRef < 0 SET ct.comments = CONCAT(ct.comments, "", rltn.name);

UPDATE `gameobject_loot_template` SET comments='';
UPDATE `gameobject_loot_template` ct JOIN `item_template` it ON it.entry = ct.item AND ct.MinCountOrRef > 0 SET ct.comments = CONCAT(ct.comments, "", it.name);
UPDATE `gameobject_loot_template` ct JOIN `reference_loot_template_names` rltn ON rltn.entry = -ct.MinCountOrRef AND ct.MinCountOrRef < 0 SET ct.comments = CONCAT(ct.comments, "", rltn.name);

UPDATE `disenchant_loot_template` SET comments='';
UPDATE `disenchant_loot_template` ct JOIN `item_template` it ON it.entry = ct.item AND ct.MinCountOrRef > 0 SET ct.comments = CONCAT(ct.comments, "", it.name);
UPDATE `disenchant_loot_template` ct JOIN `reference_loot_template_names` rltn ON rltn.entry = -ct.MinCountOrRef AND ct.MinCountOrRef < 0 SET ct.comments = CONCAT(ct.comments, "", rltn.name);

UPDATE `fishing_loot_template` SET comments='';
UPDATE `fishing_loot_template` ct JOIN `item_template` it ON it.entry = ct.item AND ct.MinCountOrRef > 0 SET ct.comments = CONCAT(ct.comments, "", it.name);
UPDATE `fishing_loot_template` ct JOIN `reference_loot_template_names` rltn ON rltn.entry = -ct.MinCountOrRef AND ct.MinCountOrRef < 0 SET ct.comments = CONCAT(ct.comments, "", rltn.name);

UPDATE `item_loot_template` SET comments='';
UPDATE `item_loot_template` ct JOIN `item_template` it ON it.entry = ct.item AND ct.MinCountOrRef > 0 SET ct.comments = CONCAT(ct.comments, "", it.name);
UPDATE `item_loot_template` ct JOIN `reference_loot_template_names` rltn ON rltn.entry = -ct.MinCountOrRef AND ct.MinCountOrRef < 0 SET ct.comments = CONCAT(ct.comments, "", rltn.name);

UPDATE `skinning_loot_template` SET comments='';
UPDATE `skinning_loot_template` ct JOIN `item_template` it ON it.entry = ct.item AND ct.MinCountOrRef > 0 SET ct.comments = CONCAT(ct.comments, "", it.name);
UPDATE `skinning_loot_template` ct JOIN `reference_loot_template_names` rltn ON rltn.entry = -ct.MinCountOrRef AND ct.MinCountOrRef < 0 SET ct.comments = CONCAT(ct.comments, "", rltn.name);

UPDATE `pickpocketing_loot_template` SET comments='';
UPDATE `pickpocketing_loot_template` ct JOIN `item_template` it ON it.entry = ct.item AND ct.MinCountOrRef > 0 SET ct.comments = CONCAT(ct.comments, "", it.name);
UPDATE `pickpocketing_loot_template` ct JOIN `reference_loot_template_names` rltn ON rltn.entry = -ct.MinCountOrRef AND ct.MinCountOrRef < 0 SET ct.comments = CONCAT(ct.comments, "", rltn.name);

UPDATE `prospecting_loot_template` SET comments='';
UPDATE `prospecting_loot_template` ct JOIN `item_template` it ON it.entry = ct.item AND ct.MinCountOrRef > 0 SET ct.comments = CONCAT(ct.comments, "", it.name);
UPDATE `prospecting_loot_template` ct JOIN `reference_loot_template_names` rltn ON rltn.entry = -ct.MinCountOrRef AND ct.MinCountOrRef < 0 SET ct.comments = CONCAT(ct.comments, "", rltn.name);

UPDATE `npc_vendor_template` SET comments='';
UPDATE `npc_vendor_template` ct JOIN `item_template` it ON it.entry = ct.item SET ct.comments = CONCAT(ct.comments, "", it.name);

UPDATE `npc_vendor` SET comments='';
UPDATE `npc_vendor` ct JOIN `item_template` it ON it.entry = ct.item SET ct.comments = CONCAT(ct.comments, "", it.name);

-- ==============================
-- Populate Condition Comments
-- ==============================
UPDATE conditions SET comments=NULL;
-- CONDITION_NONE
UPDATE conditions SET comments=CONCAT('Player Has Aura: ',value1, ', EffectIndex: ',value2) WHERE type=1 AND flags=0 AND comments IS NULL; -- CONDITION_AURA
UPDATE conditions SET comments=CONCAT('NOT Player Has Aura: ',value1, ', EffectIndex: ',value2) WHERE type=1 AND flags=1 AND comments IS NULL; -- CONDITION_NO_AURA
UPDATE conditions SET comments=CONCAT('Source of Condition Has Aura: ',value1, ', EffectIndex: ',value2) WHERE type=1 AND flags=2 AND comments IS NULL; -- CONDITION_SOURCE_AURA
UPDATE conditions SET comments=CONCAT('Player Has ',value2,' or more of Item ID ',value1,' in Inventory') WHERE type=2 AND flags=0 AND comments IS NULL; -- CONDITION_ITEM
UPDATE conditions SET comments=CONCAT('Player Has Less Than ',value2,' of Item ID ',value1,' in Inventory') WHERE type=2 AND flags=1 AND comments IS NULL; -- CONDITION_NOITEM
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
UPDATE conditions SET comments=CONCAT('Quest ID ',value1,' Rewarded') WHERE type=8 AND flags=0 AND comments IS NULL; -- CONDITION_QUEST_REWARDED
UPDATE conditions SET comments=CONCAT('Quest ID ',value1,' NOT Rewarded') WHERE type=8 AND flags=1 AND comments IS NULL; -- CONDITION_QUEST_NOT_REWARDED
UPDATE conditions SET comments=CONCAT('Quest ID ',value1,' Taken') WHERE type=9 AND value2=0 AND comments IS NULL; -- CONDITION_QUESTTAKEN
UPDATE conditions SET comments=CONCAT('Quest ID ',value1,' Taken AND NOT Completed') WHERE type=9 AND value2=1 AND comments IS NULL; -- CONDITION_QUESTTAKEN
UPDATE conditions SET comments=CONCAT('Quest ID ',value1,' Taken AND Completed') WHERE type=9 AND value2=2 AND comments IS NULL; -- CONDITION_QUESTTAKEN
UPDATE conditions SET comments=CONCAT('Player has any Argent Dawn Commission Aura Active (17670,23930,24198,29112,29113)') WHERE type=10 AND comments IS NULL; -- CONDITION_AD_COMMISSION_AURA
UPDATE conditions SET comments=CONCAT('Event ID ',value1, ' Active') WHERE type=12 AND flags=0 AND comments IS NULL; -- CONDITION_ACTIVE_EVENT
UPDATE conditions SET comments=CONCAT('Game Event ',value1,' NOT Active') WHERE type=12 AND flags=1 AND comments IS NULL; -- CONDITION_NOT_ACTIVE_GAME_EVENT
UPDATE conditions SET comments=CONCAT('Area Flag ',value1, ' Present in Current Area') WHERE type=13 AND value1 !=0 AND value2=0 AND comments IS NULL; -- CONDITION_AREA_FLAG
UPDATE conditions SET comments=CONCAT('Area Flag ',value2, ' NOT Present in Current Area') WHERE type=13 AND value1 =0 AND value2 !=0 AND comments IS NULL; -- CONDITION_AREA_FLAG
UPDATE conditions SET comments=CONCAT('Area Flag ',value1, ' Present in Current Area AND Area Flag ',value2,' NOT Present in Current Area') WHERE type=13 AND value1 !=0 AND value2 !=0 AND comments IS NULL; -- CONDITION_AREA_FLAG
UPDATE conditions SET comments=CONCAT('Player RaceMask: ',value1) WHERE type=14 AND value1 !=0 AND value2=0 AND comments IS NULL; -- CONDITION_RACE_CLASS
UPDATE conditions SET comments=CONCAT('Player ClassMask: ',value2) WHERE type=14 AND value1 =0 AND value2 !=0 AND comments IS NULL; -- CONDITION_RACE_CLASS
UPDATE conditions SET comments=CONCAT('Player RaceMask: ',value1, ' AND Player ClassMask: ',value2) WHERE type=14 AND value1 !=0 AND value2 !=0 AND comments IS NULL; -- CONDITION_RACE_CLASS
UPDATE conditions SET comments=CONCAT('Player Level == ',value1) WHERE type=15 AND value2=0 AND comments IS NULL; -- CONDITION_LEVEL
UPDATE conditions SET comments=CONCAT('Player Level >= ',value1) WHERE type=15 AND value2=1 AND comments IS NULL; -- CONDITION_LEVEL
UPDATE conditions SET comments=CONCAT('Player Level <= ',value1) WHERE type=15 AND value2=2 AND comments IS NULL; -- CONDITION_LEVEL
UPDATE conditions SET comments=CONCAT('Player Has Learned Spell: ',value1) WHERE type=17 AND value2=0 AND comments IS NULL; -- CONDITION_SPELL
UPDATE conditions SET comments=CONCAT('NOT Player Has Learned Spell: ',value1) WHERE type=17 AND value2=1 AND comments IS NULL; -- CONDITION_SPELL
UPDATE conditions SET comments=CONCAT('ScriptDev: InstanceConditionID Value: ',value1) WHERE type=18 AND comments IS NULL; -- CONDITION_INSTANCE_SCRIPT
UPDATE conditions SET comments=CONCAT('Quest ID ',value1,' Available') WHERE type=19 AND comments IS NULL; -- CONDITION_QUESTAVAILABLE
UPDATE conditions SET comments=CONCAT('Achievement ',value1,' Earned') WHERE type=20 AND value2=0 AND comments IS NULL; -- CONDITION_ACHIEVEMENT_EARNED
UPDATE conditions SET comments=CONCAT('Achievement ',value1,' NOT Earned') WHERE type=20 AND value2 !=0 AND comments IS NULL; -- CONDITION_ACHIEVEMENT_NOT_EARNED
UPDATE conditions SET comments=CONCAT('Account achievement ',value1,' Earned') WHERE type=21 AND value2=0 AND comments IS NULL; -- CONDITION_ACHIEVEMENT_REALM_EARNED
UPDATE conditions SET comments=CONCAT('Account achievement ',value1,' NOT Earned') WHERE type=21 AND value2 !=0 AND comments IS NULL; -- CONDITION_ACHIEVEMENT_REALM_NOT_EARNED
UPDATE conditions SET comments=CONCAT('Quest ID ',value1,' NOT Taken AND NOT Rewarded') WHERE type=22 AND comments IS NULL; -- CONDITION_QUEST_NONE
UPDATE conditions SET comments=CONCAT('Player Has ',value2,' or more of Item ID ',value1,' in Inventory/Bank') WHERE type=23 AND flags=0 AND comments IS NULL; -- CONDITION_ITEM_WITH_BANK
UPDATE conditions SET comments=CONCAT('Player Has Less Than ',value2,' of Item ID ',value1,' in Inventory/Bank') WHERE type=23 AND flags=1 AND comments IS NULL; -- CONDITION_ITEM_WITH_BANK &FLAG_REVERSE_RESULT
UPDATE conditions SET comments=CONCAT('Holiday ',value1,' Active') WHERE type=26 AND flags=0 AND comments IS NULL; -- CONDITION_ACTIVE_HOLIDAY
UPDATE conditions SET comments=CONCAT('Holiday ',value1,' NOT Active') WHERE type=26 AND flags&1 AND comments IS NULL; -- CONDITION_ACTIVE_HOLIDAY &FLAG_REVERSE_RESULT
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
UPDATE conditions SET comments=CONCAT('Source of Condition''s Last Waypoint == ',value1) WHERE type=33 AND value2=0 AND comments IS NULL; -- CONDITION_LAST_WAYPOINT
UPDATE conditions SET comments=CONCAT('Source of Condition''s Last Waypoint <= ',value1) WHERE type=33 AND value2=1 AND comments IS NULL; -- CONDITION_LAST_WAYPOINT
UPDATE conditions SET comments=CONCAT('Source of Condition''s Last Waypoint >= ',value1) WHERE type=33 AND value2=2 AND comments IS NULL; -- CONDITION_LAST_WAYPOINT
-- CONDITION_XP_USER
UPDATE conditions SET comments=CONCAT('Player Gender: Male') WHERE type=35 AND value1=0 AND flags=0 AND comments IS NULL; -- CONDITION_GENDER
UPDATE conditions SET comments=CONCAT('Player Gender: Female') WHERE type=35 AND value1=1 AND flags=0 AND comments IS NULL; -- CONDITION_GENDER
UPDATE conditions SET comments=CONCAT('Player Gender: None') WHERE type=35 AND value1=2 AND flags=0 AND comments IS NULL; -- CONDITION_GENDER
UPDATE conditions SET comments=CONCAT('NPC Gender: Male') WHERE type=35 AND value1=0 AND flags=2 AND comments IS NULL; -- CONDITION_GENDER
UPDATE conditions SET comments=CONCAT('NPC Gender: Female') WHERE type=35 AND value1=1 AND flags=2 AND comments IS NULL; -- CONDITION_GENDER
UPDATE conditions SET comments=CONCAT('NPC Gender: None') WHERE type=35 AND value1=2 AND flags=2 AND comments IS NULL; -- CONDITION_GENDER
UPDATE conditions SET comments=CONCAT('Player is Dead') WHERE type=36 AND value1=0 AND value2=0 AND comments IS NULL; -- CONDITION_DEAD_OR_AWAY
UPDATE conditions SET comments=CONCAT('All Players in Group are Dead') WHERE type=36 AND value1=1 AND value2=0 AND comments IS NULL; -- CONDITION_DEAD_OR_AWAY
UPDATE conditions SET comments=CONCAT('All Players in Instance are Dead') WHERE type=36 AND value1=2 AND value2=0 AND comments IS NULL; -- CONDITION_DEAD_OR_AWAY
UPDATE conditions SET comments=CONCAT('Player is Dead OR NOT Within ',value2,'y of Source') WHERE type=36 AND value1=0 AND value2 !=0 AND comments IS NULL; -- CONDITION_DEAD_OR_AWAY
UPDATE conditions SET comments=CONCAT('All Players in Group are Dead OR NOT Within ',value2,'y of Source') WHERE type=36 AND value1=1 AND value2 !=0 AND comments IS NULL; -- CONDITION_DEAD_OR_AWAY
UPDATE conditions SET comments=CONCAT('All Players in Instance are Dead OR NOT Within ',value2,'y of Source') WHERE type=36 AND value1=2 AND value2 !=0 AND comments IS NULL; -- CONDITION_DEAD_OR_AWAY
UPDATE conditions SET comments=CONCAT('Creature Source is Dead') WHERE type=36 AND value1=3 AND comments IS NULL; -- CONDITION_DEAD_OR_AWAY
UPDATE conditions SET comments=CONCAT('Creature of Entry ',value1,' Found Alive Within ',value2,'y of Source') WHERE type=37 AND flags=0 AND comments IS NULL; -- CONDITION_CREATURE_IN_RANGE
UPDATE conditions SET comments=CONCAT('Creature of Entry ',value1,' No Found Alive Within ',value2,'y of Source') WHERE type=37 AND flags=1 AND comments IS NULL;

# небольшой хак, просто текст в 500 знаков уже не вмещается(
ALTER TABLE `conditions` CHANGE `comments` `comments` VARCHAR(750) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL;

UPDATE conditions SET comments=CONCAT('OutdoorPvP AreaID: ',value1,' IsConditionFulfilled Value: ',value2) WHERE type=38 AND comments IS NULL; -- CONDITION_PVP_SCRIPT
UPDATE conditions SET comments=CONCAT('Equal or More than ',value2,' of Entry: ',value1) WHERE type=39 AND comments IS NULL; -- CONDITION_SPAWN_COUNT
UPDATE conditions SET comments=CONCAT('WorldStateID: ',value1,' Event: ',value2) WHERE type=40 AND comments IS NULL; -- CONDITION_WORLD_SCRIPT
-- CONDITION_UNUSED_7
UPDATE conditions SET comments=CONCAT('WorldStateID: ',value1,' WorldStateConditionSign: ',value2,' otherOperand: ',value3) WHERE type=42 AND comments IS NULL; -- CONDITION_WORLDSTATE


-- NOT, OR, AND (Run a few times to completely fill out the most complex conditions)
UPDATE conditions t, (SELECT DISTINCT condition_entry, comments FROM conditions) t1 -- CONDITION_NOT
   SET t.comments = CONCAT('NOT (',t1.comments,')')
 WHERE t.value1 = t1.condition_entry AND t.comments IS NULL
   AND t.type = -3;

UPDATE conditions t, (SELECT DISTINCT condition_entry, comments FROM conditions) t1, (SELECT DISTINCT condition_entry, comments FROM conditions) t2, (SELECT DISTINCT condition_entry, comments FROM conditions) t3, (SELECT DISTINCT condition_entry, comments FROM conditions) t4 -- CONDITION_OR
   SET t.comments = CONCAT('(',t1.comments,' OR ',t2.comments,' OR ',t3.comments,' OR ',t4.comments,')')
 WHERE t.value1 = t1.condition_entry AND t.value2 = t2.condition_entry AND t.value3 = t3.condition_entry AND t.value4 = t4.condition_entry AND t.comments IS NULL
   AND t.type = -2;

UPDATE conditions t, (SELECT DISTINCT condition_entry, comments FROM conditions) t1, (SELECT DISTINCT condition_entry, comments FROM conditions) t2, (SELECT DISTINCT condition_entry, comments FROM conditions) t3, (SELECT DISTINCT condition_entry, comments FROM conditions) t4 -- CONDITION_AND
   SET t.comments = CONCAT('(',t1.comments,' AND ',t2.comments,' AND ',t3.comments,' AND ',t4.comments,')')
 WHERE t.value1 = t1.condition_entry AND t.value2 = t2.condition_entry AND t.value3 = t3.condition_entry AND t.value4 = t4.condition_entry AND t.comments IS NULL
   AND t.type = -1;

UPDATE conditions t, (SELECT DISTINCT condition_entry, comments FROM conditions) t1 -- CONDITION_NOT
   SET t.comments = CONCAT('NOT (',t1.comments,')')
 WHERE t.value1 = t1.condition_entry AND t.comments IS NULL
   AND t.type = -3;

UPDATE conditions t, (SELECT DISTINCT condition_entry, comments FROM conditions) t1, (SELECT DISTINCT condition_entry, comments FROM conditions) t2, (SELECT DISTINCT condition_entry, comments FROM conditions) t3 -- CONDITION_OR
   SET t.comments = CONCAT('(',t1.comments,' OR ',t2.comments,' OR ',t3.comments,')')
 WHERE t.value1 = t1.condition_entry AND t.value2 = t2.condition_entry AND t.value3 = t3.condition_entry AND t.comments IS NULL
   AND t.type = -2;

UPDATE conditions t, (SELECT DISTINCT condition_entry, comments FROM conditions) t1, (SELECT DISTINCT condition_entry, comments FROM conditions) t2, (SELECT DISTINCT condition_entry, comments FROM conditions) t3 -- CONDITION_AND
   SET t.comments = CONCAT('(',t1.comments,' AND ',t2.comments,' AND ',t3.comments,')')
 WHERE t.value1 = t1.condition_entry AND t.value2 = t2.condition_entry AND t.value3 = t3.condition_entry AND t.comments IS NULL
   AND t.type = -1;

UPDATE conditions t, (SELECT DISTINCT condition_entry, comments FROM conditions) t1 -- CONDITION_NOT
   SET t.comments = CONCAT('NOT (',t1.comments,')')
 WHERE t.value1 = t1.condition_entry AND t.comments IS NULL
   AND t.type = -3;

UPDATE conditions t, (SELECT DISTINCT condition_entry, comments FROM conditions) t1, (SELECT DISTINCT condition_entry, comments FROM conditions) t2 -- CONDITION_OR
   SET t.comments = CONCAT('(',t1.comments,' OR ',t2.comments,')')
 WHERE t.value1 = t1.condition_entry AND t.value2 = t2.condition_entry AND t.comments IS NULL
   AND t.type = -2;

UPDATE conditions t, (SELECT DISTINCT condition_entry, comments FROM conditions) t1, (SELECT DISTINCT condition_entry, comments FROM conditions) t2 -- CONDITION_AND
   SET t.comments = CONCAT('(',t1.comments,' AND ',t2.comments,')')
 WHERE t.value1 = t1.condition_entry AND t.value2 = t2.condition_entry AND t.comments IS NULL
   AND t.type = -1;

UPDATE conditions t, (SELECT DISTINCT condition_entry, comments FROM conditions) t1 -- CONDITION_NOT
   SET t.comments = CONCAT('NOT (',t1.comments,')')
 WHERE t.value1 = t1.condition_entry AND t.comments IS NULL
   AND t.type = -3;

UPDATE conditions t, (SELECT DISTINCT condition_entry, comments FROM conditions) t1, (SELECT DISTINCT condition_entry, comments FROM conditions) t2, (SELECT DISTINCT condition_entry, comments FROM conditions) t3 -- CONDITION_OR
   SET t.comments = CONCAT('(',t1.comments,' OR ',t2.comments,' OR ',t3.comments,')')
 WHERE t.value1 = t1.condition_entry AND t.value2 = t2.condition_entry AND t.value3 = t3.condition_entry AND t.comments IS NULL
   AND t.type = -2;

UPDATE conditions t, (SELECT DISTINCT condition_entry, comments FROM conditions) t1, (SELECT DISTINCT condition_entry, comments FROM conditions) t2, (SELECT DISTINCT condition_entry, comments FROM conditions) t3 -- CONDITION_AND
   SET t.comments = CONCAT('(',t1.comments,' AND ',t2.comments,' AND ',t3.comments,')')
 WHERE t.value1 = t1.condition_entry AND t.value2 = t2.condition_entry AND t.value3 = t3.condition_entry AND t.comments IS NULL
   AND t.type = -1;

UPDATE conditions t, (SELECT DISTINCT condition_entry, comments FROM conditions) t1 -- CONDITION_NOT
   SET t.comments = CONCAT('NOT (',t1.comments,')')
 WHERE t.value1 = t1.condition_entry AND t.comments IS NULL
   AND t.type = -3;

UPDATE conditions t, (SELECT DISTINCT condition_entry, comments FROM conditions) t1, (SELECT DISTINCT condition_entry, comments FROM conditions) t2, (SELECT DISTINCT condition_entry, comments FROM conditions) t3, (SELECT DISTINCT condition_entry, comments FROM conditions) t4 -- CONDITION_OR
   SET t.comments = CONCAT('(',t1.comments,' OR ',t2.comments,' OR ',t3.comments,' OR ',t4.comments,')')
 WHERE t.value1 = t1.condition_entry AND t.value2 = t2.condition_entry AND t.value3 = t3.condition_entry AND t.value4 = t4.condition_entry AND t.comments IS NULL
   AND t.type = -2;

UPDATE conditions t, (SELECT DISTINCT condition_entry, comments FROM conditions) t1, (SELECT DISTINCT condition_entry, comments FROM conditions) t2, (SELECT DISTINCT condition_entry, comments FROM conditions) t3, (SELECT DISTINCT condition_entry, comments FROM conditions) t4 -- CONDITION_AND
   SET t.comments = CONCAT('(',t1.comments,' AND ',t2.comments,' AND ',t3.comments,' AND ',t4.comments,')')
 WHERE t.value1 = t1.condition_entry AND t.value2 = t2.condition_entry AND t.value3 = t3.condition_entry AND t.value4 = t4.condition_entry AND t.comments IS NULL
   AND t.type = -1;

UPDATE conditions t, (SELECT DISTINCT condition_entry, comments FROM conditions) t1 -- CONDITION_NOT
   SET t.comments = CONCAT('NOT (',t1.comments,')')
 WHERE t.value1 = t1.condition_entry AND t.comments IS NULL
   AND t.type = -3;

UPDATE conditions t, (SELECT DISTINCT condition_entry, comments FROM conditions) t1, (SELECT DISTINCT condition_entry, comments FROM conditions) t2 -- CONDITION_OR
   SET t.comments = CONCAT('(',t1.comments,' OR ',t2.comments,')')
 WHERE t.value1 = t1.condition_entry AND t.value2 = t2.condition_entry AND t.comments IS NULL
   AND t.type = -2;

UPDATE conditions t, (SELECT DISTINCT condition_entry, comments FROM conditions) t1, (SELECT DISTINCT condition_entry, comments FROM conditions) t2 -- CONDITION_AND
   SET t.comments = CONCAT('(',t1.comments,' AND ',t2.comments,')')
 WHERE t.value1 = t1.condition_entry AND t.value2 = t2.condition_entry AND t.comments IS NULL
   AND t.type = -1;

UPDATE conditions t, (SELECT DISTINCT condition_entry, comments FROM conditions) t1 -- CONDITION_NOT
   SET t.comments = CONCAT('NOT (',t1.comments,')')
 WHERE t.value1 = t1.condition_entry AND t.comments IS NULL
   AND t.type = -3;

UPDATE conditions t, (SELECT DISTINCT condition_entry, comments FROM conditions) t1, (SELECT DISTINCT condition_entry, comments FROM conditions) t2 -- CONDITION_OR
   SET t.comments = CONCAT('(',t1.comments,' OR ',t2.comments,')')
 WHERE t.value1 = t1.condition_entry AND t.value2 = t2.condition_entry AND t.comments IS NULL
   AND t.type = -2;

UPDATE conditions t, (SELECT DISTINCT condition_entry, comments FROM conditions) t1, (SELECT DISTINCT condition_entry, comments FROM conditions) t2 -- CONDITION_AND
   SET t.comments = CONCAT('(',t1.comments,' AND ',t2.comments,')')
 WHERE t.value1 = t1.condition_entry AND t.value2 = t2.condition_entry AND t.comments IS NULL
   AND t.type = -1;

UPDATE conditions t, (SELECT DISTINCT condition_entry, comments FROM conditions) t1 -- CONDITION_NOT
   SET t.comments = CONCAT('NOT (',t1.comments,')')
 WHERE t.value1 = t1.condition_entry AND t.comments IS NULL
   AND t.type = -3;

UPDATE conditions t, (SELECT DISTINCT condition_entry, comments FROM conditions) t1, (SELECT DISTINCT condition_entry, comments FROM conditions) t2 -- CONDITION_OR
   SET t.comments = CONCAT('(',t1.comments,' OR ',t2.comments,')')
 WHERE t.value1 = t1.condition_entry AND t.value2 = t2.condition_entry AND t.comments IS NULL
   AND t.type = -2;

UPDATE conditions t, (SELECT DISTINCT condition_entry, comments FROM conditions) t1, (SELECT DISTINCT condition_entry, comments FROM conditions) t2 -- CONDITION_AND
   SET t.comments = CONCAT('(',t1.comments,' AND ',t2.comments,')')
 WHERE t.value1 = t1.condition_entry AND t.value2 = t2.condition_entry AND t.comments IS NULL
   AND t.type = -1;

UPDATE conditions t, (SELECT DISTINCT condition_entry, comments FROM conditions) t1 -- CONDITION_NOT
   SET t.comments = CONCAT('NOT (',t1.comments,')')
 WHERE t.value1 = t1.condition_entry AND t.comments IS NULL
   AND t.type = -3;

UPDATE conditions t, (SELECT DISTINCT condition_entry, comments FROM conditions) t1, (SELECT DISTINCT condition_entry, comments FROM conditions) t2 -- CONDITION_OR
   SET t.comments = CONCAT('(',t1.comments,' OR ',t2.comments,')')
 WHERE t.value1 = t1.condition_entry AND t.value2 = t2.condition_entry AND t.comments IS NULL
   AND t.type = -2;

UPDATE conditions t, (SELECT DISTINCT condition_entry, comments FROM conditions) t1, (SELECT DISTINCT condition_entry, comments FROM conditions) t2 -- CONDITION_AND
   SET t.comments = CONCAT('(',t1.comments,' AND ',t2.comments,')')
 WHERE t.value1 = t1.condition_entry AND t.value2 = t2.condition_entry AND t.comments IS NULL
   AND t.type = -1;

# Final_Fix
UPDATE `creature_ai_scripts` SET `event_param1` =1544 WHERE `event_type` =6 AND `event_param1` =1409 AND `event_param2` =0;
UPDATE `creature_ai_scripts` SET `event_param2` =1544 WHERE `event_type` =22 AND `event_param2` =1409 AND `event_param3` =0;
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
UPDATE `creature_ai_scripts` SET `event_param6` =3295 WHERE `event_type` =10 AND `event_param5` =15 AND `event_param6` =20037;
UPDATE `creature_ai_scripts` SET `event_param6` =3298 WHERE `event_type` =10 AND `event_param5` =1 AND `event_param6` =20040;
UPDATE `creature_ai_scripts` SET `event_param6` =3372 WHERE `event_type` =10 AND `event_param5` =1 AND `event_param6` =20096;
UPDATE `creature_ai_scripts` SET `event_param6` =3375 WHERE `event_type` =10 AND `event_param5` =1 AND `event_param6` =20099;
UPDATE `creature_ai_scripts` SET `event_param6` =3448 WHERE `event_type` =10 AND `event_param5` =1 AND `event_param6` =20194;
UPDATE `creature_ai_scripts` SET `event_param6` =3517 WHERE `event_type` =10 AND `event_param5` =1 AND `event_param6` =20264;
UPDATE `creature_ai_scripts` SET `event_param6` =3539 WHERE `event_type` =10 AND `event_param5` =1 AND `event_param6` =20287;
UPDATE `creature_ai_scripts` SET `event_param2` =3555 WHERE `event_type` =22 AND `event_param2` =9011 AND `event_param3` =0;
UPDATE `creature_ai_scripts` SET `event_param2` =2373 WHERE `event_type` =22 AND `event_param2` =2460 AND `event_param3` =0;
UPDATE `creature_ai_scripts` SET `event_param6` =4094 WHERE `event_type` =10 AND `event_param5` =1 AND `event_param6` =20641;
UPDATE `creature_ai_scripts` SET `event_param1` =1322 WHERE `event_type` =6 AND `event_param1` =10089 AND `event_param2` =0;
# cond UDB type 6
UPDATE `creature_ai_scripts` SET `event_param2` =340 WHERE `event_type` =22 AND `event_param2` =22 AND `event_param3` =0;
UPDATE `creature_ai_scripts` SET `event_param2` =273 WHERE `event_type` =22 AND `event_param2` =21 AND `event_param3` =0;
# cond TBC type 6
UPDATE `creature_ai_scripts` SET `event_param2` =340 WHERE `event_type` =22 AND `event_param2` =4 AND `event_param3` =0;
UPDATE `creature_ai_scripts` SET `event_param2` =273 WHERE `event_type` =22 AND `event_param2` =3 AND `event_param3` =0;
#
#UPDATE `creature_ai_scripts` SET `event_param6` =3695 WHERE `event_type` =10 AND `event_param5` =0 AND `event_param6` =772;
# NPC guid for YTDB
UPDATE `creature_ai_scripts` SET `creature_id` = '-151430' WHERE `id` =1534108;
UPDATE `creature_ai_scripts` SET `creature_id` = '-104133' WHERE `id` =2861702;
UPDATE `creature_ai_scripts` SET `creature_id` = '-104131' WHERE `id` =2861703;
UPDATE `creature_ai_scripts` SET `creature_id` = '-104132' WHERE `id` =2861704;
UPDATE `creature_ai_scripts` SET `creature_id` = '-104134' WHERE `id` =2861705;
UPDATE `creature_ai_scripts` SET `creature_id` = '-151328' WHERE `id` =1574406;
UPDATE `creature_ai_scripts` SET `creature_id` = '-125878' WHERE `id` =2549603;
UPDATE `creature_ai_scripts` SET `creature_id` = '-125876' WHERE `id` =2549604;
UPDATE `creature_ai_scripts` SET `creature_id` = '-125879' WHERE `id` =2549605;
UPDATE `creature_ai_scripts` SET `creature_id` = '-125880' WHERE `id` =2549606;
UPDATE `creature_ai_scripts` SET `creature_id` = '-143329' WHERE `id` =2549607;
UPDATE `creature_ai_scripts` SET `creature_id` = '-143330' WHERE `id` =2549608;
UPDATE `creature_ai_scripts` SET `creature_id` = '-125869' WHERE `id` =2549609;
UPDATE `creature_ai_scripts` SET `creature_id` = '-125870' WHERE `id` =2549610;
UPDATE `creature_ai_scripts` SET `creature_id` = '-125871' WHERE `id` =2549611;
UPDATE `creature_ai_scripts` SET `creature_id` = '-118320' WHERE `id` =2549612;
UPDATE `creature_ai_scripts` SET `creature_id` = '-118316' WHERE `id` =2549613;
UPDATE `creature_ai_scripts` SET `creature_id` = '-125872' WHERE `id` =2549614;
UPDATE `creature_ai_scripts` SET `creature_id` = '-118318' WHERE `id` =2549615;
UPDATE `creature_ai_scripts` SET `creature_id` = '-118319' WHERE `id` =2549616;
UPDATE `creature_ai_scripts` SET `creature_id` = '-143332' WHERE `id` =2549617;
UPDATE `creature_ai_scripts` SET `creature_id` = '-113967' WHERE `id` =3140001;
UPDATE `creature_ai_scripts` SET `creature_id` = '-112480' WHERE `id` =3140002;
UPDATE `creature_ai_scripts` SET `creature_id` = '-112479' WHERE `id` =3140003;
UPDATE `creature_ai_scripts` SET `creature_id` = '-112478' WHERE `id` =3140004;
UPDATE `creature_ai_scripts` SET `creature_id` = '-112482' WHERE `id` =3140005;
UPDATE `creature_ai_scripts` SET `creature_id` = '-78669' WHERE `id` =1544206;
UPDATE `creature_ai_scripts` SET `creature_id` = '-78669' WHERE `id` =1544207;
UPDATE `creature_ai_scripts` SET `creature_id` = '-78669' WHERE `id` =1544208;
UPDATE `creature_ai_scripts` SET `creature_id` = '-123169' WHERE `id` =1788601;
UPDATE `creature_ai_scripts` SET `creature_id` = '-123170' WHERE `id` =1788602;
UPDATE `creature_ai_scripts` SET `creature_id` = '-123172' WHERE `id` =1788603;
UPDATE `creature_ai_scripts` SET `creature_id` = '-123171' WHERE `id` =1788604;
UPDATE `creature_ai_scripts` SET `creature_id` = '-85291' WHERE `id` =2807806;
UPDATE `creature_ai_scripts` SET `creature_id` = '-85294' WHERE `id` =2807807;
UPDATE `creature_ai_scripts` SET `creature_id` = '-23633' WHERE `id` =2807707;
UPDATE `creature_ai_scripts` SET `creature_id` = '-23564' WHERE `id` =2807708;
UPDATE `creature_ai_scripts` SET `creature_id` = '-45065' WHERE `id` =2821702;
UPDATE `creature_ai_scripts` SET `creature_id` = '-97051' WHERE `id` =2821703;
UPDATE `creature_ai_scripts` SET `creature_id` = '-81427' WHERE `id` =2821704;
UPDATE `creature_ai_scripts` SET `creature_id` = '-56791' WHERE `id` =2821705;
UPDATE `creature_ai_scripts` SET `creature_id` = '-56793' WHERE `id` =2821706;
UPDATE `creature_ai_scripts` SET `creature_id` = '-56792' WHERE `id` =2821707;
UPDATE `creature_ai_scripts` SET `creature_id` = '-87337' WHERE `id` =2830701;
UPDATE `creature_ai_scripts` SET `creature_id` = '-82026' WHERE `id` =2811307;
UPDATE `creature_ai_scripts` SET `creature_id` = '-105130' WHERE `id` =2940404;
UPDATE `creature_ai_scripts` SET `creature_id` = '-105025' WHERE `id` =2943301;
UPDATE `creature_ai_scripts` SET `creature_id` = '-105019' WHERE `id` =2943302;
UPDATE `creature_ai_scripts` SET `creature_id` = '-104645' WHERE `id` =2948301;
UPDATE `creature_ai_scripts` SET `creature_id` = '-136752' WHERE `id` =3849304;
UPDATE `creature_ai_scripts` SET `creature_id` = '-136751' WHERE `id` =3849305;
UPDATE `creature_ai_scripts` SET `creature_id` = '-136754' WHERE `id` =3849306;
UPDATE `creature_ai_scripts` SET `creature_id` = '-93503' WHERE `id` =3850004;
UPDATE `creature_ai_scripts` SET `creature_id` = '-93503' WHERE `id` =3850005;
UPDATE `creature_ai_scripts` SET `creature_id` = '-93502' WHERE `id` =3850006;
UPDATE `creature_ai_scripts` SET `creature_id` = '-136756' WHERE `id` =3850503;
UPDATE `creature_ai_scripts` SET `creature_id` = '-136755' WHERE `id` =3850504;
UPDATE `creature_ai_scripts` SET `creature_id` = '-107261' WHERE `id` =2303302;
UPDATE `creature_ai_scripts` SET `creature_id` = '-107262' WHERE `id` =2303303;
UPDATE `creature_ai_scripts` SET `creature_id` = '-107263' WHERE `id` =2303304;
UPDATE `creature_ai_scripts` SET `creature_id` = '-107245' WHERE `id` =2303305;
UPDATE `creature_ai_scripts` SET `creature_id` = '-107244' WHERE `id` =2303306;
UPDATE `creature_ai_scripts` SET `creature_id` = '-107243' WHERE `id` =2303307;
UPDATE `creature_ai_scripts` SET `creature_id` = '-107252' WHERE `id` =2303308;
UPDATE `creature_ai_scripts` SET `creature_id` = '-107253' WHERE `id` =2303309;
UPDATE `creature_ai_scripts` SET `creature_id` = '-107254' WHERE `id` =2303310;
UPDATE `creature_ai_scripts` SET `creature_id` = '-107267' WHERE `id` =2303311;
UPDATE `creature_ai_scripts` SET `creature_id` = '-107269' WHERE `id` =2303312;
UPDATE `creature_ai_scripts` SET `creature_id` = '-142825' WHERE `id` =2303313;
UPDATE `creature_ai_scripts` SET `creature_id` = '-142826' WHERE `id` =2303314;
UPDATE `creature_ai_scripts` SET `creature_id` = '-142827' WHERE `id` =2303315;
UPDATE `creature_ai_scripts` SET `creature_id` = '-107258' WHERE `id` =2303316;
UPDATE `creature_ai_scripts` SET `creature_id` = '-107259' WHERE `id` =2303317;
UPDATE `creature_ai_scripts` SET `creature_id` = '-107260' WHERE `id` =2303318;
UPDATE `creature_ai_scripts` SET `creature_id` = '-107268' WHERE `id` =2303319;
UPDATE `creature_ai_scripts` SET `creature_id` = '-107251' WHERE `id` =2303320;
UPDATE `creature_ai_scripts` SET `creature_id` = '-107250' WHERE `id` =2303321;
UPDATE `creature_ai_scripts` SET `creature_id` = '-107249' WHERE `id` =2303322;
UPDATE `creature_ai_scripts` SET `creature_id` = '-107248' WHERE `id` =2303323;
UPDATE `creature_ai_scripts` SET `creature_id` = '-107247' WHERE `id` =2303324;
UPDATE `creature_ai_scripts` SET `creature_id` = '-107246' WHERE `id` =2303325;
UPDATE `creature_ai_scripts` SET `creature_id` = '-107242' WHERE `id` =2303326;
UPDATE `creature_ai_scripts` SET `creature_id` = '-107241' WHERE `id` =2303327;
UPDATE `creature_ai_scripts` SET `creature_id` = '-107240' WHERE `id` =2303328;
UPDATE `creature_ai_scripts` SET `creature_id` = '-107239' WHERE `id` =2303329;
UPDATE `creature_ai_scripts` SET `creature_id` = '-107238' WHERE `id` =2303330;
UPDATE `creature_ai_scripts` SET `creature_id` = '-107237' WHERE `id` =2303331;
UPDATE `creature_ai_scripts` SET `creature_id` = '-107265' WHERE `id` =2303332;
UPDATE `creature_ai_scripts` SET `creature_id` = '-107266' WHERE `id` =2303333;
UPDATE `creature_ai_scripts` SET `creature_id` = '-107255' WHERE `id` =2303334;
UPDATE `creature_ai_scripts` SET `creature_id` = '-107256' WHERE `id` =2303335;
UPDATE `creature_ai_scripts` SET `creature_id` = '-107257' WHERE `id` =2303336;
UPDATE `creature_ai_scripts` SET `creature_id` = '-107264' WHERE `id` =2303337;
UPDATE `creature_ai_scripts` SET `creature_id` = '-109856' WHERE `id` =3068704;
UPDATE `creature_ai_scripts` SET `creature_id` = '-109863' WHERE `id` =3068705;
UPDATE `creature_ai_scripts` SET `creature_id` = '-109871' WHERE `id` =3068706;
UPDATE `creature_ai_scripts` SET `creature_id` = '-109858' WHERE `id` =3068707;
UPDATE `creature_ai_scripts` SET `creature_id` = '-109869' WHERE `id` =3068708;
UPDATE `creature_ai_scripts` SET `creature_id` = '-109868' WHERE `id` =3068709;
UPDATE `creature_ai_scripts` SET `creature_id` = '-109862' WHERE `id` =3068710;
UPDATE `creature_ai_scripts` SET `creature_id` = '-109867' WHERE `id` =3068711;
UPDATE `creature_ai_scripts` SET `creature_id` = '-109886' WHERE `id` =3068712;
UPDATE `creature_ai_scripts` SET `creature_id` = '-109884' WHERE `id` =3068713;
UPDATE `creature_ai_scripts` SET `creature_id` = '-109881' WHERE `id` =3068714;
UPDATE `creature_ai_scripts` SET `creature_id` = '-109879' WHERE `id` =3068715;
UPDATE `creature_ai_scripts` SET `creature_id` = '-136071' WHERE `id` =2402103;
UPDATE `creature_ai_scripts` SET `creature_id` = '-136094' WHERE `id` =2402104;
UPDATE `creature_ai_scripts` SET `creature_id` = '-127130' WHERE `id` =2932905;
UPDATE `creature_ai_scripts` SET `creature_id` = '-53126' WHERE `id` =2932906;
UPDATE `creature_ai_scripts` SET `creature_id` = '-56759' WHERE `id` =2933012;
UPDATE `creature_ai_scripts` SET `creature_id` = '-147625' WHERE `id` =2933011;
UPDATE `creature_ai_scripts` SET `creature_id` = '-147637' WHERE `id` =2933010;
UPDATE `creature_ai_scripts` SET `creature_id` = '-54327' WHERE `id` =2933009;
UPDATE `creature_ai_scripts` SET `creature_id` = '-129461' WHERE `id` =2933008;
UPDATE `creature_ai_scripts` SET `creature_id` = '-52982' WHERE `id` =2933809;
UPDATE `creature_ai_scripts` SET `creature_id` = '-110404' WHERE `id` =2977201;
UPDATE `creature_ai_scripts` SET `creature_id` = '-110405' WHERE `id` =2977202;
UPDATE `creature_ai_scripts` SET `creature_id` = '-110412' WHERE `id` =2977203;
UPDATE `creature_ai_scripts` SET `creature_id` = '-110410' WHERE `id` =2977204;
UPDATE `creature_ai_scripts` SET `creature_id` = '-111866' WHERE `id` =3114506;
UPDATE `creature_ai_scripts` SET `creature_id` = '-111769' WHERE `id` =3115506;
UPDATE `creature_ai_scripts` SET `creature_id` = '-109459' WHERE `id` =2411019;
UPDATE `creature_ai_scripts` SET `creature_id` = '-109450' WHERE `id` =2411013;
UPDATE `creature_ai_scripts` SET `creature_id` = '-109451' WHERE `id` =2411012;
UPDATE `creature_ai_scripts` SET `creature_id` = '-109458' WHERE `id` =2411020;
UPDATE `creature_ai_scripts` SET `creature_id` = '-109457' WHERE `id` =2411021;
UPDATE `creature_ai_scripts` SET `creature_id` = '-109449' WHERE `id` =2411014;
UPDATE `creature_ai_scripts` SET `creature_id` = '-109448' WHERE `id` =2411015;
UPDATE `creature_ai_scripts` SET `creature_id` = '-109454' WHERE `id` =2411023;
UPDATE `creature_ai_scripts` SET `creature_id` = '-109447' WHERE `id` =2411017;
UPDATE `creature_ai_scripts` SET `creature_id` = '-109455' WHERE `id` =2411016;
UPDATE `creature_ai_scripts` SET `creature_id` = '-109446' WHERE `id` =2411018;
UPDATE `creature_ai_scripts` SET `creature_id` = '-109456' WHERE `id` =2411022;
UPDATE `creature_ai_scripts` SET `creature_id` = '-109942' WHERE `id` =2988102;
UPDATE `creature_ai_scripts` SET `creature_id` = '-93527' WHERE `id` =3471602;
UPDATE `creature_ai_scripts` SET `creature_id` = '-93529' WHERE `id` =3471603;
UPDATE `creature_ai_scripts` SET `creature_id` = '-131177' WHERE `id` =3471604;
UPDATE `creature_ai_scripts` SET `creature_id` = '-93524' WHERE `id` =3471605;
UPDATE `creature_ai_scripts` SET `creature_id` = '-131176' WHERE `id` =3471606;
UPDATE `creature_ai_scripts` SET `creature_id` = '-93525' WHERE `id` =3471607;
UPDATE `creature_ai_scripts` SET `creature_id` = '-93528' WHERE `id` =3471608;
UPDATE `creature_ai_scripts` SET `creature_id` = '-93526' WHERE `id` =3471609;
UPDATE `creature_ai_scripts` SET `creature_id` = '-131172' WHERE `id` =3471610;
UPDATE `creature_ai_scripts` SET `creature_id` = '-131175' WHERE `id` =3471611;
UPDATE `creature_ai_scripts` SET `creature_id` = '-93530' WHERE `id` =3471612;
UPDATE `creature_ai_scripts` SET `creature_id` = '-131173' WHERE `id` =3471613;
UPDATE `creature_ai_scripts` SET `creature_id` = '-93531' WHERE `id` =3471614;
UPDATE `creature_ai_scripts` SET `creature_id` = '-131174' WHERE `id` =3471615;
UPDATE `creature_ai_scripts` SET `creature_id` = '-93532' WHERE `id` =3471616;
UPDATE `creature_ai_scripts` SET `creature_id` = '-13564' WHERE `id` =3471617;
UPDATE `creature_ai_scripts` SET `creature_id` = '-136613' WHERE `id` =3510601;
UPDATE `creature_ai_scripts` SET `creature_id` = '-136612' WHERE `id` =3510602;
UPDATE `creature_ai_scripts` SET `creature_id` = '-138945' WHERE `id` =3023602;
UPDATE `creature_ai_scripts` SET `creature_id` = '-138946' WHERE `id` =3023603;
UPDATE `creature_ai_scripts` SET `creature_id` = '-138947' WHERE `id` =3023604;
UPDATE `creature_ai_scripts` SET `creature_id` = '-102404' WHERE `id` =3023605;
UPDATE `creature_ai_scripts` SET `creature_id` = '-68262' WHERE `id` =1561712;
UPDATE `creature_ai_scripts` SET `creature_id` = '-68262' WHERE `id` =1561713;
UPDATE `creature_ai_scripts` SET `creature_id` = '-76019' WHERE `id` =2383708;
UPDATE `creature_ai_scripts` SET `creature_id` = '-76019' WHERE `id` =2383709;
UPDATE `creature_ai_scripts` SET `creature_id` = '-110813' WHERE `id` =3229801;
UPDATE `creature_ai_scripts` SET `creature_id` = '-110826' WHERE `id` =3229802;
UPDATE `creature_ai_scripts` SET `creature_id` = '-109453' WHERE `id` =2411011;
UPDATE `creature_ai_scripts` SET `creature_id` = '-109454' WHERE `id` =2411024;
UPDATE `creature_ai_scripts` SET `creature_id` = '-127130' WHERE `id` =2932907;
UPDATE `creature_ai_scripts` SET `creature_id` = '-147625' WHERE `id` =2933011;
UPDATE `creature_ai_scripts` SET `creature_id` = '-56759' WHERE `id` =2933012;
UPDATE `creature_ai_scripts` SET `creature_id` = '-128152' WHERE `id` =2933810;
UPDATE `creature_ai_scripts` SET `creature_id` = '-52982' WHERE `id` =2933811;
UPDATE `creature_ai_scripts` SET `creature_id` = '-87981' WHERE `id` =2988007;
UPDATE `creature_ai_scripts` SET `creature_id` = '-88233' WHERE `id` =3247201;
UPDATE `creature_ai_scripts` SET `creature_id` = '-88233' WHERE `id` =3247202;
UPDATE `creature_ai_scripts` SET `creature_id` = '-88232' WHERE `id` =3247203;
UPDATE `creature_ai_scripts` SET `creature_id` = '-88232' WHERE `id` =3247204;
UPDATE `creature_ai_scripts` SET `creature_id` = '-87560' WHERE `id` =3099001;
UPDATE `creature_ai_scripts` SET `creature_id` = '-128214' WHERE `id` =3224105;
UPDATE `creature_ai_scripts` SET `creature_id` = '-128215' WHERE `id` =3224106;
UPDATE `creature_ai_scripts` SET `creature_id` = '-128213' WHERE `id` =3224107;
UPDATE `creature_ai_scripts` SET `creature_id` = '-100571' WHERE `id` =3328501;
UPDATE `creature_ai_scripts` SET `creature_id` = '-127550' WHERE `id` =3328502;
UPDATE `creature_ai_scripts` SET `creature_id` = '-127551' WHERE `id` =3328503;
UPDATE `creature_ai_scripts` SET `creature_id` = '-127547' WHERE `id` =3330601;
UPDATE `creature_ai_scripts` SET `creature_id` = '-127546' WHERE `id` =3330602;
UPDATE `creature_ai_scripts` SET `creature_id` = '-100572' WHERE `id` =3330603;
UPDATE `creature_ai_scripts` SET `creature_id` = '-127552' WHERE `id` =3338201;
UPDATE `creature_ai_scripts` SET `creature_id` = '-127553' WHERE `id` =3338202;
UPDATE `creature_ai_scripts` SET `creature_id` = '-100570' WHERE `id` =3338203;
UPDATE `creature_ai_scripts` SET `creature_id` = '-127554' WHERE `id` =3338301;
UPDATE `creature_ai_scripts` SET `creature_id` = '-100569' WHERE `id` =3338302;
UPDATE `creature_ai_scripts` SET `creature_id` = '-127555' WHERE `id` =3338303;
UPDATE `creature_ai_scripts` SET `creature_id` = '-127548' WHERE `id` =3338401;
UPDATE `creature_ai_scripts` SET `creature_id` = '-127549' WHERE `id` =3338402;
UPDATE `creature_ai_scripts` SET `creature_id` = '-100568' WHERE `id` =3338403;
UPDATE `creature_ai_scripts` SET `creature_id` = '-127560' WHERE `id` =3355801;
UPDATE `creature_ai_scripts` SET `creature_id` = '-127561' WHERE `id` =3355802;
UPDATE `creature_ai_scripts` SET `creature_id` = '-100575' WHERE `id` =3355803;
UPDATE `creature_ai_scripts` SET `creature_id` = '-78152' WHERE `id` =3355901;
UPDATE `creature_ai_scripts` SET `creature_id` = '-78153' WHERE `id` =3355902;
UPDATE `creature_ai_scripts` SET `creature_id` = '-100576' WHERE `id` =3355903;
UPDATE `creature_ai_scripts` SET `creature_id` = '-127556' WHERE `id` =3356101;
UPDATE `creature_ai_scripts` SET `creature_id` = '-127557' WHERE `id` =3356102;
UPDATE `creature_ai_scripts` SET `creature_id` = '-100573' WHERE `id` =3356103;
UPDATE `creature_ai_scripts` SET `creature_id` = '-127564' WHERE `id` =3356201;
UPDATE `creature_ai_scripts` SET `creature_id` = '-127565' WHERE `id` =3356202;
UPDATE `creature_ai_scripts` SET `creature_id` = '-100577' WHERE `id` =3356203;
UPDATE `creature_ai_scripts` SET `creature_id` = '-127558' WHERE `id` =3356401;
UPDATE `creature_ai_scripts` SET `creature_id` = '-127559' WHERE `id` =3356402;
UPDATE `creature_ai_scripts` SET `creature_id` = '-100574' WHERE `id` =3356403;
UPDATE `creature_ai_scripts` SET `creature_id` = '-127611' WHERE `id` =3373801;
UPDATE `creature_ai_scripts` SET `creature_id` = '-127612' WHERE `id` =3373802;
UPDATE `creature_ai_scripts` SET `creature_id` = '-100583' WHERE `id` =3373803;
UPDATE `creature_ai_scripts` SET `creature_id` = '-127593' WHERE `id` =3373901;
UPDATE `creature_ai_scripts` SET `creature_id` = '-127594' WHERE `id` =3373902;
UPDATE `creature_ai_scripts` SET `creature_id` = '-100584' WHERE `id` =3373903;
UPDATE `creature_ai_scripts` SET `creature_id` = '-127606' WHERE `id` =3374001;
UPDATE `creature_ai_scripts` SET `creature_id` = '-127605' WHERE `id` =3374002;
UPDATE `creature_ai_scripts` SET `creature_id` = '-100580' WHERE `id` =3374003;
UPDATE `creature_ai_scripts` SET `creature_id` = '-127607' WHERE `id` =3374301;
UPDATE `creature_ai_scripts` SET `creature_id` = '-127608' WHERE `id` =3374302;
UPDATE `creature_ai_scripts` SET `creature_id` = '-100581' WHERE `id` =3374303;
UPDATE `creature_ai_scripts` SET `creature_id` = '-127599' WHERE `id` =3374401;
UPDATE `creature_ai_scripts` SET `creature_id` = '-127600' WHERE `id` =3374402;
UPDATE `creature_ai_scripts` SET `creature_id` = '-100587' WHERE `id` =3374403;
UPDATE `creature_ai_scripts` SET `creature_id` = '-127597' WHERE `id` =3374501;
UPDATE `creature_ai_scripts` SET `creature_id` = '-127598' WHERE `id` =3374502;
UPDATE `creature_ai_scripts` SET `creature_id` = '-100586' WHERE `id` =3374503;
UPDATE `creature_ai_scripts` SET `creature_id` = '-127604' WHERE `id` =3374601;
UPDATE `creature_ai_scripts` SET `creature_id` = '-127603' WHERE `id` =3374602;
UPDATE `creature_ai_scripts` SET `creature_id` = '-100578' WHERE `id` =3374603;
UPDATE `creature_ai_scripts` SET `creature_id` = '-127609' WHERE `id` =3374701;
UPDATE `creature_ai_scripts` SET `creature_id` = '-127610' WHERE `id` =3374702;
UPDATE `creature_ai_scripts` SET `creature_id` = '-100582' WHERE `id` =3374703;
UPDATE `creature_ai_scripts` SET `creature_id` = '-127601' WHERE `id` =3374801;
UPDATE `creature_ai_scripts` SET `creature_id` = '-127602' WHERE `id` =3374802;
UPDATE `creature_ai_scripts` SET `creature_id` = '-100588' WHERE `id` =3374803;
UPDATE `creature_ai_scripts` SET `creature_id` = '-127595' WHERE `id` =3374901;
UPDATE `creature_ai_scripts` SET `creature_id` = '-127596' WHERE `id` =3374902;
UPDATE `creature_ai_scripts` SET `creature_id` = '-100585' WHERE `id` =3374903;
UPDATE `creature_ai_scripts` SET `creature_id` = '-127268' WHERE `id` =1737502;
UPDATE `creature_ai_scripts` SET `creature_id` = '-67069' WHERE `id` =1737503;
UPDATE `creature_ai_scripts` SET `creature_id` = '-67084' WHERE `id` =1737504;
UPDATE `creature_ai_scripts` SET `creature_id` = '-67085' WHERE `id` =1737505;
UPDATE `creature_ai_scripts` SET `creature_id` = '-111452' WHERE `id` =1737506;
UPDATE `creature_ai_scripts` SET `creature_id` = '-67086' WHERE `id` =1737507;
UPDATE `creature_ai_scripts` SET `creature_id` = '-67087' WHERE `id` =1737508;
UPDATE `creature_ai_scripts` SET `creature_id` = '-67090' WHERE `id` =1737509;
UPDATE `creature_ai_scripts` SET `creature_id` = '-69042' WHERE `id` =1737510;
UPDATE `creature_ai_scripts` SET `creature_id` = '-69049' WHERE `id` =1737511;
UPDATE `creature_ai_scripts` SET `creature_id` = '-69054' WHERE `id` =1737512;
UPDATE `creature_ai_scripts` SET `creature_id` = '-74551' WHERE `id` =1737513;
UPDATE `creature_ai_scripts` SET `creature_id` = '-74552' WHERE `id` =1737514;
UPDATE `creature_ai_scripts` SET `creature_id` = '-111450' WHERE `id` =1737515;
UPDATE `creature_ai_scripts` SET `creature_id` = '-111451' WHERE `id` =1737516;
UPDATE `creature_ai_scripts` SET `creature_id` = '-151430' WHERE `id` =1534105;
UPDATE `creature_ai_scripts` SET `creature_id` = '-34954' WHERE `id` =1544106;
UPDATE `creature_ai_scripts` SET `creature_id` = '-34954' WHERE `id` =1544107;
UPDATE `creature_ai_scripts` SET `creature_id` = '-58434' WHERE `id` =1544108;
UPDATE `creature_ai_scripts` SET `creature_id` = '-58434' WHERE `id` =1544109;
UPDATE `creature_ai_scripts` SET `creature_id` = '-58464' WHERE `id` =1544110;
UPDATE `creature_ai_scripts` SET `creature_id` = '-58464' WHERE `id` =1544111;
UPDATE `creature_ai_scripts` SET `creature_id` = '-58408' WHERE `id` =1544112;
UPDATE `creature_ai_scripts` SET `creature_id` = '-58408' WHERE `id` =1544113;
UPDATE `creature_ai_scripts` SET `creature_id` = '-78665' WHERE `id` =1544114;
UPDATE `creature_ai_scripts` SET `creature_id` = '-78665' WHERE `id` =1544115;
UPDATE `creature_ai_scripts` SET `creature_id` = '-78666' WHERE `id` =1544116;
UPDATE `creature_ai_scripts` SET `creature_id` = '-78666' WHERE `id` =1544117;
UPDATE `creature_ai_scripts` SET `creature_id` = '-78667' WHERE `id` =1544118;
UPDATE `creature_ai_scripts` SET `creature_id` = '-78667' WHERE `id` =1544119;
UPDATE `creature_ai_scripts` SET `creature_id` = '-78669' WHERE `id` =1544206;
UPDATE `creature_ai_scripts` SET `creature_id` = '-78669' WHERE `id` =1544207;
UPDATE `creature_ai_scripts` SET `creature_id` = '-78669' WHERE `id` =1544208;
UPDATE `creature_ai_scripts` SET `creature_id` = '-78668' WHERE `id` =1544209;
UPDATE `creature_ai_scripts` SET `creature_id` = '-78668' WHERE `id` =1544210;
UPDATE `creature_ai_scripts` SET `creature_id` = '-78668' WHERE `id` =1544211;
UPDATE `creature_ai_scripts` SET `creature_id` = '-78670' WHERE `id` =1544212;
UPDATE `creature_ai_scripts` SET `creature_id` = '-78670' WHERE `id` =1544213;
UPDATE `creature_ai_scripts` SET `creature_id` = '-78670' WHERE `id` =1544214;
UPDATE `creature_ai_scripts` SET `creature_id` = '-1328' WHERE `id` =904302;
UPDATE `creature_ai_scripts` SET `creature_id` = '-1333' WHERE `id` =904303;
UPDATE `creature_ai_scripts` SET `creature_id` = '-1348' WHERE `id` =904304;
UPDATE `creature_ai_scripts` SET `creature_id` = '-6760' WHERE `id` =904405;
UPDATE `creature_ai_scripts` SET `creature_id` = '-6780' WHERE `id` =904406;
UPDATE `creature_ai_scripts` SET `creature_id` = '-6801' WHERE `id` =904407;
UPDATE `creature_ai_scripts` SET `creature_id` = '-6810' WHERE `id` =904408;
UPDATE `creature_ai_scripts` SET `creature_id` = '-45669' WHERE `id` =1182201;
UPDATE `creature_ai_scripts` SET `creature_id` = '-91727' WHERE `id` =1561704;
UPDATE `creature_ai_scripts` SET `creature_id` = '-91727' WHERE `id` =1561705;
UPDATE `creature_ai_scripts` SET `creature_id` = '-91728' WHERE `id` =1561706;
UPDATE `creature_ai_scripts` SET `creature_id` = '-91728' WHERE `id` =1561707;
UPDATE `creature_ai_scripts` SET `creature_id` = '-54982' WHERE `id` =1561708;
UPDATE `creature_ai_scripts` SET `creature_id` = '-54982' WHERE `id` =1561709;
UPDATE `creature_ai_scripts` SET `creature_id` = '-54983' WHERE `id` =1561710;
UPDATE `creature_ai_scripts` SET `creature_id` = '-54983' WHERE `id` =1561711;
UPDATE `creature_ai_scripts` SET `creature_id` = '-68262' WHERE `id` =1561712;
UPDATE `creature_ai_scripts` SET `creature_id` = '-68262' WHERE `id` =1561713;
UPDATE `creature_ai_scripts` SET `creature_id` = '-74924' WHERE `id` =1561714;
UPDATE `creature_ai_scripts` SET `creature_id` = '-74924' WHERE `id` =1561715;
UPDATE `creature_ai_scripts` SET `creature_id` = '-74926' WHERE `id` =1561716;
UPDATE `creature_ai_scripts` SET `creature_id` = '-74926' WHERE `id` =1561717;
UPDATE `creature_ai_scripts` SET `creature_id` = '-48907' WHERE `id` =1684202;
UPDATE `creature_ai_scripts` SET `creature_id` = '-56896' WHERE `id` =1684203;
UPDATE `creature_ai_scripts` SET `creature_id` = '-72634' WHERE `id` =1936204;
UPDATE `creature_ai_scripts` SET `creature_id` = '-127558' WHERE `id` =3356411;
UPDATE `creature_ai_scripts` SET `creature_id` = '-127559' WHERE `id` =3356412;
UPDATE `creature_ai_scripts` SET `creature_id` = '-100574' WHERE `id` =3356413;
UPDATE `creature_ai_scripts` SET `creature_id` = '-100571' WHERE `id` =3328511;
UPDATE `creature_ai_scripts` SET `creature_id` = '-127550' WHERE `id` =3328512;
UPDATE `creature_ai_scripts` SET `creature_id` = '-127551' WHERE `id` =3328513;
UPDATE `creature_ai_scripts` SET `creature_id` = '-100572' WHERE `id` =3330611;
UPDATE `creature_ai_scripts` SET `creature_id` = '-127547' WHERE `id` =3330612;
UPDATE `creature_ai_scripts` SET `creature_id` = '-127546' WHERE `id` =3330613;
UPDATE `creature_ai_scripts` SET `creature_id` = '-127560' WHERE `id` =3355811;
UPDATE `creature_ai_scripts` SET `creature_id` = '-127561' WHERE `id` =3355812;
UPDATE `creature_ai_scripts` SET `creature_id` = '-100575' WHERE `id` =3355813;
UPDATE `creature_ai_scripts` SET `creature_id` = '-78152' WHERE `id` =3355911;
UPDATE `creature_ai_scripts` SET `creature_id` = '-78153' WHERE `id` =3355912;
UPDATE `creature_ai_scripts` SET `creature_id` = '-100576' WHERE `id` =3355913;
UPDATE `creature_ai_scripts` SET `creature_id` = '-100570' WHERE `id` =3338211;
UPDATE `creature_ai_scripts` SET `creature_id` = '-127552' WHERE `id` =3338212;
UPDATE `creature_ai_scripts` SET `creature_id` = '-127553' WHERE `id` =3338213;
UPDATE `creature_ai_scripts` SET `creature_id` = '-127554' WHERE `id` =3338311;
UPDATE `creature_ai_scripts` SET `creature_id` = '-100569' WHERE `id` =3338312;
UPDATE `creature_ai_scripts` SET `creature_id` = '-127555' WHERE `id` =3338313;
UPDATE `creature_ai_scripts` SET `creature_id` = '-127548' WHERE `id` =3338411;
UPDATE `creature_ai_scripts` SET `creature_id` = '-127549' WHERE `id` =3338412;
UPDATE `creature_ai_scripts` SET `creature_id` = '-100568' WHERE `id` =3338413;
UPDATE `creature_ai_scripts` SET `creature_id` = '-127556' WHERE `id` =3356111;
UPDATE `creature_ai_scripts` SET `creature_id` = '-127557' WHERE `id` =3356112;
UPDATE `creature_ai_scripts` SET `creature_id` = '-100573' WHERE `id` =3356113;
UPDATE `creature_ai_scripts` SET `creature_id` = '-127564' WHERE `id` =3356211;
UPDATE `creature_ai_scripts` SET `creature_id` = '-127565' WHERE `id` =3356212;
UPDATE `creature_ai_scripts` SET `creature_id` = '-100577' WHERE `id` =3356213;
UPDATE `creature_ai_scripts` SET `creature_id` = '-127564' WHERE `id` =3373811;
UPDATE `creature_ai_scripts` SET `creature_id` = '-127565' WHERE `id` =3373812;
UPDATE `creature_ai_scripts` SET `creature_id` = '-100577' WHERE `id` =3373813;
UPDATE `creature_ai_scripts` SET `creature_id` = '-127593' WHERE `id` =3373911;
UPDATE `creature_ai_scripts` SET `creature_id` = '-127594' WHERE `id` =3373912;
UPDATE `creature_ai_scripts` SET `creature_id` = '-100584' WHERE `id` =3373913;
UPDATE `creature_ai_scripts` SET `creature_id` = '-127606' WHERE `id` =3374011;
UPDATE `creature_ai_scripts` SET `creature_id` = '-127605' WHERE `id` =3374012;
UPDATE `creature_ai_scripts` SET `creature_id` = '-100580' WHERE `id` =3374013;
UPDATE `creature_ai_scripts` SET `creature_id` = '-127607' WHERE `id` =3374311;
UPDATE `creature_ai_scripts` SET `creature_id` = '-127608' WHERE `id` =3374312;
UPDATE `creature_ai_scripts` SET `creature_id` = '-100581' WHERE `id` =3374313;
UPDATE `creature_ai_scripts` SET `creature_id` = '-127599' WHERE `id` =3374411;
UPDATE `creature_ai_scripts` SET `creature_id` = '-127600' WHERE `id` =3374412;
UPDATE `creature_ai_scripts` SET `creature_id` = '-100587' WHERE `id` =3374413;
UPDATE `creature_ai_scripts` SET `creature_id` = '-127597' WHERE `id` =3374511;
UPDATE `creature_ai_scripts` SET `creature_id` = '-127598' WHERE `id` =3374512;
UPDATE `creature_ai_scripts` SET `creature_id` = '-100586' WHERE `id` =3374513;
UPDATE `creature_ai_scripts` SET `creature_id` = '-127604' WHERE `id` =3374611;
UPDATE `creature_ai_scripts` SET `creature_id` = '-127603' WHERE `id` =3374612;
UPDATE `creature_ai_scripts` SET `creature_id` = '-100578' WHERE `id` =3374613;
UPDATE `creature_ai_scripts` SET `creature_id` = '-127609' WHERE `id` =3374711;
UPDATE `creature_ai_scripts` SET `creature_id` = '-127610' WHERE `id` =3374712;
UPDATE `creature_ai_scripts` SET `creature_id` = '-100582' WHERE `id` =3374713;
UPDATE `creature_ai_scripts` SET `creature_id` = '-127601' WHERE `id` =3374811;
UPDATE `creature_ai_scripts` SET `creature_id` = '-127602' WHERE `id` =3374812;
UPDATE `creature_ai_scripts` SET `creature_id` = '-100588' WHERE `id` =3374813;
UPDATE `creature_ai_scripts` SET `creature_id` = '-127595' WHERE `id` =3374911;
UPDATE `creature_ai_scripts` SET `creature_id` = '-127596' WHERE `id` =3374912;
UPDATE `creature_ai_scripts` SET `creature_id` = '-100585' WHERE `id` =3374913;
UPDATE `creature_ai_scripts` SET `creature_id` = '-47496' WHERE `id` =406202;
UPDATE `creature_ai_scripts` SET `creature_id` = '-47496' WHERE `id` =406203;
UPDATE `creature_ai_scripts` SET `creature_id` = '-47497' WHERE `id` =406204;
UPDATE `creature_ai_scripts` SET `creature_id` = '-47497' WHERE `id` =406205;


# Finall_Spell_UP
-- Classic -> WOTLK UNIT_NPC_FLAGS
UPDATE dbscripts_on_creature_death SET datalong = 82 WHERE datalong = 147 AND command IN (2,4,5);
UPDATE dbscripts_on_event SET datalong = 82 WHERE datalong = 147 AND command IN (2,4,5);
UPDATE dbscripts_on_relay SET datalong = 82 WHERE datalong = 147 AND command IN (2,4,5);
UPDATE dbscripts_on_creature_movement SET datalong = 82 WHERE datalong = 147 AND command IN (2,4,5);
UPDATE dbscripts_on_go_use SET datalong = 82 WHERE datalong = 147 AND command IN (2,4,5);
UPDATE dbscripts_on_go_template_use SET datalong = 82 WHERE datalong = 147 AND command IN (2,4,5);
UPDATE dbscripts_on_gossip SET datalong = 82 WHERE datalong = 147 AND command IN (2,4,5);
UPDATE dbscripts_on_quest_end SET datalong = 82 WHERE datalong = 147 AND command IN (2,4,5);
UPDATE dbscripts_on_quest_start SET datalong = 82 WHERE datalong = 147 AND command IN (2,4,5);
UPDATE dbscripts_on_spell SET datalong = 82 WHERE datalong = 147 AND command IN (2,4,5);
-- TBC -> WOTLK UNIT_NPC_FLAGS
UPDATE dbscripts_on_creature_death SET datalong = 82 WHERE datalong = 168 AND command IN (2,4,5);
UPDATE dbscripts_on_event SET datalong = 82 WHERE datalong = 168 AND command IN (2,4,5);
UPDATE dbscripts_on_relay SET datalong = 82 WHERE datalong = 168 AND command IN (2,4,5);
UPDATE dbscripts_on_creature_movement SET datalong = 82 WHERE datalong = 168 AND command IN (2,4,5);
UPDATE dbscripts_on_go_use SET datalong = 82 WHERE datalong = 168 AND command IN (2,4,5);
UPDATE dbscripts_on_go_template_use SET datalong = 82 WHERE datalong = 168 AND command IN (2,4,5);
UPDATE dbscripts_on_gossip SET datalong = 82 WHERE datalong = 168 AND command IN (2,4,5);
UPDATE dbscripts_on_quest_end SET datalong = 82 WHERE datalong = 168 AND command IN (2,4,5);
UPDATE dbscripts_on_quest_start SET datalong = 82 WHERE datalong = 168 AND command IN (2,4,5);
UPDATE dbscripts_on_spell SET datalong = 82 WHERE datalong = 168 AND command IN (2,4,5);

-- Classic -> TBC -> WOTLK UNIT_FIELD_FLAGS
UPDATE dbscripts_on_creature_death SET datalong = 59 WHERE command IN (2,4,5) AND datalong IN (46,58);
UPDATE dbscripts_on_event SET datalong = 59 WHERE command IN (2,4,5) AND datalong IN (46,58);
UPDATE dbscripts_on_relay SET datalong = 59 WHERE command IN (2,4,5) AND datalong IN (46,58);
UPDATE dbscripts_on_creature_movement SET datalong = 59 WHERE command IN (2,4,5) AND datalong IN (46,58);
UPDATE dbscripts_on_go_use SET datalong = 59 WHERE command IN (2,4,5) AND datalong IN (46,58);
UPDATE dbscripts_on_go_template_use SET datalong = 59 WHERE command IN (2,4,5) AND datalong IN (46,58);
UPDATE dbscripts_on_gossip SET datalong = 59 WHERE command IN (2,4,5) AND datalong IN (46,58);
UPDATE dbscripts_on_quest_end SET datalong = 59 WHERE command IN (2,4,5) AND datalong IN (46,58);
UPDATE dbscripts_on_quest_start SET datalong = 59 WHERE command IN (2,4,5) AND datalong IN (46,58);
UPDATE dbscripts_on_spell SET datalong = 59 WHERE command IN (2,4,5) AND datalong IN (46,58);


# NPC_ADDON_FIX
INSERT IGNORE INTO `creature_template_addon`
SELECT
`creature_template`.`DifficultyEntry1`,
`creature_template_addon`.`mount`,
`creature_template_addon`.`stand_state`,
`creature_template_addon`.`sheath_state`,
`creature_template_addon`.`pvp_flags`,
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
`creature_template_addon`.`stand_state`,
`creature_template_addon`.`sheath_state`,
`creature_template_addon`.`pvp_flags`,
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
`creature_template_addon`.`stand_state`,
`creature_template_addon`.`sheath_state`,
`creature_template_addon`.`pvp_flags`,
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
`copy`.`DynamicFlags`=`creature_template`.`DynamicFlags`,
`copy`.`InhabitType`=`creature_template`.`InhabitType`,
`copy`.`EquipmentTemplateId`=`creature_template`.`EquipmentTemplateId`,
`copy`.`Faction`=`creature_template`.`Faction`,
`copy`.`SpeedRun`=`creature_template`.`SpeedRun`,
`copy`.`SpeedWalk`=`creature_template`.`SpeedWalk`,
`copy`.`Scale`=`creature_template`.`Scale`,
#`copy`.`MeleeBaseAttackTime`=`creature_template`.`MeleeBaseAttackTime`,
#`copy`.`RangedBaseAttackTime`=`creature_template`.`RangedBaseAttackTime`,
`copy`.`DamageSchool`=`creature_template`.`DamageSchool`,
`copy`.`SchoolImmuneMask`=`creature_template`.`SchoolImmuneMask`,
#`copy`.`MinLootGold`=`creature_template`.`MinLootGold`,
#`copy`.`MaxLootGold`=`creature_template`.`MaxLootGold`,
#`copy`.`VehicleTemplateId`=`creature_template`.`VehicleTemplateId`,
`copy`.`MechanicImmuneMask`=`copy`.`MechanicImmuneMask`|`creature_template`.`MechanicImmuneMask`,
`copy`.`MovementType`=`creature_template`.`MovementType`,
`copy`.`InhabitType`=`creature_template`.`InhabitType`
WHERE
`copy`.`Entry`=`creature_template`.`DifficultyEntry1`;
UPDATE
`creature_template`, `creature_template` AS `copy`
SET
`copy`.`RegenerateStats`=`creature_template`.`RegenerateStats`,
`copy`.`UnitClass`=`creature_template`.`UnitClass`,
`copy`.`UnitFlags`=`creature_template`.`UnitFlags`,
`copy`.`NpcFlags`=`creature_template`.`NpcFlags`,
`copy`.`DynamicFlags`=`creature_template`.`DynamicFlags`,
`copy`.`InhabitType`=`creature_template`.`InhabitType`,
`copy`.`EquipmentTemplateId`=`creature_template`.`EquipmentTemplateId`,
`copy`.`Faction`=`creature_template`.`Faction`,
`copy`.`SpeedRun`=`creature_template`.`SpeedRun`,
`copy`.`SpeedWalk`=`creature_template`.`SpeedWalk`,
`copy`.`Scale`=`creature_template`.`Scale`,
#`copy`.`MeleeBaseAttackTime`=`creature_template`.`MeleeBaseAttackTime`,
#`copy`.`RangedBaseAttackTime`=`creature_template`.`RangedBaseAttackTime`,
`copy`.`DamageSchool`=`creature_template`.`DamageSchool`,
`copy`.`SchoolImmuneMask`=`creature_template`.`SchoolImmuneMask`,
#`copy`.`MinLootGold`=`creature_template`.`MinLootGold`,
#`copy`.`MaxLootGold`=`creature_template`.`MaxLootGold`,
#`copy`.`VehicleTemplateId`=`creature_template`.`VehicleTemplateId`,
`copy`.`MechanicImmuneMask`=`copy`.`MechanicImmuneMask`|`creature_template`.`MechanicImmuneMask`,
`copy`.`MovementType`=`creature_template`.`MovementType`,
`copy`.`InhabitType`=`creature_template`.`InhabitType`
WHERE
`copy`.`Entry`=`creature_template`.`DifficultyEntry2`;
UPDATE
`creature_template`, `creature_template` AS `copy`
SET
`copy`.`RegenerateStats`=`creature_template`.`RegenerateStats`,
`copy`.`UnitClass`=`creature_template`.`UnitClass`,
`copy`.`UnitFlags`=`creature_template`.`UnitFlags`,
`copy`.`NpcFlags`=`creature_template`.`NpcFlags`,
`copy`.`DynamicFlags`=`creature_template`.`DynamicFlags`,
`copy`.`InhabitType`=`creature_template`.`InhabitType`,
`copy`.`EquipmentTemplateId`=`creature_template`.`EquipmentTemplateId`,
`copy`.`Faction`=`creature_template`.`Faction`,
`copy`.`SpeedRun`=`creature_template`.`SpeedRun`,
`copy`.`SpeedWalk`=`creature_template`.`SpeedWalk`,
`copy`.`Scale`=`creature_template`.`Scale`,
#`copy`.`MeleeBaseAttackTime`=`creature_template`.`MeleeBaseAttackTime`,
#`copy`.`RangedBaseAttackTime`=`creature_template`.`RangedBaseAttackTime`,
`copy`.`DamageSchool`=`creature_template`.`DamageSchool`,
`copy`.`SchoolImmuneMask`=`creature_template`.`SchoolImmuneMask`,
#`copy`.`MinLootGold`=`creature_template`.`MinLootGold`,
#`copy`.`MaxLootGold`=`creature_template`.`MaxLootGold`,
#`copy`.`VehicleTemplateId`=`creature_template`.`VehicleTemplateId`,
`copy`.`MechanicImmuneMask`=`copy`.`MechanicImmuneMask`|`creature_template`.`MechanicImmuneMask`,
`copy`.`MovementType`=`creature_template`.`MovementType`,
`copy`.`InhabitType`=`creature_template`.`InhabitType`
WHERE
`copy`.`Entry`=`creature_template`.`DifficultyEntry3`;

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
UPDATE `creature` SET `spawndist` = 0 WHERE `MovementType` = 2;
UPDATE `creature_template` SET NpcFlags = NpcFlags|1 WHERE `GossipMenuId` > 0 AND `Entry` NOT IN (22423,9460);
UPDATE `gossip_menu_option` SET `action_menu_id` = '-1' WHERE `action_menu_id` =0 AND `action_script_id` >0;
# UPDATE quest_template SET SpecialFlags=SpecialFlags|1 WHERE SpecialFlags=4;
# UPDATE creature_template SET ExtraFlags=ExtraFlags|0x8000 WHERE (InhabitType&2)!=0 AND (CreatureType IN (5) OR family IN (8));
# UPDATE creature_template SET ExtraFlags=ExtraFlags|0x10000 WHERE (InhabitType&2)!=0 AND (CreatureType IN (5));
