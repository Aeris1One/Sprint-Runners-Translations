#time attack
summon armor_stand 1581 93 372 {CustomName:"{\"text\":\"Time Attack\",\"color\":\"yellow\",\"bold\":\"true\"}",CustomNameVisible:false,Marker:1b,Invulnerable:1,Invisible:1,Tags:["cDisplay2"]}

#free roam
summon armor_stand 1585 93 372 {CustomName:"{\"text\":\"Free Roam\",\"color\":\"green\",\"bold\":\"true\"}",CustomNameVisible:false,Marker:1b,Invulnerable:1,Invisible:1,Tags:["cDisplay2"]}

#custom track manager
execute if entity @e[name=w,type=armor_stand,tag=!realms] run summon armor_stand 1581 93 363 {CustomName:"{\"text\":\"Custom Track Manager\",\"color\":\"light_purple\",\"bold\":\"true\"}",CustomNameVisible:false,Marker:1b,Invulnerable:1,Invisible:1,Tags:["cDisplay2"]}

#random track pool
summon armor_stand 1585 93 363 {CustomName:"{\"text\":\"Random Track Pool\",\"color\":\"gray\",\"bold\":\"true\"}",CustomNameVisible:false,Marker:1b,Invulnerable:1,Invisible:1,Tags:["cDisplay2"]}