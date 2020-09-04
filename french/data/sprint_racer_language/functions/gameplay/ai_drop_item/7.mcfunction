summon item ~ ~.3 ~ {Tags:["giveVelocity"],PickupDelay:40,Age:0,Item:{id:"minecraft:iron_ingot",Count:1,tag:{Tags:["no7","stay","item","normalitem","rightclick"],display:{Name:"{\"text\":\"Resistance\",\"color\":\"yellow\",\"bold\":\"true\",\"italic\":\"false\"}"}}}}
scoreboard players remove @s aiHasItem7 1

execute if entity @s[scores={aiHasItem7=1..}] run function sprint_racer_language:gameplay/ai_drop_item/7