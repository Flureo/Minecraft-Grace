data modify storage database args.data set value {dozer_frame:60}
function utilities:database/player/save
item replace entity @s armor.head with stick[equippable={slot:head,camera_overlay:"grace:overlay/dozer/sleep/frame1"},enchantments={binding_curse:1},item_model="grace:none",tooltip_display={hide_tooltip:true}]
