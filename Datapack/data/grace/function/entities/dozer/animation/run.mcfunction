scoreboard objectives add calc.frame dummy
scoreboard players reset * calc.frame
scoreboard players set frame calc.frame 0
scoreboard players set switched calc.frame 0

function utilities:database/player/get
execute store result score frame calc.frame run data get storage database return.dozer_frame

execute if score frame calc.frame matches 15..60 if items entity @s armor.head stick[equippable={slot:head,camera_overlay:"grace:overlay/dozer/sleep/frame1",equip_sound:{sound_id:""}}] run scoreboard players set switched calc.frame 1
execute if score frame calc.frame matches 15..60 if items entity @s armor.head stick[equippable={slot:head,camera_overlay:"grace:overlay/dozer/sleep/frame1",equip_sound:{sound_id:""}}] run function grace:entities/dozer/animation/sleep/frame2
execute if score switched calc.frame matches 0 if score frame calc.frame matches 15..60 if items entity @s armor.head stick[equippable={slot:head,camera_overlay:"grace:overlay/dozer/sleep/frame2",equip_sound:{sound_id:""}}] run function grace:entities/dozer/animation/sleep/frame1
execute if score frame calc.frame matches 20 run function grace:entities/dozer/animation/wake/frame1
execute if score frame calc.frame matches 17 run function grace:entities/dozer/animation/wake/frame2
execute if score frame calc.frame matches 15 run function grace:entities/dozer/animation/wake/frame3
execute if score frame calc.frame matches 13 run function grace:entities/dozer/animation/wake/frame4
execute if score frame calc.frame matches 11 run function grace:entities/dozer/animation/wake/frame5
execute if score frame calc.frame matches 9 run function grace:entities/dozer/animation/wake/frame6
execute if score frame calc.frame matches 8 run function grace:entities/dozer/animation/wake/frame7
execute if score frame calc.frame matches 6 run function grace:entities/dozer/animation/wake/frame8
execute if score frame calc.frame matches 4 run function grace:entities/dozer/animation/wake/frame9
execute if score frame calc.frame matches 2 run function grace:entities/dozer/animation/wake/frame10

scoreboard players remove frame calc.frame 1
execute if score frame calc.frame matches ..0 run item replace entity @s armor.head with air

execute store result storage database args.data.dozer_frame int 1 run scoreboard players get frame calc.frame
function utilities:database/player/save
scoreboard objectives remove calc.frame
