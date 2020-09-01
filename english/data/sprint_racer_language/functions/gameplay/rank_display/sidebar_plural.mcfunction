execute if entity @e[name=w,tag=rank_sidebar_b] run scoreboard objectives remove displayLeaderA
execute if entity @e[name=w,tag=rank_sidebar_b] run scoreboard objectives add displayLeaderB dummy {"text":"Current Leaders:","bold":"true"}

execute unless entity @e[name=w,tag=rank_sidebar_b] run scoreboard objectives remove displayLeaderB
execute unless entity @e[name=w,tag=rank_sidebar_b] run scoreboard objectives add displayLeaderA dummy {"text":"Current Leaders:","bold":"true"}