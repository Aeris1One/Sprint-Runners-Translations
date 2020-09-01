summon item ~ ~.3 ~ {Tags:["giveVelocity"],PickupDelay:40,Age:0,Item:{id:"minecraft:glass",Count:1,tag:{Tags:["no6","stay","item","normalitem","rightclick"],display:{Name:"{\"text\":\"Invisibility\",\"color\":\"yellow\",\"bold\":\"true\",\"italic\":\"false\"}"}}}}
scoreboard players remove @s aiHasItem6 1

execute if entity @s[scores={aiHasItem6=1..}] run function sprint_racer_language:gameplay/ai_drop_item/6