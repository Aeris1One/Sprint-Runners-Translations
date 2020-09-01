summon item ~ ~.3 ~ {Tags:["giveVelocity"],PickupDelay:40,Age:0,Item:{id:"minecraft:trapped_chest",Count:1,tag:{Tags:["no16","stay","item","normalitem","groundDeploy","rightclick"],display:{Name:"{\"text\":\"Trapped Chest\",\"color\":\"green\",\"bold\":\"true\",\"italic\":\"false\"}"}}}}
scoreboard players remove @s aiHasItem16 1

execute if entity @s[scores={aiHasItem16=1..}] run function sprint_racer_language:gameplay/ai_drop_item/16