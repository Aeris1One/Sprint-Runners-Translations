summon item ~ ~.3 ~ {Tags:["giveVelocity"],PickupDelay:40,Age:0,Item:{id:"minecraft:lingering_potion",Count:1,tag:{Tags:["no14","stay","item","normalitem","groundDeploy"],Potion:"minecraft:poison",display:{Name:"{\"text\":\"Nasty Lingering Potion\",\"color\":\"green\",\"bold\":\"true\",\"italic\":\"false\"}"}}}}
scoreboard players remove @s aiHasItem14 1

execute if entity @s[scores={aiHasItem14=1..}] run function sprint_racer_language:gameplay/ai_drop_item/14