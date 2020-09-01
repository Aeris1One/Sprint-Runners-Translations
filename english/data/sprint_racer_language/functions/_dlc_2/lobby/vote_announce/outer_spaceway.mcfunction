tellraw @a ["",{"text":" "}]
tellraw @a ["",{"text":"Next Track: ","color":"white","bold":"true"},{"text":"Outer Spaceway","bold":"true","color":"aqua"}]

scoreboard players set @e[name=w] lap 2
function sprint_racer_language:lobby/vote_announce/__lap_count

tellraw @a ["",{"text":"Created by: ","color":"white","bold":"false"},{"text":"ReflectedMantis","color":"green"}]