tag @s add textSelf
tellraw @a[tag=!textSelf] ["",{"text":" "}]
tellraw @a[tag=!textSelf] ["",{"selector":"@s"},{"text":" >> Finished!","color":"yellow","bold":"true"}]
tellraw @a[tag=!textSelf] ["",{"text":" "}]

title @a subtitle [""]
title @s title ["",{"text":"Finished!","color":"yellow","bold":"true"}]
title @a[tag=!textSelf] title [""]
tag @s remove textSelf