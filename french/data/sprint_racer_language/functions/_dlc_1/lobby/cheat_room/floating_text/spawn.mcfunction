summon armor_stand 1635 90 443 {CustomName:'{"text":"Cheats Library","color":"light_purple","bold":false,"italic":true}',Tags:["lobbyprop","cheattext","cheattext1"],NoGravity:1,Marker:1,Invisible:1,Invulnerable:1,NoBasePlate:1,CustomNameVisible:true}

summon armor_stand 1635 89.5 443 {CustomName:'{"text":"???","color":"white","bold":true,"italic":false}',Tags:["lobbyprop","cheattext","cheattext2"],NoGravity:1,Marker:1,Invisible:1,Invulnerable:1,NoBasePlate:1,CustomNameVisible:true}

summon armor_stand 1635 89.2 443 {CustomName:'{"text":"--","color":"white","bold":false,"italic":false}',Tags:["lobbyprop","cheattext","cheattext3"],NoGravity:1,Marker:1,Invisible:1,Invulnerable:1,NoBasePlate:1,CustomNameVisible:false}

summon armor_stand 1635 88.7 443 {CustomName:'{"text":"--","color":"white","bold":false,"italic":false}',Tags:["lobbyprop","cheattext","cheattext4"],NoGravity:1,Marker:1,Invisible:1,Invulnerable:1,NoBasePlate:1,CustomNameVisible:false}

scoreboard players set @e[name=cheats] aiHoldingItem 0
tag @e[name=cheats,tag=foundacheat] add checkforward
execute if entity @e[name=cheats,tag=foundacheat] run function sprint_racer:game_logic/0/misc_lobby_happenings/cheat_menu/_index_cheat_menu