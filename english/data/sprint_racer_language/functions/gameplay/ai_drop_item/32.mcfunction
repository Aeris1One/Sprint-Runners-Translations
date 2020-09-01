summon item ~ ~.3 ~ {Tags:["giveVelocity"],PickupDelay:40,Age:0,Item:{id:"minecraft:elytra",Count:1,tag:{Tags:["elite12","stay","item","eliteitem"],HideFlags:1,Enchantments:[{id:"minecraft:lure",lvl:1}],display:{Name:"[\"\",{\"text\":\"↑ \",\"color\":\"dark_purple\",\"bold\":\"true\",\"italic\":\"false\"},{\"text\":\"Rocket-Powered Elytra\",\"color\":\"aqua\",\"bold\":\"true\",\"italic\":\"false\"}]"}}}}
scoreboard players remove @s aiHasItem32 1

execute if entity @s[scores={aiHasItem32=1..}] run function sprint_racer_language:gameplay/ai_drop_item/32