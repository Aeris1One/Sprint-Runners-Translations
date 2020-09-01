summon item ~ ~.3 ~ {Tags:["giveVelocity"],PickupDelay:40,Age:0,Item:{id:"minecraft:blaze_rod",Count:1,tag:{Tags:["no20","stay","item","normalitem","rightclick"],display:{Name:"{\"text\":\"Lightning Strike\",\"color\":\"light_purple\",\"bold\":\"true\",\"italic\":\"false\"}"}}}}
scoreboard players remove @s aiHasItem20 1

execute if entity @s[scores={aiHasItem20=1..}] run function sprint_racer_language:gameplay/ai_drop_item/20