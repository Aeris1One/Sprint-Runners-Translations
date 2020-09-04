tellraw @a[tag=!minChat] ["",{"text":" "}]

tag @e[name=w] remove optSetB
tag @e[name=w] add optSetA

tag @e[name=w,tag=optSetA,tag=moretick] add optSetB
execute if entity @e[name=w,tag=optSetB] run data merge block 1628 88 387 {Text1:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"function sprint_racer:game_logic/0/options_signs/performance\"}}",Text2:"{\"text\":\"PERFORMANCE:\",\"bold\":true,\"color\":\"black\"}",Text3:"{\"text\":\"[SMART]\",\"color\":\"gold\"}"}
execute if entity @e[name=w,tag=optSetB] run tag @e[name=w] remove halftick
execute if entity @e[name=w,tag=optSetB] run tag @e[name=w] remove moretick
execute if entity @e[name=w,tag=optSetB] run tag @e[name=w] add autotick
execute if entity @e[name=w,tag=optSetB] run tellraw @a[tag=!minChat] ["",{"text":"[OPTIONS] Map performance set to \"smart\"","color":"green"},{"text":" "},{"text":"[?]","color":"yellow","bold":"true","hoverEvent":{"action":"show_text","value":"Datapack performance settings\nadjust automatically depending on\nplayer count."}}]
execute if entity @e[name=w,tag=optSetB] run playsound minecraft:block.note_block.hat master @a
tag @e[name=w,tag=optSetB] remove optSetA
tag @e[name=w,tag=optSetB] remove optSetB

tag @e[name=w,tag=optSetA,tag=autotick] add optSetB
execute if entity @e[name=w,tag=optSetB] run data merge block 1628 88 387 {Text1:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"function sprint_racer:game_logic/0/options_signs/performance\"}}",Text2:"{\"text\":\"PERFORMANCE:\",\"bold\":true,\"color\":\"black\"}",Text3:"{\"text\":\"[BALANCED]\",\"color\":\"gold\"}"}
execute if entity @e[name=w,tag=optSetB] run tag @e[name=w] remove halftick
execute if entity @e[name=w,tag=optSetB] run tag @e[name=w] remove moretick
execute if entity @e[name=w,tag=optSetB] run tag @e[name=w] remove autotick
execute if entity @e[name=w,tag=optSetB] run tellraw @a[tag=!minChat] ["",{"text":"[OPTIONS] Map performance set to \"balanced\"","color":"green"},{"text":" "},{"text":"[?]","color":"yellow","bold":"true","hoverEvent":{"action":"show_text","value":"Datapack operates at 20Hz.\nStrikes a good balance between \nperformance and quality."}}]
execute if entity @e[name=w,tag=optSetB] run playsound minecraft:block.note_block.hat master @a
tag @e[name=w,tag=optSetB] remove optSetA
tag @e[name=w,tag=optSetB] remove optSetB

tag @e[name=w,tag=optSetA,tag=!moretick,tag=!halftick,tag=!autotick] add optSetB
execute if entity @e[name=w,tag=optSetB] run data merge block 1628 88 387 {Text1:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"function sprint_racer:game_logic/0/options_signs/performance\"}}",Text2:"{\"text\":\"PERFORMANCE:\",\"bold\":true,\"color\":\"black\"}",Text3:"{\"text\":\"[FASTER]\",\"color\":\"gold\"}"}
execute if entity @e[name=w,tag=optSetB] run tag @e[name=w] add halftick
execute if entity @e[name=w,tag=optSetB] run tag @e[name=w] remove moretick
execute if entity @e[name=w,tag=optSetB] run tellraw @a[tag=!minChat] ["",{"text":"[OPTIONS] Map performance set to \"faster\"","color":"green"},{"text":" "},{"text":"[?]","color":"yellow","bold":"true","hoverEvent":{"action":"show_text","value":"Datapack operates at 10Hz instead of 20Hz.\nThis improves server performance\nat the cost of responsiveness."}}]
execute if entity @e[name=w,tag=optSetB] run playsound minecraft:block.note_block.hat master @a
tag @e[name=w,tag=optSetB] remove optSetA
tag @e[name=w,tag=optSetB] remove optSetB

tag @e[name=w,tag=optSetA,tag=halftick] add optSetB
execute if entity @e[name=w,tag=optSetB] run data merge block 1628 88 387 {Text1:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"function sprint_racer:game_logic/0/options_signs/performance\"}}",Text2:"{\"text\":\"PERFORMANCE:\",\"bold\":true,\"color\":\"black\"}",Text3:"{\"text\":\"[QUALITY+]\",\"color\":\"gold\"}"}
execute if entity @e[name=w,tag=optSetB] run tag @e[name=w] remove halftick
execute if entity @e[name=w,tag=optSetB] run tag @e[name=w] add moretick
execute if entity @e[name=w,tag=optSetB] run tellraw @a[tag=!minChat] ["",{"text":"[OPTIONS] Map performance set to \"quality+\"","color":"green"},{"text":" "},{"text":"[?]","color":"yellow","bold":"true","hoverEvent":{"action":"show_text","value":"Datapack operates at 20Hz.\nSome animations are smoothed out \nand position calculation is \ninstantaneous during races. \nThis is more taxing on the server!"}}]
execute if entity @e[name=w,tag=optSetB] run playsound minecraft:block.note_block.hat master @a
tag @e[name=w,tag=optSetB] remove optSetA
tag @e[name=w,tag=optSetB] remove optSetB

#missing tags, give new one
tag @e[name=w,tag=optSetA] add autotick
tag @e[name=w,tag=optSetA] remove optSetA

tag @e[name=w] remove optSetB

tag @s remove clickSign