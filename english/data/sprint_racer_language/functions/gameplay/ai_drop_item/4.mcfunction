summon item ~ ~.3 ~ {Tags:["giveVelocity"],PickupDelay:40,Age:0,Item:{id:"minecraft:golden_sword",Count:1,tag:{Damage:32,Tags:["no4","stay","item","normalitem","stronk"],HideFlags:1,Enchantments:[{id:"minecraft:knockback",lvl:10}],display:{Name:"{\"text\":\"Knockback Sword\",\"color\":\"red\",\"bold\":\"true\",\"italic\":\"false\"}"}}}}
scoreboard players remove @s aiHasItem4 1

execute if entity @s[scores={aiHasItem4=1..}] run function sprint_racer_language:gameplay/ai_drop_item/4