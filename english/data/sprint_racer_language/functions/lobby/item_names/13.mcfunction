summon armor_stand ~ ~.8 ~ {CustomName:"{\"text\":\"Slime Trap\",\"color\":\"white\",\"bold\":\"true\"}",CustomNameVisible:true,Marker:1b,Invulnerable:1,Invisible:1,Tags:["setscore"]}
summon armor_stand ~ ~.5 ~ {CustomName:"{\"text\":\"Type: Trap\",\"color\":\"green\",\"bold\":\"false\"}",CustomNameVisible:true,Marker:1b,Invulnerable:1,Invisible:1,Tags:["setscore"]}
scoreboard players set @e[tag=setscore] lifespan 1
tag @e[tag=setscore] remove setscore