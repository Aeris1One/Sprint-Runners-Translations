execute if entity @s[scores={speedlevel=1}] run bossbar set minecraft:speedo name {"text":" "}
execute if entity @s[scores={speedlevel=2}] run bossbar set minecraft:speedo name {"text":"Speed III (sneaking)"}
execute if entity @s[scores={speedlevel=3}] run bossbar set minecraft:speedo name {"text":"Speed IV (sneaking)"}
execute if entity @s[scores={speedlevel=4}] run bossbar set minecraft:speedo name {"text":"Speed V (sneaking)"}
execute if entity @s[scores={speedlevel=5}] run bossbar set minecraft:speedo name {"text":"Speed VI (sneaking)"}
execute if entity @s[scores={speedlevel=6}] run bossbar set minecraft:speedo name {"text":"Speed VII (sneaking)"}
execute if entity @s[scores={speedlevel=7}] run bossbar set minecraft:speedo name {"text":"Speed VIII (sneaking)"}
execute if entity @s[scores={speedBoost=1..20}] run bossbar set minecraft:speedo name {"text":"Speed XXI (sneaking)"}
execute if entity @s[scores={speedBoost=31..50}] run bossbar set minecraft:speedo name {"text":"Speed XXXI (sneaking)"}