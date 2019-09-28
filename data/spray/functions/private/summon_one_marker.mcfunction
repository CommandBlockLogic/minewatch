#> spray:private/summon_one_marker

# Summon.
summon minecraft:area_effect_cloud ~ ~ ~ {Tags: ["newly_summoned", "marker_with_uid", "my_marker", "spray_paint"], CustomName: '"Spray Paint"', Duration: 1000, Color: -1}

# Inherit color.
scoreboard players operation @e[limit=1,tag=newly_summoned] custom1 = colorCode tmp
function spray:private/colors

# Checkout.
tag @e remove newly_summoned
