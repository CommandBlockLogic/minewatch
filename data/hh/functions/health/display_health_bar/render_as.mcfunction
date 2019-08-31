# hh:health/display_health_bar/render_as
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

data modify entity @s HandItems[0].tag.list set value []

data modify entity @s HandItems[0].tag.list append value "§r"
scoreboard players operation count tmp = innateHealth tmp
function hh:health/display_health_bar/render_as_recursive
data modify entity @s HandItems[0].tag.list append value "§e"
scoreboard players operation count tmp = innateArmor tmp
function hh:health/display_health_bar/render_as_recursive
data modify entity @s HandItems[0].tag.list append value "§9"
scoreboard players operation count tmp = innateShield tmp
function hh:health/display_health_bar/render_as_recursive
data modify entity @s HandItems[0].tag.list append value "§6"
scoreboard players operation count tmp = tempArmor tmp
function hh:health/display_health_bar/render_as_recursive
data modify entity @s HandItems[0].tag.list append value "§1"
scoreboard players operation count tmp = tempShield tmp
function hh:health/display_health_bar/render_as_recursive
data modify entity @s HandItems[0].tag.list append value "§4"
scoreboard players operation count tmp = reducing tmp
function hh:health/display_health_bar/render_as_recursive
data modify entity @s HandItems[0].tag.list append value "§8"
scoreboard players operation count tmp = lost tmp
function hh:health/display_health_bar/render_as_recursive
data modify entity @s HandItems[0].tag.list append value "§r"
