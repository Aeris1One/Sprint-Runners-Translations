#give based on item luck
give @s[tag=!justOne,scores={itemLuck=..3}] gold_ingot{Tags:["no10","stay","item","normalitem","rightclick"],display:{Name:"{\"text\":\"Speed Boost\",\"color\":\"aqua\",\"bold\":\"true\",\"italic\":\"false\"}"}} 1
give @s[tag=!justOne,scores={itemLuck=4..}] gold_ingot{Tags:["no10","stay","item","normalitem","rightclick"],display:{Name:"{\"text\":\"Speed Boost\",\"color\":\"aqua\",\"bold\":\"true\",\"italic\":\"false\"}"}} 3

give @s[tag=justOne] gold_ingot{Tags:["no10","stay","item","normalitem","rightclick"],display:{Name:"{\"text\":\"Speed Boost\",\"color\":\"aqua\",\"bold\":\"true\",\"italic\":\"false\"}"}} 1


scoreboard players set @s[tag=ai] math 0
scoreboard players add @s[tag=ai,tag=justOne] math 1
scoreboard players add @s[tag=ai,tag=!justOne,scores={itemLuck=..3}] math 1
scoreboard players add @s[tag=ai,tag=!justOne,scores={itemLuck=4..}] math 3

scoreboard players operation @s[tag=ai] aiHasItem10 += @s math
scoreboard players operation @s[tag=ai] aiHasSBoost += @s math
scoreboard players operation @s[tag=ai] aiHasNormal += @s math


tag @s remove justOne