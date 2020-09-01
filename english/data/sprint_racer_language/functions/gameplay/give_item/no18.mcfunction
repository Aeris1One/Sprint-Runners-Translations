give @s black_terracotta{Tags:["no18","stay","item","normalitem","rightclick"],CustomModelData:1111111,display:{Name:"{\"text\":\"Enderman Thief\",\"color\":\"light_purple\",\"bold\":\"true\",\"italic\":\"false\"}"}} 1


scoreboard players set @s[tag=ai] math 0
scoreboard players add @s[tag=ai] math 1

scoreboard players operation @s[tag=ai] aiHasItem18 += @s math
scoreboard players operation @s[tag=ai] aiHasGlobal += @s math
scoreboard players operation @s[tag=ai] aiHasNormal += @s math


tag @s remove justOne