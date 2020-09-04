tellraw @a[tag=!minChat] ["",{"text":" "}]

tag @e[name=w] remove optSetB
tag @e[name=w] add optSetA

tag @e[name=w,tag=optSetA,tag=optRAInever] add optSetB
execute if entity @e[name=w,tag=optSetB] run data merge block 1583 95 378 {Text1:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"function sprint_racer:game_logic/0/options_signs/ai_context_race\"}}",Text2:"{\"text\":\"RACE AI:\",\"bold\":true,\"color\":\"black\"}",Text3:"{\"text\":\"[SINGLEPLAYER]\",\"color\":\"gold\"}"}
execute if entity @e[name=w,tag=optSetB] run tag @e[name=w] add optRAIsingle
execute if entity @e[name=w,tag=optSetB] run tag @e[name=w] remove optRAIalways
execute if entity @e[name=w,tag=optSetB] run tag @e[name=w] remove optRAInever
execute if entity @e[name=w,tag=optSetB] run tellraw @a[tag=!minChat] ["",{"text":"[OPTIONS] In race mode, AI opponents will only appear in singleplayer.","color":"green"}]
execute if entity @e[name=w,tag=optSetB] run playsound minecraft:block.note_block.hat master @a
tag @e[name=w,tag=optSetB] remove optSetA
tag @e[name=w,tag=optSetB] remove optSetB

tag @e[name=w,tag=optSetA,tag=optRAIsingle] add optSetB
execute if entity @e[name=w,tag=optSetB] run data merge block 1583 95 378 {Text1:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"function sprint_racer:game_logic/0/options_signs/ai_context_race\"}}",Text2:"{\"text\":\"RACE AI:\",\"bold\":true,\"color\":\"black\"}",Text3:"{\"text\":\"[ALWAYS ON]\",\"color\":\"gold\"}"}
execute if entity @e[name=w,tag=optSetB] run tag @e[name=w] remove optRAIsingle
execute if entity @e[name=w,tag=optSetB] run tag @e[name=w] add optRAIalways
execute if entity @e[name=w,tag=optSetB] run tag @e[name=w] remove optRAInever
execute if entity @e[name=w,tag=optSetB] run tellraw @a[tag=!minChat] ["",{"text":"[OPTIONS] In race mode, AI opponents will always appear.","color":"green"}]
execute if entity @e[name=w,tag=optSetB] run playsound minecraft:block.note_block.hat master @a
tag @e[name=w,tag=optSetB] remove optSetA
tag @e[name=w,tag=optSetB] remove optSetB

tag @e[name=w,tag=optSetA,tag=optRAIalways] add optSetB
execute if entity @e[name=w,tag=optSetB] run data merge block 1583 95 378 {Text1:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"function sprint_racer:game_logic/0/options_signs/ai_context_race\"}}",Text2:"{\"text\":\"RACE AI:\",\"bold\":true,\"color\":\"black\"}",Text3:"{\"text\":\"[ALWAYS OFF]\",\"color\":\"gold\"}"}
execute if entity @e[name=w,tag=optSetB] run tag @e[name=w] remove optRAIsingle
execute if entity @e[name=w,tag=optSetB] run tag @e[name=w] remove optRAIalways
execute if entity @e[name=w,tag=optSetB] run tag @e[name=w] add optRAInever
execute if entity @e[name=w,tag=optSetB] run tellraw @a[tag=!minChat] ["",{"text":"[OPTIONS] In race mode, AI opponents will never appear.","color":"green"}]
execute if entity @e[name=w,tag=optSetB] run playsound minecraft:block.note_block.hat master @a
tag @e[name=w,tag=optSetB] remove optSetA
tag @e[name=w,tag=optSetB] remove optSetB

#missing tags, give new one
tag @e[name=w,tag=optSetA] add optRAIsingle
tag @e[name=w,tag=optSetA] remove optSetA

tag @e[name=w] remove optSetB

function sprint_racer:game_logic/0/props/update_jail_zombies

tag @s remove clickSign