tag @s add thissMe

tellraw @a ["",{"text":" "}]
tellraw @a ["",{"text":"Restart!","color":"yellow","bold":"true"}]
tellraw @a[tag=!thissMe] ["",{"text":"(restarted by ","color":"yellow","bold":"false"},{"selector":"@s"},{"text":")","color":"yellow","bold":"false"}]
tellraw @a ["",{"text":" "}]

tag @s remove thissMe

execute as @a at @s run playsound minecraft:entity.ender_dragon.hurt master @s ~ 1000000 ~ 1000000 .5