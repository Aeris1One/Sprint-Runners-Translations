data merge block 1583 95 378 {Text1:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"function sprint_racer:game_logic/0/options_signs/add_20s\"}}",Text2:"{\"text\":\"LOBBY TIME\",\"bold\":true,\"color\":\"black\"}",Text3:"{\"text\":\"[ADD 20s]\",\"bold\":false,\"color\":\"dark_purple\"}"}
data merge block 1584 95 378 {Text1:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"function sprint_racer:game_logic/0/options_signs/subtract_20s\"}}",Text2:"{\"text\":\"LOBBY TIME:\",\"bold\":true,\"color\":\"black\"}",Text3:"{\"text\":\"[SUBTRACT 20s]\",\"color\":\"dark_purple\"}"}
data merge block 1586 95 378 {Text1:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"function sprint_racer:game_logic/0/options_signs/set_5s\"}}",Text2:"{\"text\":\"LOBBY TIME:\",\"bold\":true,\"color\":\"black\"}",Text3:"{\"text\":\"[SET TO 5s]\",\"color\":\"dark_purple\"}"}
data merge block 1587 95 378 {Text1:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"function sprint_racer:game_logic/0/options_signs/reset_timer\"}}",Text2:"{\"text\":\"LOBBY TIME:\",\"bold\":true,\"color\":\"black\"}",Text3:"{\"text\":\"[RESET TIME]\",\"color\":\"dark_purple\"}"}

tag @e[name=w] add clearImpulse
scoreboard players set @e[name=w] oTimer 0
scoreboard players add @e[name=w,scores={gameTime=1..979}] gameTime 20
scoreboard players set @e[name=w,scores={gameTime=980..}] gameTime 999
scoreboard players add @e[name=w,scores={voteTime=1..100}] voteTime 20
execute if entity @e[name=w,scores={voteTime=0}] store result bossbar minecraft:menutimer max run scoreboard players get @e[name=w,limit=1] gameTime

execute as @a[tag=playing] at @s run playsound minecraft:block.note_block.hat master @s

tag @s remove clickSign