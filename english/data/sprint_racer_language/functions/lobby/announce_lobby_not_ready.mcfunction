title @a subtitle ["",{"text":"Lobby paused!","color":"red","bold":"true"}]
title @a title [""]

execute as @a at @s run playsound minecraft:entity.chicken.death master @s ~ 100000 ~ 100000 1
execute as @a[tag=playing] at @s run particle minecraft:falling_dust red_concrete ~ ~1 ~ 0.4 0.4 0.4 1 20