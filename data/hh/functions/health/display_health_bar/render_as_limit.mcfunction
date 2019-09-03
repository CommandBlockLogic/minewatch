# hh:health/display_health_bar/render_as_limit
# @tmp @in
# - count
# - total

scoreboard players remove count tmp 1
scoreboard players remove total tmp 1
execute if score total tmp matches 51.. run function hh:health/display_health_bar/render_as_limit
