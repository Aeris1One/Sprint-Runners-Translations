tellraw @a ["",{"text":" "}]
tellraw @a ["",{"text":"Next Track: ","color":"white","bold":"true"},{"text":"The Gauntlet","bold":"true","color":"dark_purple"}]

scoreboard players set @e[name=w] lap 1
function sprint_racer_language:lobby/vote_announce/__lap_count

tellraw @a ["",{"text":"Created by: ","color":"white","bold":"false"},{"text":"Flamingosaurus","color":"dark_aqua"}]