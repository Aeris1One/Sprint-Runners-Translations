tellraw @s[tag=!minChat] ["",{"text":"■ You joined the cyan team.","color":"dark_aqua","italic":"true"}]
playsound minecraft:block.note_block.flute master @s ~ ~ ~ 2 1.1
tag @s remove requestOrange
tag @s add requestCyan
tag @s remove playerOrange
tag @s add playerCyan