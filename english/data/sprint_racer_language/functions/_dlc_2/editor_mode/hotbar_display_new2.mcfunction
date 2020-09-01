#SLOT 0
#don't put anything here! already in use for creative mode players.

#SLOT 1

#SLOT 2

#SLOT 3

#SLOT 4
replaceitem entity @s[gamemode=creative,tag=!restricted,tag=!selecting,scores={playerState=2}] hotbar.4 minecraft:creeper_spawn_egg{display:{Name:"{\"text\":\"Eraser\",\"color\":\"green\",\"bold\":true,\"italic\":false}"},EntityTag:{NoGravity:1b,Silent:1b,Invulnerable:1b,CustomNameVisible:1b,PersistenceRequired:1b,NoAI:1b,Tags:["killme"],CustomName:"{\"text\":\"BOOM\",\"bold\":true}"}} 1
replaceitem entity @s[gamemode=creative,tag=!restricted,tag=selecting,scores={playerState=2}] hotbar.4 minecraft:creeper_spawn_egg{display:{Name:"[\"\",{\"text\":\"Eraser \",\"color\":\"green\",\"bold\":true,\"italic\":false},{\"text\":\"(erase all selected nodes)\",\"color\":\"white\",\"bold\":true,\"italic\":false}]"},EntityTag:{NoGravity:1b,Silent:1b,Invulnerable:1b,CustomNameVisible:1b,PersistenceRequired:1b,NoAI:1b,Tags:["killme"],CustomName:"{\"text\":\"BOOM\",\"bold\":true}"}} 1

#SLOT 5
replaceitem entity @s[gamemode=creative,tag=!restricted,scores={playerState=2}] hotbar.5 minecraft:snowball{display:{Name:"[\"\",{\"keybind\":\"key.use\",\"color\":\"yellow\",\"bold\":\"true\",\"italic\":\"false\"},{\"text\":\" >> Select nearest node\",\"color\":\"white\",\"bold\":\"true\",\"italic\":\"false\"}]"}} 1

#SLOT 6
replaceitem entity @s[gamemode=creative,tag=!restricted,tag=!selecting,tag=!nearChest,scores={playerState=2}] hotbar.6 minecraft:coal{display:{Name:"[\"\",{\"text\":\"RESERVED\",\"color\":\"dark_gray\",\"bold\":\"true\",\"italic\":\"false\"}]"}} 1
replaceitem entity @s[gamemode=creative,tag=!restricted,tag=!selecting,tag=nearChest,scores={playerState=2}] hotbar.6 minecraft:orange_dye{display:{Name:"[\"\",{\"keybind\":\"key.drop\",\"color\":\"yellow\",\"bold\":\"true\",\"italic\":\"false\"},{\"text\":\" >> Edit Item Chest\",\"color\":\"gold\",\"bold\":\"true\",\"italic\":\"false\"}]"}} 1
replaceitem entity @s[gamemode=creative,tag=!restricted,tag=selecting,scores={playerState=2}] hotbar.6 minecraft:dispenser{display:{Name:"[\"\",{\"keybind\":\"key.drop\",\"color\":\"yellow\",\"bold\":\"true\",\"italic\":\"false\"},{\"text\":\" >> Choose Face Direction\",\"color\":\"gray\",\"bold\":\"true\",\"italic\":\"false\"}]"}} 1

#SLOT 7
replaceitem entity @s[gamemode=creative,tag=!restricted,tag=!selecting,tag=!nearCheck,scores={playerState=2}] hotbar.7 minecraft:coal{display:{Name:"[\"\",{\"text\":\"RESERVED\",\"color\":\"dark_gray\",\"bold\":\"true\",\"italic\":\"false\"}]"}} 1
replaceitem entity @s[gamemode=creative,tag=!restricted,tag=!selecting,tag=nearCheck,scores={playerState=2}] hotbar.7 minecraft:white_dye{display:{Name:"[\"\",{\"keybind\":\"key.drop\",\"color\":\"yellow\",\"bold\":\"true\",\"italic\":\"false\"},{\"text\":\" >> Edit Checkpoint\",\"color\":\"white\",\"bold\":\"true\",\"italic\":\"false\"}]"}} 1
replaceitem entity @s[gamemode=creative,tag=!restricted,tag=selecting,scores={playerState=2}] hotbar.7 minecraft:ender_pearl{display:{Name:"[\"\",{\"keybind\":\"key.use\",\"color\":\"yellow\",\"bold\":\"true\",\"italic\":\"false\"},{\"text\":\" >> Selected Nodes: Look at me!\",\"color\":\"dark_aqua\",\"bold\":\"true\",\"italic\":\"false\"}]"}} 1

#SLOT 8
replaceitem entity @s[gamemode=creative,tag=!restricted,tag=!selecting,tag=!nearAIBC,scores={playerState=2}] hotbar.8 minecraft:coal{display:{Name:"[\"\",{\"text\":\"RESERVED\",\"color\":\"dark_gray\",\"bold\":\"true\",\"italic\":\"false\"}]"}} 1
replaceitem entity @s[gamemode=creative,tag=!restricted,tag=!selecting,tag=nearAIBC,scores={playerState=2}] hotbar.8 minecraft:red_dye{display:{Name:"[\"\",{\"keybind\":\"key.drop\",\"color\":\"yellow\",\"bold\":\"true\",\"italic\":\"false\"},{\"text\":\" >> Edit Breadcrumb\",\"color\":\"red\",\"bold\":\"true\",\"italic\":\"false\"}]"}} 1
replaceitem entity @s[gamemode=creative,tag=!restricted,tag=selecting,scores={playerState=2}] hotbar.8 minecraft:barrier{display:{Name:"[\"\",{\"keybind\":\"key.drop\",\"color\":\"yellow\",\"bold\":\"true\",\"italic\":\"false\"},{\"text\":\" >> Cancel Selection\",\"color\":\"red\",\"bold\":\"true\",\"italic\":\"false\"}]"}} 1