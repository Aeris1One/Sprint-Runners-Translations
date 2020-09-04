summon item ~ ~.3 ~ {Tags:["giveVelocity"],PickupDelay:40,Age:0,Item:{id:"minecraft:blue_terracotta",Count:1,tag:{CustomModelData:1111111,Tags:["no19","stay","item","normalitem","rightclick"],display:{Name:"{\"text\":\"Blinding Squid\",\"color\":\"light_purple\",\"bold\":\"true\",\"italic\":\"false\"}"}}}}
scoreboard players remove @s aiHasItem19 1

execute if entity @s[scores={aiHasItem19=1..}] run function sprint_racer_language:gameplay/ai_drop_item/19