execute if entity @s[scores={points=1}] run tellraw @a ["",{"selector":"@s"},{"text":" >> [1st] with ","color":"yellow","bold":"true"},{"score":{"name":"@s","objective":"points"},"color":"yellow","bold":"true"},{"text":" point!","color":"yellow","bold":"true"}]
execute unless entity @s[scores={points=1}] run tellraw @a ["",{"selector":"@s"},{"text":" >> [1st] with ","color":"yellow","bold":"true"},{"score":{"name":"@s","objective":"points"},"color":"yellow","bold":"true"},{"text":" points!","color":"yellow","bold":"true"}]