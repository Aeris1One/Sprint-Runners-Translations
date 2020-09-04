give @s glass{Tags:["no6","stay","item","normalitem","rightclick"],display:{Name:"{\"text\":\"Invisibility\",\"color\":\"yellow\",\"bold\":\"true\",\"italic\":\"false\"}"}} 1

scoreboard players set @s[tag=ai] math 0
scoreboard players add @s[tag=ai] math 1

scoreboard players operation @s[tag=ai] aiHasItem6 += @s math
scoreboard players operation @s[tag=ai] aiHasDefense += @s math
scoreboard players operation @s[tag=ai] aiHasNormal += @s math

tag @s remove justOne