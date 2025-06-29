stopsound @s
playsound grace:music.japache record
tellraw @s [{text:"Now Playing: ", color:green},{text:"Japache",color:aqua,bold:true,hover_event:{action:"show_text",value:{text:"Link to Soundtrack",color:green}},click_event:{action:"open_url",url:"https://music.youtube.com/watch?v=KrfD77HbLq8&si=3wReUkGbCUKyUG27"}},{text:" by SPIN MASTER A-1",color:white}]
schedule function grace:soundtracks/reset 2t