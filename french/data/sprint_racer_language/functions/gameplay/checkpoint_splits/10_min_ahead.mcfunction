tellraw @s[tag=!minChat] ["",{"text":"Incroyable! Vous avez plus de 10 minutes d'avance sur votre tour précédent!","color":"green"}]

title @s subtitle ["",{"text":"-9:99:9","color":"green","bold":"true"}]
title @s title [""]
scoreboard players set @s subtitleDelay 40

tag @s add splitAhead
