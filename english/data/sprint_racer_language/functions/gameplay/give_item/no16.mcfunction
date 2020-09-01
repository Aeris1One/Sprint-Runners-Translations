#give more based on item luck

#chest
give @s[tag=!justOne,scores={itemLuck=..3}] trapped_chest{Tags:["no16","stay","item","normalitem","groundDeploy","rightclick"],display:{Name:"{\"text\":\"Trapped Chest\",\"color\":\"green\",\"bold\":\"true\",\"italic\":\"false\"}"}} 1
give @s[tag=!justOne,scores={itemLuck=4}] trapped_chest{Tags:["no16","stay","item","normalitem","groundDeploy","rightclick"],display:{Name:"{\"text\":\"Trapped Chest\",\"color\":\"green\",\"bold\":\"true\",\"italic\":\"false\"}"}} 2
give @s[tag=!justOne,scores={itemLuck=5..}] trapped_chest{Tags:["no16","stay","item","normalitem","groundDeploy","rightclick"],display:{Name:"{\"text\":\"Trapped Chest\",\"color\":\"green\",\"bold\":\"true\",\"italic\":\"false\"}"}} 3

give @s[tag=justOne] trapped_chest{Tags:["no16","stay","item","normalitem","groundDeploy","rightclick"],display:{Name:"{\"text\":\"Trapped Chest\",\"color\":\"green\",\"bold\":\"true\",\"italic\":\"false\"}"}} 1


scoreboard players set @s[tag=ai] math 0
scoreboard players add @s[tag=ai,tag=justOne] math 1
scoreboard players add @s[tag=ai,tag=!justOne,scores={itemLuck=..3}] math 1
scoreboard players add @s[tag=ai,tag=!justOne,scores={itemLuck=4}] math 2
scoreboard players add @s[tag=ai,tag=!justOne,scores={itemLuck=5..}] math 3

scoreboard players operation @s[tag=ai] aiHasItem16 += @s math
scoreboard players operation @s[tag=ai] aiHasTrap += @s math
scoreboard players operation @s[tag=ai] aiHasNormal += @s math


tag @s remove justOne