title @a subtitle ["",{"text":"Ready to play!","color":"green","bold":"true"}]
title @a title [""]

execute as @a at @s run playsound minecraft:entity.player.levelup master @s ~ 100000 ~ 100000 .5
execute as @a[tag=playing] at @s run particle minecraft:falling_dust lime_concrete ~ ~1 ~ 0.4 0.4 0.4 1 20