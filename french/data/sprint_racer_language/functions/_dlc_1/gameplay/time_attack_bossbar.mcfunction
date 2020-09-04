bossbar set minecraft:freeroam name ["",{"text":"Time Attack -- Select a Track!","color":"yellow","bold":"true"}]
bossbar set freeroam color yellow
bossbar set freeroam max 1
bossbar set freeroam style progress
scoreboard players set @e[name=w] math 1
execute store result bossbar minecraft:freeroam value run scoreboard players get @e[name=w,limit=1] math