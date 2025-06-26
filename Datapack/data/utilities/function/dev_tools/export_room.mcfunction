#forceload add 0 0 0 0

$setblock 2 -60 2 minecraft:structure_block{sizeX:1,sizeY:1,sizeZ:1,name:"$(StructureID)",mode:"SAVE"}

$summon minecraft:marker 2.5 -58.5 2.5 {CustomName:"$(StructureID)",data:{Main:{}}}

$data modify entity @e[type=minecraft:marker,name="$(StructureID)",limit=1,x=2,y=-58,z=2,sort=nearest] data.Main merge from storage minecraft:temp_dev_room Main