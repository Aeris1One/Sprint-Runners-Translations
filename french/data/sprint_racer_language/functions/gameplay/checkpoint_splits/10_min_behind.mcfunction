tellraw @s[tag=!minChat] ["",{"text":"Aïe ... vous avez plus de 10 minutes de retard sur votre tour précédent!","color":"red"}]

title @s subtitle ["",{"text":"+9:99:9","color":"red","bold":"true"}]
title @s title [""]
scoreboard players set @s subtitleDelay 40

tag @s add splitBehind
