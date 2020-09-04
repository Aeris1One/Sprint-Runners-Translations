execute if entity @e[name=w,tag=sizeSmall] run tellraw @a ["",{"text":"Size: ","color":"white","bold":"true"},{"text":"Small","color":"white","bold":"true"}]
execute if entity @e[name=w,tag=sizeMedium] run tellraw @a ["",{"text":"Size: ","color":"white","bold":"true"},{"text":"Medium","color":"white","bold":"true"}]
execute if entity @e[name=w,tag=sizeLarge] run tellraw @a ["",{"text":"Size: ","color":"white","bold":"true"},{"text":"Large","color":"white","bold":"true"}]

tag @e[tag=sizeSmall] remove sizeSmall
tag @e[tag=sizeMedium] remove sizeMedium
tag @e[tag=sizeLarge] remove sizeLarge