#give number of launchers based on item luck
give @s[tag=!justOne,scores={itemLuck=..1}] dispenser{Tags:["no2","stay","item","normalitem","rightclick"],display:{Name:"{\"text\":\"Missile Launcher\",\"color\":\"red\",\"bold\":\"true\",\"italic\":\"false\"}"}} 1
give @s[tag=!justOne,scores={itemLuck=2}] dispenser{Tags:["no2","stay","item","normalitem","rightclick"],display:{Name:"{\"text\":\"Missile Launcher\",\"color\":\"red\",\"bold\":\"true\",\"italic\":\"false\"}"}} 2
give @s[tag=!justOne,scores={itemLuck=3}] dispenser{Tags:["no2","stay","item","normalitem","rightclick"],display:{Name:"{\"text\":\"Missile Launcher\",\"color\":\"red\",\"bold\":\"true\",\"italic\":\"false\"}"}} 3
give @s[tag=!justOne,scores={itemLuck=4}] dispenser{Tags:["no2","stay","item","normalitem","rightclick"],display:{Name:"{\"text\":\"Missile Launcher\",\"color\":\"red\",\"bold\":\"true\",\"italic\":\"false\"}"}} 4
give @s[tag=!justOne,scores={itemLuck=5..}] dispenser{Tags:["no2","stay","item","normalitem","rightclick"],display:{Name:"{\"text\":\"Missile Launcher\",\"color\":\"red\",\"bold\":\"true\",\"italic\":\"false\"}"}} 5

give @s[tag=justOne] dispenser{Tags:["no2","stay","item","normalitem","rightclick"],display:{Name:"{\"text\":\"Missile Launcher\",\"color\":\"red\",\"bold\":\"true\",\"italic\":\"false\"}"}} 1


scoreboard players set @s[tag=ai] math 0
scoreboard players add @s[tag=ai,tag=justOne] math 1
scoreboard players add @s[tag=ai,tag=!justOne,scores={itemLuck=..1}] math 1
scoreboard players add @s[tag=ai,tag=!justOne,scores={itemLuck=2}] math 2
scoreboard players add @s[tag=ai,tag=!justOne,scores={itemLuck=3}] math 3
scoreboard players add @s[tag=ai,tag=!justOne,scores={itemLuck=4}] math 4
scoreboard players add @s[tag=ai,tag=!justOne,scores={itemLuck=5..}] math 5

scoreboard players operation @s[tag=ai] aiHasItem2 += @s math
scoreboard players operation @s[tag=ai] aiHasProjectile += @s math
scoreboard players operation @s[tag=ai] aiHasNormal += @s math


tag @s remove justOne