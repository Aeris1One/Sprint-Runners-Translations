tellraw @a[tag=!minChat] ["",{"text":" "}]

tellraw @a[tag=!minChat] ["",{"text":"[OPTIONS] All cheats have been disabled.","color":"green"}]
playsound minecraft:block.note_block.hat master @a

execute as @a at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ 100000 ~ 100000

execute as @e[type=armor_stand,name=cheats] run function sprint_racer:cheats/remove_all_cheats

tag @s remove clickSign