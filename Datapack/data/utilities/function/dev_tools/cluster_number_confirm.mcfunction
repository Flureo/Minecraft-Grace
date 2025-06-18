
$execute store result storage $(Namespace) $(Var) int 1 run scoreboard players get @s test_number


scoreboard objectives remove test_number
data remove storage dev:test_number Main


playsound minecraft:ui.cartography_table.take_result master @a ~ ~ ~ 1 0.7

$execute run $(EndFunction)