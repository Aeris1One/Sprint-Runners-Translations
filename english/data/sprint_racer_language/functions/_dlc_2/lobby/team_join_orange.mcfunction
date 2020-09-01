tellraw @s[tag=!minChat] ["",{"text":"■ You joined the orange team.","color":"gold","italic":"true"}]
playsound minecraft:block.note_block.flute master @s ~ ~ ~ 2 1.2
tag @s add requestOrange
tag @s remove requestCyan
tag @s add playerOrange
tag @s remove playerCyan