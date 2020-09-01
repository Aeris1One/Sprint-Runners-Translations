tellraw @a[tag=!minChat] ["",{"text":" "}]

scoreboard players set @e[name=w,tag=RAIautocount] optRAIcount 0
tag @e[name=w,tag=RAIautocount] remove RAIautocount

scoreboard players add @e[name=w] optRAIcount 1
tag @e[name=w,scores={optRAIcount=10..}] add RAIautocount
scoreboard players set @e[name=w,scores={optRAIcount=..0}] optRAIcount 1

execute if entity @e[name=w,scores={optRAIcount=1},tag=!RAIautocount] run data merge block 1584 95 378 {Text1:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"function sprint_racer:game_logic/0/options_signs/ai_count_race\"}}",Text2:"{\"text\":\"RACE AI:\",\"bold\":true,\"color\":\"black\"}",Text3:"{\"text\":\"[COUNT: 1]\",\"color\":\"gold\"}"}
execute if entity @e[name=w,scores={optRAIcount=2},tag=!RAIautocount] run data merge block 1584 95 378 {Text1:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"function sprint_racer:game_logic/0/options_signs/ai_count_race\"}}",Text2:"{\"text\":\"RACE AI:\",\"bold\":true,\"color\":\"black\"}",Text3:"{\"text\":\"[COUNT: 2]\",\"color\":\"gold\"}"}
execute if entity @e[name=w,scores={optRAIcount=3},tag=!RAIautocount] run data merge block 1584 95 378 {Text1:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"function sprint_racer:game_logic/0/options_signs/ai_count_race\"}}",Text2:"{\"text\":\"RACE AI:\",\"bold\":true,\"color\":\"black\"}",Text3:"{\"text\":\"[COUNT: 3]\",\"color\":\"gold\"}"}
execute if entity @e[name=w,scores={optRAIcount=4},tag=!RAIautocount] run data merge block 1584 95 378 {Text1:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"function sprint_racer:game_logic/0/options_signs/ai_count_race\"}}",Text2:"{\"text\":\"RACE AI:\",\"bold\":true,\"color\":\"black\"}",Text3:"{\"text\":\"[COUNT: 4]\",\"color\":\"gold\"}"}
execute if entity @e[name=w,scores={optRAIcount=5},tag=!RAIautocount] run data merge block 1584 95 378 {Text1:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"function sprint_racer:game_logic/0/options_signs/ai_count_race\"}}",Text2:"{\"text\":\"RACE AI:\",\"bold\":true,\"color\":\"black\"}",Text3:"{\"text\":\"[COUNT: 5]\",\"color\":\"gold\"}"}
execute if entity @e[name=w,scores={optRAIcount=6},tag=!RAIautocount] run data merge block 1584 95 378 {Text1:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"function sprint_racer:game_logic/0/options_signs/ai_count_race\"}}",Text2:"{\"text\":\"RACE AI:\",\"bold\":true,\"color\":\"black\"}",Text3:"{\"text\":\"[COUNT: 6]\",\"color\":\"gold\"}"}
execute if entity @e[name=w,scores={optRAIcount=7},tag=!RAIautocount] run data merge block 1584 95 378 {Text1:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"function sprint_racer:game_logic/0/options_signs/ai_count_race\"}}",Text2:"{\"text\":\"RACE AI:\",\"bold\":true,\"color\":\"black\"}",Text3:"{\"text\":\"[COUNT: 7]\",\"color\":\"gold\"}"}
execute if entity @e[name=w,scores={optRAIcount=8},tag=!RAIautocount] run data merge block 1584 95 378 {Text1:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"function sprint_racer:game_logic/0/options_signs/ai_count_race\"}}",Text2:"{\"text\":\"RACE AI:\",\"bold\":true,\"color\":\"black\"}",Text3:"{\"text\":\"[COUNT: 8]\",\"color\":\"gold\"}"}
execute if entity @e[name=w,scores={optRAIcount=9},tag=!RAIautocount] run data merge block 1584 95 378 {Text1:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"function sprint_racer:game_logic/0/options_signs/ai_count_race\"}}",Text2:"{\"text\":\"RACE AI:\",\"bold\":true,\"color\":\"black\"}",Text3:"{\"text\":\"[COUNT: 9]\",\"color\":\"gold\"}"}
execute if entity @e[name=w,tag=RAIautocount] run data merge block 1584 95 378 {Text1:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"function sprint_racer:game_logic/0/options_signs/ai_count_race\"}}",Text2:"{\"text\":\"RACE AI:\",\"bold\":true,\"color\":\"black\"}",Text3:"{\"text\":\"[COUNT: AUTO]\",\"color\":\"gold\"}"}

execute unless entity @e[name=w,tag=RAIautocount] run tellraw @a[tag=!minChat] ["",{"text":"[OPTIONS] In race mode, AI count is ","color":"green"},{"score":{"name":"@e[name=w,limit=1]","objective":"optRAIcount"},"color":"green"},{"text":" "},{"text":" "},{"text":"[!]","color":"red","bold":"true","hoverEvent":{"action":"show_text","value":"Higher AI counts are very taxing on the\nserver! Make sure your server's tick length\nstays below 50ms during gameplay.\nAbove 50ms, the AI will slow down."}}]
execute if entity @e[name=w,tag=RAIautocount] run tellraw @a[tag=!minChat] ["",{"text":"[OPTIONS] In race mode, AI count will vary per track due to performance needs.","color":"green"}]
playsound minecraft:block.note_block.hat master @a

function sprint_racer:game_logic/0/props/update_jail_zombies

tag @s remove clickSign