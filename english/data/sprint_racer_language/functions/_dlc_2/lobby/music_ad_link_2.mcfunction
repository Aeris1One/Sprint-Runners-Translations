tellraw @s ["",{"text":" "}]
tellraw @s ["",{"text":"ZetaSphere on SoundCloud:\n","bold":"true","color":"white"},{"text":"https://soundcloud.com/zetasphere","color":"gold","underlined":"true","clickEvent":{"action":"open_url","value":"https://soundcloud.com/zetasphere"},"hoverEvent":{"action":"show_text","value":["",{"text":"ZetaSphere on SoundCloud"}]}}]
#tellraw @s ["",{"text":"\nZetaSphere on Youtube:\n","bold":"true","color":"white"},{"text":"https://www.youtube.com/channel/UCsumMdGCpdofXetjd5Omhgw","color":"red","underlined":"true","clickEvent":{"action":"open_url","value":"https://www.youtube.com/channel/UCsumMdGCpdofXetjd5Omhgw"},"hoverEvent":{"action":"show_text","value":["",{"text":"ZetaSphere on Youtube"}]}}]
execute at @s run playsound minecraft:entity.firework_rocket.blast master @s