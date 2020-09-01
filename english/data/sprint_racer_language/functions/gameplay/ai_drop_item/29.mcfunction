summon item ~ ~.3 ~ {Tags:["giveVelocity"],PickupDelay:40,Age:0,Item:{id:"minecraft:emerald",Count:1,tag:{Tags:["elite9","stay","item","eliteitem","rightclick"],HideFlags:1,Enchantments:[{id:"minecraft:lure",lvl:1}],display:{Name:"[\"\",{\"text\":\"↑ \",\"color\":\"dark_purple\",\"bold\":\"true\",\"italic\":\"false\"},{\"text\":\"Super Jump Boost\",\"color\":\"aqua\",\"bold\":\"true\",\"italic\":\"false\"}]"}}}}
scoreboard players remove @s aiHasItem29 1

execute if entity @s[scores={aiHasItem29=1..}] run function sprint_racer_language:gameplay/ai_drop_item/29