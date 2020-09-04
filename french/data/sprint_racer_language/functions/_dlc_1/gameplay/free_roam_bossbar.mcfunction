bossbar set minecraft:freeroam name ["",{"text":"Free Roam!","color":"green","bold":"true"}]
bossbar set freeroam color green
bossbar set freeroam max 1
bossbar set freeroam style progress
execute store result bossbar minecraft:freeroam value run scoreboard players get @e[name=w,limit=1] gameState