scoreboard players add @s[scores={dropWitchEgg=1..}] jump 0
scoreboard players set @s[scores={dropWitchEgg=1..,jump=..0}] jump 1
tellraw @s[scores={dropWitchEgg=1..}] ["",{"text":" "}]
tellraw @s[scores={dropWitchEgg=1..}] ["",{"text":" "}]
tellraw @s[scores={dropWitchEgg=1..}] ["",{"text":" "}]
tellraw @s[scores={dropWitchEgg=1..}] ["",{"text":" "}]
tellraw @s[scores={dropWitchEgg=1..}] ["",{"text":" "}]
tellraw @s[scores={dropWitchEgg=1..}] ["",{"text":" "}]
tellraw @s[scores={dropWitchEgg=1..}] ["",{"text":" "}]
tellraw @s[scores={dropWitchEgg=1..}] ["",{"text":" "}]
tellraw @s[scores={dropWitchEgg=1..}] ["",{"text":" "}]
tellraw @s[scores={dropWitchEgg=1..}] ["",{"text":" "}]
tellraw @s[scores={dropWitchEgg=1..}] ["",{"text":" "}]
tellraw @s[scores={dropWitchEgg=1..}] ["",{"text":" "}]
tellraw @s[scores={dropWitchEgg=1..}] ["",{"text":" "}]
tellraw @s[scores={dropWitchEgg=1..}] ["",{"text":" "}]
tellraw @s[scores={dropWitchEgg=1..}] ["",{"text":" "}]
tellraw @s[scores={dropWitchEgg=1..}] ["",{"text":" "}]
tellraw @s[scores={dropWitchEgg=1..}] ["",{"text":" "}]
tellraw @s[scores={dropWitchEgg=1..}] ["",{"text":" "}]
tellraw @s[scores={dropWitchEgg=1..}] ["",{"text":"==\\/== JUMP BOOST ==\\/==","color":"green","bold":"true"}]
tellraw @s[scores={dropWitchEgg=1..}] ["",{"text":"Intensity: ","color":"white","bold":"true"},{"score":{"name":"@s","objective":"jump","color":"white","bold":"false"}},{"text":"  "},{"text":"[+]","color":"green","clickEvent":{"action":"run_command","value":"/execute as @s[gamemode=creative] run function sprint_racer:game_logic/2/jumpboost_menu/increment_jump"},"hoverEvent":{"action":"show_text","value":"Increase"}},{"text":"  "},{"text":"[-]","color":"red","clickEvent":{"action":"run_command","value":"/execute as @s[gamemode=creative] run function sprint_racer:game_logic/2/jumpboost_menu/decrement_jump"},"hoverEvent":{"action":"show_text","value":"Decrease"}}]

scoreboard players reset @s dropWitchEgg