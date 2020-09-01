#give more with high item luck
give @s[tag=!justOne,scores={itemLuck=..3}] iron_ingot{Tags:["no7","stay","item","normalitem","rightclick"],display:{Name:"{\"text\":\"Resistance\",\"color\":\"yellow\",\"bold\":\"true\",\"italic\":\"false\"}"}} 1
give @s[tag=!justOne,scores={itemLuck=4..}] iron_ingot{Tags:["no7","stay","item","normalitem","rightclick"],display:{Name:"{\"text\":\"Resistance\",\"color\":\"yellow\",\"bold\":\"true\",\"italic\":\"false\"}"}} 2

give @s[tag=justOne] iron_ingot{Tags:["no7","stay","item","normalitem","rightclick"],display:{Name:"{\"text\":\"Resistance\",\"color\":\"yellow\",\"bold\":\"true\",\"italic\":\"false\"}"}} 1


scoreboard players set @s[tag=ai] math 0
scoreboard players add @s[tag=ai,tag=justOne] math 1
scoreboard players add @s[tag=ai,tag=!justOne,scores={itemLuck=..3}] math 1
scoreboard players add @s[tag=ai,tag=!justOne,scores={itemLuck=4..}] math 2

scoreboard players operation @s[tag=ai] aiHasItem7 += @s math
scoreboard players operation @s[tag=ai] aiHasDefense += @s math
scoreboard players operation @s[tag=ai] aiHasNormal += @s math

tag @s remove justOne