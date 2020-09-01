scoreboard objectives remove medals
scoreboard objectives add medals dummy ["",{"text":"Medals Earned:","color":"white","bold":"true"}]

scoreboard players set @e[name=w] medalTotal 0
scoreboard players set @e[name=w] medalBronze 0
scoreboard players set @e[name=w] medalSilver 0
scoreboard players set @e[name=w] medalGold 0
scoreboard players set @e[name=w] medalDiamond 0
execute as @e[tag=random,scores={medalRace=1..}] run scoreboard players add @e[name=w] medalBronze 1
execute as @e[tag=random,scores={medalRace=2..}] run scoreboard players add @e[name=w] medalSilver 1
execute as @e[tag=random,scores={medalRace=3..}] run scoreboard players add @e[name=w] medalGold 1
execute as @e[tag=random,scores={medalRace=4..}] run scoreboard players add @e[name=w] medalDiamond 1
execute as @e[tag=random,scores={medalRace=1..}] run scoreboard players operation @e[name=w] medalTotal += @s medalRace
execute as @e[tag=random,scores={medalBattle=1..}] run scoreboard players add @e[name=w] medalBronze 1
execute as @e[tag=random,scores={medalBattle=2..}] run scoreboard players add @e[name=w] medalSilver 1
execute as @e[tag=random,scores={medalBattle=3..}] run scoreboard players add @e[name=w] medalGold 1
execute as @e[tag=random,scores={medalBattle=4..}] run scoreboard players add @e[name=w] medalDiamond 1
execute as @e[tag=random,scores={medalBattle=1..}] run scoreboard players operation @e[name=w] medalTotal += @s medalBattle

#note: "Bronze", "Silver", "Gold", "Diamond" are safe to edit

team leave Total
team join colorGold Bronze
team join colorGray Silver
team join colorYellow Gold
team join colorAqua Diamond

scoreboard players operation Total medals = @e[name=w,limit=1] medalTotal
scoreboard players operation Bronze medals = @e[name=w,limit=1] medalBronze
scoreboard players operation Silver medals = @e[name=w,limit=1] medalSilver
scoreboard players operation Gold medals = @e[name=w,limit=1] medalGold
execute if entity @e[name=w,scores={medalDiamond=1..}] run scoreboard players operation Diamond medals = @e[name=w,limit=1] medalDiamond

scoreboard objectives setdisplay sidebar medals