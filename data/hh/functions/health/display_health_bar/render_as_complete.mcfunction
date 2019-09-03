# hh:health/display_health_bar/render_as_complete
# @tmp @in
# - count
# - total

scoreboard players add count tmp 1
scoreboard players add total tmp 1
execute if score total tmp matches ..49 run function hh:health/display_health_bar/render_as_complete
