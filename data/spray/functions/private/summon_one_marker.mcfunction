#> spray:private/summon_one_marker
# @tmp @out
# - colorCode

# Summon.
summon minecraft:area_effect_cloud ~ ~ ~ {Tags: ["newly_summoned", "marker_with_uid", "my_marker", "spray_paint"], CustomName: '"Spray Paint"', Duration: 1000, Color: -1}

# Set color.
#execute as @e[tag=newly_summoned,limit=1,distance=..0.01,type=minecraft:area_effect_cloud] run function spray:private/set_color
execute as @e[tag=newly_summoned,limit=1,distance=..0.01,type=minecraft:area_effect_cloud] run function spray:private/colors/0

# Checkout.
tag @e remove newly_summoned
