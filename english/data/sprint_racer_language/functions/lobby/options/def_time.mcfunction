tellraw @a[tag=!minChat] ["",{"text":" "}]

data merge block 1592 94 373 {Text1:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"function sprint_racer:game_logic/0/options_signs/def_time_add\"}}",Text2:"{\"text\":\"DEFAULT TIME\",\"bold\":true,\"color\":\"white\"}",Text3:"{\"text\":\"[ADD 5s]\",\"bold\":false,\"color\":\"yellow\"}"}
data merge block 1592 94 372 {Text1:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"function sprint_racer:game_logic/0/options_signs/def_time\"}}",Text2:"{\"text\":\"DEFAULT TIME:\",\"bold\":true,\"color\":\"white\"}",Text3:"{\"text\":\"[SET TO 30s]\",\"color\":\"yellow\"}"}
data merge block 1592 94 371 {Text1:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"function sprint_racer:game_logic/0/options_signs/def_time_remove\"}}",Text2:"{\"text\":\"DEFAULT TIME:\",\"bold\":true,\"color\":\"white\"}",Text3:"{\"text\":\"[REMOVE 5s]\",\"color\":\"yellow\"}"}

scoreboard players set @e[name=w] defLobbyTime 30
tellraw @a[tag=!minChat] ["",{"text":"[OPTIONS] Default lobby time set to 30s (standard)","color":"green"}]
tellraw @s[tag=minChat] ["",{"text":"[OPTIONS] Default lobby time set to 30s (standard)","color":"green"}]

execute at @s run playsound minecraft:block.note_block.hat master @s
execute at @s as @a[tag=!minChat,distance=1..] run playsound minecraft:block.note_block.hat master @s

tag @s remove clickSign