execute if entity @e[name=w,scores={countTimeMin=1..,countTimeSec=10..}] run title @a[scores={subtitleDelay=..0}] subtitle ["",{"score":{"name":"@e[name=w,limit=1]","objective":"countTimeMin"},"color":"white"},{"text":":","color":"white"},{"score":{"name":"@e[name=w,limit=1]","objective":"countTimeSec"},"color":"white"},{"text":":","color":"white"},{"score":{"name":"@e[name=w,limit=1]","objective":"countTimeMsec"},"color":"white"}]
execute if entity @e[name=w,scores={countTimeMin=1..,countTimeSec=..9}] run title @a[scores={subtitleDelay=..0}] subtitle ["",{"score":{"name":"@e[name=w,limit=1]","objective":"countTimeMin"},"color":"white"},{"text":":0","color":"white"},{"score":{"name":"@e[name=w,limit=1]","objective":"countTimeSec"},"color":"white"},{"text":":","color":"white"},{"score":{"name":"@e[name=w,limit=1]","objective":"countTimeMsec"},"color":"white"}]

execute if entity @e[name=w,scores={countTimeMin=..0,countTimeSec=10..}] run title @a[scores={subtitleDelay=..0}] subtitle ["",{"score":{"name":"@e[name=w,limit=1]","objective":"countTimeMin"},"color":"white"},{"text":":","color":"white"},{"score":{"name":"@e[name=w,limit=1]","objective":"countTimeSec"},"color":"white"},{"text":":","color":"white"},{"score":{"name":"@e[name=w,limit=1]","objective":"countTimeMsec"},"color":"white"}]

#below 10 seconds, this flashes red
execute if entity @e[name=w,scores={countTimeMin=..0,countTimeSec=..9,countTimeMsec=5..}] run title @a[scores={subtitleDelay=..0}] subtitle ["",{"score":{"name":"@e[name=w,limit=1]","objective":"countTimeMin"},"color":"red"},{"text":":0","color":"red"},{"score":{"name":"@e[name=w,limit=1]","objective":"countTimeSec"},"color":"red"},{"text":":","color":"red"},{"score":{"name":"@e[name=w,limit=1]","objective":"countTimeMsec"},"color":"red"}]
execute if entity @e[name=w,scores={countTimeMin=..0,countTimeSec=..9,countTimeMsec=..4}] run title @a[scores={subtitleDelay=..0}] subtitle ["",{"score":{"name":"@e[name=w,limit=1]","objective":"countTimeMin"},"color":"white"},{"text":":0","color":"white"},{"score":{"name":"@e[name=w,limit=1]","objective":"countTimeSec"},"color":"white"},{"text":":","color":"white"},{"score":{"name":"@e[name=w,limit=1]","objective":"countTimeMsec"},"color":"white"}]

title @a[tag=playing,tag=finished,scores={subtitleDelay=..0}] title [""]
title @a[tag=playing,tag=!finished,scores={lapAnimation=..0}] title [""]

scoreboard players remove @a[tag=finished,scores={subtitleDelay=1..}] subtitleDelay 1