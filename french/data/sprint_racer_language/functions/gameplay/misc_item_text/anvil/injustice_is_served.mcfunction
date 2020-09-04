tag @s add self2

tellraw @a[tag=self] ["",{"text":" "}]
tellraw @a[tag=self] ["",{"text":"Injustice is served!","color":"white","bold":"true"}]
execute if entity @e[name=w,scores={gameState=1..2}] unless entity @e[tag=anvilled,tag=!self2] run tellraw @a[tag=self] ["",{"text":"Target: ","color":"aqua","bold":"true"},{"selector":"@e[tag=anvilled]"}]
execute if entity @e[name=w,scores={gameState=3}] unless entity @e[tag=anvilled,tag=!self2] run tellraw @a[tag=self] ["",{"text":"Target: ","color":"red","bold":"true"},{"selector":"@e[tag=anvilled]"}]
execute if entity @e[name=w,scores={gameState=1..2}] if entity @e[tag=anvilled,tag=!self2] run tellraw @a[tag=self] ["",{"text":"Targets: ","color":"aqua","bold":"true"},{"selector":"@e[tag=anvilled]"}]
execute if entity @e[name=w,scores={gameState=3}] if entity @e[tag=anvilled,tag=!self2] run tellraw @a[tag=self] ["",{"text":"Targets: ","color":"red","bold":"true"},{"selector":"@e[tag=anvilled]"}]
execute unless entity @e[name=w,scores={gameState=1..3}] unless entity @e[tag=anvilled,tag=!self2] run tellraw @a[tag=self] ["",{"text":"Target: ","color":"white","bold":"true"},{"selector":"@e[tag=anvilled]"}]
execute unless entity @e[name=w,scores={gameState=1..3}] if entity @e[tag=anvilled,tag=!self2] run tellraw @a[tag=self] ["",{"text":"Targets: ","color":"white","bold":"true"},{"selector":"@e[tag=anvilled]"}]
tellraw @a[tag=self] ["",{"text":" "}]

tag @s remove self2