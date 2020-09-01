summon item ~ ~.3 ~ {Tags:["giveVelocity"],PickupDelay:40,Age:0,Item:{id:"minecraft:emerald",Count:1,tag:{Tags:["no9","stay","item","normalitem","rightclick"],display:{Name:"{\"text\":\"Jump Boost\",\"color\":\"aqua\",\"bold\":\"true\",\"italic\":\"false\"}"}}}}
scoreboard players remove @s aiHasItem9 1

execute if entity @s[scores={aiHasItem9=1..}] run function sprint_racer_language:gameplay/ai_drop_item/9