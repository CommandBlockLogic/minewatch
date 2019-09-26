#> spray:private/summon_one_pixel

summon minecraft:area_effect_cloud ~ ~ ~ {Tags: ["newly_summoned", "marker_with_uid", "my_marker", "spray_paint"], CustomName: '"Spray Paint"', Duration: 3000, Color: -1}

# Inherit color.
execute store result score @e[limit=1,tag=newly_summoned] custom1 run data get storage spray: buffer[0]
data remove storage spray: buffer[0]

# Checkout.
tag @e remove newly_summoned
