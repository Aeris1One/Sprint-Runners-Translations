#i don't know why i wrote this function
#warp items aren't even allowed to drop

summon item ~ ~.3 ~ {Tags:["giveVelocity"],PickupDelay:40,Age:0,Item:{id:"minecraft:flint",Count:1,tag:{Tags:["elite11","item","eliteitem"],HideFlags:1,Enchantments:[{id:"minecraft:lure",lvl:1}],display:{Name:"[\"\",{\"text\":\"↑ \",\"color\":\"dark_purple\",\"bold\":\"true\",\"italic\":\"false\"},{\"text\":\"Warp\",\"color\":\"aqua\",\"bold\":\"true\",\"italic\":\"false\"}]"}}}}
scoreboard players remove @s aiHasItem31 1

execute if entity @s[scores={aiHasItem31=1..}] run function sprint_racer_language:gameplay/ai_drop_item/31