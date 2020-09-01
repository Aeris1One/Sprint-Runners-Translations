summon item ~ ~.3 ~ {Tags:["giveVelocity"],PickupDelay:40,Age:0,Item:{id:"minecraft:tnt",Count:1,tag:{Tags:["no3","stay","item","normalitem","groundDeploy","rightclick"],display:{Name:"{\"text\":\"Throwable TNT\",\"color\":\"red\",\"bold\":\"true\",\"italic\":\"false\"}"}}}}
scoreboard players remove @s aiHasItem3 1

execute if entity @s[scores={aiHasItem3=1..}] run function sprint_racer_language:gameplay/ai_drop_item/3