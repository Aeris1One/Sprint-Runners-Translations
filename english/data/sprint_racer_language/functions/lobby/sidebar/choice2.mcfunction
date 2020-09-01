scoreboard objectives remove lobbyDisplay
scoreboard objectives add lobbyDisplay dummy ["",{"text":"Round [2/5]","color":"white","bold":"true"}]

function sprint_racer_language:lobby/sidebar/gamemode_choice

scoreboard objectives setdisplay sidebar lobbyDisplay