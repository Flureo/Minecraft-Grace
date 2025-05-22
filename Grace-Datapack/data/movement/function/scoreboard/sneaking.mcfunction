# If Sneaking

scoreboard players set @s sneak_time 0

execute if score @s sneaking matches 1 run return fail

scoreboard players set @s sneaking 1

execute if score @s sprinting matches 1 run title @s actionbar "You are Sliding!"
execute if score @s sprinting matches 1 run attribute @s sneaking_speed base set 1

execute if score @s sprinting matches 0 run title @s actionbar "You are Sneaking!"
execute if score @s sprinting matches 0 run attribute @s sneaking_speed base set 0.5

attribute @s scale base set 0.65