tellraw @a ["",{"text":" "}]
tellraw @a ["",{"text":"New custom track ","color":"white"},{"text":"(race mode)","color":"aqua"},{"text":" created: ","color":"white"},{"selector":"@e[limit=1,tag=imnew]","color":"yellow","bold":"false"}]
execute as @a at @s run playsound minecraft:ui.stonecutter.take_result master @s ~ 10000 ~ 10000 1.7

tellraw @a ["",{"text":"[Click to rename this track]","color":"light_purple","clickEvent":{"action":"suggest_command","value":"/execute as @e[tag=focusT] run data merge entity @s {CustomName:\"{\\\"bold\\\":\\\"false\\\",\\\"italic\\\":\\\"false\\\",\\\"color\\\":\\\"light_purple\\\",\\\"text\\\":\\\"TRACKNAME\\\"}\"}"},"hoverEvent":{"action":"show_text","value":["",{"text":"Rename Track (replace \"TRACKNAME\")"}]}}]
tellraw @a ["",{"text":" "}]