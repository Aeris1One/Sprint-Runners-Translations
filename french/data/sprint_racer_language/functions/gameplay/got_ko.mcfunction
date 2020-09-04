summon armor_stand ~ ~1.6 ~ {CustomName:"{\"text\":\"KO!\",\"color\":\"green\",\"bold\":\"true\"}",CustomNameVisible:true,Marker:1b,Invulnerable:1,Invisible:1,Tags:["setscore","floatup"]}

execute if entity @a[tag=playing,tag=killed] run tellraw @a[tag=killer] ["",{"text":"You got a KO! >> ","color":"green","bold":"true"},{"selector":"@a[tag=killed]"}]
execute if entity @e[tag=ai,tag=killed] run tellraw @a[tag=killer] ["",{"text":"You got a KO! >> ","color":"green","bold":"true"},{"selector":"@e[tag=killed]"}]

scoreboard players set @e[tag=setscore] lifespan 20
effect give @e[tag=setscore] levitation 10 1 true
tag @e[tag=setscore] remove setscore