give @s elytra{Tags:["no12","stay","item","normalitem"],display:{Name:"{\"text\":\"Elytra\",\"color\":\"aqua\",\"bold\":\"true\",\"italic\":\"false\"}"}} 1


scoreboard players set @s[tag=ai] math 0
scoreboard players add @s[tag=ai] math 1

scoreboard players operation @s[tag=ai] aiHasItem12 += @s math
scoreboard players operation @s[tag=ai] aiHasNormal += @s math


tag @s remove justOne