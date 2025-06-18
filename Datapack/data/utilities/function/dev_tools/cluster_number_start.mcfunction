
$data modify storage dev:test_number Main set value $(Main)

playsound minecraft:block.trial_spawner.close_shutter master @s ~ ~ ~ 1 1.5

function utilities:dev_tools/cluster_number_main with storage dev:test_number Main

#Start command example
#
# /function utilities:dev_tools/cluster_number_start {Main:{CustomText:"test",Namespace:"minecraft:mynumber",Var:"Main.MyNumber",EndFunction:"say Custom Command"}}
#