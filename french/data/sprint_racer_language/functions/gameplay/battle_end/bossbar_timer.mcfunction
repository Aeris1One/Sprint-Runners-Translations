execute if entity @e[name=w,scores={timeRemaining=601..,countTimeSec=10..}] run bossbar set minecraft:timeremaining name ["",{"text":"Temps restant: ","bold":"true","color":"white"},{"score":{"name":"@e[name=w,limit=1]","objective":"countTimeMin"},"color":"white","bold":"true"},{"text":":","color":"white","bold":"true"},{"score":{"name":"@e[name=w,limit=1]","objective":"countTimeSec"},"color":"white","bold":"true"}]
execute if entity @e[name=w,scores={timeRemaining=601..,countTimeSec=..9}] run bossbar set minecraft:timeremaining name ["",{"text":"Temps Restant: ","bold":"true","color":"white"},{"score":{"name":"@e[name=w,limit=1]","objective":"countTimeMin"},"color":"white","bold":"true"},{"text":":0","color":"white","bold":"true"},{"score":{"name":"@e[name=w,limit=1]","objective":"countTimeSec"},"color":"white","bold":"true"}]

execute if entity @e[name=w,scores={timeRemaining=..600,countTimeSec=10..}] run bossbar set minecraft:timeremaining name ["",{"text":"Temps Restant: ","bold":"true","color":"red"},{"score":{"name":"@e[name=w,limit=1]","objective":"countTimeMin"},"color":"red","bold":"true"},{"text":":","color":"red","bold":"true"},{"score":{"name":"@e[name=w,limit=1]","objective":"countTimeSec"},"color":"red","bold":"true"}]
execute if entity @e[name=w,scores={timeRemaining=..600,countTimeSec=..9}] run bossbar set minecraft:timeremaining name ["",{"text":"Temps Restant: ","bold":"true","color":"red"},{"score":{"name":"@e[name=w,limit=1]","objective":"countTimeMin"},"color":"red","bold":"true"},{"text":":0","color":"red","bold":"true"},{"score":{"name":"@e[name=w,limit=1]","objective":"countTimeSec"},"color":"red","bold":"true"}]
