execute as @a at @s run playsound minecraft:entity.iron_golem.death master @s ~ 100000 ~ 100000 1.2
tellraw @a[tag=!minChat] ["",{"text":" "}]
tellraw @a[tag=!minChat] ["",{"text":"Time's up!","color":"red"}]
tellraw @a[tag=!minChat] ["",{"text":" "}]