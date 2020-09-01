summon armor_stand ~ ~1.8 ~ {CustomName:"{\"text\":\"↑ Jump Boost\",\"color\":\"green\",\"bold\":\"true\"}",CustomNameVisible:true,Marker:1b,Invulnerable:1,Invisible:1,Tags:["setscore","floatup"]}
scoreboard players set @e[tag=setscore] lifespan 15
tag @e[tag=setscore] remove setscore