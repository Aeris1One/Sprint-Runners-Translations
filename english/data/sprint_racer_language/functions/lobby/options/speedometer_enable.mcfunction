tellraw @a[tag=!minChat] ["",{"text":" "}]

tag @e[name=w] remove optSetB
tag @e[name=w] add optSetA

tag @e[name=w,tag=optSetA,tag=!nospeedo] add optSetB
execute if entity @e[name=w,tag=optSetB] run data merge block 1569 88 383 {Text1:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"function sprint_racer:game_logic/0/options_signs/speedometer_enable\"}}",Text2:"{\"text\":\"SPEEDOMETER\",\"bold\":true,\"color\":\"black\"}",Text3:"{\"text\":\"[OFF]\",\"bold\":false,\"color\":\"dark_blue\"}"}
execute if entity @e[name=w,tag=optSetB] run tag @e[name=w] add nospeedo
execute if entity @e[name=w,tag=optSetB] run bossbar set minecraft:speedo players
execute if entity @e[name=w,tag=optSetB] run tellraw @a[tag=!minChat] ["",{"text":"[OPTIONS] Bossbar speedometer is disabled","color":"red"}]
execute if entity @e[name=w,tag=optSetB] run playsound minecraft:block.note_block.hat master @a
tag @e[name=w,tag=optSetB] remove optSetA
tag @e[name=w,tag=optSetB] remove optSetB

tag @e[name=w,tag=optSetA,tag=nospeedo] add optSetB
execute if entity @e[name=w,tag=optSetB] run data merge block 1569 88 383 {Text1:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"function sprint_racer:game_logic/0/options_signs/speedometer_enable\"}}",Text2:"{\"text\":\"SPEEDOMETER\",\"bold\":true,\"color\":\"black\"}",Text3:"{\"text\":\"[ON]\",\"bold\":false,\"color\":\"dark_blue\"}"}
execute if entity @e[name=w,tag=optSetB] run tag @e[name=w] remove nospeedo
execute if entity @e[name=w,tag=optSetB] run tellraw @a[tag=!minChat] ["",{"text":"[OPTIONS] Bossbar speedometer is enabled","color":"green"}]
execute if entity @e[name=w,tag=optSetB] run playsound minecraft:block.note_block.hat master @a
tag @e[name=w,tag=optSetB] remove optSetA
tag @e[name=w,tag=optSetB] remove optSetB


#missing tags, give new one
tag @e[name=w,tag=optSetA] add mps
tag @e[name=w,tag=optSetA] remove optSetA

tag @e[name=w] remove optSetB

tellraw @a[tag=!minChat] ["",{"text":"Note: Bossbar speedometer is only visible in singleplayer!","color":"gray"}]

tag @s remove clickSign