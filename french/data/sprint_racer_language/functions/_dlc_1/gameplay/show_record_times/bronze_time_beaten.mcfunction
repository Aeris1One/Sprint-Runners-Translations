execute if entity @s[tag=tellOnlyMe] if entity @s[scores={lapTimeSec=..9}] run tellraw @s ["",{"text":"✔","color":"green","bold":"true"},{"text":" Médaille de bronze: [","color":"gold","bold":"true"},{"score":{"name":"@s","objective":"lapTimeMin"},"color":"gold","bold":"true"},{"text":":0","color":"gold","bold":"true"},{"score":{"name":"@s","objective":"lapTimeSec"},"color":"gold","bold":"true"},{"text":":","color":"gold","bold":"true"},{"score":{"name":"@s","objective":"lapTimeMsec"},"color":"gold","bold":"true"},{"text":"]","color":"gold","bold":"true"}]
execute if entity @s[tag=tellOnlyMe] if entity @s[scores={lapTimeSec=10..}] run tellraw @s ["",{"text":"✔","color":"green","bold":"true"},{"text":" Médaille de bronze: [","color":"gold","bold":"true"},{"score":{"name":"@s","objective":"lapTimeMin"},"color":"gold","bold":"true"},{"text":":","color":"gold","bold":"true"},{"score":{"name":"@s","objective":"lapTimeSec"},"color":"gold","bold":"true"},{"text":":","color":"gold","bold":"true"},{"score":{"name":"@s","objective":"lapTimeMsec"},"color":"gold","bold":"true"},{"text":"]","color":"gold","bold":"true"}]
execute unless entity @s[tag=tellOnlyMe] if entity @s[scores={lapTimeSec=..9}] run tellraw @a ["",{"text":"✔","color":"green","bold":"true"},{"text":" Médaille de bronze: [","color":"gold","bold":"true"},{"score":{"name":"@s","objective":"lapTimeMin"},"color":"gold","bold":"true"},{"text":":0","color":"gold","bold":"true"},{"score":{"name":"@s","objective":"lapTimeSec"},"color":"gold","bold":"true"},{"text":":","color":"gold","bold":"true"},{"score":{"name":"@s","objective":"lapTimeMsec"},"color":"gold","bold":"true"},{"text":"]","color":"gold","bold":"true"}]
execute unless entity @s[tag=tellOnlyMe] if entity @s[scores={lapTimeSec=10..}] run tellraw @a ["",{"text":"✔","color":"green","bold":"true"},{"text":" Médaille de bronze: [","color":"gold","bold":"true"},{"score":{"name":"@s","objective":"lapTimeMin"},"color":"gold","bold":"true"},{"text":":","color":"gold","bold":"true"},{"score":{"name":"@s","objective":"lapTimeSec"},"color":"gold","bold":"true"},{"text":":","color":"gold","bold":"true"},{"score":{"name":"@s","objective":"lapTimeMsec"},"color":"gold","bold":"true"},{"text":"]","color":"gold","bold":"true"}]
