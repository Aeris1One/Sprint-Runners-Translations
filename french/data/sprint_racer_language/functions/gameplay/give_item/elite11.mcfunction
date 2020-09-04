#can only have ONE of these at a time because I'm a responsible parent
clear @s flint{Tags:["elite11"]}
give @s flint{Tags:["elite11","item","eliteitem","rightclick"],HideFlags:1,Enchantments:[{id:"minecraft:lure",lvl:1}],display:{Name:"[\"\",{\"text\":\"↑ \",\"color\":\"dark_purple\",\"bold\":\"true\",\"italic\":\"false\"},{\"text\":\"Warp\",\"color\":\"aqua\",\"bold\":\"true\",\"italic\":\"false\"}]"}} 1

tag @s[tag=ai,scores={aiHasItem31=..0}] add gimme
scoreboard players add @s[tag=gimme] aiHasElite 1
scoreboard players add @s[tag=gimme] aiHasItem31 1
tag @s[tag=gimme] remove gimme