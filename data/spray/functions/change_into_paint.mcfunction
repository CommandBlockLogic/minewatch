#> spray:change_into_paint
# @as [tag=spray_spray]

summon minecraft:area_effect_cloud ~ ~ ~ {Tags: ["newly_summoned", "marker_with_uid", "my_marker", "spray_paint"], CustomName: '"Spray Paint"', Duration: 3000, Color: -1}

# Inherit color.
scoreboard players operation @e[tag=newly_summoned] custom1 = @s custom1

# Checkout.
tag @e remove newly_summoned
## [tag=spray_spray] will be killed in function `fnmdp:boom`.
