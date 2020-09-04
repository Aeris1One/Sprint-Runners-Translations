tellraw @a[tag=!minChat] ["",{"text":" "}]

tag @e[name=w] remove optSetB
tag @e[name=w] add optSetA

tag @e[name=w,tag=optSetA,tag=optBAInever] add optSetB
execute if entity @e[name=w,tag=optSetB] run data merge block 1586 95 378 {Text1:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"function sprint_racer:game_logic/0/options_signs/ai_context_battle\"}}",Text2:"{\"text\":\"BATTLE AI:\",\"bold\":true,\"color\":\"black\"}",Text3:"{\"text\":\"[SINGLEPLAYER]\",\"color\":\"gold\"}"}
execute if entity @e[name=w,tag=optSetB] run tag @e[name=w] add optBAIsingle
execute if entity @e[name=w,tag=optSetB] run tag @e[name=w] remove optBAIalways
execute if entity @e[name=w,tag=optSetB] run tag @e[name=w] remove optBAInever
execute if entity @e[name=w,tag=optSetB] run tellraw @a[tag=!minChat] ["",{"text":"[OPTIONS] In battle mode, AI opponents will only appear in singleplayer.","color":"green"}]
execute if entity @e[name=w,tag=optSetB] run playsound minecraft:block.note_block.hat master @a
tag @e[name=w,tag=optSetB] remove optSetA
tag @e[name=w,tag=optSetB] remove optSetB

tag @e[name=w,tag=optSetA,tag=optBAIsingle] add optSetB
execute if entity @e[name=w,tag=optSetB] run data merge block 1586 95 378 {Text1:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"function sprint_racer:game_logic/0/options_signs/ai_context_battle\"}}",Text2:"{\"text\":\"BATTLE AI:\",\"bold\":true,\"color\":\"black\"}",Text3:"{\"text\":\"[ALWAYS ON]\",\"color\":\"gold\"}"}
execute if entity @e[name=w,tag=optSetB] run tag @e[name=w] remove optBAIsingle
execute if entity @e[name=w,tag=optSetB] run tag @e[name=w] add optBAIalways
execute if entity @e[name=w,tag=optSetB] run tag @e[name=w] remove optBAInever
execute if entity @e[name=w,tag=optSetB] run tellraw @a[tag=!minChat] ["",{"text":"[OPTIONS] In battle mode, AI opponents will always appear.","color":"green"}]
execute if entity @e[name=w,tag=optSetB] run playsound minecraft:block.note_block.hat master @a
tag @e[name=w,tag=optSetB] remove optSetA
tag @e[name=w,tag=optSetB] remove optSetB

tag @e[name=w,tag=optSetA,tag=optBAIalways] add optSetB
execute if entity @e[name=w,tag=optSetB] run data merge block 1586 95 378 {Text1:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"function sprint_racer:game_logic/0/options_signs/ai_context_battle\"}}",Text2:"{\"text\":\"BATTLE AI:\",\"bold\":true,\"color\":\"black\"}",Text3:"{\"text\":\"[ALWAYS OFF]\",\"color\":\"gold\"}"}
execute if entity @e[name=w,tag=optSetB] run tag @e[name=w] remove optBAIsingle
execute if entity @e[name=w,tag=optSetB] run tag @e[name=w] remove optBAIalways
execute if entity @e[name=w,tag=optSetB] run tag @e[name=w] add optBAInever
execute if entity @e[name=w,tag=optSetB] run tellraw @a[tag=!minChat] ["",{"text":"[OPTIONS] In battle mode, AI opponents will never appear.","color":"green"}]
execute if entity @e[name=w,tag=optSetB] run playsound minecraft:block.note_block.hat master @a
tag @e[name=w,tag=optSetB] remove optSetA
tag @e[name=w,tag=optSetB] remove optSetB

#missing tags, give new one
tag @e[name=w,tag=optSetA] add optBAIsingle
tag @e[name=w,tag=optSetA] remove optSetA

tag @e[name=w] remove optSetB

function sprint_racer:game_logic/0/props/update_jail_zombies

tag @s remove clickSign