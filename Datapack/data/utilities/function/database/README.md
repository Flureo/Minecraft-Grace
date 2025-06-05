# Database

## Purging Database
To purge the whole database just run this command.
```
/function utilities:database/purge
```

## Player Database Usages

### Creating Instance
To create a player instance is run this command as the player.

```
/function utilities:database/player/create
```

### Deleting Instance
To delete a player instance is run this command as the player.

```
/function utilities:database/player/delete
```

### Writing to Player Instance
To write to the player instance you need to do two things. First you must write the data you want the player instance to have and store that data inside of `database args.data`

```
/data modify storage database args.data set value (namespace:value)
```
or
```
/data modify storage database args.data set from entity @s (path)
```

Then you will need to save the data that you saved to `database args.data` to the player instance. Make sure you run the command as the player you want to save it to.
 
```
/function utilities:database/player/save
```

### Grabing Player Instance
It is hard to read data from a single player instance without separating that single instance out. And that is exactly what we are doing to get the players data. Make sure you run the command as the player you want to get the data from.

```
/function utilities:database/player/get
```

Testing the data is simple.

```
/execute if data storage database return{namespace:value}
```