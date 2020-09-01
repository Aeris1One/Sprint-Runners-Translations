tellraw @a ["",{"text":" "}]
tellraw @a ["",{"text":"Next Battle Arena: ","color":"white","bold":"true"},{"selector":"@e[tag=chosenTrack]","color":"yellow"}]

execute if entity @e[tag=chosenTrack,tag=trackSmall] run tag @e[name=w] add sizeSmall
execute if entity @e[tag=chosenTrack,tag=trackMedium] run tag @e[name=w] add sizeMedium
execute if entity @e[tag=chosenTrack,tag=trackLarge] run tag @e[name=w] add sizeLarge
function sprint_racer_language:lobby/vote_announce/__arena_size

tellraw @a ["",{"text":"(Custom Track)","color":"white","bold":"false"}]