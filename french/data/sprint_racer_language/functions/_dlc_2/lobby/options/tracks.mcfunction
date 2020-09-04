tellraw @a[tag=!minChat] ["",{"text":" "}]

tag @e[name=w] remove optSetB
tag @e[name=w] add optSetA

execute if entity @e[name=w,tag=optBattle] run scoreboard players set @e[name=w] roundNumber 5

tag @e[name=w,tag=optSetA,tag=optVote,tag=!optRoulette] add optSetB
execute if entity @e[name=w,tag=optSetB] run data merge block 1574 89 427 {Text1:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"function sprint_racer:game_logic/0/options_signs/tracks\"}}",Text2:"{\"text\":\"TRACKS:\",\"bold\":true,\"color\":\"white\"}",Text3:"{\"text\":\"[RANDOM]\",\"color\":\"yellow\"}"}
execute if entity @e[name=w,tag=optSetB] run tag @e[name=w] add optRandom
execute if entity @e[name=w,tag=optSetB] run tag @e[name=w] remove optVote
execute if entity @e[name=w,tag=optSetB] run tag @e[name=w] remove optRoulette
execute if entity @e[name=w,tag=optSetB] run tag @e[name=w] remove optInOrder
execute if entity @e[name=w,tag=optSetB] run tag @e[name=w] remove optChoose
execute if entity @e[name=w,tag=optSetB] run tellraw @a[tag=!minChat] ["",{"text":"[OPTIONS] Track selection set to 'random'","color":"green"},{"text":" "},{"text":"[?]","color":"yellow","bold":"true","hoverEvent":{"action":"show_text","value":"Random tracks will be chosen.\nThis will also cut out the lobby time between games.\n(No vote, just race!)"}}]
execute if entity @e[name=w,tag=optSetB,scores={gameState=0}] run function sprint_racer:game_logic/0/_initialize
execute if entity @e[name=w,tag=optSetB] run playsound minecraft:block.note_block.hat master @a
execute if entity @e[name=w,tag=optSetB] run function sprint_racer_language:lobby/reset_lobby
tag @e[name=w,tag=optSetB] remove optSetA
tag @e[name=w,tag=optSetB] remove optSetB

tag @e[name=w,tag=optSetA,tag=optRandom,tag=!optInOrder] add optSetB
execute if entity @e[name=w,tag=optSetB] run data merge block 1574 89 427 {Text1:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"function sprint_racer:game_logic/0/options_signs/tracks\"}}",Text2:"{\"text\":\"TRACKS:\",\"bold\":true,\"color\":\"white\"}",Text3:"{\"text\":\"[IN ORDER]\",\"color\":\"yellow\"}"}
execute if entity @e[name=w,tag=optSetB] run tag @e[name=w] remove optChoose
execute if entity @e[name=w,tag=optSetB] run tag @e[name=w] add optInOrder
execute if entity @e[name=w,tag=optSetB] run tag @e[name=w] remove optVote
execute if entity @e[name=w,tag=optSetB] run tag @e[name=w] remove optRoulette
execute if entity @e[name=w,tag=optSetB] run tag @e[name=w] add optRandom
execute if entity @e[name=w,tag=optSetB] run tellraw @a[tag=!minChat] ["",{"text":"[OPTIONS] Track selection set to 'in order'","color":"green"},{"text":" "},{"text":"[?]","color":"yellow","bold":"true","hoverEvent":{"action":"show_text","value":"Every track will be played in a set sequence with no randomization.\nThis will also cut out the lobby time between games.\n(No vote, just race!)"}}]
execute if entity @e[name=w,tag=optSetB] run playsound minecraft:block.note_block.hat master @a
execute if entity @e[name=w,tag=optSetB] run function sprint_racer:game_logic/0/update_round_display
tag @e[name=w,tag=optSetB] remove optSetA
tag @e[name=w,tag=optSetB] remove optSetB

tag @e[name=w,tag=optSetA,tag=optRandom,tag=optInOrder] add optSetB
execute if entity @e[name=w,tag=optSetB] run data merge block 1574 89 427 {Text1:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"function sprint_racer:game_logic/0/options_signs/tracks\"}}",Text2:"{\"text\":\"TRACKS:\",\"bold\":true,\"color\":\"white\"}",Text3:"{\"text\":\"[CHOOSE]\",\"color\":\"yellow\"}"}
execute if entity @e[name=w,tag=optSetB] run tag @e[name=w] add optChoose
execute if entity @e[name=w,tag=optSetB] run tag @e[name=w] remove optInOrder
execute if entity @e[name=w,tag=optSetB] run tag @e[name=w] remove optVote
execute if entity @e[name=w,tag=optSetB] run tag @e[name=w] remove optRoulette
execute if entity @e[name=w,tag=optSetB] run tag @e[name=w] remove optRandom
execute if entity @e[name=w,tag=optSetB] run tellraw @a[tag=!minChat] ["",{"text":"[OPTIONS] Track selection set to 'player choice'","color":"green"},{"text":" "},{"text":"[?]","color":"yellow","bold":"true","hoverEvent":{"action":"show_text","value":"Players are sent to a giant world map containing every track.\nAny player can select any track, race or battle.\nThis overrides your 'gamemodes' setting!"}}]
execute if entity @e[name=w,tag=optSetB] run clear @a written_book{Tags:["notitle"]}
#execute if entity @e[name=w,tag=optSetB] run scoreboard players set @e[name=w] roundNumber 1
#execute if entity @e[name=w,tag=optSetB] run scoreboard players set @e[name=w] roundNumber2 1
execute if entity @e[name=w,tag=optSetB] run playsound minecraft:block.note_block.hat master @a
execute if entity @e[name=w,tag=optSetB] run function sprint_racer:game_logic/0/update_round_display
tag @e[name=w,tag=optSetB] remove optSetA
tag @e[name=w,tag=optSetB] remove optSetB

tag @e[name=w,tag=optSetA,tag=optChoose] add optSetB
execute if entity @e[name=w,tag=optSetB] run data merge block 1574 89 427 {Text1:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"function sprint_racer:game_logic/0/options_signs/tracks\"}}",Text2:"{\"text\":\"TRACKS:\",\"bold\":true,\"color\":\"white\"}",Text3:"{\"text\":\"[ROULETTE]\",\"color\":\"yellow\"}"}
execute if entity @e[name=w,tag=optSetB] run tag @e[name=w] add optVote
execute if entity @e[name=w,tag=optSetB] run tag @e[name=w] add optRoulette
execute if entity @e[name=w,tag=optSetB] run tag @e[name=w] remove optRandom
execute if entity @e[name=w,tag=optSetB] run tag @e[name=w] remove optInOrder
execute if entity @e[name=w,tag=optSetB] run tag @e[name=w] remove optChoose
execute if entity @e[name=w,tag=optSetB] run tellraw @a[tag=!minChat] ["",{"text":"[OPTIONS] Track selection set to 'roulette'","color":"green"},{"text":" "},{"text":"[?]","color":"yellow","bold":"true","hoverEvent":{"action":"show_text","value":"All players can choose between 3 random track options.\nOnly ONE player (chosen randomly) decides the track.\nThis is the system used by a popular kart racing game you probably know :)"}}]
#execute if entity @e[name=w,tag=optSetB] run scoreboard players set @e[name=w] roundNumber 1
execute if entity @e[name=w,tag=optSetB,scores={gameState=0}] run function sprint_racer:game_logic/0/_initialize
execute if entity @e[name=w,tag=optSetB,scores={gameState=0}] run function sprint_racer_language:lobby/reset_lobby
execute if entity @e[name=w,tag=optSetB] run playsound minecraft:block.note_block.hat master @a
tag @e[name=w,tag=optSetB] remove optSetA
tag @e[name=w,tag=optSetB] remove optSetB

tag @e[name=w,tag=optSetA,tag=optVote,tag=optRoulette] add optSetB
execute if entity @e[name=w,tag=optSetB] run data merge block 1574 89 427 {Text1:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"function sprint_racer:game_logic/0/options_signs/tracks\"}}",Text2:"{\"text\":\"TRACKS:\",\"bold\":true,\"color\":\"white\"}",Text3:"{\"text\":\"[VOTE]\",\"color\":\"yellow\"}"}
execute if entity @e[name=w,tag=optSetB] run tag @e[name=w] remove optRandom
execute if entity @e[name=w,tag=optSetB] run tag @e[name=w] remove optInOrder
execute if entity @e[name=w,tag=optSetB] run tag @e[name=w] add optVote
execute if entity @e[name=w,tag=optSetB] run tag @e[name=w] remove optRoulette
execute if entity @e[name=w,tag=optSetB] run tag @e[name=w] remove optChoose
execute if entity @e[name=w,tag=optSetB] run tellraw @a[tag=!minChat] ["",{"text":"[OPTIONS] Track selection set to 'vote'","color":"green"},{"text":" "},{"text":"[?]","color":"yellow","bold":"true","hoverEvent":{"action":"show_text","value":"Players vote for 1 of 3 randomized track options.\nThe track with the most votes from all players is chosen.\nIf there's a tie, one of the front-runners is chosen at random."}}]
execute if entity @e[name=w,tag=optSetB] run playsound minecraft:block.note_block.hat master @a
tag @e[name=w,tag=optSetB] remove optSetA
tag @e[name=w,tag=optSetB] remove optSetB

#missing tags, give new one
tag @e[name=w,tag=optSetA] add optVote
tag @e[name=w,tag=optSetA] remove optSetA

#reset the "in order" sequence
scoreboard players set @e[name=w] trackSequenceR 50
scoreboard players set @e[name=w] trackSequenceB 50

tag @s remove clickSign

function sprint_racer:game_logic/0/sidebar/__index_main

tag @e[name=w] remove choosingTrack
tag @e[name=w] remove optSetB