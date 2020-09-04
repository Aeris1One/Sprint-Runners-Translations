scoreboard players enable @a[tag=playing] mgVoteTrigger

#51% of active players must affirm vote
scoreboard players set @e[name=w,type=armor_stand,limit=1] math 0
execute as @a[tag=playing] run scoreboard players add @e[name=w,type=armor_stand,limit=1] math 1
scoreboard players set @e[name=w,type=armor_stand,limit=1] math2 2
scoreboard players operation @e[name=w,type=armor_stand,limit=1] math /= @e[name=w,type=armor_stand,limit=1] math2
scoreboard players add @e[name=w,type=armor_stand,limit=1] math 1

tag @s add self

execute as @a at @s run playsound minecraft:block.note_block.snare master @s ~ 100000 ~ 100000 .8

scoreboard players set @e[name=w,type=armor_stand,limit=1] mgVoteCount 1
execute if entity @s[scores={mgVoteTrigger=1}] run scoreboard players set @e[name=w,type=armor_stand,limit=1] mgVoteMode 1
execute if entity @s[scores={mgVoteTrigger=2}] run scoreboard players set @e[name=w,type=armor_stand,limit=1] mgVoteMode 2
scoreboard players reset @s mgVoteTrigger

tellraw @a ["",{"text":" "}]
tellraw @a ["",{"selector":"@s"},{"text":" has called a vote!","color":"white"}]
execute if entity @e[name=w,type=armor_stand,tag=!customTesting,scores={mgVoteMode=2}] run tellraw @a ["",{"text":"Return to the lobby?","color":"gold","bold":"true"},{"text":" (","color":"gray"},{"score":{"name":"@e[name=w,limit=1,type=armor_stand]","objective":"math"},"color":"gray"},{"text":" votes needed)","color":"gray"}]
execute if entity @e[name=w,type=armor_stand,tag=customTesting,scores={mgVoteMode=2}] run tellraw @a ["",{"text":"End track test?","color":"light_purple","bold":"true"},{"text":" (","color":"gray"},{"score":{"name":"@e[name=w,limit=1,type=armor_stand]","objective":"math"},"color":"gray"},{"text":" votes needed)","color":"gray"}]
execute if entity @e[name=w,type=armor_stand,scores={gameState=1,mgVoteMode=1}] run tellraw @a ["",{"text":"Restart the race?","color":"aqua","bold":"true"},{"text":" (","color":"gray"},{"score":{"name":"@e[name=w,limit=1,type=armor_stand]","objective":"math"},"color":"gray"},{"text":" votes needed)","color":"gray"}]
execute if entity @e[name=w,type=armor_stand,scores={gameState=3,mgVoteMode=1}] run tellraw @a ["",{"text":"Restart the battle?","color":"red","bold":"true"},{"text":" (","color":"gray"},{"score":{"name":"@e[name=w,limit=1,type=armor_stand]","objective":"math"},"color":"gray"},{"text":" votes needed)","color":"gray"}]
tellraw @a[tag=playing,tag=!self] ["",{"text":" "},{"text":" "},{"text":"[YES]","color":"yellow","bold":"false","clickEvent":{"action":"run_command","value":"/trigger mgVoteTrigger set 1"},"hoverEvent":{"action":"show_text","value":"YES"}},{"text":" (click to vote)","color":"gray"}]
tellraw @s ["",{"text":"Waiting for other players to respond...","italic":"true","color":"gray"}]
tellraw @a[tag=!self,tag=!playing] ["",{"text":"Vote is for active players only.","italic":"true","color":"gray"}]

tag @s remove self