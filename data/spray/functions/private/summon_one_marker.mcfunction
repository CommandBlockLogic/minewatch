#> spray:private/summon_one_marker

# Get the next color code.
execute store result score colorCode tmp run data get storage spray: buffer[0]
data remove storage spray: buffer[0]

# Summon.
execute if score colorCode tmp matches 1.. run summon minecraft:area_effect_cloud ~ ~ ~ {Tags: ["newly_summoned", "marker_with_uid", "my_marker", "spray_paint"], CustomName: '"Spray Paint"', Duration: 1000, Color: -1}

# Inherit color.
execute if score colorCode tmp matches 1.. run scoreboard players operation @e[limit=1,tag=newly_summoned] custom1 = colorCode tmp

# Checkout.
execute if score colorCode tmp matches 1.. run tag @e remove newly_summoned
