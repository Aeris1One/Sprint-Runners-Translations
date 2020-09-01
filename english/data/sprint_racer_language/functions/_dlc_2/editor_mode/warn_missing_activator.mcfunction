scoreboard players set @s actionbarState2 5
scoreboard players set @s actionbarState 99

execute if entity @e[name=w,type=armor_stand,scores={currentTimeMsec=..4}] run title @s actionbar ["",{"text":"There is no working activator node within 100m! Nodes don't function here!","color":"red","bold":"true"}]
execute if entity @e[name=w,type=armor_stand,scores={currentTimeMsec=5..}] run title @s actionbar ["",{"text":"There is no working activator node within 100m! Nodes don't function here!","color":"white","bold":"true"}]
