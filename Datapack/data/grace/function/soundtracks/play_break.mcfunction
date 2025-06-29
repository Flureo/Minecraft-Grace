stopsound @s record
playsound grace:music.break record
tellraw @s [{text:"Now Playing: ", color:green},{text:"Break",color:light_purple,bold:true,hover_event:{action:"show_text",value:{text:"Link to Soundtrack",color:green}},click_event:{action:"open_url",url:"https://music.youtube.com/watch?v=RwiKfBPSiAM&si=_1y9RcI0r0k2WYgJ"}},{text:" by L-79",color:white}]
schedule function grace:soundtracks/reset 2t