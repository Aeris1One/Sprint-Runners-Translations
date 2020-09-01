tellraw @s[tag=!minChat] ["",{"text":"You are now a spectator!","color":"light_purple","italic":"true"}]

tag @s add self
execute if entity @e[name=w,scores={gameState=1..3}] run tellraw @a[tag=!self] ["",{"selector":"@s"},{"text":" is now a spectator!"}]
tag @s remove self