give @s totem_of_undying{Tags:["no8","stay","item","normalitem","rightclick"],display:{Name:"{\"text\":\"Totem of Undying\",\"color\":\"yellow\",\"bold\":\"true\",\"italic\":\"false\"}"}} 1


scoreboard players set @s[tag=ai] math 0
scoreboard players add @s[tag=ai] math 1

scoreboard players operation @s[tag=ai] aiHasItem8 += @s math
scoreboard players operation @s[tag=ai] aiHasDefense += @s math
scoreboard players operation @s[tag=ai] aiHasNormal += @s math


tag @s remove justOne