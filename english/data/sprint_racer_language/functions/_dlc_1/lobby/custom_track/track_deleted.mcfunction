tellraw @a ["",{"text":" "}]
tellraw @a ["",{"text":"Track deleted! ","color":"white"},{"selector":"@e[limit=1,tag=focusT]","color":"yellow","bold":"false"}]
execute as @a at @s run playsound minecraft:entity.generic.extinguish_fire master @s ~ 10000 ~ 10000 1