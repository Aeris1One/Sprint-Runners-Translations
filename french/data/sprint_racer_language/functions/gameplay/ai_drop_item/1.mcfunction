summon item ~ ~.3 ~ {Tags:["giveVelocity"],PickupDelay:40,Age:0,Item:{id:"minecraft:snowball",Count:1,tag:{Tags:["no1","stay","item","normalitem"],display:{Name:"{\"text\":\"Electric Snowball\",\"color\":\"red\",\"bold\":\"true\",\"italic\":\"false\"}"}}}}
scoreboard players remove @s aiHasItem1 1

execute if entity @s[scores={aiHasItem1=1..}] run function sprint_racer_language:gameplay/ai_drop_item/1