
#Basic Scoreboard Setup

scoreboard objectives add test_number dummy "Cluster Number Input"
scoreboard objectives setdisplay sidebar test_number


scoreboard players set one test_number 1
scoreboard players set five test_number 5
scoreboard players set ten test_number 10


#Text on screen


tellraw @p [{text:"\n"},{text:"\n"},{text:"\n"},{text:"\n"},{text:"\n"},{text:"\n"},{text:"\n"},{text:"\n"},{text:"\n"},{text:"\n"}]

tellraw @p {text:"Click the numbers to create the number you want to input",bold:true,color:"#77b7c7"}

tellraw @p [{text:"\n"}]

tellraw @p {text:"--------------------------------",bold:true}

tellraw @p {text:"Your current number",bold:true,color:"#ebbd27"}

tellraw @p [{text:"--------->",bold:true,color:"#77b7c7"},{score:{name:"@s",objective:"test_number"},bold:true,color:"#ebbd27"}]

tellraw @p [{text:"\n"}]



#input number cluster

tellraw @p [{text:"      [ 1 ]    ",click_event:{action:"run_command",command:"execute as @s run function utilities:dev_tools/cluster_number_input {side:\"+\",number:one}"},color:green},{text:" [ 5 ]",click_event:{action:"run_command",command:"execute as @s run function utilities:dev_tools/cluster_number_input {side:\"+\",number:five}"},color:green},{text:"     [ 10 ]",click_event:{action:"run_command",command:"execute as @s run function utilities:dev_tools/cluster_number_input {side:\"+\",number:ten}"},color:green}]

tellraw @p [{text:"\n"}]

tellraw @p [{text:"     [ -1 ]    ",click_event:{action:"run_command",command:"execute as @s run function utilities:dev_tools/cluster_number_input {side:\"-\",number:one}"},color:red},{text:"[ -5 ]",click_event:{action:"run_command",command:"execute as @s run function utilities:dev_tools/cluster_number_input {side:\"-\",number:five}"},color:red},{text:"    [ -10 ]",click_event:{action:"run_command",command:"execute as @s run function utilities:dev_tools/cluster_number_input {side:\"-\",number:ten}"},color:red}]

tellraw @p [{text:"\n"}]

#confirm you number


$tellraw @p {text:"$(CustomText)",bold:true,color:"#77b7c7"}

tellraw @p [{text:"\n"}]

tellraw @p [{text:"[Confirm]  ",click_event:{action:"run_command",command:"execute as @s run function utilities:dev_tools/cluster_number_confirm with storage dev:test_number Main"},color:green},{text:"  [Cancel]",click_event:{action:"run_command",command:"execute as @s run function utilities:dev_tools/cluster_number_cancel"},color:red}]




tellraw @p [{text:"\n"}]

tellraw @p {text:"--------------------------------",bold:true}