#give more based on item luck
give @s[tag=!justOne,scores={itemLuck=..1}] bricks{Tags:["no15","stay","item","normalitem","rightclick"],CustomModelData:1111111,EntityTag:{Tags:["invalidchicken"]},display:{Name:"{\"text\":\"Chicken Mine\",\"color\":\"green\",\"bold\":\"true\",\"italic\":\"false\"}"}} 1
give @s[tag=!justOne,scores={itemLuck=2}] bricks{Tags:["no15","stay","item","normalitem","rightclick"],CustomModelData:1111111,EntityTag:{Tags:["invalidchicken"]},display:{Name:"{\"text\":\"Chicken Mine\",\"color\":\"green\",\"bold\":\"true\",\"italic\":\"false\"}"}} 2
give @s[tag=!justOne,scores={itemLuck=3}] bricks{Tags:["no15","stay","item","normalitem","rightclick"],CustomModelData:1111111,EntityTag:{Tags:["invalidchicken"]},display:{Name:"{\"text\":\"Chicken Mine\",\"color\":\"green\",\"bold\":\"true\",\"italic\":\"false\"}"}} 3
give @s[tag=!justOne,scores={itemLuck=4}] bricks{Tags:["no15","stay","item","normalitem","rightclick"],CustomModelData:1111111,EntityTag:{Tags:["invalidchicken"]},display:{Name:"{\"text\":\"Chicken Mine\",\"color\":\"green\",\"bold\":\"true\",\"italic\":\"false\"}"}} 4
give @s[tag=!justOne,scores={itemLuck=5..}] bricks{Tags:["no15","stay","item","normalitem","rightclick"],CustomModelData:1111111,EntityTag:{Tags:["invalidchicken"]},display:{Name:"{\"text\":\"Chicken Mine\",\"color\":\"green\",\"bold\":\"true\",\"italic\":\"false\"}"}} 5

give @s[tag=justOne] bricks{Tags:["no15","stay","item","normalitem","rightclick"],CustomModelData:1111111,EntityTag:{Tags:["invalidchicken"]},display:{Name:"{\"text\":\"Chicken Mine\",\"color\":\"green\",\"bold\":\"true\",\"italic\":\"false\"}"}} 1


scoreboard players set @s[tag=ai] math 0
scoreboard players add @s[tag=ai,tag=justOne] math 1
scoreboard players add @s[tag=ai,tag=!justOne,scores={itemLuck=..1}] math 1
scoreboard players add @s[tag=ai,tag=!justOne,scores={itemLuck=2}] math 2
scoreboard players add @s[tag=ai,tag=!justOne,scores={itemLuck=3}] math 3
scoreboard players add @s[tag=ai,tag=!justOne,scores={itemLuck=4}] math 4
scoreboard players add @s[tag=ai,tag=!justOne,scores={itemLuck=5..}] math 5

scoreboard players operation @s[tag=ai] aiHasItem15 += @s math
scoreboard players operation @s[tag=ai] aiHasTrap += @s math
scoreboard players operation @s[tag=ai] aiHasNormal += @s math


tag @s remove justOne