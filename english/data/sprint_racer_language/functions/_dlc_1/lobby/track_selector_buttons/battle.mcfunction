summon armor_stand ~ ~1.6 ~ {CustomName:"{\"text\":\"Battle Arenas\",\"color\":\"red\",\"bold\":\"true\"}",CustomNameVisible:true,Marker:1b,Invulnerable:1,Invisible:1,Tags:["setscore"]}

scoreboard players set @e[tag=setscore] lifespan 15
tag @e[tag=setscore] remove setscore