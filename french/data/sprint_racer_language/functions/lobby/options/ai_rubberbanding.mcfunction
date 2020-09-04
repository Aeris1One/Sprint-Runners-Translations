tellraw @a[tag=!minChat] ["",{"text":" "}]

tag @e[name=w] remove optSetB
tag @e[name=w] add optSetA

tag @e[name=w,tag=optSetA,tag=!noRubberBand] add optSetB
execute if entity @e[name=w,tag=optSetB] run data merge block 1596 96 383 {Text1:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"function sprint_racer:game_logic/0/options_signs/ai_rubberbanding\"}}",Text2:"{\"text\":\"RUBBERBANDING\",\"bold\":true,\"color\":\"black\"}",Text3:"{\"text\":\"[OFF]\",\"color\":\"blue\"}"}
execute if entity @e[name=w,tag=optSetB] run tag @e[name=w] add noRubberBand
execute if entity @e[name=w,tag=optSetB] run tellraw @a[tag=!minChat] ["",{"text":"[OPTIONS] AI rubber-banding is disabled","color":"green"}]
execute if entity @e[name=w,tag=optSetB] run playsound minecraft:block.note_block.hat master @a
tag @e[name=w,tag=optSetB] remove optSetA
tag @e[name=w,tag=optSetB] remove optSetB

tag @e[name=w,tag=optSetA,tag=noRubberBand] add optSetB
execute if entity @e[name=w,tag=optSetB] run data merge block 1596 96 383 {Text1:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"function sprint_racer:game_logic/0/options_signs/ai_rubberbanding\"}}",Text2:"{\"text\":\"RUBBERBANDING\",\"bold\":true,\"color\":\"black\"}",Text3:"{\"text\":\"[ON]\",\"color\":\"blue\"}"}
execute if entity @e[name=w,tag=optSetB] run tag @e[name=w] remove noRubberBand
execute if entity @e[name=w,tag=optSetB] run tellraw @a[tag=!minChat] ["",{"text":"[OPTIONS] AI rubber-banding is enabled. AI opponents will speed up or slow down in an effort to keep races competitive.","color":"green"}]
execute if entity @e[name=w,tag=optSetB] run playsound minecraft:block.note_block.hat master @a
tag @e[name=w,tag=optSetB] remove optSetA
tag @e[name=w,tag=optSetB] remove optSetB

tag @e[name=w,tag=optSetA] remove optSetA
tag @e[name=w] remove optSetB

tag @s remove clickSign