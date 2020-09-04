#give based on item luck
give @s[tag=!justOne,scores={itemLuck=..3}] ender_pearl{Tags:["no11","stay","item","normalitem"],display:{Name:"{\"text\":\"Ender Pearl\",\"color\":\"aqua\",\"bold\":\"true\",\"italic\":\"false\"}"}} 1
give @s[tag=!justOne,scores={itemLuck=4}] ender_pearl{Tags:["no11","stay","item","normalitem"],display:{Name:"{\"text\":\"Ender Pearl\",\"color\":\"aqua\",\"bold\":\"true\",\"italic\":\"false\"}"}} 2
give @s[tag=!justOne,scores={itemLuck=5..}] ender_pearl{Tags:["no11","stay","item","normalitem"],display:{Name:"{\"text\":\"Ender Pearl\",\"color\":\"aqua\",\"bold\":\"true\",\"italic\":\"false\"}"}} 3

give @s[tag=justOne] ender_pearl{Tags:["no11","stay","item","normalitem"],display:{Name:"{\"text\":\"Ender Pearl\",\"color\":\"aqua\",\"bold\":\"true\",\"italic\":\"false\"}"}} 1


scoreboard players set @s[tag=ai] math 0
scoreboard players add @s[tag=ai,tag=justOne] math 1
scoreboard players add @s[tag=ai,tag=!justOne,scores={itemLuck=..3}] math 1
scoreboard players add @s[tag=ai,tag=!justOne,scores={itemLuck=4}] math 2
scoreboard players add @s[tag=ai,tag=!justOne,scores={itemLuck=5}] math 3

scoreboard players operation @s[tag=ai] aiHasItem11 += @s math
scoreboard players operation @s[tag=ai] aiHasNormal += @s math

tag @s remove justOne