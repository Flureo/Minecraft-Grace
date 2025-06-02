# Create new instance of the player if none
    $execute if data storage database players[{UUID:$(UUID)}] run return fail
    $data modify storage database players append value {UUID:$(UUID)}

# Log that a player instance has been created
tellraw @a[tag=log] [{text:"[Grace] ", color:white}, {text:"Player instance has been created.", color:"green"}]