execute unless entity @e[name=w,tag=realms] run tellraw @s[tag=!minChat] ["",{"text":"Music enabled. (Resource pack required!)","color":"green","italic":"true"}]

execute if entity @e[name=w,tag=realms] run tellraw @s[tag=!minChat] ["",{"text":"Music enabled.","color":"green","italic":"true"}]

execute at @s run playsound minecraft:block.note_block.cow_bell master @s ~ ~ ~ 1