# hh:health/display_health_bar/as_render
# @as [tag=health_bar,tag=my_marker]
# @tmp @in
# - innateHealth
# - innateArmor
# - innateShield
# - tempArmor
# - tempShield
# - reducing
# - lost
# @tmp @out
# - count

data modify entity @s HandItems[0].tag.list append value "\\u00A7r"
scoreboard players operation count tmp = innateHealth tmp
function hh:health/display_health_bar/as_render_recursive
data modify entity @s HandItems[0].tag.list append value "\\u00A7e"
scoreboard players operation count tmp = innateArmor tmp
function hh:health/display_health_bar/as_render_recursive
data modify entity @s HandItems[0].tag.list append value "\\u00A79"
scoreboard players operation count tmp = innateShield tmp
function hh:health/display_health_bar/as_render_recursive
data modify entity @s HandItems[0].tag.list append value "\\u00A76"
scoreboard players operation count tmp = tempArmor tmp
function hh:health/display_health_bar/as_render_recursive
data modify entity @s HandItems[0].tag.list append value "\\u00A71"
scoreboard players operation count tmp = tempShield tmp
function hh:health/display_health_bar/as_render_recursive
data modify entity @s HandItems[0].tag.list append value "\\u00A74"
scoreboard players operation count tmp = reducing tmp
function hh:health/display_health_bar/as_render_recursive
data modify entity @s HandItems[0].tag.list append value "\\u00A78"
scoreboard players operation count tmp = lost tmp
function hh:health/display_health_bar/as_render_recursive
