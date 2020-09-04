tellraw @a ["",{"text":" "}]
tellraw @a ["",{"text":" "}]
tellraw @a ["",{"text":" "}]
tellraw @a ["",{"text":" "}]
tellraw @a ["",{"text":" "}]
tellraw @a ["",{"text":" "}]
tellraw @a ["",{"text":" "}]
tellraw @a ["",{"text":" "}]
tellraw @a ["",{"text":" "}]
tellraw @a ["",{"text":" "}]
tellraw @a ["",{"text":" "}]
tellraw @a ["",{"text":" "}]
tellraw @a ["",{"text":" "}]
tellraw @a ["",{"text":" "}]
tellraw @a ["",{"text":" "}]
tellraw @a ["",{"text":" "}]
tellraw @a ["",{"text":" "}]
tellraw @a ["",{"text":" "}]
tellraw @a ["",{"text":"===\\/=== ","color":"red"},{"selector":"@e[limit=1,tag=focusT]","color":"yellow"},{"text":" ===\\/===","color":"red"}]
tellraw @a ["",{"text":"Track name: ","color":"white","bold":"true"},{"text":"[CHANGE]","color":"light_purple","clickEvent":{"action":"suggest_command","value":"/execute as @e[tag=focusT] run data merge entity @s {CustomName:\"{\\\"bold\\\":\\\"false\\\",\\\"italic\\\":\\\"false\\\",\\\"color\\\":\\\"light_purple\\\",\\\"text\\\":\\\"TRACKNAME\\\"}\"}"},"hoverEvent":{"action":"show_text","value":"Rename track (replace \"TRACKNAME\")"}}]
tellraw @a ["",{"text":"Coordinates: ","color":"white","bold":"true"},{"text":"x=","color":"white"},{"score":{"name":"@e[limit=1,tag=focusT]","objective":"coord_x"},"color":"white","bold":"false"},{"text":", z=","color":"white"},{"score":{"name":"@e[limit=1,tag=focusT]","objective":"coord_z"},"color":"white","bold":"false"},{"text":"  "},{"text":"[SET COORDS]","color":"light_purple","clickEvent":{"action":"run_command","value":"/function sprint_racer:game_logic/10/go_find_coordinates"},"hoverEvent":{"action":"show_text","value":"Set where your track is located within the world!"}}]
execute if entity @e[tag=focusT,tag=!noAItrack] run tellraw @a ["",{"text":"Supports AI?","color":"white","bold":"true"},{"text":"  "},{"text":"[Yes]","color":"yellow","clickEvent":{"action":"run_command","value":"/function sprint_racer:game_logic/10/custom_config/ai_enable"},"hoverEvent":{"action":"show_text","value":"Yes"}},{"text":"  "},{"text":"[No]","color":"gray","clickEvent":{"action":"run_command","value":"/function sprint_racer:game_logic/10/custom_config/ai_disable"},"hoverEvent":{"action":"show_text","value":"No"}}]
execute if entity @e[tag=focusT,tag=noAItrack] run tellraw @a ["",{"text":"Supports AI?","color":"white","bold":"true"},{"text":"  "},{"text":"[Yes]","color":"gray","clickEvent":{"action":"run_command","value":"/function sprint_racer:game_logic/10/custom_config/ai_enable"},"hoverEvent":{"action":"show_text","value":"Yes"}},{"text":"  "},{"text":"[No]","color":"yellow","clickEvent":{"action":"run_command","value":"/function sprint_racer:game_logic/10/custom_config/ai_disable"},"hoverEvent":{"action":"show_text","value":"No"}}]
execute if entity @e[tag=focusT] run tellraw @a ["",{"text":"Time Attack Targets: ","color":"white","bold":"true"},{"score":{"name":"@e[limit=1,tag=focusT]","objective":"customTTargets"}},{"text":"  "},{"text":"[+]","color":"green","clickEvent":{"action":"run_command","value":"/function sprint_racer:game_logic/10/custom_config/targets_increase"},"hoverEvent":{"action":"show_text","value":"Increase"}},{"text":"  "},{"text":"[-]","color":"red","clickEvent":{"action":"run_command","value":"/function sprint_racer:game_logic/10/custom_config/targets_decrease"},"hoverEvent":{"action":"show_text","value":"Decrease"}}]
execute if entity @e[tag=focusT,scores={customTrackTime=0..2999}] run tellraw @a ["",{"text":"Time of day: ","color":"white","bold":"true"},{"score":{"name":"@e[limit=1,tag=focusT]","objective":"customTrackTime"}},{"text":"  "},{"text":"[+]","color":"green","clickEvent":{"action":"run_command","value":"/function sprint_racer:game_logic/10/custom_config/time_increase"},"hoverEvent":{"action":"show_text","value":"Increase"}},{"text":"  "},{"text":"[-]","color":"red","clickEvent":{"action":"run_command","value":"/function sprint_racer:game_logic/10/custom_config/time_decrease"},"hoverEvent":{"action":"show_text","value":"Decrease"}},{"text":" "},{"text":" "},{"text":"(Morning)","color":"white","bold":"false"}]
execute if entity @e[tag=focusT,scores={customTrackTime=3000..8999}] run tellraw @a ["",{"text":"Time of day: ","color":"white","bold":"true"},{"score":{"name":"@e[limit=1,tag=focusT]","objective":"customTrackTime"}},{"text":"  "},{"text":"[+]","color":"green","clickEvent":{"action":"run_command","value":"/function sprint_racer:game_logic/10/custom_config/time_increase"},"hoverEvent":{"action":"show_text","value":"Increase"}},{"text":"  "},{"text":"[-]","color":"red","clickEvent":{"action":"run_command","value":"/function sprint_racer:game_logic/10/custom_config/time_decrease"},"hoverEvent":{"action":"show_text","value":"Decrease"}},{"text":" "},{"text":" "},{"text":"(Noon)","color":"white","bold":"false"}]
execute if entity @e[tag=focusT,scores={customTrackTime=9000..14999}] run tellraw @a ["",{"text":"Time of day: ","color":"white","bold":"true"},{"score":{"name":"@e[limit=1,tag=focusT]","objective":"customTrackTime"}},{"text":"  "},{"text":"[+]","color":"green","clickEvent":{"action":"run_command","value":"/function sprint_racer:game_logic/10/custom_config/time_increase"},"hoverEvent":{"action":"show_text","value":"Increase"}},{"text":"  "},{"text":"[-]","color":"red","clickEvent":{"action":"run_command","value":"/function sprint_racer:game_logic/10/custom_config/time_decrease"},"hoverEvent":{"action":"show_text","value":"Decrease"}},{"text":" "},{"text":" "},{"text":"(Sunset)","color":"white","bold":"false"}]
execute if entity @e[tag=focusT,scores={customTrackTime=15000..20999}] run tellraw @a ["",{"text":"Time of day: ","color":"white","bold":"true"},{"score":{"name":"@e[limit=1,tag=focusT]","objective":"customTrackTime"}},{"text":"  "},{"text":"[+]","color":"green","clickEvent":{"action":"run_command","value":"/function sprint_racer:game_logic/10/custom_config/time_increase"},"hoverEvent":{"action":"show_text","value":"Increase"}},{"text":"  "},{"text":"[-]","color":"red","clickEvent":{"action":"run_command","value":"/function sprint_racer:game_logic/10/custom_config/time_decrease"},"hoverEvent":{"action":"show_text","value":"Decrease"}},{"text":" "},{"text":" "},{"text":"(Night)","color":"white","bold":"false"}]
execute if entity @e[tag=focusT,scores={customTrackTime=21000..}] run tellraw @a ["",{"text":"Time of day: ","color":"white","bold":"true"},{"score":{"name":"@e[limit=1,tag=focusT]","objective":"customTrackTime"}},{"text":"  "},{"text":"[+]","color":"green","clickEvent":{"action":"run_command","value":"/function sprint_racer:game_logic/10/custom_config/time_increase"},"hoverEvent":{"action":"show_text","value":"Increase"}},{"text":"  "},{"text":"[-]","color":"red","clickEvent":{"action":"run_command","value":"/function sprint_racer:game_logic/10/custom_config/time_decrease"},"hoverEvent":{"action":"show_text","value":"Decrease"}},{"text":" "},{"text":" "},{"text":"(Morning)","color":"white","bold":"false"}]
execute if entity @e[tag=focusT,scores={customTWeather=1}] run tellraw @a ["",{"text":"Weather: ","color":"white","bold":"true"},{"text":" "},{"text":"[<]","color":"yellow","clickEvent":{"action":"run_command","value":"/function sprint_racer:game_logic/10/custom_config/weather_previous"},"hoverEvent":{"action":"show_text","value":"Previous"}},{"text":" "},{"text":"[>]","color":"yellow","clickEvent":{"action":"run_command","value":"/function sprint_racer:game_logic/10/custom_config/weather_next"},"hoverEvent":{"action":"show_text","value":"Next"}},{"text":" "},{"text":" "},{"text":"Clear","color":"white","bold":"false"}]
execute if entity @e[tag=focusT,scores={customTWeather=2}] run tellraw @a ["",{"text":"Weather: ","color":"white","bold":"true"},{"text":" "},{"text":"[<]","color":"yellow","clickEvent":{"action":"run_command","value":"/function sprint_racer:game_logic/10/custom_config/weather_previous"},"hoverEvent":{"action":"show_text","value":"Previous"}},{"text":" "},{"text":"[>]","color":"yellow","clickEvent":{"action":"run_command","value":"/function sprint_racer:game_logic/10/custom_config/weather_next"},"hoverEvent":{"action":"show_text","value":"Next"}},{"text":" "},{"text":" "},{"text":"Rain","color":"white","bold":"false"}]
execute if entity @e[tag=focusT,scores={customTWeather=3}] run tellraw @a ["",{"text":"Weather: ","color":"white","bold":"true"},{"text":" "},{"text":"[<]","color":"yellow","clickEvent":{"action":"run_command","value":"/function sprint_racer:game_logic/10/custom_config/weather_previous"},"hoverEvent":{"action":"show_text","value":"Previous"}},{"text":" "},{"text":"[>]","color":"yellow","clickEvent":{"action":"run_command","value":"/function sprint_racer:game_logic/10/custom_config/weather_next"},"hoverEvent":{"action":"show_text","value":"Next"}},{"text":" "},{"text":" "},{"text":"Thunder","color":"white","bold":"false"}]
execute if entity @e[tag=focusT,tag=!daylightCycle] run tellraw @a ["",{"text":"Daylight Cycle:","color":"white","bold":"true"},{"text":"  "},{"text":"[On]","color":"gray","clickEvent":{"action":"run_command","value":"/function sprint_racer:game_logic/10/custom_config/day_cycle_enable"},"hoverEvent":{"action":"show_text","value":"On"}},{"text":"  "},{"text":"[Off]","color":"yellow","clickEvent":{"action":"run_command","value":"/function sprint_racer:game_logic/10/custom_config/day_cycle_disable"},"hoverEvent":{"action":"show_text","value":"Off"}}]
execute if entity @e[tag=focusT,tag=daylightCycle] run tellraw @a ["",{"text":"Daylight Cycle:","color":"white","bold":"true"},{"text":"  "},{"text":"[On]","color":"yellow","clickEvent":{"action":"run_command","value":"/function sprint_racer:game_logic/10/custom_config/day_cycle_enable"},"hoverEvent":{"action":"show_text","value":"On"}},{"text":"  "},{"text":"[Off]","color":"gray","clickEvent":{"action":"run_command","value":"/function sprint_racer:game_logic/10/custom_config/day_cycle_disable"},"hoverEvent":{"action":"show_text","value":"Off"}}]
execute if entity @e[tag=focusT,tag=trackSmall] run tellraw @a ["",{"text":"Track Size: ","color":"white","bold":"true"},{"text":" "},{"text":"[<]","color":"yellow","clickEvent":{"action":"run_command","value":"/function sprint_racer:game_logic/10/custom_config/size_previous"},"hoverEvent":{"action":"show_text","value":"Previous"}},{"text":" "},{"text":"[>]","color":"yellow","clickEvent":{"action":"run_command","value":"/function sprint_racer:game_logic/10/custom_config/size_next"},"hoverEvent":{"action":"show_text","value":"Next"}},{"text":" "},{"text":" "},{"text":"Small","color":"green","bold":"false"}]
execute if entity @e[tag=focusT,tag=trackMedium] run tellraw @a ["",{"text":"Track Size: ","color":"white","bold":"true"},{"text":" "},{"text":"[<]","color":"yellow","clickEvent":{"action":"run_command","value":"/function sprint_racer:game_logic/10/custom_config/size_previous"},"hoverEvent":{"action":"show_text","value":"Previous"}},{"text":" "},{"text":"[>]","color":"yellow","clickEvent":{"action":"run_command","value":"/function sprint_racer:game_logic/10/custom_config/size_next"},"hoverEvent":{"action":"show_text","value":"Next"}},{"text":" "},{"text":" "},{"text":"Medium","color":"aqua","bold":"false"}]
execute if entity @e[tag=focusT,tag=trackLarge] run tellraw @a ["",{"text":"Track Size: ","color":"white","bold":"true"},{"text":" "},{"text":"[<]","color":"yellow","clickEvent":{"action":"run_command","value":"/function sprint_racer:game_logic/10/custom_config/size_previous"},"hoverEvent":{"action":"show_text","value":"Previous"}},{"text":" "},{"text":"[>]","color":"yellow","clickEvent":{"action":"run_command","value":"/function sprint_racer:game_logic/10/custom_config/size_next"},"hoverEvent":{"action":"show_text","value":"Next"}},{"text":" "},{"text":" "},{"text":"Large","color":"red","bold":"false"}]
tellraw @a ["",{"text":"===/\\=== ","color":"red"},{"selector":"@e[limit=1,tag=focusT]","color":"yellow"},{"text":" ===/\\===","color":"red"}]