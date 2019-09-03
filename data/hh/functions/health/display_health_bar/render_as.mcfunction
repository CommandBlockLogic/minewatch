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
# - total

data modify entity @s HandItems[0].tag.list set value []

data modify entity @s HandItems[0].tag.list append value "§r"
scoreboard players operation count tmp = innateHealth tmp
scoreboard players operation total tmp = innateHealth tmp
execute if score total tmp matches 51.. run function hh:health/display_health_bar/render_as_limit
execute if score total tmp matches ..49 if score innateHealth tmp matches 1.. if score innateArmor tmp matches 0 if score innateShield tmp matches 0 if score tempArmor tmp matches 0 if score tempShield tmp matches 0 if score reducing tmp matches 0 if score lost tmp matches 0 run function hh:health/display_health_bar/render_as_complete
function hh:health/display_health_bar/render_as_recursive

data modify entity @s HandItems[0].tag.list append value "§e"
scoreboard players operation count tmp = innateArmor tmp
scoreboard players operation total tmp += innateArmor tmp
execute if score total tmp matches 51.. run function hh:health/display_health_bar/render_as_limit
execute if score total tmp matches ..49 if score innateArmor tmp matches 1.. if score innateShield tmp matches 0 if score tempArmor tmp matches 0 if score tempShield tmp matches 0 if score reducing tmp matches 0 if score lost tmp matches 0 run function hh:health/display_health_bar/render_as_complete
function hh:health/display_health_bar/render_as_recursive

data modify entity @s HandItems[0].tag.list append value "§9"
scoreboard players operation count tmp = innateShield tmp
scoreboard players operation total tmp += innateShield tmp
execute if score total tmp matches 51.. run function hh:health/display_health_bar/render_as_limit
execute if score total tmp matches ..49 if score innateShield tmp matches 1.. if score tempArmor tmp matches 0 if score tempShield tmp matches 0 if score reducing tmp matches 0 if score lost tmp matches 0 run function hh:health/display_health_bar/render_as_complete
function hh:health/display_health_bar/render_as_recursive

data modify entity @s HandItems[0].tag.list append value "§6"
scoreboard players operation count tmp = tempArmor tmp
scoreboard players operation total tmp += tempArmor tmp
execute if score total tmp matches 51.. run function hh:health/display_health_bar/render_as_limit
execute if score total tmp matches ..49 if score tempArmor tmp matches 1.. if score tempShield tmp matches 0 if score reducing tmp matches 0 if score lost tmp matches 0 run function hh:health/display_health_bar/render_as_complete
function hh:health/display_health_bar/render_as_recursive

data modify entity @s HandItems[0].tag.list append value "§1"
scoreboard players operation count tmp = tempShield tmp
scoreboard players operation total tmp += tempShield tmp
execute if score total tmp matches 51.. run function hh:health/display_health_bar/render_as_limit
execute if score total tmp matches ..49 if score tempShield tmp matches 1.. if score reducing tmp matches 0 if score lost tmp matches 0 run function hh:health/display_health_bar/render_as_complete
function hh:health/display_health_bar/render_as_recursive

data modify entity @s HandItems[0].tag.list append value "§4"
scoreboard players operation count tmp = reducing tmp
scoreboard players operation total tmp += reducing tmp
execute if score total tmp matches 51.. run function hh:health/display_health_bar/render_as_limit
execute if score total tmp matches ..49 if score reducing tmp matches 1.. if score lost tmp matches 0 run function hh:health/display_health_bar/render_as_complete
function hh:health/display_health_bar/render_as_recursive

data modify entity @s HandItems[0].tag.list append value "§8"
scoreboard players operation count tmp = lost tmp
scoreboard players operation total tmp += lost tmp
execute if score lost tmp matches 1.. run say 1.. lost
execute if score total tmp matches 51.. run function hh:health/display_health_bar/render_as_limit
execute if score total tmp matches ..49 if score lost tmp matches 1.. run function hh:health/display_health_bar/render_as_complete
function hh:health/display_health_bar/render_as_recursive

data modify entity @s HandItems[0].tag.list append value "§r"
