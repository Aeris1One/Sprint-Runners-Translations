#player gets these to catch back up a little bit after a death
#these do NOT stay on the ground, I want to avoid any dupe glitches

give @s gold_ingot{Tags:["no10","item","normalitem","rightclick","charityitem"],display:{Name:"{\"text\":\"Charity Speed Boost\",\"color\":\"aqua\",\"bold\":\"true\",\"italic\":\"false\"}"}} 1

scoreboard players set @s[tag=ai] math 0
scoreboard players add @s[tag=ai,scores={aiHasItem10=..4}] math 1

scoreboard players operation @s[tag=ai] aiHasItem10 += @s math
scoreboard players operation @s[tag=ai] aiHasSBoost += @s math
scoreboard players operation @s[tag=ai] aiHasNormal += @s math