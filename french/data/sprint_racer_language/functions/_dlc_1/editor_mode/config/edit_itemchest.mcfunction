execute if entity @s[tag=!dontInherit] run function sprint_racer:game_logic/2/itemchest_menu_edit/inherit_chest_data
execute if entity @s[tag=dontInherit] run function sprint_racer:game_logic/2/itemchest_menu_edit/update_nearby_chest
tag @s remove dontInherit

tellraw @s[scores={dropOrangeDye=1..}] ["",{"text":" "}]
tellraw @s[scores={dropOrangeDye=1..}] ["",{"text":" "}]
tellraw @s[scores={dropOrangeDye=1..}] ["",{"text":" "}]
tellraw @s[scores={dropOrangeDye=1..}] ["",{"text":" "}]
tellraw @s[scores={dropOrangeDye=1..}] ["",{"text":" "}]
tellraw @s[scores={dropOrangeDye=1..}] ["",{"text":" "}]
tellraw @s[scores={dropOrangeDye=1..}] ["",{"text":" "}]
tellraw @s[scores={dropOrangeDye=1..}] ["",{"text":" "}]
tellraw @s[scores={dropOrangeDye=1..}] ["",{"text":" "}]
tellraw @s[scores={dropOrangeDye=1..}] ["",{"text":" "}]
tellraw @s[scores={dropOrangeDye=1..}] ["",{"text":" "}]
tellraw @s[scores={dropOrangeDye=1..}] ["",{"text":" "}]
tellraw @s[scores={dropOrangeDye=1..}] ["",{"text":" "}]
tellraw @s[scores={dropOrangeDye=1..}] ["",{"text":" "}]
tellraw @s[scores={dropOrangeDye=1..}] ["",{"text":" "}]
tellraw @s[scores={dropOrangeDye=1..}] ["",{"text":" "}]
tellraw @s[scores={dropOrangeDye=1..}] ["",{"text":" "}]
tellraw @s[scores={dropOrangeDye=1..}] ["",{"text":" "}]
tellraw @s[scores={dropOrangeDye=1..}] ["",{"text":"==\\/== EDIT ITEM CHEST ==\\/==","color":"gold","bold":"true"}]
tellraw @s[tag=!itemBattle,scores={dropOrangeDye=1..}] ["",{"text":"Gamemode: ","color":"white","bold":"true"},{"text":"[Race]","color":"yellow","clickEvent":{"action":"run_command","value":"/execute as @s[gamemode=creative] run function sprint_racer:game_logic/2/itemchest_menu_edit/disable_battlemode"},"hoverEvent":{"action":"show_text","value":"Race"}},{"text":"  "},{"text":"[Battle]","color":"gray","clickEvent":{"action":"run_command","value":"/execute as @s[gamemode=creative] run function sprint_racer:game_logic/2/itemchest_menu_edit/enable_battlemode"},"hoverEvent":{"action":"show_text","value":"Battle"}}]
tellraw @s[tag=itemBattle,scores={dropOrangeDye=1..}] ["",{"text":"Gamemode: ","color":"white","bold":"true"},{"text":"[Race]","color":"gray","clickEvent":{"action":"run_command","value":"/execute as @s[gamemode=creative] run function sprint_racer:game_logic/2/itemchest_menu_edit/disable_battlemode"},"hoverEvent":{"action":"show_text","value":"Race"}},{"text":"  "},{"text":"[Battle]","color":"yellow","clickEvent":{"action":"run_command","value":"/execute as @s[gamemode=creative] run function sprint_racer:game_logic/2/itemchest_menu_edit/enable_battlemode"},"hoverEvent":{"action":"show_text","value":"Battle"}}]
tellraw @s[scores={dropOrangeDye=1..}] ["",{"text":"Time Attack Race Seed: ","color":"white","bold":"true"},{"score":{"name":"@s","objective":"itemchestSeedA","color":"white","bold":"false"}},{"text":"  "},{"text":"[+]","color":"green","clickEvent":{"action":"run_command","value":"/execute as @s[gamemode=creative] run function sprint_racer:game_logic/2/itemchest_menu_edit/increment_seed_a"},"hoverEvent":{"action":"show_text","value":"Increase"}},{"text":"  "},{"text":"[-]","color":"red","clickEvent":{"action":"run_command","value":"/execute as @s[gamemode=creative] run function sprint_racer:game_logic/2/itemchest_menu_edit/decrement_seed_a"},"hoverEvent":{"action":"show_text","value":"Decrease"}}]
tellraw @s[scores={dropOrangeDye=1..}] ["",{"text":"Time Attack Battle Seed: ","color":"white","bold":"true"},{"score":{"name":"@s","objective":"itemchestSeedB","color":"white","bold":"false"}},{"text":"  "},{"text":"[+]","color":"green","clickEvent":{"action":"run_command","value":"/execute as @s[gamemode=creative] run function sprint_racer:game_logic/2/itemchest_menu_edit/increment_seed_b"},"hoverEvent":{"action":"show_text","value":"Increase"}},{"text":"  "},{"text":"[-]","color":"red","clickEvent":{"action":"run_command","value":"/execute as @s[gamemode=creative] run function sprint_racer:game_logic/2/itemchest_menu_edit/decrement_seed_b"},"hoverEvent":{"action":"show_text","value":"Decrease"}}]
tellraw @s[tag=!aiCantSee,scores={dropOrangeDye=1..}] ["",{"text":"Visible to AI? ","color":"white","bold":"true"},{"text":"[Yes]","color":"yellow","clickEvent":{"action":"run_command","value":"/execute as @s[gamemode=creative] run function sprint_racer:game_logic/2/itemchest_menu_edit/ai_cansee"},"hoverEvent":{"action":"show_text","value":"Yes"}},{"text":"  "},{"text":"[No]","color":"gray","clickEvent":{"action":"run_command","value":"/execute as @s[gamemode=creative] run function sprint_racer:game_logic/2/itemchest_menu_edit/ai_cannotsee"},"hoverEvent":{"action":"show_text","value":"No"}}]
tellraw @s[tag=aiCantSee,scores={dropOrangeDye=1..}] ["",{"text":"Visible to AI? ","color":"white","bold":"true"},{"text":"[Yes]","color":"gray","clickEvent":{"action":"run_command","value":"/execute as @s[gamemode=creative] run function sprint_racer:game_logic/2/itemchest_menu_edit/ai_cansee"},"hoverEvent":{"action":"show_text","value":"Yes"}},{"text":"  "},{"text":"[No]","color":"yellow","clickEvent":{"action":"run_command","value":"/execute as @s[gamemode=creative] run function sprint_racer:game_logic/2/itemchest_menu_edit/ai_cannotsee"},"hoverEvent":{"action":"show_text","value":"No"}}]


scoreboard players reset @s dropOrangeDye