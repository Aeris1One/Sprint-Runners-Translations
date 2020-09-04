tellraw @a[tag=!minChat] ["",{"text":" "}]

tag @e[name=w] remove optSetB
tag @e[name=w] add optSetA

tag @e[name=w,tag=optSetA,tag=!requireAdmin] add optSetB
execute if entity @e[name=w,tag=optSetB] run data merge block 1587 88 381 {Text1:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"function sprint_racer:game_logic/0/options_signs/admin_mode\"}}",Text2:"{\"text\":\"ADMIN MODE:\",\"bold\":true,\"color\":\"black\"}",Text3:"{\"text\":\"[ON]\",\"color\":\"gold\"}"}
execute if entity @e[name=w,tag=optSetB] run tag @e[name=w] add requireAdmin
execute if entity @e[name=w,tag=optSetB] run tellraw @a[tag=!minChat] ["",{"text":"[OPTIONS] Admin mode enabled. Only admins can change lobby settings.","color":"green"}]
execute if entity @e[name=w,tag=optSetB] run playsound minecraft:block.note_block.hat master @a
execute if entity @e[name=w,tag=optSetB] run tag @s add admin
execute if entity @e[name=w,tag=optSetB] run tellraw @s ["",{"text":"You have been tagged as an admin.","color":"yellow","bold":"true"}]
execute if entity @e[name=w,tag=optSetB] run tellraw @s ["",{"text":"Use \"/tag <PLAYERNAME> add admin\" to give other players the ability to change lobby settings.","color":"yellow"}]
tag @e[name=w,tag=optSetB] remove optSetA
tag @e[name=w,tag=optSetB] remove optSetB

tag @e[name=w,tag=optSetA,tag=requireAdmin] add optSetB
execute if entity @e[name=w,tag=optSetB] run data merge block 1587 88 381 {Text1:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"function sprint_racer:game_logic/0/options_signs/admin_mode\"}}",Text2:"{\"text\":\"ADMIN MODE:\",\"bold\":true,\"color\":\"black\"}",Text3:"{\"text\":\"[OFF]\",\"color\":\"gold\"}"}
execute if entity @e[name=w,tag=optSetB] run tag @e[name=w] remove requireAdmin
execute if entity @e[name=w,tag=optSetB] run tellraw @a[tag=!minChat] ["",{"text":"[OPTIONS] Admin mode disabled. Anyone can change lobby settings.","color":"green"}]
execute if entity @e[name=w,tag=optSetB] run playsound minecraft:block.note_block.hat master @a
tag @e[name=w,tag=optSetB] remove optSetA
tag @e[name=w,tag=optSetB] remove optSetB

tag @e[name=w,tag=optSetA] remove optSetA
tag @e[name=w] remove optSetB

tag @s remove clickSign