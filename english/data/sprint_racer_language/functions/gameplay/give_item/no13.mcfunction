#give more based on item luck
give @s[tag=!justOne,scores={itemLuck=..1}] slime_block{Tags:["no13","stay","item","normalitem","groundDeploy","rightclick"],display:{Name:"{\"text\":\"Slime Trap\",\"color\":\"green\",\"bold\":\"true\",\"italic\":\"false\"}"}} 2
give @s[tag=!justOne,scores={itemLuck=2}] slime_block{Tags:["no13","stay","item","normalitem","groundDeploy","rightclick"],display:{Name:"{\"text\":\"Slime Trap\",\"color\":\"green\",\"bold\":\"true\",\"italic\":\"false\"}"}} 3
give @s[tag=!justOne,scores={itemLuck=3}] slime_block{Tags:["no13","stay","item","normalitem","groundDeploy","rightclick"],display:{Name:"{\"text\":\"Slime Trap\",\"color\":\"green\",\"bold\":\"true\",\"italic\":\"false\"}"}} 4
give @s[tag=!justOne,scores={itemLuck=4}] slime_block{Tags:["no13","stay","item","normalitem","groundDeploy","rightclick"],display:{Name:"{\"text\":\"Slime Trap\",\"color\":\"green\",\"bold\":\"true\",\"italic\":\"false\"}"}} 5
give @s[tag=!justOne,scores={itemLuck=5..}] slime_block{Tags:["no13","stay","item","normalitem","groundDeploy","rightclick"],display:{Name:"{\"text\":\"Slime Trap\",\"color\":\"green\",\"bold\":\"true\",\"italic\":\"false\"}"}} 6

give @s[tag=justOne] slime_block{Tags:["no13","stay","item","normalitem","groundDeploy","rightclick"],display:{Name:"{\"text\":\"Slime Trap\",\"color\":\"green\",\"bold\":\"true\",\"italic\":\"false\"}"}} 1


scoreboard players set @s[tag=ai] math 0
scoreboard players add @s[tag=ai,tag=justOne] math 1
scoreboard players add @s[tag=ai,tag=!justOne,scores={itemLuck=..1}] math 2
scoreboard players add @s[tag=ai,tag=!justOne,scores={itemLuck=2}] math 3
scoreboard players add @s[tag=ai,tag=!justOne,scores={itemLuck=3}] math 4
scoreboard players add @s[tag=ai,tag=!justOne,scores={itemLuck=4}] math 5
scoreboard players add @s[tag=ai,tag=!justOne,scores={itemLuck=5..}] math 6

scoreboard players operation @s[tag=ai] aiHasItem13 += @s math
scoreboard players operation @s[tag=ai] aiHasTrap += @s math
scoreboard players operation @s[tag=ai] aiHasNormal += @s math


tag @s remove justOne