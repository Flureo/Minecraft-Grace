attribute @s step_height base reset
execute if predicate movement:is_pressing_sneak if predicate movement:is_pressing_sprint unless predicate movement:not_pressing_wasd unless score @s sliding.speed matches -2 run return run function movement:movement/slide
execute if predicate movement:is_sneaking run return run function movement:movement/crouch
execute if predicate movement:is_pressing_sprint run return run function movement:movement/sprint
function movement:movement/walk