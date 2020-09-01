tellraw @s ["",{"text":"[Track Editor] Position calculation node is missing for the finish line! The nearest finish line is now a 'Pos Calc' node.","color":"light_purple"}]

execute at @s run tag @e[limit=1,sort=nearest,type=area_effect_cloud,tag=finishline,scores={nodeState=1..}] add posCalc