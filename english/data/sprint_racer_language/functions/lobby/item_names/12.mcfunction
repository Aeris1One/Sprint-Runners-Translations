summon armor_stand ~ ~.8 ~ {CustomName:"{\"text\":\"Elytra\",\"color\":\"white\",\"bold\":\"true\"}",CustomNameVisible:true,Marker:1b,Invulnerable:1,Invisible:1,Tags:["setscore"]}
summon armor_stand ~ ~.5 ~ {CustomName:"{\"text\":\"Type: Speed\",\"color\":\"aqua\",\"bold\":\"false\"}",CustomNameVisible:true,Marker:1b,Invulnerable:1,Invisible:1,Tags:["setscore"]}
scoreboard players set @e[tag=setscore] lifespan 1
tag @e[tag=setscore] remove setscore