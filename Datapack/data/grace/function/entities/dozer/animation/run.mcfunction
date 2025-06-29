scoreboard objectives add calc.frame dummy
scoreboard players reset * calc.frame
scoreboard players set frame calc.frame 0
scoreboard players set switched calc.frame 0

function utilities:database/player/get
execute store result score frame calc.frame run data get storage database return.dozer_frame

execute if score frame calc.frame matches ..60 if items entity @s armor.head stick[equippable={slot:head,camera_overlay:"grace:overlay/dozer/sleep/frame1"}] run scoreboard players set switched calc.frame 1
execute if score frame calc.frame matches ..60 if items entity @s armor.head stick[equippable={slot:head,camera_overlay:"grace:overlay/dozer/sleep/frame1"}] run function grace:entities/dozer/animation/sleep/frame2
execute if score switched calc.frame matches 0 if score frame calc.frame matches ..60 if items entity @s armor.head stick[equippable={slot:head,camera_overlay:"grace:overlay/dozer/sleep/frame2"}] run function grace:entities/dozer/animation/sleep/frame1

scoreboard players remove frame calc.frame 1
execute if score frame calc.frame matches ..0 run item replace entity @s armor.head with air

execute store result storage database args.data.dozer_frame int 1 run scoreboard players get frame calc.frame
function utilities:database/player/save
scoreboard objectives remove calc.frame
