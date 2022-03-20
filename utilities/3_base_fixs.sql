# fix base

# [NPC 7918][Gossip] Stone Watcher of Norgannon [SD2 npc_stone_watcher_of_norgannon]
# [NPC 7783][Gossip] Loramus Thalipedes [SD2 npc_loramus_thalipedes]
# [NPC 3836][Gossip] Mountaineer Pebblebitty [SD2 npc_mountaineer_pebblebitty]
UPDATE `creature_template` SET `ScriptName` = '' WHERE `Entry` =7918;
UPDATE `creature_template` SET `ScriptName` = '' WHERE `Entry` =7783;
UPDATE `creature_template` SET `ScriptName` = '' WHERE `Entry` =3836;

# [NPC 5164,11145,11146,11176,11177,11178,11191,11192,11193][Gossip] [SD2 npc_prof_blacksmith]
# [NPC 7866,7867,7868,7869,7870,7871][Gossip] [SD2 npc_prof_leather]
UPDATE creature_template SET ScriptName='' WHERE entry IN (5164,11145,11146,11176,11177,11178,11191,11192,11193);
UPDATE creature_template SET ScriptName='' WHERE entry IN (7866,7867,7868,7869,7870,7871);
