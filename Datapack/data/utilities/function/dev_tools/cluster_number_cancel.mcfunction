
#Remove data

scoreboard objectives remove test_number
data remove storage dev:test_number Main

#text and sound

tellraw @s [{text:"\n"},{text:"\n"},{text:"\n"},{text:"\n"},{text:"\n"},{text:"\n"},{text:"\n"},{text:"\n"},{text:"\n"},{text:"\n"},{text:"\n"},{text:"\n"},{text:"\n"},{text:"\n"},{text:"\n"},{text:"\n"},{text:"\n"},{text:"\n"},{text:"\n"}]

tellraw @s {text:"Input Canceled",bold:true,color:red}

playsound minecraft:ui.stonecutter.take_result master @a ~ ~ ~ 0.3 0.6

tellraw @s {text:"\n"}