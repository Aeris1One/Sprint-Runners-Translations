summon item ~ ~.3 ~ {Tags:["giveVelocity"],PickupDelay:40,Age:0,Item:{id:"minecraft:dropper",Count:1,tag:{Tags:["elite2","stay","item","eliteitem","rightclick"],HideFlags:1,Enchantments:[{id:"minecraft:lure",lvl:1}],display:{Name:"[\"\",{\"text\":\"↑ \",\"color\":\"dark_purple\",\"bold\":\"true\",\"italic\":\"false\"},{\"text\":\"Homing Missile Launcher\",\"color\":\"red\",\"bold\":\"true\",\"italic\":\"false\"}]"}}}}
scoreboard players remove @s aiHasItem22 1

execute if entity @s[scores={aiHasItem22=1..}] run function sprint_racer_language:gameplay/ai_drop_item/22