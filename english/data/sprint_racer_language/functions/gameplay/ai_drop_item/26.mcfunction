summon item ~ ~.3 ~ {Tags:["giveVelocity"],PickupDelay:40,Age:0,Item:{id:"minecraft:white_stained_glass",Count:1,tag:{Tags:["elite6","stay","item","eliteitem","rightclick"],HideFlags:1,Enchantments:[{id:"minecraft:lure",lvl:1}],display:{Name:"[\"\",{\"text\":\"↑ \",\"color\":\"dark_purple\",\"bold\":\"true\",\"italic\":\"false\"},{\"text\":\"Cloak and Dagger\",\"color\":\"yellow\",\"bold\":\"true\",\"italic\":\"false\"}]"}}}}
scoreboard players remove @s aiHasItem26 1

execute if entity @s[scores={aiHasItem26=1..}] run function sprint_racer_language:gameplay/ai_drop_item/26