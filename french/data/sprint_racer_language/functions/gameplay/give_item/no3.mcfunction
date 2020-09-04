#give number of tnt based on item luck
give @s[tag=!justOne,scores={itemLuck=..1}] tnt{Tags:["no3","stay","item","normalitem","groundDeploy","rightclick"],display:{Name:"{\"text\":\"Throwable TNT\",\"color\":\"red\",\"bold\":\"true\",\"italic\":\"false\"}"}} 1
give @s[tag=!justOne,scores={itemLuck=2}] tnt{Tags:["no3","stay","item","normalitem","groundDeploy","rightclick"],display:{Name:"{\"text\":\"Throwable TNT\",\"color\":\"red\",\"bold\":\"true\",\"italic\":\"false\"}"}} 2
give @s[tag=!justOne,scores={itemLuck=3}] tnt{Tags:["no3","stay","item","normalitem","groundDeploy","rightclick"],display:{Name:"{\"text\":\"Throwable TNT\",\"color\":\"red\",\"bold\":\"true\",\"italic\":\"false\"}"}} 3
give @s[tag=!justOne,scores={itemLuck=4}] tnt{Tags:["no3","stay","item","normalitem","groundDeploy","rightclick"],display:{Name:"{\"text\":\"Throwable TNT\",\"color\":\"red\",\"bold\":\"true\",\"italic\":\"false\"}"}} 4
give @s[tag=!justOne,scores={itemLuck=5..}] tnt{Tags:["no3","stay","item","normalitem","groundDeploy","rightclick"],display:{Name:"{\"text\":\"Throwable TNT\",\"color\":\"red\",\"bold\":\"true\",\"italic\":\"false\"}"}} 5

give @s[tag=justOne] tnt{Tags:["no3","stay","item","normalitem","groundDeploy","rightclick"],display:{Name:"{\"text\":\"Throwable TNT\",\"color\":\"red\",\"bold\":\"true\",\"italic\":\"false\"}"}} 1


scoreboard players set @s[tag=ai] math 0
scoreboard players add @s[tag=ai,tag=justOne] math 1
scoreboard players add @s[tag=ai,tag=!justOne,scores={itemLuck=..1}] math 1
scoreboard players add @s[tag=ai,tag=!justOne,scores={itemLuck=2}] math 2
scoreboard players add @s[tag=ai,tag=!justOne,scores={itemLuck=3}] math 3
scoreboard players add @s[tag=ai,tag=!justOne,scores={itemLuck=4}] math 4
scoreboard players add @s[tag=ai,tag=!justOne,scores={itemLuck=5..}] math 5

scoreboard players operation @s[tag=ai] aiHasItem3 += @s math
scoreboard players operation @s[tag=ai] aiHasProjectile += @s math
scoreboard players operation @s[tag=ai] aiHasNormal += @s math


tag @s remove justOne