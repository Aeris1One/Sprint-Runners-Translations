tellraw @a ["",{"text":" "}]
tellraw @a ["",{"text":"Next Track: ","color":"white","bold":"true"},{"text":"Mushroom Cavern","bold":"true","color":"aqua"}]

scoreboard players set @e[name=w] lap 3
function sprint_racer_language:lobby/vote_announce/__lap_count

tellraw @a ["",{"text":"Created by: ","color":"white","bold":"false"},{"text":"MCFilms","color":"aqua"},{"text":" and ","color":"white"},{"text":"SenpaiiPepe","color":"gold"}]