tellraw @s[tag=!minChat] ["",{"text":"You are neutral.","color":"white","italic":"true"}]
playsound minecraft:block.note_block.flute master @s ~ ~ ~ 2 1
tag @s remove requestOrange
tag @s remove requestCyan
tag @s remove playerOrange
tag @s remove playerCyan