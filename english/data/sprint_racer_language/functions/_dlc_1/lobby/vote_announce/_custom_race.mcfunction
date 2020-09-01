tellraw @a ["",{"text":" "}]
tellraw @a ["",{"text":"Next Track: ","color":"white","bold":"true"},{"selector":"@e[tag=chosenTrack]","color":"yellow"}]

scoreboard players operation @e[name=w] lap = @e[limit=1,tag=chosenTrack] lap
function sprint_racer_language:lobby/vote_announce/__lap_count

tellraw @a ["",{"text":"(Custom Track)","color":"white","bold":"false"}]