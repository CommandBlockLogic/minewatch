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
# 办证
# 20 -> 237 28 36
# 21 -> 237 133 201
# 22 -> 252 168 94
# 23 -> 243 199 255
# 24 -> 243 27 36
# 25 -> 255 255 201
# 26 -> 246 229 255
# 27 -> 237 27 94
# 28 -> 255 199 135
# 29 -> 240 27 36
# 30 -> 255 229 170
# 31 -> 249 133 36
# 32 -> 243 133 135
# 33 -> 237 27 135
# 34 -> 249 229 170
# 35 -> 249 255 255
# 36 -> 255 199 201
# 37 -> 243 133 36
# 38 -> 237 90 170
# 39 -> 252 255 255
# 40 -> 240 168 229
# 41 -> 243 199 229
# 42 -> 246 90 36
# 43 -> 255 255 229
# 44 -> 252 199 135
# 45 -> 243 168 229
# 46 -> 240 168 170
# 47 -> 243 27 94
# 48 -> 246 168 135
# 49 -> 246 229 229
# 50 -> 237 90 94
# 51 -> 252 255 201
# 52 -> 249 255 229
# 53 -> 243 133 170
# 54 -> 240 90 36
# 55 -> 237 133 170
# 56 -> 243 27 135
execute if score @s custom1 matches 1 run particle minecraft:dust 0.0 0.6 0.0 0.26 ~ ~ ~ 0 0 0 0 1
execute if score @s custom1 matches 2 run particle minecraft:dust 0.7 0.0 0.0 0.26 ~ ~ ~ 0 0 0 0 1
execute if score @s custom1 matches 3 run particle minecraft:dust 0.8 1.0 0.0 0.26 ~ ~ ~ 0 0 0 0 1
execute if score @s custom1 matches 4 run particle minecraft:dust 0.0196078431372549 0.03137254901960784 0.01568627450980392 0.26 ~ ~ ~ 0 0 0 0 1
execute if score @s custom1 matches 5 run particle minecraft:dust 0.5294117647058824 0.5294117647058824 0.5294117647058824 0.26 ~ ~ ~ 0 0 0 0 1
execute if score @s custom1 matches 6 run particle minecraft:dust 0.5843137254901961 0.5843137254901961 0.5843137254901961 0.26 ~ ~ ~ 0 0 0 0 1
execute if score @s custom1 matches 7 run particle minecraft:dust 0.39215686274509803 0.39215686274509803 0.39215686274509803 0.26 ~ ~ ~ 0 0 0 0 1
execute if score @s custom1 matches 8 run particle minecraft:dust 0.32941176470588235 0.32941176470588235 0.32941176470588235 0.26 ~ ~ ~ 0 0 0 0 1
execute if score @s custom1 matches 9 run particle minecraft:dust 0.6745098039215687 0.6745098039215687 0.6745098039215687 0.26 ~ ~ ~ 0 0 0 0 1
execute if score @s custom1 matches 10 run particle minecraft:dust 0.2823529411764706 0.2823529411764706 0.2823529411764706 0.26 ~ ~ ~ 0 0 0 0 1
execute if score @s custom1 matches 11 run particle minecraft:dust 0.43137254901960786 0.43137254901960786 0.43137254901960786 0.26 ~ ~ ~ 0 0 0 0 1
execute if score @s custom1 matches 12 run particle minecraft:dust 0.4392156862745098 0.4392156862745098 0.4392156862745098 0.26 ~ ~ ~ 0 0 0 0 1
execute if score @s custom1 matches 13 run particle minecraft:dust 0.19215686274509805 0.19215686274509805 0.19215686274509805 0.26 ~ ~ ~ 0 0 0 0 1
execute if score @s custom1 matches 14 run particle minecraft:dust 0.25882352941176473 0.25882352941176473 0.25882352941176473 0.26 ~ ~ ~ 0 0 0 0 1
execute if score @s custom1 matches 15 run particle minecraft:dust 0.17647058823529413 0.17647058823529413 0.17647058823529413 0.26 ~ ~ ~ 0 0 0 0 1
execute if score @s custom1 matches 16 run particle minecraft:dust 0.36470588235294116 0.36470588235294116 0.36470588235294116 0.26 ~ ~ ~ 0 0 0 0 1
execute if score @s custom1 matches 17 run particle minecraft:dust 0.21176470588235294 0.21176470588235294 0.21176470588235294 0.26 ~ ~ ~ 0 0 0 0 1
execute if score @s custom1 matches 18 run particle minecraft:dust 0.5019607843137255 0.5019607843137255 0.5019607843137255 0.26 ~ ~ ~ 0 0 0 0 1
execute if score @s custom1 matches 19 run particle minecraft:dust 0.25098039215686274 0.25098039215686274 0.25098039215686274 0.26 ~ ~ ~ 0 0 0 0 1
execute if score @s custom1 matches 20 run particle minecraft:dust 0.9294117647058824 0.10980392156862745 0.1411764705882353 0.26 ~ ~ ~ 0 0 0 0 1
execute if score @s custom1 matches 21 run particle minecraft:dust 0.9294117647058824 0.5215686274509804 0.788235294117647 0.26 ~ ~ ~ 0 0 0 0 1
execute if score @s custom1 matches 22 run particle minecraft:dust 0.9882352941176471 0.6588235294117647 0.3686274509803922 0.26 ~ ~ ~ 0 0 0 0 1
execute if score @s custom1 matches 23 run particle minecraft:dust 0.9529411764705882 0.7803921568627451 1.0 0.26 ~ ~ ~ 0 0 0 0 1
execute if score @s custom1 matches 24 run particle minecraft:dust 0.9529411764705882 0.10588235294117647 0.1411764705882353 0.26 ~ ~ ~ 0 0 0 0 1
execute if score @s custom1 matches 25 run particle minecraft:dust 1.0 1.0 0.788235294117647 0.26 ~ ~ ~ 0 0 0 0 1
execute if score @s custom1 matches 26 run particle minecraft:dust 0.9647058823529412 0.8980392156862745 1.0 0.26 ~ ~ ~ 0 0 0 0 1
execute if score @s custom1 matches 27 run particle minecraft:dust 0.9294117647058824 0.10588235294117647 0.3686274509803922 0.26 ~ ~ ~ 0 0 0 0 1
execute if score @s custom1 matches 28 run particle minecraft:dust 1.0 0.7803921568627451 0.5294117647058824 0.26 ~ ~ ~ 0 0 0 0 1
execute if score @s custom1 matches 29 run particle minecraft:dust 0.9411764705882353 0.10588235294117647 0.1411764705882353 0.26 ~ ~ ~ 0 0 0 0 1
execute if score @s custom1 matches 30 run particle minecraft:dust 1.0 0.8980392156862745 0.6666666666666666 0.26 ~ ~ ~ 0 0 0 0 1
execute if score @s custom1 matches 31 run particle minecraft:dust 0.9764705882352941 0.5215686274509804 0.1411764705882353 0.26 ~ ~ ~ 0 0 0 0 1
execute if score @s custom1 matches 32 run particle minecraft:dust 0.9529411764705882 0.5215686274509804 0.5294117647058824 0.26 ~ ~ ~ 0 0 0 0 1
execute if score @s custom1 matches 33 run particle minecraft:dust 0.9294117647058824 0.10588235294117647 0.5294117647058824 0.26 ~ ~ ~ 0 0 0 0 1
execute if score @s custom1 matches 34 run particle minecraft:dust 0.9764705882352941 0.8980392156862745 0.6666666666666666 0.26 ~ ~ ~ 0 0 0 0 1
execute if score @s custom1 matches 35 run particle minecraft:dust 0.9764705882352941 1.0 1.0 0.26 ~ ~ ~ 0 0 0 0 1
execute if score @s custom1 matches 36 run particle minecraft:dust 1.0 0.7803921568627451 0.788235294117647 0.26 ~ ~ ~ 0 0 0 0 1
execute if score @s custom1 matches 37 run particle minecraft:dust 0.9529411764705882 0.5215686274509804 0.1411764705882353 0.26 ~ ~ ~ 0 0 0 0 1
execute if score @s custom1 matches 38 run particle minecraft:dust 0.9294117647058824 0.35294117647058826 0.6666666666666666 0.26 ~ ~ ~ 0 0 0 0 1
execute if score @s custom1 matches 39 run particle minecraft:dust 0.9882352941176471 1.0 1.0 0.26 ~ ~ ~ 0 0 0 0 1
execute if score @s custom1 matches 40 run particle minecraft:dust 0.9411764705882353 0.6588235294117647 0.8980392156862745 0.26 ~ ~ ~ 0 0 0 0 1
execute if score @s custom1 matches 41 run particle minecraft:dust 0.9529411764705882 0.7803921568627451 0.8980392156862745 0.26 ~ ~ ~ 0 0 0 0 1
execute if score @s custom1 matches 42 run particle minecraft:dust 0.9647058823529412 0.35294117647058826 0.1411764705882353 0.26 ~ ~ ~ 0 0 0 0 1
execute if score @s custom1 matches 43 run particle minecraft:dust 1.0 1.0 0.8980392156862745 0.26 ~ ~ ~ 0 0 0 0 1
execute if score @s custom1 matches 44 run particle minecraft:dust 0.9882352941176471 0.7803921568627451 0.5294117647058824 0.26 ~ ~ ~ 0 0 0 0 1
execute if score @s custom1 matches 45 run particle minecraft:dust 0.9529411764705882 0.6588235294117647 0.8980392156862745 0.26 ~ ~ ~ 0 0 0 0 1
execute if score @s custom1 matches 46 run particle minecraft:dust 0.9411764705882353 0.6588235294117647 0.6666666666666666 0.26 ~ ~ ~ 0 0 0 0 1
execute if score @s custom1 matches 47 run particle minecraft:dust 0.9529411764705882 0.10588235294117647 0.3686274509803922 0.26 ~ ~ ~ 0 0 0 0 1
execute if score @s custom1 matches 48 run particle minecraft:dust 0.9647058823529412 0.6588235294117647 0.5294117647058824 0.26 ~ ~ ~ 0 0 0 0 1
execute if score @s custom1 matches 49 run particle minecraft:dust 0.9647058823529412 0.8980392156862745 0.8980392156862745 0.26 ~ ~ ~ 0 0 0 0 1
execute if score @s custom1 matches 50 run particle minecraft:dust 0.9294117647058824 0.35294117647058826 0.3686274509803922 0.26 ~ ~ ~ 0 0 0 0 1
execute if score @s custom1 matches 51 run particle minecraft:dust 0.9882352941176471 1.0 0.788235294117647 0.26 ~ ~ ~ 0 0 0 0 1
execute if score @s custom1 matches 52 run particle minecraft:dust 0.9764705882352941 1.0 0.8980392156862745 0.26 ~ ~ ~ 0 0 0 0 1
execute if score @s custom1 matches 53 run particle minecraft:dust 0.9529411764705882 0.5215686274509804 0.6666666666666666 0.26 ~ ~ ~ 0 0 0 0 1
execute if score @s custom1 matches 54 run particle minecraft:dust 0.9411764705882353 0.35294117647058826 0.1411764705882353 0.26 ~ ~ ~ 0 0 0 0 1
execute if score @s custom1 matches 55 run particle minecraft:dust 0.9294117647058824 0.5215686274509804 0.6666666666666666 0.26 ~ ~ ~ 0 0 0 0 1
execute if score @s custom1 matches 56 run particle minecraft:dust 0.9529411764705882 0.10588235294117647 0.5294117647058824 0.26 ~ ~ ~ 0 0 0 0 1
