tellraw @s[scores={lapTimeSec=..9}] ["",{"text":"Lap ","color":"yellow","bold":"true"},{"score":{"name":"@s","objective":"lapShowTime"},"color":"yellow","bold":"true"},{"text":": ","color":"yellow","bold":"true"},{"score":{"name":"@s","objective":"lapTimeMin"},"color":"white","bold":"false"},{"text":":0"},{"score":{"name":"@s","objective":"lapTimeSec"},"color":"white","bold":"false"},{"text":":"},{"score":{"name":"@s","objective":"lapTimeMsec"},"color":"white","bold":"false"}]
tellraw @s[scores={lapTimeSec=10..}] ["",{"text":"Lap ","color":"yellow","bold":"true"},{"score":{"name":"@s","objective":"lapShowTime"},"color":"yellow","bold":"true"},{"text":": ","color":"yellow","bold":"true"},{"score":{"name":"@s","objective":"lapTimeMin"},"color":"white","bold":"false"},{"text":":"},{"score":{"name":"@s","objective":"lapTimeSec"},"color":"white","bold":"false"},{"text":":"},{"score":{"name":"@s","objective":"lapTimeMsec"},"color":"white","bold":"false"}]