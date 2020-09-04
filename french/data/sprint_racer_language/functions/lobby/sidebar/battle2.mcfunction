scoreboard objectives remove lobbyDisplay
scoreboard objectives add lobbyDisplay dummy ["",{"text":"Round [2/3]","color":"white","bold":"true"}]

function sprint_racer_language:lobby/sidebar/gamemode_battle

scoreboard objectives setdisplay sidebar lobbyDisplay