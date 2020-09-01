scoreboard objectives remove racePosDisplay
scoreboard objectives remove racePosDisplay2
scoreboard objectives remove points
scoreboard objectives remove KOs
scoreboard objectives remove battPosDisplay
scoreboard objectives remove battPosDisplay2

scoreboard objectives add racePosDisplay dummy ["",{"text":"Position","bold":"true"}]
scoreboard objectives add racePosDisplay2 dummy ["",{"text":"Position","bold":"true"}]
scoreboard objectives add points dummy ["",{"text":"Points","bold":"true"}]
scoreboard objectives add KOs dummy ["",{"text":"KOs","bold":"true"}]
scoreboard objectives add battPosDisplay dummy ["",{"text":"KO Ranking","bold":"true"}]
scoreboard objectives add battPosDisplay2 dummy ["",{"text":"KO Ranking","bold":"true"}]