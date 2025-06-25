# Setup
    function utilities:database/player/get
    scoreboard objectives add calc.horizontal_speed dummy
    scoreboard objectives remove calc.sqrt
    data remove storage math:sqrt answer

# Set values
    scoreboard players set x calc.horizontal_speed 0
    scoreboard players set z calc.horizontal_speed 0
    scoreboard players set v1 calc.horizontal_speed -1
    scoreboard players set v2 calc.horizontal_speed 20
    #execute store result score v2 calc.horizontal_speed run data get storage database return.horizontal_speed 100
    execute store result score x1 calc.horizontal_speed run data get entity @s Pos[0] 100
    execute store result score z1 calc.horizontal_speed run data get entity @s Pos[2] 100
    execute store result score x2 calc.horizontal_speed run data get storage database return.position.x 100
    execute store result score z2 calc.horizontal_speed run data get storage database return.position.z 100

# Calculate x and z
    scoreboard players operation x calc.horizontal_speed = x1 calc.horizontal_speed
    scoreboard players operation x calc.horizontal_speed -= x2 calc.horizontal_speed
    scoreboard players operation z calc.horizontal_speed = z1 calc.horizontal_speed
    scoreboard players operation z calc.horizontal_speed -= z2 calc.horizontal_speed
    execute if score x calc.horizontal_speed matches ..0 run scoreboard players operation x calc.horizontal_speed *= v1 calc.horizontal_speed
    execute if score z calc.horizontal_speed matches ..0 run scoreboard players operation z calc.horizontal_speed *= v1 calc.horizontal_speed

# Calculate distance
    scoreboard players operation x calc.horizontal_speed *= x calc.horizontal_speed
    scoreboard players operation z calc.horizontal_speed *= z calc.horizontal_speed
    scoreboard players operation v1 calc.horizontal_speed = x calc.horizontal_speed
    scoreboard players operation v1 calc.horizontal_speed += z calc.horizontal_speed
    execute store result storage math:sqrt number int 1 run scoreboard players get v1 calc.horizontal_speed
    function utilities:math/sqrt
    execute store result score v1 calc.horizontal_speed run data get storage math:sqrt answer
    scoreboard players operation v1 calc.horizontal_speed *= v2 calc.horizontal_speed
    #scoreboard players operation v1 calc.horizontal_speed += v2 calc.horizontal_speed

# Update position
    execute store result storage database args.data.position.x float 0.001 run data get entity @s Pos[0] 1000
    execute store result storage database args.data.position.y float 0.001 run data get entity @s Pos[1] 1000
    execute store result storage database args.data.position.z float 0.001 run data get entity @s Pos[2] 1000
    execute store result storage database args.data.horizontal_speed float 0.01 run scoreboard players get v1 calc.horizontal_speed
    function utilities:database/player/save

# Cleanup
    scoreboard objectives remove calc.horizontal_speed
    data remove storage database return
    scoreboard objectives remove calc.sqrt
    data remove storage math:sqrt answer
    data remove storage math:sqrt number
    data remove storage math:sqrt check
    data remove storage math:sqrt last_check

# Log
    function utilities:database/player/get
    title @s[tag=log] actionbar [{storage:"database",nbt:"return.horizontal_speed"},{text:" m/s"}]
    data remove storage database return