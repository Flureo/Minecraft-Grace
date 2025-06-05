# Purge whole database
    data remove storage database args
    data remove storage database players
    data remove storage database return

# Log that the database has been purged
tellraw @a[tag=log] [{text:"[Grace] ", color:white}, {text:"Database has been purged.", color:red}]