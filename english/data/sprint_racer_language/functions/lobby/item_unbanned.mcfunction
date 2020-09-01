summon armor_stand ~ ~1.2 ~ {CustomName:"{\"text\":\"Enabled!\",\"color\":\"green\",\"bold\":\"true\"}",CustomNameVisible:true,Marker:1b,Invulnerable:1,Invisible:1,Tags:["setscore"]}
scoreboard players set @e[tag=setscore] lifespan 20
tag @e[tag=setscore] remove setscore