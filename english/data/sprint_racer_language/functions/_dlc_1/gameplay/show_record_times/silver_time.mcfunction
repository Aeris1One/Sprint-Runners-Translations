execute if entity @s[tag=tellOnlyMe] if entity @s[scores={lapTimeSec=..9}] run tellraw @s ["",{"text":"Silver Medal: [","color":"gray","bold":"true"},{"score":{"name":"@s","objective":"lapTimeMin"},"color":"gray","bold":"true"},{"text":":0","color":"gray","bold":"true"},{"score":{"name":"@s","objective":"lapTimeSec"},"color":"gray","bold":"true"},{"text":":","color":"gray","bold":"true"},{"score":{"name":"@s","objective":"lapTimeMsec"},"color":"gray","bold":"true"},{"text":"]","color":"gray","bold":"true"}]
execute if entity @s[tag=tellOnlyMe] if entity @s[scores={lapTimeSec=10..}] run tellraw @s ["",{"text":"Silver Medal: [","color":"gray","bold":"true"},{"score":{"name":"@s","objective":"lapTimeMin"},"color":"gray","bold":"true"},{"text":":","color":"gray","bold":"true"},{"score":{"name":"@s","objective":"lapTimeSec"},"color":"gray","bold":"true"},{"text":":","color":"gray","bold":"true"},{"score":{"name":"@s","objective":"lapTimeMsec"},"color":"gray","bold":"true"},{"text":"]","color":"gray","bold":"true"}]
execute unless entity @s[tag=tellOnlyMe] if entity @s[scores={lapTimeSec=..9}] run tellraw @a ["",{"text":"Silver Medal: [","color":"gray","bold":"true"},{"score":{"name":"@s","objective":"lapTimeMin"},"color":"gray","bold":"true"},{"text":":0","color":"gray","bold":"true"},{"score":{"name":"@s","objective":"lapTimeSec"},"color":"gray","bold":"true"},{"text":":","color":"gray","bold":"true"},{"score":{"name":"@s","objective":"lapTimeMsec"},"color":"gray","bold":"true"},{"text":"]","color":"gray","bold":"true"}]
execute unless entity @s[tag=tellOnlyMe] if entity @s[scores={lapTimeSec=10..}] run tellraw @a ["",{"text":"Silver Medal: [","color":"gray","bold":"true"},{"score":{"name":"@s","objective":"lapTimeMin"},"color":"gray","bold":"true"},{"text":":","color":"gray","bold":"true"},{"score":{"name":"@s","objective":"lapTimeSec"},"color":"gray","bold":"true"},{"text":":","color":"gray","bold":"true"},{"score":{"name":"@s","objective":"lapTimeMsec"},"color":"gray","bold":"true"},{"text":"]","color":"gray","bold":"true"}]