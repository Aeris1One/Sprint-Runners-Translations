#this is executed by entity "w"
#each higher state number takes priority over lower ones


#state -10, spectators can examine nearby players
execute as @a[scores={actionbarState=-10}] at @s run function sprint_racer:game_logic/7/spectator_actionbar/find_nearest_player


#state -3, elytra text
execute if entity @s[scores={currentTimeMsec=..4}] as @a[scores={elytraTimer=1..,actionbarState=-3}] run title @s actionbar ["",{"text":"Elytra activated!","bold":"true","color":"blue"}]
execute if entity @s[scores={currentTimeMsec=5..}] as @a[scores={elytraTimer=1..,actionbarState=-3}] run title @s actionbar ["",{"text":"Elytra activated!","bold":"true","color":"aqua"}]
execute if entity @s[scores={currentTimeMsec=..4}] as @a[scores={elytraTimer=..0,actionbarState=-3}] run title @s actionbar ["",{"text":"Elytra lost!","bold":"true","color":"gray"}]
execute if entity @s[scores={currentTimeMsec=5..}] as @a[scores={elytraTimer=..0,actionbarState=-3}] run title @s actionbar ["",{"text":"Elytra lost!","bold":"true","color":"dark_gray"}]


#state -2, show item pickup cooldown to impatient players
execute if entity @s[scores={currentTimeMsec=..4}] as @a[scores={actionbarState=-2}] run title @s actionbar ["",{"text":"Pickup Cooldown [","bold":"true","color":"yellow"},{"score":{"name":"@s","objective":"pickupTimer"},"bold":"true","color":"yellow"},{"text":"s]","bold":"true","color":"yellow"}]
execute if entity @s[scores={currentTimeMsec=5..}] as @a[scores={actionbarState=-2}] run title @s actionbar ["",{"text":"Pickup Cooldown [","bold":"true","color":"gold"},{"score":{"name":"@s","objective":"pickupTimer"},"bold":"true","color":"gold"},{"text":"s]","bold":"true","color":"gold"}]


#state -1, show final time
execute if entity @s[scores={currentTimeSec=..9}] run title @a[scores={actionbarState=-1}] actionbar ["",{"text":"Final time: ","color":"yellow","bold":"true"},{"score":{"name":"@s","objective":"currentTimeMin"},"color":"yellow"},{"text":":0","color":"yellow"},{"score":{"name":"@s","objective":"currentTimeSec"},"color":"yellow"},{"text":":","color":"yellow"},{"score":{"name":"@s","objective":"currentTimeMsec"},"color":"yellow"}]
execute if entity @s[scores={currentTimeSec=10..}] run title @a[scores={actionbarState=-1}] actionbar ["",{"text":"Final time: ","color":"yellow","bold":"true"},{"score":{"name":"@s","objective":"currentTimeMin"},"color":"yellow"},{"text":":","color":"yellow"},{"score":{"name":"@s","objective":"currentTimeSec"},"color":"yellow"},{"text":":","color":"yellow"},{"score":{"name":"@s","objective":"currentTimeMsec"},"color":"yellow"}]


#state 1, DEFAULT STATE, show current LAP time or navigator depending on settings
execute as @a[tag=playing,gamemode=adventure,tag=timer,tag=!navigator,scores={actionbarState=1}] run function sprint_racer_language:_dlc_1/gameplay/ta_self_lap_display
execute as @a[tag=playing,gamemode=adventure,tag=!darkHUD,tag=!timer,tag=navigator,scores={actionbarState=1}] run function sprint_racer_language:gameplay/navigation_arrow_light
execute as @a[tag=playing,gamemode=adventure,tag=darkHUD,tag=!timer,tag=navigator,scores={actionbarState=1}] run function sprint_racer_language:gameplay/navigation_arrow_dark
execute if entity @s[scores={currentTimeSec=..9}] run title @a[tag=!timer,tag=!darkHUD,tag=!navigator,scores={actionbarState=1}] actionbar ["",{"score":{"name":"@s","objective":"currentTimeMin"}},{"text":":0"},{"score":{"name":"@s","objective":"currentTimeSec"}},{"text":":"},{"score":{"name":"@s","objective":"currentTimeMsec"}}]
execute if entity @s[scores={currentTimeSec=10..}] run title @a[tag=!timer,tag=!darkHUD,tag=!navigator,scores={actionbarState=1}] actionbar ["",{"score":{"name":"@s","objective":"currentTimeMin"}},{"text":":"},{"score":{"name":"@s","objective":"currentTimeSec"}},{"text":":"},{"score":{"name":"@s","objective":"currentTimeMsec"}}]
execute if entity @s[scores={currentTimeSec=..9}] run title @a[tag=!timer,tag=darkHUD,tag=!navigator,scores={actionbarState=1}] actionbar ["",{"score":{"name":"@s","objective":"currentTimeMin"},"color":"black"},{"text":":0","color":"black"},{"score":{"name":"@s","objective":"currentTimeSec"},"color":"black"},{"text":":","color":"black"},{"score":{"name":"@s","objective":"currentTimeMsec"},"color":"black"}]
execute if entity @s[scores={currentTimeSec=10..}] run title @a[tag=!timer,tag=darkHUD,tag=!navigator,scores={actionbarState=1}] actionbar ["",{"score":{"name":"@s","objective":"currentTimeMin"},"color":"black"},{"text":":","color":"black"},{"score":{"name":"@s","objective":"currentTimeSec"},"color":"black"},{"text":":","color":"black"},{"score":{"name":"@s","objective":"currentTimeMsec"},"color":"black"}]

#state 2, flash split time for LAP
execute unless entity @s[tag=halftick] if entity @s[scores={oTimer=0}] as @a[tag=!darkHUD,scores={actionbarState=2,storedTimeSec=..9}] at @s run title @s actionbar ["",{"text":"Lap ","color":"white","bold":"true"},{"score":{"name":"@s","objective":"taStoredLap"},"color":"white","bold":"true"},{"text":": ","color":"white","bold":"true"},{"score":{"name":"@s","objective":"storedTimeMin"}},{"text":":0"},{"score":{"name":"@s","objective":"storedTimeSec"}},{"text":":"},{"score":{"name":"@s","objective":"storedTimeMsec"}}]
execute unless entity @s[tag=halftick] if entity @s[scores={oTimer=0}] as @a[tag=!darkHUD,scores={actionbarState=2,storedTimeSec=10..}] at @s run title @s actionbar ["",{"text":"Lap ","color":"white","bold":"true"},{"score":{"name":"@s","objective":"taStoredLap"},"color":"white","bold":"true"},{"text":": ","color":"white","bold":"true"},{"score":{"name":"@s","objective":"storedTimeMin"}},{"text":":"},{"score":{"name":"@s","objective":"storedTimeSec"}},{"text":":"},{"score":{"name":"@s","objective":"storedTimeMsec"}}]
execute unless entity @s[tag=halftick] if entity @s[scores={oTimer=0}] as @a[tag=darkHUD,scores={actionbarState=2,storedTimeSec=..9}] at @s run title @s actionbar ["",{"text":"Lap ","color":"black","bold":"true"},{"score":{"name":"@s","objective":"taStoredLap"},"color":"black","bold":"true"},{"text":": ","color":"black","bold":"true"},{"score":{"name":"@s","objective":"storedTimeMin"},"color":"black"},{"text":":0","color":"black"},{"score":{"name":"@s","objective":"storedTimeSec"},"color":"black"},{"text":":","color":"black"},{"score":{"name":"@s","objective":"storedTimeMsec"},"color":"black"}]
execute unless entity @s[tag=halftick] if entity @s[scores={oTimer=0}] as @a[tag=darkHUD,scores={actionbarState=2,storedTimeSec=10..}] at @s run title @s actionbar ["",{"text":"Lap ","color":"black","bold":"true"},{"score":{"name":"@s","objective":"taStoredLap"},"color":"black","bold":"true"},{"text":": ","color":"black","bold":"true"},{"score":{"name":"@s","objective":"storedTimeMin"},"color":"black"},{"text":":","color":"black"},{"score":{"name":"@s","objective":"storedTimeSec"},"color":"black"},{"text":":","color":"black"},{"score":{"name":"@s","objective":"storedTimeMsec"},"color":"black"}]
execute unless entity @s[tag=halftick] if entity @s[scores={oTimer=1}] run title @a[scores={actionbarState=2}] actionbar [""]
execute if entity @s[tag=halftick] as @a[scores={actionbarState=2}] at @s run function sprint_racer_language:_dlc_1/gameplay/flash_split_halftick_ta

#state 3, show timers for resistance, invisibility, invincibility
execute if entity @a[scores={actionbarState=3}] run function sprint_racer_language:gameplay/effects_display_race


#state 4, tell players how to enchant items
execute if entity @s[scores={currentTimeMsec=..4}] run title @a[scores={actionbarState=4}] actionbar ["",{"text":"Hold an item in your hand to use an enchanting table!","color":"light_purple","bold":"true"}]
execute if entity @s[scores={currentTimeMsec=5..}] run title @a[scores={actionbarState=4}] actionbar ["",{"text":"Hold an item in your hand to use an enchanting table!","color":"dark_purple","bold":"true"}]


#state 5, announce finish of most recently finished medal time
#this is intentionally blank, handled in other functions


#state 6, off course
execute if entity @s[scores={currentTimeMsec=..4}] run title @a[tag=!noInventory,scores={actionbarState=6}] actionbar ["",{"text":"You're off course!","color":"red","bold":"true"}]
execute if entity @s[scores={currentTimeMsec=5..}] run title @a[tag=!noInventory,scores={actionbarState=6}] actionbar ["",{"text":"You're off course!","color":"dark_red","bold":"true"}]


#state 7, wrong way
execute if entity @s[scores={currentTimeMsec=..4}] run title @a[tag=!noInventory,scores={actionbarState=7}] actionbar ["",{"text":"Wrong way!","color":"red","bold":"true"}]
execute if entity @s[scores={currentTimeMsec=5..}] run title @a[tag=!noInventory,scores={actionbarState=7}] actionbar ["",{"text":"Wrong way!","color":"dark_red","bold":"true"}]


#state 8, missed checkpoint
execute if entity @s[scores={currentTimeMsec=..4}] run title @a[tag=!noInventory,scores={actionbarState=8}] actionbar ["",{"text":"You missed a checkpoint!","color":"red","bold":"true"}]
execute if entity @s[scores={currentTimeMsec=5..}] run title @a[tag=!noInventory,scores={actionbarState=8}] actionbar ["",{"text":"You missed a checkpoint!","color":"dark_red","bold":"true"}]



#when actionbarState2 hits zero, go back to state 0
#unless the player is finished, in which case we send them to actionbarState 100
scoreboard players remove @a[scores={actionbarState2=1..}] actionbarState2 1
scoreboard players set @a[tag=playing,tag=!finished,scores={actionbarState2=..0,actionbarState=..0}] actionbarState 1
scoreboard players set @a[tag=playing,tag=!finished,scores={actionbarState2=..0,actionbarState=2..}] actionbarState 1
scoreboard players set @a[tag=playing,tag=finished,scores={actionbarState2=..0,actionbarState=0..99}] actionbarState -1
scoreboard players set @a[tag=!playing] actionbarState -10

#repeat the timer stuff again when half tick speed is enabled
execute if entity @e[name=w,tag=halftick] run function sprint_racer_language:_dlc_1/gameplay/actionbar_display_timeattack_echo