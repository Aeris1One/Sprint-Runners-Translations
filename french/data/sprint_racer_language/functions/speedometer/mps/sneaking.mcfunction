execute if entity @s[scores={speedlevel=1}] run bossbar set minecraft:speedo name {"text":" "}
execute if entity @s[scores={speedlevel=2}] run bossbar set minecraft:speedo name {"text":"1.8 m/s"}
execute if entity @s[scores={speedlevel=3}] run bossbar set minecraft:speedo name {"text":"2.1 m/s"}
execute if entity @s[scores={speedlevel=4}] run bossbar set minecraft:speedo name {"text":"2.4 m/s"}
execute if entity @s[scores={speedlevel=5}] run bossbar set minecraft:speedo name {"text":"2.6 m/s"}
execute if entity @s[scores={speedlevel=6}] run bossbar set minecraft:speedo name {"text":"2.9 m/s"}
execute if entity @s[scores={speedlevel=7}] run bossbar set minecraft:speedo name {"text":"3.1 m/s"}
execute if entity @s[scores={speedBoost=1..20}] run bossbar set minecraft:speedo name {"text":"6.5 m/s"}
execute if entity @s[scores={speedBoost=31..50}] run bossbar set minecraft:speedo name {"text":"9.2 m/s"}