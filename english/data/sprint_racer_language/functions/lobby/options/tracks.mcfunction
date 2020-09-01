tellraw @a[tag=!minChat] ["",{"text":" "}]

tag @e[name=w] remove optSetB
tag @e[name=w] add optSetA

execute if entity @e[name=w,tag=optBattle] run scoreboard players set @e[name=w] roundNumber 5

tag @e[name=w,tag=optSetA,tag=optVote] add optSetB
execute if entity @e[name=w,tag=optSetB] run data merge block 1574 89 427 {Text1:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"function sprint_racer:game_logic/0/options_signs/tracks\"}}",Text2:"{\"text\":\"TRACKS:\",\"bold\":true,\"color\":\"white\"}",Text3:"{\"text\":\"[RANDOM]\",\"color\":\"yellow\"}"}
execute if entity @e[name=w,tag=optSetB] run tag @e[name=w] add optRandom
execute if entity @e[name=w,tag=optSetB] run tag @e[name=w] remove optVote
execute if entity @e[name=w,tag=optSetB] run tag @e[name=w] remove optChoose
execute if entity @e[name=w,tag=optSetB] run tellraw @a[tag=!minChat] ["",{"text":"[OPTIONS] Track selection set to random","color":"green"}]
execute if entity @e[name=w,tag=optSetB,scores={gameState=0}] run function sprint_racer:game_logic/0/_initialize
execute if entity @e[name=w,tag=optSetB] run playsound minecraft:block.note_block.hat master @a
execute if entity @e[name=w,tag=optSetB] run function sprint_racer_language:lobby/reset_lobby
tag @e[name=w,tag=optSetB] remove optSetA
tag @e[name=w,tag=optSetB] remove optSetB

tag @e[name=w,tag=optSetA,tag=optRandom] add optSetB
execute if entity @e[name=w,tag=optSetB] run data merge block 1574 89 427 {Text1:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"function sprint_racer:game_logic/0/options_signs/tracks\"}}",Text2:"{\"text\":\"TRACKS:\",\"bold\":true,\"color\":\"white\"}",Text3:"{\"text\":\"[CHOOSE]\",\"color\":\"yellow\"}"}
execute if entity @e[name=w,tag=optSetB] run tag @e[name=w] add optChoose
execute if entity @e[name=w,tag=optSetB] run tag @e[name=w] remove optVote
execute if entity @e[name=w,tag=optSetB] run tag @e[name=w] remove optRandom
execute if entity @e[name=w,tag=optSetB] run tellraw @a[tag=!minChat] ["",{"text":"[OPTIONS] Track selection set to player choice","color":"green"}]
execute if entity @e[name=w,tag=optSetB] run clear @a written_book{Tags:["notitle"]}
execute if entity @e[name=w,tag=optSetB] run scoreboard players set @e[name=w] roundNumber 1
execute if entity @e[name=w,tag=optSetB] run scoreboard players set @e[name=w] roundNumber2 1
execute if entity @e[name=w,tag=optSetB] run playsound minecraft:block.note_block.hat master @a
execute if entity @e[name=w,tag=optSetB] run function sprint_racer:game_logic/0/update_round_display
tag @e[name=w,tag=optSetB] remove optSetA
tag @e[name=w,tag=optSetB] remove optSetB

tag @e[name=w,tag=optSetA,tag=optChoose] add optSetB
execute if entity @e[name=w,tag=optSetB] run data merge block 1574 89 427 {Text1:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"function sprint_racer:game_logic/0/options_signs/tracks\"}}",Text2:"{\"text\":\"TRACKS:\",\"bold\":true,\"color\":\"white\"}",Text3:"{\"text\":\"[VOTE]\",\"color\":\"yellow\"}"}
execute if entity @e[name=w,tag=optSetB] run tag @e[name=w] add optVote
execute if entity @e[name=w,tag=optSetB] run tag @e[name=w] remove optRandom
execute if entity @e[name=w,tag=optSetB] run tag @e[name=w] remove optChoose
execute if entity @e[name=w,tag=optSetB] run tellraw @a[tag=!minChat] ["",{"text":"[OPTIONS] Track selection set to vote","color":"green"}]
execute if entity @e[name=w,tag=optSetB] run scoreboard players set @e[name=w] roundNumber 1
execute if entity @e[name=w,tag=optSetB,scores={gameState=0}] run function sprint_racer:game_logic/0/_initialize
execute if entity @e[name=w,tag=optSetB,scores={gameState=0}] run function sprint_racer_language:lobby/reset_lobby
execute if entity @e[name=w,tag=optSetB] run playsound minecraft:block.note_block.hat master @a
tag @e[name=w,tag=optSetB] remove optSetA
tag @e[name=w,tag=optSetB] remove optSetB

#missing tags, give new one
tag @e[name=w,tag=optSetA] add optVote
tag @e[name=w,tag=optSetA] remove optSetA

tag @s remove clickSign

function sprint_racer:game_logic/0/sidebar/__index_main

tag @e[name=w] remove choosingTrack
tag @e[name=w] remove optSetB