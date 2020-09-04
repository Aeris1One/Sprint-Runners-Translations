tellraw @a[tag=!minChat] ["",{"text":"[ ! ] Lobby has been restarted!","color":"red","bold":"true"}]

scoreboard players reset @e[name=w,type=armor_stand] teamPoints
scoreboard players reset * teamPointsShow
scoreboard players reset * teamPoints
scoreboard players reset * points
scoreboard objectives remove dummyPoints
scoreboard objectives add dummyPoints dummy