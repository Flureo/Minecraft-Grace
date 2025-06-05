data modify storage math:sqrt last_check set from storage math:sqrt check

execute if predicate math:sqrt/is_number_valid run return 0

scoreboard objectives add calc.sqrt dummy
scoreboard players set half calc.sqrt 2

scoreboard players operation number calc.sqrt = number calc.sqrt
execute if score number calc.sqrt matches ..0 store result score answer calc.sqrt run data get storage math:sqrt number
execute if score number calc.sqrt matches ..0 store result storage math:sqrt number int 10000 run data get storage math:sqrt number
execute if score number calc.sqrt matches ..0 store result score number calc.sqrt run data get storage math:sqrt number

scoreboard players operation check calc.sqrt = number calc.sqrt
scoreboard players operation check calc.sqrt /= answer calc.sqrt
scoreboard players operation answer calc.sqrt += check calc.sqrt
scoreboard players operation answer calc.sqrt /= half calc.sqrt

scoreboard players operation check calc.sqrt = answer calc.sqrt
scoreboard players operation check calc.sqrt *= answer calc.sqrt

execute store result storage math:sqrt check int 1 run scoreboard players get check calc.sqrt
execute unless predicate math:sqrt/last_check unless predicate math:sqrt/check_answer run return run function math:sqrt

execute store result storage math:sqrt answer float 0.01 run scoreboard players get answer calc.sqrt

scoreboard objectives remove calc.sqrt
data remove storage math:sqrt number
data remove storage math:sqrt check
data remove storage math:sqrt last_check

return run data get storage math:sqrt answer 100