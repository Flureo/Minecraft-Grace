# If Sprinting

scoreboard players reset @s sprint_one_cm

execute if score @s sprinting matches 1 run return fail

scoreboard players set @s sprinting 1

title @s actionbar "You are Sprinting!"

attribute @s movement_speed base set 0.2