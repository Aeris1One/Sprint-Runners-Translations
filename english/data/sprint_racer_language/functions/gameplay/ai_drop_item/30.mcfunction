summon item ~ ~.3 ~ {Tags:["giveVelocity"],PickupDelay:40,Age:0,Item:{id:"minecraft:diamond",Count:1,tag:{Tags:["elite10","stay","item","eliteitem","rightclick"],HideFlags:1,Enchantments:[{id:"minecraft:lure",lvl:1}],display:{Name:"[\"\",{\"text\":\"↑ \",\"color\":\"dark_purple\",\"bold\":\"true\",\"italic\":\"false\"},{\"text\":\"Super Speed Boost\",\"color\":\"aqua\",\"bold\":\"true\",\"italic\":\"false\"}]"}}}}
scoreboard players remove @s aiHasItem30 1

execute if entity @s[scores={aiHasItem30=1..}] run function sprint_racer_language:gameplay/ai_drop_item/30