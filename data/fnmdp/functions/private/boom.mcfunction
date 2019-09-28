#> fnmdp:private/boom

execute at @s[tag=char_2-steve_obsidian_bullet] run function char:2-steve/private/skill_active_a_boom
execute at @s[tag=spray_spray] if score @s fnmdpAge < @s fnmdpLife run function spray:change_into_paint

kill @s
