tellraw @a ["",{"text":" "}]
tellraw @a ["",{"text":"Restart!","color":"yellow","bold":"true"}]
tellraw @a ["",{"text":"Vote was passed.","color":"yellow","italic":"true"}]
tellraw @a ["",{"text":" "}]

execute as @a at @s run playsound minecraft:entity.ender_dragon.hurt master @s ~ 1000000 ~ 1000000 .5

execute if entity @e[name=w,type=armor_stand,scores={gameState=1}] run function sprint_racer:game_logic/1/_initialize
execute if entity @e[name=w,type=armor_stand,scores={gameState=3}] run function sprint_racer:game_logic/3/_initialize