# IF Sprinting

execute as @a if score @s sprint_one_cm matches 1.. run function movement:scoreboard/sprinting

# IF Walking

execute as @a if score @s walk_one_cm matches 1.. run function movement:scoreboard/walking

# IF Sneaking

execute as @a unless score @s sneak_time matches 1.. run scoreboard players set @s sneaking 0
execute as @a unless score @s sneak_time matches 1.. run attribute @s scale base reset
execute as @a if score @s sneak_time matches 1.. run function movement:scoreboard/sneaking