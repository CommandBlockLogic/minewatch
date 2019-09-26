#> spray:draw_one_pixel
# @as [tag=spray_spray] or [tag=spray_paint]
# @param
#  - @s custom1: Indicates the color of this pixel.

# 0 -> ALPHA
execute if score @s custom1 matches 0 run kill @s
# 1 -> #009900
execute if score @s custom1 matches 1 run particle minecraft:dust 0.0 0.6 0.0 0.3
# 2 -> #0099ff
execute if score @s custom1 matches 2 run particle minecraft:dust 0.7 0.0 0.0 0.3
# 3 -> #ccff00
execute if score @s custom1 matches 3 run particle minecraft:dust 0.8 1.0 0.0 0.3
