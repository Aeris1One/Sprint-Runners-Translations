tellraw @s ["",{"text":"[ ! ] You need the ","color":"red","bold":"true"},{"text":"\"","color":"red","bold":"false"},{"text":"admin","color":"red","bold":"true"},{"text":"\"","color":"red","bold":"false"},{"text":" tag to change this!","color":"red","bold":"true"}]
execute at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1.8

tag @s remove clickSign