execute if entity @e[name=w,scores={tvPoolMode=1}] run title @a actionbar ["",{"text":"[","color":"aqua","bold":"true"},{"score":{"name":"@e[name=w,limit=1]","objective":"tvPoolNum"},"color":"aqua","bold":"true"},{"text":"]","color":"aqua","bold":"true"},{"text":" "},{"selector":"@e[tag=focusT,limit=1]","color":"yellow","bold":"false"}]
execute if entity @e[name=w,scores={tvPoolMode=2}] run title @a actionbar ["",{"text":"[","color":"red","bold":"true"},{"score":{"name":"@e[name=w,limit=1]","objective":"tvPoolNum"},"color":"red","bold":"true"},{"text":"]","color":"red","bold":"true"},{"text":" "},{"selector":"@e[tag=focusT,limit=1]","color":"yellow","bold":"false"}]