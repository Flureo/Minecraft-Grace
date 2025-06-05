# Delete the player instance if there is an instance
    $execute unless data storage database players[{UUID:$(UUID)}] run return fail
    $data remove storage database players[{UUID:$(UUID)}]

# Log that a player instance has been deleted
tellraw @a[tag=log] [{text:"[Grace] ", color:white}, {text:"Player instance has been deleted.", color:red}]