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
tellraw @a ["",{"text":"===\\/=== TEST TRACK ===\\/===","color":"light_purple"}]
tellraw @a ["",{"text":"[Race Test]","color":"aqua","clickEvent":{"action":"run_command","value":"/function sprint_racer:game_logic/10/test_track/race"},"hoverEvent":{"action":"show_text","value":"Race Test"}},{"text":"  "},{"text":"[Time Attack Test]","color":"yellow","clickEvent":{"action":"run_command","value":"/function sprint_racer:game_logic/10/test_track/time_attack_race"},"hoverEvent":{"action":"show_text","value":"Time Attack Test"}}]
execute if entity @e[name=w,type=armor_stand,tag=!noCalcGen] run tellraw @a ["",{"text":"Auto-generate position calc points? ","bold":"true"},{"text":"[Yes]","color":"yellow","clickEvent":{"action":"run_command","value":"/function sprint_racer:game_logic/10/test_track/calc_gen_enable"},"hoverEvent":{"action":"show_text","value":"Yes"}},{"text":"  "},{"text":"[No]","color":"gray","clickEvent":{"action":"run_command","value":"/function sprint_racer:game_logic/10/test_track/calc_gen_disable"},"hoverEvent":{"action":"show_text","value":"No"}}]
execute if entity @e[name=w,type=armor_stand,tag=noCalcGen] run tellraw @a ["",{"text":"Auto-generate position calc points? ","bold":"true"},{"text":"[Yes]","color":"gray","clickEvent":{"action":"run_command","value":"/function sprint_racer:game_logic/10/test_track/calc_gen_enable"},"hoverEvent":{"action":"show_text","value":"Yes"}},{"text":"  "},{"text":"[No]","color":"yellow","clickEvent":{"action":"run_command","value":"/function sprint_racer:game_logic/10/test_track/calc_gen_disable"},"hoverEvent":{"action":"show_text","value":"No"}}]
tellraw @a ["",{"text":"===/\\=== TEST TRACK ===/\\===","color":"light_purple"}]