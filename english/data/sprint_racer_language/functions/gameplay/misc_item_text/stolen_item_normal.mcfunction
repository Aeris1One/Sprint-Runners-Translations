tellraw @s ["",{"text":" "}]
tellraw @s ["",{"text":"Success! Stole an item from ","color":"white"},{"selector":"@e[limit=1,tag=stealTarget2]"},{"text":".","color":"white"}]
tellraw @s ["",{"text":" "}]

tellraw @a[tag=stealTarget2] ["",{"text":" "}]
tellraw @a[tag=stealTarget2] ["",{"text":"Oh no! Your item was stolen by ","color":"white"},{"selector":"@s"},{"text":".","color":"white"}]
tellraw @a[tag=stealTarget2] ["",{"text":" "}]

execute at @s run playsound minecraft:entity.arrow.hit_player master @s