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
scoreboard players operation total tmp = innateHealth tmp
execute if score total tmp matches 51.. run scoreboard players remove count tmp 1
execute if score total tmp matches 51.. run scoreboard players remove total tmp 1
function hh:health/display_health_bar/render_as_recursive

data modify entity @s HandItems[0].tag.list append value "§e"
scoreboard players operation count tmp = innateArmor tmp
scoreboard players operation total tmp += innateArmor tmp
execute if score total tmp matches 51.. run scoreboard players remove count tmp 1
execute if score total tmp matches 51.. run scoreboard players remove total tmp 1
function hh:health/display_health_bar/render_as_recursive

data modify entity @s HandItems[0].tag.list append value "§9"
scoreboard players operation count tmp = innateShield tmp
scoreboard players operation total tmp += innateShield tmp
execute if score total tmp matches 51.. run scoreboard players remove count tmp 1
execute if score total tmp matches 51.. run scoreboard players remove total tmp 1
function hh:health/display_health_bar/render_as_recursive

data modify entity @s HandItems[0].tag.list append value "§6"
scoreboard players operation count tmp = tempArmor tmp
scoreboard players operation total tmp += tempArmor tmp
execute if score total tmp matches 51.. run scoreboard players remove count tmp 1
execute if score total tmp matches 51.. run scoreboard players remove total tmp 1
function hh:health/display_health_bar/render_as_recursive

data modify entity @s HandItems[0].tag.list append value "§1"
scoreboard players operation count tmp = tempShield tmp
scoreboard players operation total tmp += tempShield tmp
execute if score total tmp matches 51.. run scoreboard players remove count tmp 1
execute if score total tmp matches 51.. run scoreboard players remove total tmp 1
execute if score total tmp matches ..49 run scoreboard players add count tmp 1
execute if score total tmp matches ..49 run scoreboard players add total tmp 1
execute if score total tmp matches ..49 run scoreboard players add count tmp 1
execute if score total tmp matches ..49 run scoreboard players add total tmp 1
function hh:health/display_health_bar/render_as_recursive

data modify entity @s HandItems[0].tag.list append value "§4"
scoreboard players operation count tmp = reducing tmp
scoreboard players operation total tmp += reducing tmp
execute if score total tmp matches 51.. run scoreboard players remove count tmp 1
execute if score total tmp matches 51.. run scoreboard players remove total tmp 1
function hh:health/display_health_bar/render_as_recursive

data modify entity @s HandItems[0].tag.list append value "§8"
scoreboard players operation count tmp = lost tmp
scoreboard players operation total tmp += lost tmp
execute if score total tmp matches 51.. run scoreboard players remove count tmp 1
execute if score total tmp matches 51.. run scoreboard players remove total tmp 1
function hh:health/display_health_bar/render_as_recursive

tellraw @a {"score":{"objective":"tmp","name":"total"}}

data modify entity @s HandItems[0].tag.list append value "§r"
