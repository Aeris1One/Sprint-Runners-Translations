tellraw @a[tag=!minChat] ["",{"text":" "}]

tag @e[name=w] remove optSetB
tag @e[name=w] add optSetA

tag @e[name=w,tag=optSetA,tag=optNoItems] add optSetB
execute if entity @e[name=w,tag=optSetB] run data merge block 1574 89 428 {Text1:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"function sprint_racer:game_logic/0/options_signs/items\"}}",Text2:"{\"text\":\"ITEMS:\",\"bold\":true,\"color\":\"white\"}",Text3:"{\"text\":\"[ALWAYS ON]\",\"color\":\"yellow\"}"}
execute if entity @e[name=w,tag=optSetB] run data merge block 1568 90 450 {Text1:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"function sprint_racer:game_logic/0/options_signs/items\"}}",Text2:"{\"text\":\"ITEMS:\",\"bold\":true,\"color\":\"black\"}",Text3:"{\"text\":\"[ALWAYS ON]\",\"color\":\"dark_blue\"}"}
execute if entity @e[name=w,tag=optSetB] run tag @e[name=w] add optItems
execute if entity @e[name=w,tag=optSetB] run tag @e[name=w] remove optItemsB
execute if entity @e[name=w,tag=optSetB] run tag @e[name=w] remove optNoItems
execute if entity @e[name=w,tag=optSetB] run tellraw @a[tag=!minChat] ["",{"text":"[OPTIONS] Items are enabled for all gamemodes","color":"green"}]
execute if entity @e[name=w,tag=optSetB] run playsound minecraft:block.note_block.hat master @a
tag @e[name=w,tag=optSetB] remove optSetA
tag @e[name=w,tag=optSetB] remove optSetB

tag @e[name=w,tag=optSetA,tag=optItems] add optSetB
execute if entity @e[name=w,tag=optSetB] run data merge block 1574 89 428 {Text1:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"function sprint_racer:game_logic/0/options_signs/items\"}}",Text2:"{\"text\":\"ITEMS:\",\"bold\":true,\"color\":\"white\"}",Text3:"{\"text\":\"[BATTLE ONLY]\",\"color\":\"yellow\"}"}
execute if entity @e[name=w,tag=optSetB] run data merge block 1568 90 450 {Text1:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"function sprint_racer:game_logic/0/options_signs/items\"}}",Text2:"{\"text\":\"ITEMS:\",\"bold\":true,\"color\":\"black\"}",Text3:"{\"text\":\"[BATTLE ONLY]\",\"color\":\"dark_blue\"}"}
execute if entity @e[name=w,tag=optSetB] run tag @e[name=w] add optItemsB
execute if entity @e[name=w,tag=optSetB] run tag @e[name=w] remove optItems
execute if entity @e[name=w,tag=optSetB] run tag @e[name=w] remove optNoItems
execute if entity @e[name=w,tag=optSetB] run tellraw @a[tag=!minChat] ["",{"text":"[OPTIONS] Items are enabled in battle mode, disabled in race mode","color":"green"}]
execute if entity @e[name=w,tag=optSetB] run playsound minecraft:block.note_block.hat master @a
tag @e[name=w,tag=optSetB] remove optSetA
tag @e[name=w,tag=optSetB] remove optSetB

tag @e[name=w,tag=optSetA,tag=optItemsB] add optSetB
execute if entity @e[name=w,tag=optSetB] run data merge block 1574 89 428 {Text1:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"function sprint_racer:game_logic/0/options_signs/items\"}}",Text2:"{\"text\":\"ITEMS:\",\"bold\":true,\"color\":\"white\"}",Text3:"{\"text\":\"[ALWAYS OFF]\",\"color\":\"yellow\"}"}
execute if entity @e[name=w,tag=optSetB] run data merge block 1568 90 450 {Text1:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"function sprint_racer:game_logic/0/options_signs/items\"}}",Text2:"{\"text\":\"ITEMS:\",\"bold\":true,\"color\":\"black\"}",Text3:"{\"text\":\"[ALWAYS OFF]\",\"color\":\"dark_blue\"}"}
execute if entity @e[name=w,tag=optSetB] run tag @e[name=w] add optNoItems
execute if entity @e[name=w,tag=optSetB] run tag @e[name=w] remove optItems
execute if entity @e[name=w,tag=optSetB] run tag @e[name=w] remove optItemsB
execute if entity @e[name=w,tag=optSetB] run tellraw @a[tag=!minChat] ["",{"text":"[OPTIONS] Items are disabled for all gamemodes","color":"green"}]
execute if entity @e[name=w,tag=optSetB] run playsound minecraft:block.note_block.hat master @a
tag @e[name=w,tag=optSetB] remove optSetA
tag @e[name=w,tag=optSetB] remove optSetB

#missing tags, give new one
tag @e[name=w,tag=optSetA] add optItems
tag @e[name=w,tag=optSetA] remove optSetA

tag @e[name=w] remove optSetB

tag @s remove clickSign