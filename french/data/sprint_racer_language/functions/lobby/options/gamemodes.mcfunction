tellraw @a[tag=!minChat] ["",{"text":" "}]

tag @e[name=w] remove optSetB
tag @e[name=w] add optSetA

tag @e[name=w,tag=optSetA,tag=optRace] add optSetB
execute if entity @e[name=w,tag=optSetB] run data merge block 1574 89 426 {Text1:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"function sprint_racer:game_logic/0/options_signs/gamemodes\"}}",Text2:"{\"text\":\"GAMEMODES:\",\"bold\":true,\"color\":\"white\"}",Text3:"{\"text\":\"[BATTLE ONLY]\",\"color\":\"yellow\"}"}
execute if entity @e[name=w,tag=optSetB] run tag @e[name=w] add optBattle
execute if entity @e[name=w,tag=optSetB] run tag @e[name=w] remove optRace
execute if entity @e[name=w,tag=optSetB] run tag @e[name=w] remove optRnB
execute if entity @e[name=w,tag=optSetB] run tellraw @a[tag=!minChat] ["",{"text":"[OPTIONS] Gamemode set to battle only","color":"green"}]
execute if entity @e[name=w,tag=optSetB,tag=!optChoose] run scoreboard players set @e[name=w] roundNumber 5
execute if entity @e[name=w,tag=optSetB,tag=optChoose] run scoreboard players set @e[name=w] roundNumber 1
execute if entity @e[name=w,tag=optSetB] run scoreboard players set @e[name=w] roundNumber2 1
execute if entity @e[name=w,tag=optSetB] run playsound minecraft:block.note_block.hat master @a
tag @e[name=w,tag=optSetB] remove optSetA
tag @e[name=w,tag=optSetB] remove optSetB

tag @e[name=w,tag=optSetA,tag=optBattle] add optSetB
execute if entity @e[name=w,tag=optSetB] run data merge block 1574 89 426 {Text1:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"function sprint_racer:game_logic/0/options_signs/gamemodes\"}}",Text2:"{\"text\":\"GAMEMODES:\",\"bold\":true,\"color\":\"white\"}",Text3:"{\"text\":\"[RACE & BATTLE]\",\"color\":\"yellow\"}"}
execute if entity @e[name=w,tag=optSetB] run tag @e[name=w] add optRnB
execute if entity @e[name=w,tag=optSetB] run tag @e[name=w] remove optBattle
execute if entity @e[name=w,tag=optSetB] run tag @e[name=w] remove optRace
execute if entity @e[name=w,tag=optSetB] run tellraw @a[tag=!minChat] ["",{"text":"[OPTIONS] Gamemode set to race & battle mix","color":"green"}]
execute if entity @e[name=w,tag=optSetB] run scoreboard players set @e[name=w] roundNumber 1
execute if entity @e[name=w,tag=optSetB] run playsound minecraft:block.note_block.hat master @a
tag @e[name=w,tag=optSetB] remove optSetA
tag @e[name=w,tag=optSetB] remove optSetB

tag @e[name=w,tag=optSetA,tag=optRnB] add optSetB
execute if entity @e[name=w,tag=optSetB] run data merge block 1574 89 426 {Text1:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"function sprint_racer:game_logic/0/options_signs/gamemodes\"}}",Text2:"{\"text\":\"GAMEMODES:\",\"bold\":true,\"color\":\"white\"}",Text3:"{\"text\":\"[RACE ONLY]\",\"color\":\"yellow\"}"}
execute if entity @e[name=w,tag=optSetB] run tag @e[name=w] add optRace
execute if entity @e[name=w,tag=optSetB] run tag @e[name=w] remove optRnB
execute if entity @e[name=w,tag=optSetB] run tag @e[name=w] remove optBattle
execute if entity @e[name=w,tag=optSetB] run tellraw @a[tag=!minChat] ["",{"text":"[OPTIONS] Gamemode set to race only","color":"green"}]
execute if entity @e[name=w,tag=optSetB] run scoreboard players set @e[name=w] roundNumber 1
execute if entity @e[name=w,tag=optSetB] run playsound minecraft:block.note_block.hat master @a
tag @e[name=w,tag=optSetB] remove optSetA
tag @e[name=w,tag=optSetB] remove optSetB

#missing tags, give new one
tag @e[name=w,tag=optSetA] add optRnB
tag @e[name=w,tag=optSetA] remove optSetA

tag @e[name=w] remove optSetB

tag @s remove clickSign

function sprint_racer:game_logic/0/sidebar/__index_main


execute if entity @e[name=w,scores={gameState=0}] run tag @e[name=w] add noskip2next
execute if entity @e[name=w,scores={gameState=0}] run function sprint_racer:game_logic/0/_initialize
execute if entity @e[name=w,scores={gameState=0}] run function sprint_racer_language:lobby/reset_lobby