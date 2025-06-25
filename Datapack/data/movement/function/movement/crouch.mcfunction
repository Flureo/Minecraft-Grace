scoreboard players set @s sliding.speed -2
attribute @s movement_speed base set 0.116
execute if predicate movement:is_sprinting run attribute @s movement_speed base set 0.089