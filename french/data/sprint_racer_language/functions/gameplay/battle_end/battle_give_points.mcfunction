execute as @e[tag=AImaster] run scoreboard players operation @s finishPos = @s battlePos

#1st
execute as @e[tag=playing,scores={finishPos=1,addPoints=2..}] run tellraw @a ["",{"selector":"@s"},{"text":" >> [1er] +","color":"yellow","bold":"true"},{"score":{"name":"@s","objective":"addPoints"},"color":"yellow","bold":"true"},{"text":" points","color":"yellow","bold":"true"}]
execute as @e[tag=playing,scores={finishPos=1,addPoints=..1}] run tellraw @a ["",{"selector":"@s"},{"text":" >> [1er] +","color":"yellow","bold":"true"},{"score":{"name":"@s","objective":"addPoints"},"color":"yellow","bold":"true"},{"text":" point","color":"yellow","bold":"true"}]
execute as @e[tag=AImaster,scores={finishPos=1}] run tellraw @a ["",{"text":"CPU_","color":"red"},{"score":{"name":"@s","objective":"rNumber"},"color":"red"},{"text":" >> [1st]","color":"yellow","bold":"true"}]

#2nd
execute as @e[tag=playing,scores={finishPos=2,addPoints=2..}] run tellraw @a ["",{"selector":"@s"},{"text":" >> [2eme] +","color":"gray","bold":"true"},{"score":{"name":"@s","objective":"addPoints"},"color":"gray","bold":"true"},{"text":" points","color":"gray","bold":"true"}]
execute as @e[tag=playing,scores={finishPos=2,addPoints=..1}] run tellraw @a ["",{"selector":"@s"},{"text":" >> [2eme] +","color":"gray","bold":"true"},{"score":{"name":"@s","objective":"addPoints"},"color":"gray","bold":"true"},{"text":" point","color":"gray","bold":"true"}]
execute as @e[tag=AImaster,scores={finishPos=2}] run tellraw @a ["",{"text":"CPU_","color":"red"},{"score":{"name":"@s","objective":"rNumber"},"color":"red"},{"text":" >> [2eme]","color":"gray","bold":"true"}]

#3rd
execute as @e[tag=playing,scores={finishPos=3,addPoints=2..}] run tellraw @a ["",{"selector":"@s"},{"text":" >> [3eme] +","color":"gold","bold":"true"},{"score":{"name":"@s","objective":"addPoints"},"color":"gold","bold":"true"},{"text":" points","color":"gold","bold":"true"}]
execute as @e[tag=playing,scores={finishPos=3,addPoints=..1}] run tellraw @a ["",{"selector":"@s"},{"text":" >> [3eme] +","color":"gold","bold":"true"},{"score":{"name":"@s","objective":"addPoints"},"color":"gold","bold":"true"},{"text":" point","color":"gold","bold":"true"}]
execute as @e[tag=AImaster,scores={finishPos=3}] run tellraw @a ["",{"text":"CPU_","color":"red"},{"score":{"name":"@s","objective":"rNumber"},"color":"red"},{"text":" >> [3eme]","color":"gold","bold":"true"}]

#4th
execute as @e[tag=playing,scores={finishPos=4,addPoints=2..}] run tellraw @a ["",{"selector":"@s"},{"text":" >> [4eme] +","color":"white","bold":"true"},{"score":{"name":"@s","objective":"addPoints"},"color":"white","bold":"true"},{"text":" points","color":"white","bold":"true"}]
execute as @e[tag=playing,scores={finishPos=4,addPoints=..1}] run tellraw @a ["",{"selector":"@s"},{"text":" >> [4eme] +","color":"white","bold":"true"},{"score":{"name":"@s","objective":"addPoints"},"color":"white","bold":"true"},{"text":" point","color":"white","bold":"true"}]
execute as @e[tag=AImaster,scores={finishPos=4}] run tellraw @a ["",{"text":"CPU_","color":"red"},{"score":{"name":"@s","objective":"rNumber"},"color":"red"},{"text":" >> [4eme]","color":"white","bold":"true"}]

#####
#"..." for players 5th and above (only if there are players who finished 1st through 4th present)
execute if entity @e[tag=playing,scores={finishPos=1..4}] as @e[tag=playing,scores={finishPos=5..}] run tellraw @s ["",{"text":"...","color":"white","bold":"true"}]

#5th to 20th (message is only seen by self)
execute as @e[tag=playing,scores={finishPos=5..20,addPoints=2..}] run tellraw @s ["",{"selector":"@s"},{"text":" >> [","color":"white","bold":"true"},{"score":{"name":"@s","objective":"finishPos"},"color":"white","bold":"true"},{"text":"eme] +","color":"white","bold":"true"},{"score":{"name":"@s","objective":"addPoints"},"color":"white","bold":"true"},{"text":" points","color":"white","bold":"true"}]
execute as @e[tag=playing,scores={finishPos=5..20,addPoints=..1}] run tellraw @s ["",{"selector":"@s"},{"text":" >> [","color":"white","bold":"true"},{"score":{"name":"@s","objective":"finishPos"},"color":"white","bold":"true"},{"text":"eme] +","color":"white","bold":"true"},{"score":{"name":"@s","objective":"addPoints"},"color":"white","bold":"true"},{"text":" point","color":"white","bold":"true"}]

#21st and higher (message is only seen by self)
execute as @e[tag=playing,scores={finishPos=21..,addPoints=2..}] run tellraw @s ["",{"selector":"@s"},{"text":" >> [","color":"white","bold":"true"},{"score":{"name":"@s","objective":"finishPos"},"color":"white","bold":"true"},{"text":"] +","color":"white","bold":"true"},{"score":{"name":"@s","objective":"addPoints"},"color":"white","bold":"true"},{"text":" points","color":"white","bold":"true"}]
execute as @e[tag=playing,scores={finishPos=21..,addPoints=..1}] run tellraw @s ["",{"selector":"@s"},{"text":" >> [","color":"white","bold":"true"},{"score":{"name":"@s","objective":"finishPos"},"color":"white","bold":"true"},{"text":"] +","color":"white","bold":"true"},{"score":{"name":"@s","objective":"addPoints"},"color":"white","bold":"true"},{"text":" point","color":"white","bold":"true"}]


team join player @a[tag=playing]
scoreboard players add @a dummyPoints 0
execute as @a[tag=playing] run scoreboard players operation @s points = @s dummyPoints
scoreboard objectives setdisplay sidebar points
scoreboard players add @a[tag=playing] points 0
