title @s[tag=!darkHUD] subtitle ["",{"text":"1er","color":"red","bold":"true"}]
title @s[tag=darkHUD] subtitle ["",{"text":"1er","color":"dark_red","bold":"true"}]
execute if entity @s[tag=!firstplace] at @s unless entity @e[name=w,tag=moretick] run playsound minecraft:entity.player.levelup master @s ~ ~ ~ .5 2
tag @s add firstplace
