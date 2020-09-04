summon item ~ ~.3 ~ {Tags:["giveVelocity"],PickupDelay:40,Age:0,Item:{id:"minecraft:apple",Count:1,tag:{Tags:["no5","stay","item","normalitem","rightclick"],display:{Name:"{\"text\":\"Healthy Apple\",\"color\":\"yellow\",\"bold\":\"true\",\"italic\":\"false\"}"}}}}
scoreboard players remove @s aiHasItem5 1

execute if entity @s[scores={aiHasItem5=1..}] run function sprint_racer_language:gameplay/ai_drop_item/5