tag @s add mE

execute if entity @a[tag=!mE] run tellraw @a ["",{"text":"(","color":"gray","italic":"true"},{"selector":"@s","italic":"true"},{"text":" chose this track)","color":"gray","italic":"true"}]

tag @s remove mE