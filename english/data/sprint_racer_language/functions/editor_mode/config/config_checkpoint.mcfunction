scoreboard players add @s[scores={dropSheepEgg=1..}] check 0
scoreboard players set @s[scores={dropSheepEgg=1..,check=..0}] check 1
tellraw @s[scores={dropSheepEgg=1..}] ["",{"text":" "}]
tellraw @s[scores={dropSheepEgg=1..}] ["",{"text":" "}]
tellraw @s[scores={dropSheepEgg=1..}] ["",{"text":" "}]
tellraw @s[scores={dropSheepEgg=1..}] ["",{"text":" "}]
tellraw @s[scores={dropSheepEgg=1..}] ["",{"text":" "}]
tellraw @s[scores={dropSheepEgg=1..}] ["",{"text":" "}]
tellraw @s[scores={dropSheepEgg=1..}] ["",{"text":" "}]
tellraw @s[scores={dropSheepEgg=1..}] ["",{"text":" "}]
tellraw @s[scores={dropSheepEgg=1..}] ["",{"text":" "}]
tellraw @s[scores={dropSheepEgg=1..}] ["",{"text":" "}]
tellraw @s[scores={dropSheepEgg=1..}] ["",{"text":" "}]
tellraw @s[scores={dropSheepEgg=1..}] ["",{"text":" "}]
tellraw @s[scores={dropSheepEgg=1..}] ["",{"text":" "}]
tellraw @s[scores={dropSheepEgg=1..}] ["",{"text":" "}]
tellraw @s[scores={dropSheepEgg=1..}] ["",{"text":" "}]
tellraw @s[scores={dropSheepEgg=1..}] ["",{"text":" "}]
tellraw @s[scores={dropSheepEgg=1..}] ["",{"text":" "}]
tellraw @s[scores={dropSheepEgg=1..}] ["",{"text":" "}]
tellraw @s[scores={dropSheepEgg=1..}] ["",{"text":"==\\/== CHECKPOINT ==\\/==","color":"gold","bold":"true"}]
tellraw @s[scores={dropSheepEgg=1..}] ["",{"text":"Checkpoint number: ","color":"white","bold":"true"},{"score":{"name":"@s","objective":"check","color":"white","bold":"false"}},{"text":"  "},{"text":"[+]","color":"green","clickEvent":{"action":"run_command","value":"/execute as @s[gamemode=creative] run function sprint_racer:game_logic/2/checkpoint_menu/increment_check"},"hoverEvent":{"action":"show_text","value":"Increase"}},{"text":"  "},{"text":"[-]","color":"red","clickEvent":{"action":"run_command","value":"/execute as @s[gamemode=creative] run function sprint_racer:game_logic/2/checkpoint_menu/decrement_check"},"hoverEvent":{"action":"show_text","value":"Decrease"}}]
tellraw @s[tag=checkSound,scores={dropSheepEgg=1..}] ["",{"text":"Sound Effect: ","color":"white","bold":"true"},{"text":"[On]","color":"yellow","clickEvent":{"action":"run_command","value":"/execute as @s[gamemode=creative] run function sprint_racer:game_logic/2/checkpoint_menu/enable_checksound"},"hoverEvent":{"action":"show_text","value":"Enable"}},{"text":"  "},{"text":"[Off]","color":"gray","clickEvent":{"action":"run_command","value":"/execute as @s[gamemode=creative] run function sprint_racer:game_logic/2/checkpoint_menu/disable_checksound"},"hoverEvent":{"action":"show_text","value":"Disable"}}]
tellraw @s[tag=!checkSound,scores={dropSheepEgg=1..}] ["",{"text":"Sound Effect: ","color":"white","bold":"true"},{"text":"[On]","color":"gray","clickEvent":{"action":"run_command","value":"/execute as @s[gamemode=creative] run function sprint_racer:game_logic/2/checkpoint_menu/enable_checksound"},"hoverEvent":{"action":"show_text","value":"Enable"}},{"text":"  "},{"text":"[Off]","color":"yellow","clickEvent":{"action":"run_command","value":"/execute as @s[gamemode=creative] run function sprint_racer:game_logic/2/checkpoint_menu/disable_checksound"},"hoverEvent":{"action":"show_text","value":"Disable"}}]
tellraw @s[tag=checkText,scores={dropSheepEgg=1..}] ["",{"text":"\"Checkpoint!\" Text: ","color":"white","bold":"true"},{"text":"[On]","color":"yellow","clickEvent":{"action":"run_command","value":"/execute as @s[gamemode=creative] run function sprint_racer:game_logic/2/checkpoint_menu/enable_checktext"},"hoverEvent":{"action":"show_text","value":"Enable"}},{"text":"  "},{"text":"[Off]","color":"gray","clickEvent":{"action":"run_command","value":"/execute as @s[gamemode=creative] run function sprint_racer:game_logic/2/checkpoint_menu/disable_checktext"},"hoverEvent":{"action":"show_text","value":"Disable"}}]
tellraw @s[tag=!checkText,scores={dropSheepEgg=1..}] ["",{"text":"\"Checkpoint!\" Text: ","color":"white","bold":"true"},{"text":"[On]","color":"gray","clickEvent":{"action":"run_command","value":"/execute as @s[gamemode=creative] run function sprint_racer:game_logic/2/checkpoint_menu/enable_checktext"},"hoverEvent":{"action":"show_text","value":"Enable"}},{"text":"  "},{"text":"[Off]","color":"yellow","clickEvent":{"action":"run_command","value":"/execute as @s[gamemode=creative] run function sprint_racer:game_logic/2/checkpoint_menu/disable_checktext"},"hoverEvent":{"action":"show_text","value":"Disable"}}]
tellraw @s[tag=checkAnyY,scores={dropSheepEgg=1..}] ["",{"text":"Y-Coord Trigger Area: ","color":"white","bold":"true"},{"text":"[Nearby]","color":"gray","clickEvent":{"action":"run_command","value":"/execute as @s[gamemode=creative] run function sprint_racer:game_logic/2/checkpoint_menu/disable_any_y"},"hoverEvent":{"action":"show_text","value":"Nearby (Must be near the same y-coordinate to trigger)"}},{"text":"  "},{"text":"[Any Y]","color":"yellow","clickEvent":{"action":"run_command","value":"/execute as @s[gamemode=creative] run function sprint_racer:game_logic/2/checkpoint_menu/enable_any_y"},"hoverEvent":{"action":"show_text","value":"Any Y (Can be triggered at any y-coordinate)"}}]
tellraw @s[tag=!checkAnyY,scores={dropSheepEgg=1..}] ["",{"text":"Y-Coord Trigger Area: ","color":"white","bold":"true"},{"text":"[Nearby]","color":"yellow","clickEvent":{"action":"run_command","value":"/execute as @s[gamemode=creative] run function sprint_racer:game_logic/2/checkpoint_menu/disable_any_y"},"hoverEvent":{"action":"show_text","value":"Nearby (Must be near the same y-coordinate to trigger)"}},{"text":"  "},{"text":"[Any Y]","color":"gray","clickEvent":{"action":"run_command","value":"/execute as @s[gamemode=creative] run function sprint_racer:game_logic/2/checkpoint_menu/enable_any_y"},"hoverEvent":{"action":"show_text","value":"Any Y (Can be triggered at any y-coordinate)"}}]
tellraw @s[tag=checkWarn,scores={dropSheepEgg=1..}] ["",{"text":"Missed Checkpoint Warning: ","color":"white","bold":"true"},{"text":"[On]","color":"yellow","clickEvent":{"action":"run_command","value":"/execute as @s[gamemode=creative] run function sprint_racer:game_logic/2/checkpoint_menu/enable_checkwarn"},"hoverEvent":{"action":"show_text","value":"Enable"}},{"text":"  "},{"text":"[Off]","color":"gray","clickEvent":{"action":"run_command","value":"/execute as @s[gamemode=creative] run function sprint_racer:game_logic/2/checkpoint_menu/disable_checkwarn"},"hoverEvent":{"action":"show_text","value":"Disable"}}]
tellraw @s[tag=!checkWarn,scores={dropSheepEgg=1..}] ["",{"text":"Missed Checkpoint Warning: ","color":"white","bold":"true"},{"text":"[On]","color":"gray","clickEvent":{"action":"run_command","value":"/execute as @s[gamemode=creative] run function sprint_racer:game_logic/2/checkpoint_menu/enable_checkwarn"},"hoverEvent":{"action":"show_text","value":"Enable"}},{"text":"  "},{"text":"[Off]","color":"yellow","clickEvent":{"action":"run_command","value":"/execute as @s[gamemode=creative] run function sprint_racer:game_logic/2/checkpoint_menu/disable_checkwarn"},"hoverEvent":{"action":"show_text","value":"Disable"}}]
tellraw @s[tag=checkWrongWay,scores={dropSheepEgg=1..}] ["",{"text":"Wrong Way Warning: ","color":"white","bold":"true"},{"text":"[On]","color":"yellow","clickEvent":{"action":"run_command","value":"/execute as @s[gamemode=creative] run function sprint_racer:game_logic/2/checkpoint_menu/enable_checkwrongway"},"hoverEvent":{"action":"show_text","value":"Enable"}},{"text":"  "},{"text":"[Off]","color":"gray","clickEvent":{"action":"run_command","value":"/execute as @s[gamemode=creative] run function sprint_racer:game_logic/2/checkpoint_menu/disable_checkwrongway"},"hoverEvent":{"action":"show_text","value":"Disable"}}]
tellraw @s[tag=!checkWrongWay,scores={dropSheepEgg=1..}] ["",{"text":"Wrong Way Warning: ","color":"white","bold":"true"},{"text":"[On]","color":"gray","clickEvent":{"action":"run_command","value":"/execute as @s[gamemode=creative] run function sprint_racer:game_logic/2/checkpoint_menu/enable_checkwrongway"},"hoverEvent":{"action":"show_text","value":"Enable"}},{"text":"  "},{"text":"[Off]","color":"yellow","clickEvent":{"action":"run_command","value":"/execute as @s[gamemode=creative] run function sprint_racer:game_logic/2/checkpoint_menu/disable_checkwrongway"},"hoverEvent":{"action":"show_text","value":"Disable"}}]
tellraw @s[tag=thisPosCalc,scores={dropSheepEgg=1..}] ["",{"text":"Position Calc Point? ","color":"white","bold":"true"},{"text":"[Yes]","color":"yellow","clickEvent":{"action":"run_command","value":"/execute as @s[gamemode=creative] run function sprint_racer:game_logic/2/checkpoint_menu/enable_pcalc"},"hoverEvent":{"action":"show_text","value":"Yes (MAX. 1 PER CHECKPT)"}},{"text":"  "},{"text":"[No]","color":"gray","clickEvent":{"action":"run_command","value":"/execute as @s[gamemode=creative] run function sprint_racer:game_logic/2/checkpoint_menu/disable_pcalc"},"hoverEvent":{"action":"show_text","value":"No"}}]
tellraw @s[tag=!thisPosCalc,scores={dropSheepEgg=1..}] ["",{"text":"Position Calc Point? ","color":"white","bold":"true"},{"text":"[Yes]","color":"gray","clickEvent":{"action":"run_command","value":"/execute as @s[gamemode=creative] run function sprint_racer:game_logic/2/checkpoint_menu/enable_pcalc"},"hoverEvent":{"action":"show_text","value":"Yes (MAX. 1 PER CHECKPT)"}},{"text":"  "},{"text":"[No]","color":"yellow","clickEvent":{"action":"run_command","value":"/execute as @s[gamemode=creative] run function sprint_racer:game_logic/2/checkpoint_menu/disable_pcalc"},"hoverEvent":{"action":"show_text","value":"No"}}]

scoreboard players reset @s dropSheepEgg