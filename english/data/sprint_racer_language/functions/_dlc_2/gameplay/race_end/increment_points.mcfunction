#no teams? AI has no points to add
execute unless entity @e[name=w,type=armor_stand,tag=teamplay] run scoreboard players set @e[tag=random,type=armor_stand,scores={addPoints=1..}] addPoints 0

#sound effect
execute if entity @a[tag=playing,scores={addPoints=1..}] as @a at @s run playsound minecraft:ui.button.click master @s
execute unless entity @a[tag=playing,scores={addPoints=1..}] if entity @e[tag=random,type=armor_stand,scores={addPoints=1..}] as @a at @s run playsound minecraft:ui.button.click master @s

###############
# "Orange" and "Cyan" names can be changed to whatever you want.
execute as @a[tag=playing,tag=playerOrange,scores={addPoints=100..}] run scoreboard players add Orange teamPointsShow 100
execute as @a[tag=playing,tag=playerOrange,scores={addPoints=10..}] run scoreboard players add Orange teamPointsShow 10
execute as @a[tag=playing,tag=playerOrange,scores={addPoints=1..}] run scoreboard players add Orange teamPointsShow 1
execute as @e[tag=random,type=armor_stand,tag=playerOrange,scores={addPoints=100..}] run scoreboard players add Orange teamPointsShow 100
execute as @e[tag=random,type=armor_stand,tag=playerOrange,scores={addPoints=10..}] run scoreboard players add Orange teamPointsShow 10
execute as @e[tag=random,type=armor_stand,tag=playerOrange,scores={addPoints=1..}] run scoreboard players add Orange teamPointsShow 1

execute as @a[tag=playing,tag=playerCyan,scores={addPoints=100..}] run scoreboard players add Cyan teamPointsShow 100
execute as @a[tag=playing,tag=playerCyan,scores={addPoints=10..}] run scoreboard players add Cyan teamPointsShow 10
execute as @a[tag=playing,tag=playerCyan,scores={addPoints=1..}] run scoreboard players add Cyan teamPointsShow 1
execute as @e[tag=random,type=armor_stand,tag=playerCyan,scores={addPoints=100..}] run scoreboard players add Cyan teamPointsShow 100
execute as @e[tag=random,type=armor_stand,tag=playerCyan,scores={addPoints=10..}] run scoreboard players add Cyan teamPointsShow 10
execute as @e[tag=random,type=armor_stand,tag=playerCyan,scores={addPoints=1..}] run scoreboard players add Cyan teamPointsShow 1
###############


execute as @a[tag=playing,tag=playerOrange,scores={addPoints=100..}] run scoreboard players add @e[name=w,type=armor_stand] teamPoints 100
execute as @a[tag=playing,tag=playerOrange,scores={addPoints=10..}] run scoreboard players add @e[name=w,type=armor_stand] teamPoints 10
execute as @a[tag=playing,tag=playerOrange,scores={addPoints=1..}] run scoreboard players add @e[name=w,type=armor_stand] teamPoints 1
execute as @e[tag=random,type=armor_stand,tag=playerOrange,scores={addPoints=100..}] run scoreboard players add @e[name=w,type=armor_stand] teamPoints 100
execute as @e[tag=random,type=armor_stand,tag=playerOrange,scores={addPoints=10..}] run scoreboard players add @e[name=w,type=armor_stand] teamPoints 10
execute as @e[tag=random,type=armor_stand,tag=playerOrange,scores={addPoints=1..}] run scoreboard players add @e[name=w,type=armor_stand] teamPoints 1

execute as @a[tag=playing,tag=playerCyan,scores={addPoints=100..}] run scoreboard players remove @e[name=w,type=armor_stand] teamPoints 100
execute as @a[tag=playing,tag=playerCyan,scores={addPoints=10..}] run scoreboard players remove @e[name=w,type=armor_stand] teamPoints 10
execute as @a[tag=playing,tag=playerCyan,scores={addPoints=1..}] run scoreboard players remove @e[name=w,type=armor_stand] teamPoints 1
execute as @e[tag=random,type=armor_stand,tag=playerCyan,scores={addPoints=100..}] run scoreboard players remove @e[name=w,type=armor_stand] teamPoints 100
execute as @e[tag=random,type=armor_stand,tag=playerCyan,scores={addPoints=10..}] run scoreboard players remove @e[name=w,type=armor_stand] teamPoints 10
execute as @e[tag=random,type=armor_stand,tag=playerCyan,scores={addPoints=1..}] run scoreboard players remove @e[name=w,type=armor_stand] teamPoints 1


scoreboard players add @a[tag=playing,scores={addPoints=100..}] points 100
scoreboard players set @a[tag=playing,scores={addPoints=100..}] addPoints 100
scoreboard players remove @e[tag=random,type=armor_stand,scores={addPoints=100..}] addPoints 100

scoreboard players add @a[tag=playing,scores={addPoints=10..}] points 10
scoreboard players remove @a[tag=playing,scores={addPoints=10..}] addPoints 10
scoreboard players remove @e[tag=random,type=armor_stand,scores={addPoints=10..}] addPoints 10

scoreboard players add @a[tag=playing,scores={addPoints=1..}] points 1
scoreboard players remove @a[tag=playing,scores={addPoints=1..}] addPoints 1
scoreboard players remove @e[tag=random,type=armor_stand,scores={addPoints=1..}] addPoints 1

#this will loop as long as players exist who haven't gotten their points
execute if entity @a[tag=playing,scores={addPoints=1..}] run scoreboard players remove @e[name=w] gameTime 4
execute unless entity @a[tag=playing,scores={addPoints=1..}] if entity @e[tag=random,type=armor_stand,scores={addPoints=1..}] run scoreboard players remove @e[name=w] gameTime 4