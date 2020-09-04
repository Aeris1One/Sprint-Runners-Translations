#erase time attack data
setblock 1578 90 373 birch_sign[rotation=8]
data merge block 1578 90 373 {Text1:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"function sprint_racer:game_logic/0/options_signs/reset_all_ta_data\"}}",Text2:"{\"text\":\"TIME ATTACK DATA\",\"bold\":true,\"color\":\"black\"}",Text3:"{\"text\":\"[ERASE DATA]\",\"color\":\"dark_red\"}"}