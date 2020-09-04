#fallback subtitle message in case the following ones all fail
title @s subtitle ["",{"text":"This is an error message!","color":"red","bold":"true"}]

#subtitle (self)
title @s[scores={finishPos=1}] subtitle ["",{"text":"1st place!","color":"yellow","bold":"true"}]
title @s[scores={finishPos=2}] subtitle ["",{"text":"2nd place!","color":"gray","bold":"true"}]
title @s[scores={finishPos=3}] subtitle ["",{"text":"3rd place!","color":"gold","bold":"true"}]
title @s[scores={finishPos=4..20}] subtitle ["",{"score":{"name":"@s","objective":"finishPos"},"color":"white","bold":"true"},{"text":"th place!","color":"white","bold":"true"}]
title @s[scores={finishPos=21}] subtitle ["",{"text":"21st place!","color":"white","bold":"true"}]
title @s[scores={finishPos=22}] subtitle ["",{"text":"22nd place!","color":"white","bold":"true"}]
title @s[scores={finishPos=23}] subtitle ["",{"text":"23rd place!","color":"white","bold":"true"}]
title @s[scores={finishPos=24..30}] subtitle ["",{"score":{"name":"@s","objective":"finishPos"},"color":"white","bold":"true"},{"text":"th place!","color":"white","bold":"true"}]
title @s[scores={finishPos=31}] subtitle ["",{"text":"31st place!","color":"white","bold":"true"}]
title @s[scores={finishPos=32}] subtitle ["",{"text":"32nd place!","color":"white","bold":"true"}]
title @s[scores={finishPos=33}] subtitle ["",{"text":"33rd place!","color":"white","bold":"true"}]
title @s[scores={finishPos=34..}] subtitle ["",{"text":"You finished in position ","color":"white","bold":"true"},{"score":{"name":"@s","objective":"finishPos"},"color":"white","bold":"true"},{"text":"!","color":"white","bold":"true"}]

#title (self)
title @s title ["",{"text":"Finished!","color":"yellow","bold":"true"}]