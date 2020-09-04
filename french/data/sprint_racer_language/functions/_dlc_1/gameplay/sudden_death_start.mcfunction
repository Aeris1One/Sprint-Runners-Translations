scoreboard players set @a subtitleDelay 20

title @a subtitle ["",{"text":"Sudden Death!","color":"gold","bold":"true"}]
title @a title [""]

execute as @a at @s run playsound minecraft:entity.chicken.hurt master @s ~ 100000 ~ 100000

tellraw @a ["",{"text":" "}]
tellraw @a ["",{"text":"Sudden Death!","color":"gold","bold":"true"}]
tellraw @a ["",{"text":"All players now have 1 life. Survivor wins!","color":"white"}]
tellraw @a ["",{"text":" "}]