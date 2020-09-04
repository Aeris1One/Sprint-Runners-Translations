tellraw @a ["",{"text":" "}]
tellraw @a ["",{"text":"Returned to Lobby!","color":"yellow","bold":"true"}]
tellraw @a ["",{"text":"Vote was passed.","color":"yellow","italic":"true"}]
tellraw @a ["",{"text":" "}]

execute as @a at @s run playsound minecraft:entity.ender_dragon.hurt master @s ~ 1000000 ~ 1000000 .5

#glad I caught this here bug, wowie
tag @e[name=w] add noskip2next

execute unless entity @e[name=w,type=armor_stand,tag=customTesting] run function sprint_racer:game_logic/0/_initialize
execute if entity @e[name=w,type=armor_stand,tag=customTesting] run function sprint_racer:game_logic/10/_initialize