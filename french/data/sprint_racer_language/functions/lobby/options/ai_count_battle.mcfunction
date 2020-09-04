tellraw @a[tag=!minChat] ["",{"text":" "}]

scoreboard players set @e[name=w,tag=BAIautocount] optBAIcount 0
tag @e[name=w,tag=BAIautocount] remove BAIautocount

scoreboard players add @e[name=w] optBAIcount 1
tag @e[name=w,scores={optBAIcount=10..}] add BAIautocount
scoreboard players set @e[name=w,scores={optBAIcount=..0}] optBAIcount 1

execute if entity @e[name=w,scores={optBAIcount=1},tag=!BAIautocount] run data merge block 1587 95 378 {Text1:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"function sprint_racer:game_logic/0/options_signs/ai_count_battle\"}}",Text2:"{\"text\":\"BATTLE AI:\",\"bold\":true,\"color\":\"black\"}",Text3:"{\"text\":\"[COUNT: 1]\",\"color\":\"gold\"}"}
execute if entity @e[name=w,scores={optBAIcount=2},tag=!BAIautocount] run data merge block 1587 95 378 {Text1:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"function sprint_racer:game_logic/0/options_signs/ai_count_battle\"}}",Text2:"{\"text\":\"BATTLE AI:\",\"bold\":true,\"color\":\"black\"}",Text3:"{\"text\":\"[COUNT: 2]\",\"color\":\"gold\"}"}
execute if entity @e[name=w,scores={optBAIcount=3},tag=!BAIautocount] run data merge block 1587 95 378 {Text1:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"function sprint_racer:game_logic/0/options_signs/ai_count_battle\"}}",Text2:"{\"text\":\"BATTLE AI:\",\"bold\":true,\"color\":\"black\"}",Text3:"{\"text\":\"[COUNT: 3]\",\"color\":\"gold\"}"}
execute if entity @e[name=w,scores={optBAIcount=4},tag=!BAIautocount] run data merge block 1587 95 378 {Text1:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"function sprint_racer:game_logic/0/options_signs/ai_count_battle\"}}",Text2:"{\"text\":\"BATTLE AI:\",\"bold\":true,\"color\":\"black\"}",Text3:"{\"text\":\"[COUNT: 4]\",\"color\":\"gold\"}"}
execute if entity @e[name=w,scores={optBAIcount=5},tag=!BAIautocount] run data merge block 1587 95 378 {Text1:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"function sprint_racer:game_logic/0/options_signs/ai_count_battle\"}}",Text2:"{\"text\":\"BATTLE AI:\",\"bold\":true,\"color\":\"black\"}",Text3:"{\"text\":\"[COUNT: 5]\",\"color\":\"gold\"}"}
execute if entity @e[name=w,scores={optBAIcount=6},tag=!BAIautocount] run data merge block 1587 95 378 {Text1:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"function sprint_racer:game_logic/0/options_signs/ai_count_battle\"}}",Text2:"{\"text\":\"BATTLE AI:\",\"bold\":true,\"color\":\"black\"}",Text3:"{\"text\":\"[COUNT: 6]\",\"color\":\"gold\"}"}
execute if entity @e[name=w,scores={optBAIcount=7},tag=!BAIautocount] run data merge block 1587 95 378 {Text1:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"function sprint_racer:game_logic/0/options_signs/ai_count_battle\"}}",Text2:"{\"text\":\"BATTLE AI:\",\"bold\":true,\"color\":\"black\"}",Text3:"{\"text\":\"[COUNT: 7]\",\"color\":\"gold\"}"}
execute if entity @e[name=w,scores={optBAIcount=8},tag=!BAIautocount] run data merge block 1587 95 378 {Text1:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"function sprint_racer:game_logic/0/options_signs/ai_count_battle\"}}",Text2:"{\"text\":\"BATTLE AI:\",\"bold\":true,\"color\":\"black\"}",Text3:"{\"text\":\"[COUNT: 8]\",\"color\":\"gold\"}"}
execute if entity @e[name=w,scores={optBAIcount=9},tag=!BAIautocount] run data merge block 1587 95 378 {Text1:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"function sprint_racer:game_logic/0/options_signs/ai_count_battle\"}}",Text2:"{\"text\":\"BATTLE AI:\",\"bold\":true,\"color\":\"black\"}",Text3:"{\"text\":\"[COUNT: 9]\",\"color\":\"gold\"}"}
execute if entity @e[name=w,tag=BAIautocount] run data merge block 1587 95 378 {Text1:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"function sprint_racer:game_logic/0/options_signs/ai_count_battle\"}}",Text2:"{\"text\":\"BATTLE AI:\",\"bold\":true,\"color\":\"black\"}",Text3:"{\"text\":\"[COUNT: AUTO]\",\"color\":\"gold\"}"}

execute unless entity @e[name=w,tag=BAIautocount] run tellraw @a[tag=!minChat] ["",{"text":"[OPTIONS] In battle mode, AI count is ","color":"green"},{"score":{"name":"@e[name=w,limit=1]","objective":"optBAIcount"},"color":"green"},{"text":" "},{"text":" "},{"text":"[!]","color":"red","bold":"true","hoverEvent":{"action":"show_text","value":"Higher AI counts are very taxing on the\nserver! Make sure your server's tick length\nstays below 50ms during gameplay.\nAbove 50ms, the AI will slow down."}}]
execute if entity @e[name=w,tag=BAIautocount] run tellraw @a[tag=!minChat] ["",{"text":"[OPTIONS] In battle mode, AI count will vary per track due to performance needs.","color":"green"}]
playsound minecraft:block.note_block.hat master @a

function sprint_racer:game_logic/0/props/update_jail_zombies

tag @s remove clickSign