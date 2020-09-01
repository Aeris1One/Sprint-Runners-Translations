execute as @a[tag=playing,tag=!finished] at @s run playsound minecraft:entity.iron_golem.death master @s ~ 100000 ~ 100000 1
tellraw @a[tag=playing,tag=!finished,tag=!minChat] ["",{"text":" "}]
tellraw @a[tag=playing,tag=!finished,tag=!minChat] ["",{"text":"Time's up! ","color":"red"},{"text":"Better luck next time!","color":"white"}]
tellraw @a[tag=playing,tag=!finished,tag=!minChat] ["",{"text":" "}]