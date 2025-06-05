
#Basic Scoreboard and Data Storage Setup

scoreboard objectives add rooms_DEV_Tools dummy rooms_DEV_Tools
scoreboard objectives setdisplay sidebar rooms_DEV_Tools

$scoreboard players set "x" rooms_DEV_Tools $(x)
$scoreboard players set "y" rooms_DEV_Tools $(y)
$scoreboard players set "z" rooms_DEV_Tools $(z)
scoreboard players set "switch" rooms_DEV_Tools -1

data modify storage temp_dev_room Main set value {}
data modify storage minecraft:temp_dev_room Main.Stucture set value {}
data modify storage minecraft:temp_dev_room Main.Stucture.SouthOffset set value {}
data modify storage minecraft:temp_dev_room Main.Stucture.NorthOffset set value {}
data modify storage minecraft:temp_dev_room Main.Stucture.WestOffset set value {}
data modify storage minecraft:temp_dev_room Main.Stucture.EastOffset set value {}

data modify storage minecraft:temp_dev_room Main.Pathfinding set value {}
data modify storage minecraft:temp_dev_room Main.Pathfinding.Positions set value []

data modify storage minecraft:temp_dev_room Main.CustomTagArea set value {}

data modify storage minecraft:temp_dev_room Main.Functions set value {}

#setting the custom room data 

$data modify storage temp_dev_room Main.RoomName set value $(RoomName)


#South Offset

$data modify storage minecraft:temp_dev_room Main.Stucture.SouthOffset.x set value $(x)d
$data modify storage minecraft:temp_dev_room Main.Stucture.SouthOffset.y set value $(y)d
$data modify storage minecraft:temp_dev_room Main.Stucture.SouthOffset.z set value $(z)d


#North Offset

scoreboard players operation "x" rooms_DEV_Tools *= "switch" rooms_DEV_Tools
scoreboard players operation "z"" rooms_DEV_Tools *= "switch" rooms_DEV_Tools

execute store result storage minecraft:temp_dev_room Main.Stucture.NorthOffset.x double 1 run scoreboard players get "x" rooms_DEV_Tools
execute store result storage minecraft:temp_dev_room Main.Stucture.NorthOffset.y double 1 run scoreboard players get "y" rooms_DEV_Tools
execute store result storage minecraft:temp_dev_room Main.Stucture.NorthOffset.z double 1 run scoreboard players get "z" rooms_DEV_Tools


#West Offset

scoreboard players operation "x" rooms_DEV_Tools *= "switch" rooms_DEV_Tools

execute store result storage minecraft:temp_dev_room Main.Stucture.WestOffset.x double 1 run scoreboard players get "z" rooms_DEV_Tools
execute store result storage minecraft:temp_dev_room Main.Stucture.WestOffset.y double 1 run scoreboard players get "y" rooms_DEV_Tools
execute store result storage minecraft:temp_dev_room Main.Stucture.WestOffset.z double 1 run scoreboard players get "x" rooms_DEV_Tools


#East Offset

scoreboard players operation "x" rooms_DEV_Tools *= "switch" rooms_DEV_Tools
scoreboard players operation "z"" rooms_DEV_Tools *= "switch" rooms_DEV_Tools

execute store result storage minecraft:temp_dev_room Main.Stucture.EastOffset.x double 1 run scoreboard players get "z" rooms_DEV_Tools
execute store result storage minecraft:temp_dev_room Main.Stucture.EastOffset.y double 1 run scoreboard players get "y" rooms_DEV_Tools
execute store result storage minecraft:temp_dev_room Main.Stucture.EastOffset.z double 1 run scoreboard players get "x" rooms_DEV_Tools


#data get entity @s equipment.offhand.components.minecraft:written_book_content.title.raw


#scoreboard objectives remove rooms_DEV_Tools