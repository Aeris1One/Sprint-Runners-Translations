summon item ~ ~.3 ~ {Tags:["giveVelocity"],PickupDelay:40,Age:0,Item:{id:"minecraft:totem_of_undying",Count:1,tag:{Tags:["no8","stay","item","normalitem","rightclick"],display:{Name:"{\"text\":\"Totem of Undying\",\"color\":\"yellow\",\"bold\":\"true\",\"italic\":\"false\"}"}}}}
scoreboard players remove @s aiHasItem8 1

execute if entity @s[scores={aiHasItem8=1..}] run function sprint_racer_language:gameplay/ai_drop_item/8