summon item ~ ~.3 ~ {Tags:["giveVelocity"],PickupDelay:40,Age:0,Item:{id:"minecraft:anvil",Count:1,tag:{Tags:["no17","stay","item","normalitem","rightclick"],display:{Name:"{\"text\":\"Anvil of Justice\",\"color\":\"light_purple\",\"bold\":\"true\",\"italic\":\"false\"}"}}}}
scoreboard players remove @s aiHasItem17 1

execute if entity @s[scores={aiHasItem17=1..}] run function sprint_racer_language:gameplay/ai_drop_item/17