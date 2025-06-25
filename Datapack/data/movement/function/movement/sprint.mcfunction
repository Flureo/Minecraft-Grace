scoreboard players set @s sliding.speed -1
attribute @s movement_speed base set 0.1425
execute unless predicate movement:is_sprinting run attribute @s movement_speed base set 0.185