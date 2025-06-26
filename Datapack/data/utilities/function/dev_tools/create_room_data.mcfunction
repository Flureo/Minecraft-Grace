
#Basic Scoreboard and Data Storage Setup

scoreboard objectives add rooms_DEV_Tools dummy rooms_DEV_Tools
scoreboard objectives setdisplay sidebar rooms_DEV_Tools

$scoreboard players set x rooms_DEV_Tools $(x)
$scoreboard players set y rooms_DEV_Tools $(y)
$scoreboard players set z rooms_DEV_Tools $(z)
scoreboard players set switch rooms_DEV_Tools -1

data modify storage temp_dev_room Main set value {}

data modify storage minecraft:temp_dev_room Main.Structure set value {}

$data modify storage minecraft:temp_dev_room Main.Structure.StructureID set value "$(StructureNamespace):$(RoomName)"

data modify storage minecraft:temp_dev_room Main.Structure.SouthOffset set value {}
data modify storage minecraft:temp_dev_room Main.Structure.NorthOffset set value {}
data modify storage minecraft:temp_dev_room Main.Structure.WestOffset set value {}
data modify storage minecraft:temp_dev_room Main.Structure.EastOffset set value {}

data modify storage minecraft:temp_dev_room Main.Pathfinding set value {}
data modify storage minecraft:temp_dev_room Main.Pathfinding.Positions set value []

data modify storage minecraft:temp_dev_room Main.CustomTagArea set value {}

data modify storage minecraft:temp_dev_room Main.Functions set value {}

#setting the custom room data 

$data modify storage temp_dev_room Main.RoomName set value "$(RoomName)"


#South Offset

$data modify storage minecraft:temp_dev_room Main.Structure.SouthOffset.x set value $(x)d
$data modify storage minecraft:temp_dev_room Main.Structure.SouthOffset.y set value $(y)d
$data modify storage minecraft:temp_dev_room Main.Structure.SouthOffset.z set value $(z)d


#North Offset

scoreboard players operation x rooms_DEV_Tools *= switch rooms_DEV_Tools
scoreboard players operation z rooms_DEV_Tools *= switch rooms_DEV_Tools

execute store result storage minecraft:temp_dev_room Main.Structure.NorthOffset.x double 1 run scoreboard players get x rooms_DEV_Tools
execute store result storage minecraft:temp_dev_room Main.Structure.NorthOffset.y double 1 run scoreboard players get y rooms_DEV_Tools
execute store result storage minecraft:temp_dev_room Main.Structure.NorthOffset.z double 1 run scoreboard players get z rooms_DEV_Tools


#West Offset

scoreboard players operation x rooms_DEV_Tools *= switch rooms_DEV_Tools

execute store result storage minecraft:temp_dev_room Main.Structure.WestOffset.x double 1 run scoreboard players get z rooms_DEV_Tools
execute store result storage minecraft:temp_dev_room Main.Structure.WestOffset.y double 1 run scoreboard players get y rooms_DEV_Tools
execute store result storage minecraft:temp_dev_room Main.Structure.WestOffset.z double 1 run scoreboard players get x rooms_DEV_Tools


#East Offset

scoreboard players operation x rooms_DEV_Tools *= switch rooms_DEV_Tools
scoreboard players operation z rooms_DEV_Tools *= switch rooms_DEV_Tools

execute store result storage minecraft:temp_dev_room Main.Structure.EastOffset.x double 1 run scoreboard players get z rooms_DEV_Tools
execute store result storage minecraft:temp_dev_room Main.Structure.EastOffset.y double 1 run scoreboard players get y rooms_DEV_Tools
execute store result storage minecraft:temp_dev_room Main.Structure.EastOffset.z double 1 run scoreboard players get x rooms_DEV_Tools

scoreboard objectives remove rooms_DEV_Tools

tellraw @p [{italic:true,text:"",extra:[{bold:false,text:"Your Room info is in storage "}]},{color:"green",click_event:{action:"suggest_command",command:"/data get storage minecraft:temp_dev_room Main"},text:"[",extra:[{bold:true,text:"minecraft:temp_dev_room]"}]}]

scoreboard objectives add temp dummy temp
scoreboard players set one temp 1
$scoreboard players set macro temp $(export)

$execute if score macro temp = one temp run function utilities:dev_tools/export_room {StructureID:"$(StructureNamespace):$(RoomName)"}

scoreboard objectives remove temp