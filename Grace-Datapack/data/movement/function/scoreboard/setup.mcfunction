# Remove All Scoreboards

scoreboard objectives remove sprint_one_cm
scoreboard objectives remove walk_one_cm
scoreboard objectives remove sneak_time

scoreboard objectives remove sprinting
scoreboard objectives remove sneaking

# Create Scoreboards

scoreboard objectives add sprint_one_cm custom:sprint_one_cm
scoreboard objectives add walk_one_cm custom:walk_one_cm
scoreboard objectives add sneak_time custom:sneak_time

scoreboard objectives add sprinting dummy
scoreboard objectives add sneaking dummy