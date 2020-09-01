tellraw @a[tag=!minChat] ["",{"text":" "}]

data merge block 1592 94 373 {Text1:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"function sprint_racer:game_logic/0/options_signs/def_time_add\"}}",Text2:"{\"text\":\"DEFAULT TIME\",\"bold\":true,\"color\":\"white\"}",Text3:"{\"text\":\"[ADD 5s]\",\"bold\":false,\"color\":\"yellow\"}"}
data merge block 1592 94 372 {Text1:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"function sprint_racer:game_logic/0/options_signs/def_time\"}}",Text2:"{\"text\":\"DEFAULT TIME:\",\"bold\":true,\"color\":\"white\"}",Text3:"{\"text\":\"[SET TO 30s]\",\"color\":\"yellow\"}"}
data merge block 1592 94 371 {Text1:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"function sprint_racer:game_logic/0/options_signs/def_time_remove\"}}",Text2:"{\"text\":\"DEFAULT TIME:\",\"bold\":true,\"color\":\"white\"}",Text3:"{\"text\":\"[REMOVE 5s]\",\"color\":\"yellow\"}"}

scoreboard players add @e[name=w,scores={defLobbyTime=..235}] defLobbyTime 5
tellraw @a[tag=!minChat] ["",{"text":"[OPTIONS] Default lobby time set to ","color":"green"},{"score":{"name":"@e[name=w,limit=1]","objective":"defLobbyTime"},"color":"green"},{"text":"s","color":"green"}]
tellraw @s[tag=minChat] ["",{"text":"[OPTIONS] Default lobby time set to ","color":"green"},{"score":{"name":"@e[name=w,limit=1]","objective":"defLobbyTime"},"color":"green"},{"text":"s","color":"green"}]

execute at @s run playsound minecraft:block.note_block.hat master @s
execute at @s as @a[tag=!minChat,distance=1..] run playsound minecraft:block.note_block.hat master @s

tag @s remove clickSign