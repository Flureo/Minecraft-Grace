

data modify storage temp:string_input Main set value ""

$tellraw @s ["",{text:"Use the",bold:true},{text:" [ Input Function ] ",bold:true,color:"green",click_event:{action:"suggest_command",command:"/function input:string {string:\"Your String Here\"}"},hover_event:{action:"show_text",value:[{text:"Click to use function",bold:true,italic:true}]}},{text:"To confirm your $(type)",bold:true}]
