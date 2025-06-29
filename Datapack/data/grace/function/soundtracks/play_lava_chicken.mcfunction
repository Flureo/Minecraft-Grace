stopsound @s
playsound grace:music.lava_chicken record
tellraw @s [{text:"Now Playing: ", color:green},{text:"Lava Chicken",color:gold,bold:true,hover_event:{action:"show_text",value:{text:"Link to Soundtrack",color:green}},click_event:{action:"open_url",url:"https://music.youtube.com/watch?v=QV7tGfxa58E&si=lqvFb2PE9cjajiuO"}},{text:" by Hyper Potions",color:white}]
schedule function grace:soundtracks/reset 2t