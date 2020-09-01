summon item ~ ~.3 ~ {Tags:["giveVelocity"],PickupDelay:40,Age:0,Item:{id:"minecraft:bricks",Count:1,tag:{CustomModelData:1111111,Tags:["no15","stay","item","normalitem","rightclick"],EntityTag:{Tags:["invalidchicken"]},display:{Name:"{\"text\":\"Chicken Mine\",\"color\":\"green\",\"bold\":\"true\",\"italic\":\"false\"}"}}}}
scoreboard players remove @s aiHasItem15 1

execute if entity @s[scores={aiHasItem15=1..}] run function sprint_racer_language:gameplay/ai_drop_item/15