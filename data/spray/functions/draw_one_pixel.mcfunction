#> spray:draw_one_pixel
# @as [tag=spray_spray] or [tag=spray_paint]
# @param
#  - @s custom1: Indicates the color of this pixel.

# 0 -> ALPHA
execute if score @s custom1 matches 0 run kill @s

#> Available colors:
# 1 -> 255 0 0
# 2 -> 0 255 0
# 3 -> 0 0 255
# 4 -> 5 8 4
# 5 -> 135 135 135
# 6 -> 149 149 149
# 7 -> 100 100 100
# 8 -> 84 84 84
# 9 -> 172 172 172
# 10 -> 72 72 72
# 11 -> 110 110 110
# 12 -> 112 112 112
# 13 -> 49 49 49
# 14 -> 66 66 66
# 15 -> 45 45 45
# 16 -> 93 93 93
# 17 -> 54 54 54
# 18 -> 128 128 128
# 19 -> 64 64 64
execute if score @s custom1 matches 1 run particle minecraft:dust 1.0 0.0 0.0 0.26 ~ ~ ~ 0 0 0 0 1 force
execute if score @s custom1 matches 2 run particle minecraft:dust 0.0 1.0 0.0 0.26 ~ ~ ~ 0 0 0 0 1 force
execute if score @s custom1 matches 3 run particle minecraft:dust 0.0 0.0 1.0 0.26 ~ ~ ~ 0 0 0 0 1 force
execute if score @s custom1 matches 4 run particle minecraft:dust 0.0196078431372549 0.03137254901960784 0.01568627450980392 0.26 ~ ~ ~ 0 0 0 0 1 force
execute if score @s custom1 matches 5 run particle minecraft:dust 0.5294117647058824 0.5294117647058824 0.5294117647058824 0.26 ~ ~ ~ 0 0 0 0 1 force
execute if score @s custom1 matches 6 run particle minecraft:dust 0.5843137254901961 0.5843137254901961 0.5843137254901961 0.26 ~ ~ ~ 0 0 0 0 1 force
execute if score @s custom1 matches 7 run particle minecraft:dust 0.39215686274509803 0.39215686274509803 0.39215686274509803 0.26 ~ ~ ~ 0 0 0 0 1 force
execute if score @s custom1 matches 8 run particle minecraft:dust 0.32941176470588235 0.32941176470588235 0.32941176470588235 0.26 ~ ~ ~ 0 0 0 0 1 force
execute if score @s custom1 matches 9 run particle minecraft:dust 0.6745098039215687 0.6745098039215687 0.6745098039215687 0.26 ~ ~ ~ 0 0 0 0 1 force
execute if score @s custom1 matches 10 run particle minecraft:dust 0.2823529411764706 0.2823529411764706 0.2823529411764706 0.26 ~ ~ ~ 0 0 0 0 1 force
execute if score @s custom1 matches 11 run particle minecraft:dust 0.43137254901960786 0.43137254901960786 0.43137254901960786 0.26 ~ ~ ~ 0 0 0 0 1 force
execute if score @s custom1 matches 12 run particle minecraft:dust 0.4392156862745098 0.4392156862745098 0.4392156862745098 0.26 ~ ~ ~ 0 0 0 0 1 force
execute if score @s custom1 matches 13 run particle minecraft:dust 0.19215686274509805 0.19215686274509805 0.19215686274509805 0.26 ~ ~ ~ 0 0 0 0 1 force
execute if score @s custom1 matches 14 run particle minecraft:dust 0.25882352941176473 0.25882352941176473 0.25882352941176473 0.26 ~ ~ ~ 0 0 0 0 1 force
execute if score @s custom1 matches 15 run particle minecraft:dust 0.17647058823529413 0.17647058823529413 0.17647058823529413 0.26 ~ ~ ~ 0 0 0 0 1 force
execute if score @s custom1 matches 16 run particle minecraft:dust 0.36470588235294116 0.36470588235294116 0.36470588235294116 0.26 ~ ~ ~ 0 0 0 0 1 force
execute if score @s custom1 matches 17 run particle minecraft:dust 0.21176470588235294 0.21176470588235294 0.21176470588235294 0.26 ~ ~ ~ 0 0 0 0 1 force
execute if score @s custom1 matches 18 run particle minecraft:dust 0.5019607843137255 0.5019607843137255 0.5019607843137255 0.26 ~ ~ ~ 0 0 0 0 1 force
execute if score @s custom1 matches 19 run particle minecraft:dust 0.25098039215686274 0.25098039215686274 0.25098039215686274 0.26 ~ ~ ~ 0 0 0 0 1 force
