tag @s add thissMe

title @a subtitle [""]
title @a title [""]
title @a actionbar [""]

tellraw @a ["",{"text":" "}]
tellraw @a ["",{"text":"Abort!","color":"yellow","bold":"true"}]
tellraw @a[tag=!thissMe] ["",{"text":"(aborted by ","color":"yellow","bold":"false"},{"selector":"@s"},{"text":")","color":"yellow","bold":"false"}]
tellraw @a ["",{"text":" "}]

tag @s remove thissMe

execute as @a at @s run playsound minecraft:entity.ender_dragon.hurt master @s ~ 1000000 ~ 1000000 .5