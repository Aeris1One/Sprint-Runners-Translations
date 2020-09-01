summon item ~ ~.3 ~ {Tags:["giveVelocity"],PickupDelay:40,Age:0,Item:{id:"minecraft:gold_ingot",Count:1,tag:{Tags:["no10","stay","item","normalitem","rightclick"],display:{Name:"{\"text\":\"Speed Boost\",\"color\":\"aqua\",\"bold\":\"true\",\"italic\":\"false\"}"}}}}
scoreboard players remove @s aiHasItem10 1

execute if entity @s[scores={aiHasItem10=1..}] run function sprint_racer_language:gameplay/ai_drop_item/10