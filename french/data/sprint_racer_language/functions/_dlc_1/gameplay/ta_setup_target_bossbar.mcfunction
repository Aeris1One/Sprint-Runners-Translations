bossbar set minecraft:menutimer name ["",{"text":"Targets Remaining: ","color":"red","bold":"true"},{"score":{"name":"@e[name=w,limit=1]","objective":"targetData"},"color":"red","bold":"true"}]
bossbar set minecraft:menutimer color red
bossbar set minecraft:menutimer style progress
execute store result bossbar minecraft:menutimer value run scoreboard players get @e[name=w,limit=1] targetData
execute store result bossbar minecraft:menutimer max run scoreboard players get @e[name=w,limit=1] targetData