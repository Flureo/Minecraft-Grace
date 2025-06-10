# Enable logs by giving yourself the "log" tag.
# /tag @s add log

# Log that the datapack has been successfully reloaded.
    tellraw @a[tag=log] [{text:"[Grace] ", color:white}, {text:"Reloaded!", color:green}]

# Invite all players to the official Roblox Grace discord server! ;)
    # Disable the discord invite message by giving yourself the "DiscordInviteOFF" tag.
    # /tag @s add DiscordInviteOFF
    tellraw @a[tag=!DiscordInviteOFF] [{text:"Join the Roblox Grace ", bold:true, color:white}, {text:"Discord!", color:blue, bold:true, click_event:{action:"open_url", url:"https://discord.com/invite/gracezone"}, hover_event:{action:"show_text", value:{text:"[Discord Invite]", bold:true, color:green}}}]
