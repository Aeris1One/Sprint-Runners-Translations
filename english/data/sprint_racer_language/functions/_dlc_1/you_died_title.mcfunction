execute unless entity @e[name=w,scores={gameState=3}] run title @s subtitle ["",{"text":"You died!","color":"red","bold":"true"}]
execute unless entity @e[name=w,scores={gameState=3}] run title @s title [""]

execute if entity @e[name=w,scores={gameState=3}] run title @s subtitle [""]
execute if entity @e[name=w,scores={gameState=3}] run title @s title ["",{"text":"You died!","color":"red","bold":"true"}]