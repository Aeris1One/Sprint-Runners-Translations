#give more based on item luck

#also, can be given one of many different visual mines
scoreboard players set @s rNumber 0
#pick random number between 1 and 50, excluding banned values (tag=banChest)
scoreboard players operation @s rNumber = @e[sort=random,limit=1,type=armor_stand,tag=random,tag=!banChest,scores={rNumber=1..50}] rNumber

#chest
give @s[scores={rNumber=1..27,itemLuck=..3}] trapped_chest{Tags:["no16","stay","item","normalitem"],display:{Name:"{\"text\":\"Trapped Chest\",\"color\":\"green\",\"bold\":\"true\",\"italic\":\"false\"}"}} 1
give @s[scores={rNumber=1..27,itemLuck=4}] trapped_chest{Tags:["no16","stay","item","normalitem"],display:{Name:"{\"text\":\"Trapped Chest\",\"color\":\"green\",\"bold\":\"true\",\"italic\":\"false\"}"}} 2
give @s[scores={rNumber=1..27,itemLuck=5..}] trapped_chest{Tags:["no16","stay","item","normalitem"],display:{Name:"{\"text\":\"Trapped Chest\",\"color\":\"green\",\"bold\":\"true\",\"italic\":\"false\"}"}} 3

#enchanting table
give @s[scores={rNumber=28..30,itemLuck=..3}] enchanting_table{Tags:["no16","stay","item","normalitem"],display:{Name:"{\"text\":\"Trapped Chest\",\"color\":\"green\",\"bold\":\"true\",\"italic\":\"false\"}"}} 1
give @s[scores={rNumber=28..30,itemLuck=4}] enchanting_table{Tags:["no16","stay","item","normalitem"],display:{Name:"{\"text\":\"Trapped Chest\",\"color\":\"green\",\"bold\":\"true\",\"italic\":\"false\"}"}} 2
give @s[scores={rNumber=28..30,itemLuck=5..}] enchanting_table{Tags:["no16","stay","item","normalitem"],display:{Name:"{\"text\":\"Trapped Chest\",\"color\":\"green\",\"bold\":\"true\",\"italic\":\"false\"}"}} 3

#capsule
give @s[scores={rNumber=31..37,itemLuck=..3}] glass{Tags:["no16","stay","item","normalitem"],display:{Name:"{\"text\":\"Trapped Chest\",\"color\":\"green\",\"bold\":\"true\",\"italic\":\"false\"}"}} 1
give @s[scores={rNumber=31..37,itemLuck=4}] glass{Tags:["no16","stay","item","normalitem"],display:{Name:"{\"text\":\"Trapped Chest\",\"color\":\"green\",\"bold\":\"true\",\"italic\":\"false\"}"}} 2
give @s[scores={rNumber=31..37,itemLuck=5..}] glass{Tags:["no16","stay","item","normalitem"],display:{Name:"{\"text\":\"Trapped Chest\",\"color\":\"green\",\"bold\":\"true\",\"italic\":\"false\"}"}} 3

#ender chest
give @s[scores={rNumber=38,itemLuck=..3}] ender_chest{Tags:["no16","stay","item","normalitem"],display:{Name:"{\"text\":\"Trapped Chest\",\"color\":\"green\",\"bold\":\"true\",\"italic\":\"false\"}"}} 1
give @s[scores={rNumber=38,itemLuck=4}] ender_chest{Tags:["no16","stay","item","normalitem"],display:{Name:"{\"text\":\"Trapped Chest\",\"color\":\"green\",\"bold\":\"true\",\"italic\":\"false\"}"}} 2
give @s[scores={rNumber=38,itemLuck=5..}] ender_chest{Tags:["no16","stay","item","normalitem"],display:{Name:"{\"text\":\"Trapped Chest\",\"color\":\"green\",\"bold\":\"true\",\"italic\":\"false\"}"}} 3

#red wool
give @s[scores={rNumber=39..41,itemLuck=..3}] red_wool{Tags:["no16","stay","item","normalitem"],display:{Name:"{\"text\":\"Trapped Chest\",\"color\":\"green\",\"bold\":\"true\",\"italic\":\"false\"}"}} 1
give @s[scores={rNumber=39..41,itemLuck=4}] red_wool{Tags:["no16","stay","item","normalitem"],display:{Name:"{\"text\":\"Trapped Chest\",\"color\":\"green\",\"bold\":\"true\",\"italic\":\"false\"}"}} 2
give @s[scores={rNumber=39..41,itemLuck=5..}] red_wool{Tags:["no16","stay","item","normalitem"],display:{Name:"{\"text\":\"Trapped Chest\",\"color\":\"green\",\"bold\":\"true\",\"italic\":\"false\"}"}} 3

#yellow wool
give @s[scores={rNumber=42..44,itemLuck=..3}] yellow_wool{Tags:["no16","stay","item","normalitem"],display:{Name:"{\"text\":\"Trapped Chest\",\"color\":\"green\",\"bold\":\"true\",\"italic\":\"false\"}"}} 1
give @s[scores={rNumber=42..44,itemLuck=4}] yellow_wool{Tags:["no16","stay","item","normalitem"],display:{Name:"{\"text\":\"Trapped Chest\",\"color\":\"green\",\"bold\":\"true\",\"italic\":\"false\"}"}} 2
give @s[scores={rNumber=42..44,itemLuck=5..}] yellow_wool{Tags:["no16","stay","item","normalitem"],display:{Name:"{\"text\":\"Trapped Chest\",\"color\":\"green\",\"bold\":\"true\",\"italic\":\"false\"}"}} 3

#blue wool
give @s[scores={rNumber=45..47,itemLuck=..3}] light_blue_wool{Tags:["no16","stay","item","normalitem"],display:{Name:"{\"text\":\"Trapped Chest\",\"color\":\"green\",\"bold\":\"true\",\"italic\":\"false\"}"}} 1
give @s[scores={rNumber=45..47,itemLuck=4}] light_blue_wool{Tags:["no16","stay","item","normalitem"],display:{Name:"{\"text\":\"Trapped Chest\",\"color\":\"green\",\"bold\":\"true\",\"italic\":\"false\"}"}} 2
give @s[scores={rNumber=45..47,itemLuck=5..}] light_blue_wool{Tags:["no16","stay","item","normalitem"],display:{Name:"{\"text\":\"Trapped Chest\",\"color\":\"green\",\"bold\":\"true\",\"italic\":\"false\"}"}} 3

#lime wool
give @s[scores={rNumber=48..49,itemLuck=..3}] lime_wool{Tags:["no16","stay","item","normalitem"],display:{Name:"{\"text\":\"Trapped Chest\",\"color\":\"green\",\"bold\":\"true\",\"italic\":\"false\"}"}} 1
give @s[scores={rNumber=48..49,itemLuck=4}] lime_wool{Tags:["no16","stay","item","normalitem"],display:{Name:"{\"text\":\"Trapped Chest\",\"color\":\"green\",\"bold\":\"true\",\"italic\":\"false\"}"}} 2
give @s[scores={rNumber=48..49,itemLuck=5..}] lime_wool{Tags:["no16","stay","item","normalitem"],display:{Name:"{\"text\":\"Trapped Chest\",\"color\":\"green\",\"bold\":\"true\",\"italic\":\"false\"}"}} 3

#purple wool
give @s[scores={rNumber=50,itemLuck=..3}] magenta_wool{Tags:["no16","stay","item","normalitem"],display:{Name:"{\"text\":\"Trapped Chest\",\"color\":\"green\",\"bold\":\"true\",\"italic\":\"false\"}"}} 1
give @s[scores={rNumber=50,itemLuck=4}] magenta_wool{Tags:["no16","stay","item","normalitem"],display:{Name:"{\"text\":\"Trapped Chest\",\"color\":\"green\",\"bold\":\"true\",\"italic\":\"false\"}"}} 2
give @s[scores={rNumber=50,itemLuck=5..}] magenta_wool{Tags:["no16","stay","item","normalitem"],display:{Name:"{\"text\":\"Trapped Chest\",\"color\":\"green\",\"bold\":\"true\",\"italic\":\"false\"}"}} 3



scoreboard players set @s[tag=ai] math 0
scoreboard players add @s[tag=ai,tag=justOne] math 1
scoreboard players add @s[tag=ai,tag=!justOne,scores={itemLuck=..3}] math 1
scoreboard players add @s[tag=ai,tag=!justOne,scores={itemLuck=4}] math 2
scoreboard players add @s[tag=ai,tag=!justOne,scores={itemLuck=5..}] math 3

scoreboard players operation @s[tag=ai] aiHasItem16 += @s math
scoreboard players operation @s[tag=ai] aiHasTrap += @s math
scoreboard players operation @s[tag=ai] aiHasNormal += @s math