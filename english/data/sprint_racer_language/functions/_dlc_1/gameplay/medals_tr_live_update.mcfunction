#"Bronze", "Silver", "Gold", "Best" are all safe to edit.

scoreboard players operation @e[name=w] math = @e[name=w,limit=1] bronzeTR
scoreboard players operation @e[name=w] math /= @e[limit=1,tag=random,scores={rNumber=10}] rNumber
execute if entity @e[name=w,scores={bronzeTR=0..}] run scoreboard players operation Bronze medalsTR = @e[name=w,limit=1] math

scoreboard players operation @e[name=w] math = @e[name=w,limit=1] silverTR
scoreboard players operation @e[name=w] math /= @e[limit=1,tag=random,scores={rNumber=10}] rNumber
execute if entity @e[name=w,scores={silverTR=0..}] run scoreboard players operation Silver medalsTR = @e[name=w,limit=1] math

scoreboard players operation @e[name=w] math = @e[name=w,limit=1] goldTR
scoreboard players operation @e[name=w] math /= @e[limit=1,tag=random,scores={rNumber=10}] rNumber
execute if entity @e[name=w,scores={goldTR=0..}] run scoreboard players operation Gold medalsTR = @e[name=w,limit=1] math

scoreboard players operation @e[name=w] math = @e[name=w,limit=1] bestTR
scoreboard players operation @e[name=w] math /= @e[limit=1,tag=random,scores={rNumber=10}] rNumber
execute if entity @e[name=w,scores={bestTR=0..}] run scoreboard players operation Best medalsTR = @e[name=w,limit=1] math