scoreboard players add @s scriptMove 1
scoreboard players set @s[scores={scriptMove=5..}] scriptMove 1

tellraw @s[scores={dropEndermiteEgg=1..}] ["",{"text":" "}]
tellraw @s[scores={dropEndermiteEgg=1..}] ["",{"text":" "}]
tellraw @s[scores={dropEndermiteEgg=1..}] ["",{"text":" "}]
tellraw @s[scores={dropEndermiteEgg=1..}] ["",{"text":" "}]
tellraw @s[scores={dropEndermiteEgg=1..}] ["",{"text":" "}]
tellraw @s[scores={dropEndermiteEgg=1..}] ["",{"text":" "}]
tellraw @s[scores={dropEndermiteEgg=1..}] ["",{"text":" "}]
tellraw @s[scores={dropEndermiteEgg=1..}] ["",{"text":" "}]
tellraw @s[scores={dropEndermiteEgg=1..}] ["",{"text":" "}]
tellraw @s[scores={dropEndermiteEgg=1..}] ["",{"text":" "}]
tellraw @s[scores={dropEndermiteEgg=1..}] ["",{"text":" "}]
tellraw @s[scores={dropEndermiteEgg=1..}] ["",{"text":" "}]
tellraw @s[scores={dropEndermiteEgg=1..}] ["",{"text":" "}]
tellraw @s[scores={dropEndermiteEgg=1..}] ["",{"text":" "}]
tellraw @s[scores={dropEndermiteEgg=1..}] ["",{"text":" "}]
tellraw @s[scores={dropEndermiteEgg=1..}] ["",{"text":" "}]
tellraw @s[scores={dropEndermiteEgg=1..}] ["",{"text":" "}]
tellraw @s[scores={dropEndermiteEgg=1..}] ["",{"text":" "}]
tellraw @s[scores={dropEndermiteEgg=1..}] ["",{"text":"==\\/== SCRIPTED SEQUENCE ==\\/==","color":"light_purple","bold":"true"}]
tellraw @s[scores={dropEndermiteEgg=1..}] ["",{"text":"Sequence number: ","color":"white","bold":"true"},{"score":{"name":"@s","objective":"scriptMove","color":"white","bold":"false"}},{"text":"  "},{"text":"(Drop to cycle...)"}]
tellraw @s[tag=scriptStart,scores={dropEndermiteEgg=1..}] ["",{"text":"Start Point? ","color":"white","bold":"true"},{"text":"[Yes]","color":"yellow","clickEvent":{"action":"run_command","value":"/execute as @s[gamemode=creative] run function sprint_racer:game_logic/2/scriptmove_menu/enable_start"},"hoverEvent":{"action":"show_text","value":"Yes"}},{"text":"  "},{"text":"[No]","color":"gray","clickEvent":{"action":"run_command","value":"/execute as @s[gamemode=creative] run function sprint_racer:game_logic/2/scriptmove_menu/disable_start"},"hoverEvent":{"action":"show_text","value":"No"}}]
tellraw @s[tag=!scriptStart,scores={dropEndermiteEgg=1..}] ["",{"text":"Start Point? ","color":"white","bold":"true"},{"text":"[Yes]","color":"gray","clickEvent":{"action":"run_command","value":"/execute as @s[gamemode=creative] run function sprint_racer:game_logic/2/scriptmove_menu/enable_start"},"hoverEvent":{"action":"show_text","value":"Yes"}},{"text":"  "},{"text":"[No]","color":"yellow","clickEvent":{"action":"run_command","value":"/execute as @s[gamemode=creative] run function sprint_racer:game_logic/2/scriptmove_menu/disable_start"},"hoverEvent":{"action":"show_text","value":"No"}}]
tellraw @s[tag=requireBoost,scores={dropEndermiteEgg=1..}] ["",{"text":"Boost Required to Start? ","color":"white","bold":"true"},{"text":"[Yes]","color":"yellow","clickEvent":{"action":"run_command","value":"/execute as @s[gamemode=creative] run function sprint_racer:game_logic/2/scriptmove_menu/require_boost"},"hoverEvent":{"action":"show_text","value":"Yes"}},{"text":"  "},{"text":"[No]","color":"gray","clickEvent":{"action":"run_command","value":"/execute as @s[gamemode=creative] run function sprint_racer:game_logic/2/scriptmove_menu/require_nothing"},"hoverEvent":{"action":"show_text","value":"No"}}]
tellraw @s[tag=!requireBoost,scores={dropEndermiteEgg=1..}] ["",{"text":"Boost Required to Start? ","color":"white","bold":"true"},{"text":"[Yes]","color":"gray","clickEvent":{"action":"run_command","value":"/execute as @s[gamemode=creative] run function sprint_racer:game_logic/2/scriptmove_menu/require_boost"},"hoverEvent":{"action":"show_text","value":"Yes"}},{"text":"  "},{"text":"[No]","color":"yellow","clickEvent":{"action":"run_command","value":"/execute as @s[gamemode=creative] run function sprint_racer:game_logic/2/scriptmove_menu/require_nothing"},"hoverEvent":{"action":"show_text","value":"No"}}]
tellraw @s[tag=scriptEnd,scores={dropEndermiteEgg=1..}] ["",{"text":"End Point? ","color":"white","bold":"true"},{"text":"[Yes]","color":"yellow","clickEvent":{"action":"run_command","value":"/execute as @s[gamemode=creative] run function sprint_racer:game_logic/2/scriptmove_menu/enable_end"},"hoverEvent":{"action":"show_text","value":"Yes"}},{"text":"  "},{"text":"[No]","color":"gray","clickEvent":{"action":"run_command","value":"/execute as @s[gamemode=creative] run function sprint_racer:game_logic/2/scriptmove_menu/disable_end"},"hoverEvent":{"action":"show_text","value":"No"}}]
tellraw @s[tag=!scriptEnd,scores={dropEndermiteEgg=1..}] ["",{"text":"End Point? ","color":"white","bold":"true"},{"text":"[Yes]","color":"gray","clickEvent":{"action":"run_command","value":"/execute as @s[gamemode=creative] run function sprint_racer:game_logic/2/scriptmove_menu/enable_end"},"hoverEvent":{"action":"show_text","value":"Yes"}},{"text":"  "},{"text":"[No]","color":"yellow","clickEvent":{"action":"run_command","value":"/execute as @s[gamemode=creative] run function sprint_racer:game_logic/2/scriptmove_menu/disable_end"},"hoverEvent":{"action":"show_text","value":"No"}}]


scoreboard players reset @s dropEndermiteEgg