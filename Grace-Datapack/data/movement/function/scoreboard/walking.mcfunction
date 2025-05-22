# If Walking

scoreboard players reset @s walk_one_cm

execute if score @s sprinting matches 0 run return fail

scoreboard players set @s sprinting 0

title @s actionbar "You are Walking!"

attribute @s movement_speed base set .1