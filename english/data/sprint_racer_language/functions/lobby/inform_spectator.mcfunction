tellraw @s ["",{"text":"[ ! ] You are currently a spectator. Open your inventory and click on the light blue wool to become a player again.","color":"light_purple"}]
playsound minecraft:block.note_block.iron_xylophone master @s ~ ~ ~ .5 .75
scoreboard players set @s inputCooldown 30