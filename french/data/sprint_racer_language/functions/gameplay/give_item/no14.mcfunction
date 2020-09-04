give @s lingering_potion{Tags:["no14","stay","item","normalitem","groundDeploy"],Potion:"minecraft:poison",display:{Name:"{\"text\":\"Nasty Lingering Potion\",\"color\":\"green\",\"bold\":\"true\",\"italic\":\"false\"}"}} 1


scoreboard players set @s[tag=ai] math 0
scoreboard players add @s[tag=ai] math 1

scoreboard players operation @s[tag=ai] aiHasItem14 += @s math
scoreboard players operation @s[tag=ai] aiHasTrap += @s math
scoreboard players operation @s[tag=ai] aiHasNormal += @s math


tag @s remove justOne