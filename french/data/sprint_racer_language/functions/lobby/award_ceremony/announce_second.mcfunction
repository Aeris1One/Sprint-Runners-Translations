execute if entity @s[scores={points=1}] run tellraw @a ["",{"selector":"@s"},{"text":" >> [2nd] with ","color":"gray","bold":"true"},{"score":{"name":"@s","objective":"points"},"color":"gray","bold":"true"},{"text":" point!","color":"gray","bold":"true"}]
execute unless entity @s[scores={points=1}] run tellraw @a ["",{"selector":"@s"},{"text":" >> [2nd] with ","color":"gray","bold":"true"},{"score":{"name":"@s","objective":"points"},"color":"gray","bold":"true"},{"text":" points!","color":"gray","bold":"true"}]