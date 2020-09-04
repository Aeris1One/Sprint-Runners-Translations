tag @s remove afk
scoreboard players set @s afkTime 0

execute unless entity @e[name=w,scores={gameState=1..3}] run tellraw @s[scores={subtitleDelay=..0}] ["",{"text":"You are no longer AFK.","color":"aqua","italic":"true"}]
execute if entity @e[name=w,scores={gameState=1..3}] run tellraw @s ["",{"text":"You are no longer AFK.","color":"aqua"}]

#misc... don't edit
tag @s remove readyup
#if the lobby is already in "ready" mode, newly joined players are declared ready by default
execute if entity @e[name=w,scores={readyState=1..}] run tag @s add readyup

function sprint_racer:give_ids2

title @s subtitle [""]
title @s title [""]