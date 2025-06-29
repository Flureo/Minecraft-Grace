stopsound @s
playsound grace:music.seppuku record
tellraw @s [{text:"Now Playing: ", color:green},{text:"Seppuku",color:yellow,bold:true,hover_event:{action:"show_text",value:{text:"Link to Soundtrack",color:green}},click_event:{action:"open_url",url:"https://music.youtube.com/watch?v=Uj3riPB_8aI&si=Ii5KgCqHdXTduh6h"}},{text:" by ShogunF",color:white}]
schedule function grace:soundtracks/reset 2t