tellraw @s[tag=musicDef] ["",{"text":"Music Track: ","color":"white","bold":"true"},{"text":"[<]","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger BGMcontrol set 2"},"hoverEvent":{"action":"show_text","value":"Previous"}},{"text":" "},{"text":"[>]","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger BGMcontrol set 1"},"hoverEvent":{"action":"show_text","value":"Next"}},{"text":" Defaults","color":"white"}]

tellraw @s[tag=musicSel,scores={BGMtrack=..9}] ["",{"text":"Music Track: ","color":"white","bold":"true"},{"text":"[<]","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger BGMcontrol set 2"},"hoverEvent":{"action":"show_text","value":"Previous"}},{"text":" "},{"text":"[>]","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger BGMcontrol set 1"},"hoverEvent":{"action":"show_text","value":"Next"}},{"text":" 0","color":"white"},{"score":{"name":"@s","objective":"BGMtrack"},"color":"white"}]
tellraw @s[tag=musicSel,scores={BGMtrack=10..}] ["",{"text":"Music Track: ","color":"white","bold":"true"},{"text":"[<]","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger BGMcontrol set 2"},"hoverEvent":{"action":"show_text","value":"Previous"}},{"text":" "},{"text":"[>]","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger BGMcontrol set 1"},"hoverEvent":{"action":"show_text","value":"Next"}},{"text":" ","color":"white"},{"score":{"name":"@s","objective":"BGMtrack"},"color":"white"}]