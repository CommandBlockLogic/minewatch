# hh:health/display_health_bar/as_render_recursive
# @as [tag=health_bar,tag=my_marker]
# @tmp @in
# - count

execute if score count tmp matches 1.. run data modify entity @s HandItems[0].tag.list append value "\\uE100"
scoreboard players remove count tmp 1
execute if score count tmp matches 1.. run function hh:health/display_health_bar/as_render_recursive
