tellraw @s[scores={dropBlazeEgg=1..}] ["",{"text":" "}]
tellraw @s[scores={dropBlazeEgg=1..}] ["",{"text":" "}]
tellraw @s[scores={dropBlazeEgg=1..}] ["",{"text":" "}]
tellraw @s[scores={dropBlazeEgg=1..}] ["",{"text":" "}]
tellraw @s[scores={dropBlazeEgg=1..}] ["",{"text":" "}]
tellraw @s[scores={dropBlazeEgg=1..}] ["",{"text":" "}]
tellraw @s[scores={dropBlazeEgg=1..}] ["",{"text":" "}]
tellraw @s[scores={dropBlazeEgg=1..}] ["",{"text":" "}]
tellraw @s[scores={dropBlazeEgg=1..}] ["",{"text":" "}]
tellraw @s[scores={dropBlazeEgg=1..}] ["",{"text":" "}]
tellraw @s[scores={dropBlazeEgg=1..}] ["",{"text":" "}]
tellraw @s[scores={dropBlazeEgg=1..}] ["",{"text":" "}]
tellraw @s[scores={dropBlazeEgg=1..}] ["",{"text":" "}]
tellraw @s[scores={dropBlazeEgg=1..}] ["",{"text":" "}]
tellraw @s[scores={dropBlazeEgg=1..}] ["",{"text":" "}]
tellraw @s[scores={dropBlazeEgg=1..}] ["",{"text":" "}]
tellraw @s[scores={dropBlazeEgg=1..}] ["",{"text":" "}]
tellraw @s[scores={dropBlazeEgg=1..}] ["",{"text":" "}]
tellraw @s[scores={dropBlazeEgg=1..}] ["",{"text":"==\\/== SPEED BOOST ==\\/==","color":"yellow","bold":"true"}]
tellraw @s[tag=!superSpeed,scores={dropBlazeEgg=1..}] ["",{"text":"Speed: ","color":"white","bold":"true"},{"text":"[20]","color":"yellow","clickEvent":{"action":"run_command","value":"/execute as @s[gamemode=creative] run function sprint_racer:game_logic/2/speedboost_menu/disable_superspeed"},"hoverEvent":{"action":"show_text","value":"20 (gold boost)"}},{"text":"  "},{"text":"[30]","color":"gray","clickEvent":{"action":"run_command","value":"/execute as @s[gamemode=creative] run function sprint_racer:game_logic/2/speedboost_menu/enable_superspeed"},"hoverEvent":{"action":"show_text","value":"30 (diamond boost)"}}]
tellraw @s[tag=superSpeed,scores={dropBlazeEgg=1..}] ["",{"text":"Speed: ","color":"white","bold":"true"},{"text":"[20]","color":"gray","clickEvent":{"action":"run_command","value":"/execute as @s[gamemode=creative] run function sprint_racer:game_logic/2/speedboost_menu/disable_superspeed"},"hoverEvent":{"action":"show_text","value":"20 (gold boost)"}},{"text":"  "},{"text":"[30]","color":"yellow","clickEvent":{"action":"run_command","value":"/execute as @s[gamemode=creative] run function sprint_racer:game_logic/2/speedboost_menu/enable_superspeed"},"hoverEvent":{"action":"show_text","value":"30 (diamond boost)"}}]

scoreboard players reset @s dropBlazeEgg