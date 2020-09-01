tellraw @s ["",{"text":" "}]
tellraw @s ["",{"text":"Jackpot! Stole an ","color":"white"},{"text":"enchanted","color":"dark_purple"},{"text":" item from ","color":"white"},{"selector":"@e[limit=1,tag=stealTarget1]"},{"text":".","color":"white"}]
tellraw @s ["",{"text":" "}]

tellraw @a[tag=stealTarget1] ["",{"text":" "}]
tellraw @a[tag=stealTarget1] ["",{"text":"Oh no! Your item was stolen by ","color":"white"},{"selector":"@s"},{"text":".","color":"white"}]
tellraw @a[tag=stealTarget1] ["",{"text":" "}]

execute at @s run playsound minecraft:entity.arrow.hit_player master @s