execute as @a run function movement:update/per_tick

execute as @a if predicate movement:is_pressing/sprint run function movement:sprinting
execute as @a unless predicate movement:is_pressing/sprint run function movement:walking

execute as @a run attribute @s sneaking_speed base set 1