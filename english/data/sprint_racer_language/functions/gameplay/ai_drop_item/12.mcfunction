summon item ~ ~.3 ~ {Tags:["giveVelocity"],PickupDelay:40,Age:0,Item:{id:"minecraft:elytra",Count:1,tag:{Tags:["no12","stay","item","normalitem"],display:{Name:"{\"text\":\"Elytra\",\"color\":\"aqua\",\"bold\":\"true\",\"italic\":\"false\"}"}}}}
scoreboard players remove @s aiHasItem12 1

execute if entity @s[scores={aiHasItem12=1..}] run function sprint_racer_language:gameplay/ai_drop_item/12