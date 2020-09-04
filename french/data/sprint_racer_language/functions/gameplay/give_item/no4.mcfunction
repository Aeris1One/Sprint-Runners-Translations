give @s golden_sword{Tags:["no4","stay","item","normalitem","stronk"],Damage:32,HideFlags:1,Enchantments:[{id:"minecraft:knockback",lvl:10}],display:{Name:"{\"text\":\"Knockback Sword\",\"color\":\"red\",\"bold\":\"true\",\"italic\":\"false\"}"}} 1


scoreboard players set @s[tag=ai] math 0
scoreboard players add @s[tag=ai] math 1

scoreboard players operation @s[tag=ai] aiHasItem4 += @s math
scoreboard players operation @s[tag=ai] aiHasMelee += @s math
scoreboard players operation @s[tag=ai] aiHasNormal += @s math


tag @s remove justOne