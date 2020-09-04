summon item ~ ~.3 ~ {Tags:["giveVelocity"],PickupDelay:40,Age:0,Item:{id:"minecraft:dispenser",Count:1,tag:{Tags:["no2","stay","item","normalitem","rightclick"],display:{Name:"{\"text\":\"Missile Launcher\",\"color\":\"red\",\"bold\":\"true\",\"italic\":\"false\"}"}}}}
scoreboard players remove @s aiHasItem2 1

execute if entity @s[scores={aiHasItem2=1..}] run function sprint_racer_language:gameplay/ai_drop_item/2