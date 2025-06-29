attribute @s step_height base set 1.9
execute if score @s sliding.speed matches 0 run return fail
execute if score @s sliding.speed matches -1 run scoreboard players set @s sliding.speed 1805

scoreboard players set change sliding.speed 5
scoreboard players operation @s sliding.speed -= change sliding.speed
execute if score @s sliding.speed matches ..-1 run scoreboard players set @s sliding.speed 0

scoreboard players set change sliding.speed 12
execute if predicate movement:is_falling run scoreboard players operation @s sliding.speed += change sliding.speed

scoreboard players set change sliding.speed 150
execute positioned as @s if block ~ ~ ~ #stairs if predicate movement:is_falling run scoreboard players operation @s sliding.speed += change sliding.speed
execute positioned as @s if block ~ ~-1 ~ #stairs if predicate movement:is_falling run scoreboard players operation @s sliding.speed += change sliding.speed
execute positioned as @s if block ~ ~-2 ~ #stairs if predicate movement:is_falling run scoreboard players operation @s sliding.speed += change sliding.speed

execute if score @s[tag=!uncapSpeed] sliding.speed matches 3501.. run scoreboard players set @s sliding.speed 3500

execute if predicate movement:is_sprinting store result storage database args.speed float .0001 run scoreboard players get @s sliding.speed
execute unless predicate movement:is_sprinting store result storage database args.speed float .00013 run scoreboard players get @s sliding.speed
function movement:movement/macro_slid with storage database args

scoreboard players reset change