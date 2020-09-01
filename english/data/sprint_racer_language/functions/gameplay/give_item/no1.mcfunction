#give number of snowballs based on item luck
give @s[tag=!justOne,scores={itemLuck=..1}] snowball{Tags:["no1","stay","item","normalitem"],display:{Name:"{\"text\":\"Electric Snowball\",\"color\":\"red\",\"bold\":\"true\",\"italic\":\"false\"}"}} 2
give @s[tag=!justOne,scores={itemLuck=2}] snowball{Tags:["no1","stay","item","normalitem"],display:{Name:"{\"text\":\"Electric Snowball\",\"color\":\"red\",\"bold\":\"true\",\"italic\":\"false\"}"}} 3
give @s[tag=!justOne,scores={itemLuck=3}] snowball{Tags:["no1","stay","item","normalitem"],display:{Name:"{\"text\":\"Electric Snowball\",\"color\":\"red\",\"bold\":\"true\",\"italic\":\"false\"}"}} 4
give @s[tag=!justOne,scores={itemLuck=4}] snowball{Tags:["no1","stay","item","normalitem"],display:{Name:"{\"text\":\"Electric Snowball\",\"color\":\"red\",\"bold\":\"true\",\"italic\":\"false\"}"}} 5
give @s[tag=!justOne,scores={itemLuck=5..}] snowball{Tags:["no1","stay","item","normalitem"],display:{Name:"{\"text\":\"Electric Snowball\",\"color\":\"red\",\"bold\":\"true\",\"italic\":\"false\"}"}} 6

give @s[tag=justOne] snowball{Tags:["no1","stay","item","normalitem"],display:{Name:"{\"text\":\"Electric Snowball\",\"color\":\"red\",\"bold\":\"true\",\"italic\":\"false\"}"}} 1


scoreboard players set @s[tag=ai] math 0
scoreboard players add @s[tag=ai,tag=justOne] math 1
scoreboard players add @s[tag=ai,tag=!justOne,scores={itemLuck=..1}] math 2
scoreboard players add @s[tag=ai,tag=!justOne,scores={itemLuck=2}] math 3
scoreboard players add @s[tag=ai,tag=!justOne,scores={itemLuck=3}] math 4
scoreboard players add @s[tag=ai,tag=!justOne,scores={itemLuck=4}] math 5
scoreboard players add @s[tag=ai,tag=!justOne,scores={itemLuck=5..}] math 6

scoreboard players operation @s[tag=ai] aiHasItem1 += @s math
scoreboard players operation @s[tag=ai] aiHasProjectile += @s math
scoreboard players operation @s[tag=ai] aiHasNormal += @s math


tag @s remove justOne