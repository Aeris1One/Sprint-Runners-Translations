tellraw @a[tag=!minChat] ["",{"text":" "}]

tag @e[name=w] remove optSetB
tag @e[name=w] add optSetA

tag @e[name=w,tag=optSetA,tag=endlessMode] add optSetB
execute if entity @e[name=w,tag=optSetB] run data merge block 1576 89 426 {Text1:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"function sprint_racer:game_logic/0/options_signs/endless_mode\"}}",Text2:"{\"text\":\"ENDLESS MODE:\",\"bold\":true,\"color\":\"white\"}",Text3:"{\"text\":\"[OFF]\",\"color\":\"yellow\"}"}
execute if entity @e[name=w,tag=optSetB] run tag @e[name=w,limit=1,type=armor_stand] remove endlessMode
execute if entity @e[name=w,tag=optSetB] run tellraw @a[tag=!minChat] ["",{"text":"[OPTIONS] Endless mode disabled.","color":"green"}]
execute if entity @e[name=w,tag=optSetB] run playsound minecraft:block.note_block.hat master @a
tag @e[name=w,tag=optSetB] remove optSetA
tag @e[name=w,tag=optSetB] remove optSetB

tag @e[name=w,tag=optSetA,tag=!endlessMode] add optSetB
execute if entity @e[name=w,tag=optSetB] run data merge block 1576 89 426 {Text1:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"function sprint_racer:game_logic/0/options_signs/endless_mode\"}}",Text2:"{\"text\":\"ENDLESS MODE:\",\"bold\":true,\"color\":\"white\"}",Text3:"{\"text\":\"[ON]\",\"color\":\"yellow\"}"}
execute if entity @e[name=w,tag=optSetB] run tag @e[name=w,limit=1,type=armor_stand] add endlessMode
execute if entity @e[name=w,tag=optSetB] run tellraw @a[tag=!minChat] ["",{"text":"[OPTIONS] Endless mode enabled. Point won't be reset and the podium sequence won't be shown.","color":"green"}]
execute if entity @e[name=w,tag=optSetB] run playsound minecraft:block.note_block.hat master @a
tag @e[name=w,tag=optSetB] remove optSetA
tag @e[name=w,tag=optSetB] remove optSetB

tag @e[name=w,tag=optSetA] remove optSetA
tag @e[name=w] remove optSetB

tag @s remove clickSign