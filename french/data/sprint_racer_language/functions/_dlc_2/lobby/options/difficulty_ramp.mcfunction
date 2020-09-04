tellraw @a[tag=!minChat] ["",{"text":" "}]

scoreboard players add @e[name=w,limit=1,type=armor_stand] difficultyRamp 0

tag @e[name=w] remove optSetB
tag @e[name=w] add optSetA

tag @e[name=w,tag=optSetA,scores={difficultyRamp=1..}] add optSetB
execute if entity @e[name=w,tag=optSetB] run data merge block 1593 89 385 {Text1:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"function sprint_racer:game_logic/0/options_signs/difficulty_ramp\"}}",Text2:"{\"text\":\"DIFFICULTY\",\"bold\":true,\"color\":\"black\"}",Text3:"{\"text\":\"RAMP-UP\",\"bold\":true,\"color\":\"black\"}",Text4:"{\"text\":\"[OFF]\",\"color\":\"gold\"}"}
execute if entity @e[name=w,tag=optSetB] run scoreboard players set @e[name=w,limit=1,type=armor_stand] difficultyRamp 0
execute if entity @e[name=w,tag=optSetB] run tellraw @a[tag=!minChat] ["",{"text":"[OPTIONS] Difficulty ramp-up is disabled. Hard tracks will always be available.","color":"green"}]
execute if entity @e[name=w,tag=optSetB] run playsound minecraft:block.note_block.hat master @a
execute if entity @e[name=w,tag=optSetB] run scoreboard players add @a maturity 1000
tag @e[name=w,tag=optSetB] remove optSetA
tag @e[name=w,tag=optSetB] remove optSetB

tag @e[name=w,tag=optSetA,scores={difficultyRamp=..0}] add optSetB
execute if entity @e[name=w,tag=optSetB] run data merge block 1593 89 385 {Text1:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"function sprint_racer:game_logic/0/options_signs/difficulty_ramp\"}}",Text2:"{\"text\":\"DIFFICULTY\",\"bold\":true,\"color\":\"black\"}",Text3:"{\"text\":\"RAMP-UP\",\"bold\":true,\"color\":\"black\"}",Text4:"{\"text\":\"[ON]\",\"color\":\"gold\"}"}
execute if entity @e[name=w,tag=optSetB] run scoreboard players set @e[name=w,limit=1,type=armor_stand] difficultyRamp 1
execute if entity @e[name=w,tag=optSetB] run tellraw @a[tag=!minChat] ["",{"text":"[OPTIONS] Difficulty ramp-up is enabled. The game will start by offering easier tracks and will gradually introduce harder tracks.","color":"green"}]
execute if entity @e[name=w,tag=optSetB] run playsound minecraft:block.note_block.hat master @a
execute if entity @e[name=w,tag=optSetB] run scoreboard players remove @a[scores={maturity=1000..}] maturity 1000
tag @e[name=w,tag=optSetB] remove optSetA
tag @e[name=w,tag=optSetB] remove optSetB

tag @e[name=w,tag=optSetA] remove optSetA
tag @e[name=w] remove optSetB

tag @s remove clickSign