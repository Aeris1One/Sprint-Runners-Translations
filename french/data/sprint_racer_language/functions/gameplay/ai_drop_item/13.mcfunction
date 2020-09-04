summon item ~ ~.3 ~ {Tags:["giveVelocity"],PickupDelay:40,Age:0,Item:{id:"minecraft:slime_block",Count:1,tag:{Tags:["no13","stay","item","normalitem","groundDeploy","rightclick"],display:{Name:"{\"text\":\"Slime Trap\",\"color\":\"green\",\"bold\":\"true\",\"italic\":\"false\"}"}}}}
scoreboard players remove @s aiHasItem13 1

execute if entity @s[scores={aiHasItem13=1..}] run function sprint_racer_language:gameplay/ai_drop_item/13