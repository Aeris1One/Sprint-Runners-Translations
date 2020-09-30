tellraw @a ["",{"text":" "}]
execute if entity @s[scores={racePosDisplay=1}] run tellraw @a ["",{"selector":"@s"},{"text":" >> Éliminé! [1er]","color":"white","bold":"true"}]
execute if entity @s[scores={racePosDisplay=2}] run tellraw @a ["",{"selector":"@s"},{"text":" >> Éliminé! [2éme]","color":"white","bold":"true"}]
execute if entity @s[scores={racePosDisplay=3}] run tellraw @a ["",{"selector":"@s"},{"text":" >> Éliminé! [3éme]","color":"white","bold":"true"}]
execute if entity @s[scores={racePosDisplay=4..20}] run tellraw @a ["",{"selector":"@s"},{"text":" >> Éliminé! [","color":"white","bold":"true"},{"score":{"name":"@s","objective":"racePosDisplay"},"color":"white","bold":"true"},{"text":"éme]","color":"white","bold":"true"}]
execute unless entity @s[scores={racePosDisplay=1..20}] run tellraw @a ["",{"selector":"@s"},{"text":" >> Éliminé! [","color":"white","bold":"true"},{"score":{"name":"@s","objective":"racePosDisplay"},"color":"white","bold":"true"},{"text":"]","color":"white","bold":"true"}]
tellraw @a ["",{"text":" "}]

scoreboard players set @s subtitleDelay 40
title @s subtitle ["",{"text":"Eliminated!","color":"red","bold":"true"}]
title @s title [""]

execute as @a at @s run playsound minecraft:entity.generic.explode master @s ~ 100000 ~ .7 1.2 .7
execute as @a at @s run playsound minecraft:entity.ender_dragon.hurt master @s ~ 100000 ~ 1000000 .6
