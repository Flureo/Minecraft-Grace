attribute @s step_height base set 2.21
execute if score @s sliding.speed matches 0 run return fail
execute if score @s sliding.speed matches -1 run scoreboard players set @s sliding.speed 181

scoreboard players set change sliding.speed 1
scoreboard players operation @s sliding.speed -= change sliding.speed
execute if score @s sliding.speed matches ..-1 run scoreboard players set @s sliding.speed 0

scoreboard players set change sliding.speed 4
execute if predicate movement:is_falling run scoreboard players operation @s sliding.speed += change sliding.speed

execute if score @s[tag=!uncappedSpeed] sliding.speed matches 301.. run scoreboard players set @s sliding.speed 300

execute store result storage database args.speed float .001 run scoreboard players get @s sliding.speed
function movement:movement/macro_slid with storage database args

scoreboard players reset change