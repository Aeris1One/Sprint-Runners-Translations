summon armor_stand ~ ~2.2 ~ {CustomName:"{\"text\":\"IDLE\",\"color\":\"white\",\"bold\":\"true\"}",CustomNameVisible:true,Marker:1b,Invulnerable:1,Invisible:1,Tags:["setlife"]}
scoreboard players set @e[tag=setlife] lifespan 1
tag @e[tag=setlife] remove setlife

execute if entity @s[tag=forcespectate] run tag @s remove afk

title @s[scores={subtitleDelay=..0}] subtitle ["",{"text":"You are AFK","color":"white","bold":"true"}]
title @s[scores={subtitleDelay=..0}] title [""]