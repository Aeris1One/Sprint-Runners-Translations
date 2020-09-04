summon item ~ ~.3 ~ {Tags:["giveVelocity"],PickupDelay:40,Age:0,Item:{id:"minecraft:ender_pearl",Count:1,tag:{Tags:["no11","stay","item","normalitem"],display:{Name:"{\"text\":\"Ender Pearl\",\"color\":\"aqua\",\"bold\":\"true\",\"italic\":\"false\"}"}}}}
scoreboard players remove @s aiHasItem11 1

execute if entity @s[scores={aiHasItem11=1..}] run function sprint_racer_language:gameplay/ai_drop_item/11