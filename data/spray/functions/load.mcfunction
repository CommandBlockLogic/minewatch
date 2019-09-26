#> spray:load
# @manual
# # How to Add a Paint?
# 1. Add the paint to `storage spray:`, located in function `spray:load`.
# 2. Update function `spray:private/buffer`, so players can move this paint into buffer.
# 3. Add color(s) in function `spray:draw_one_pixel` if you want to introduce new color(s).

# Objectives.
scoreboard objectives add sprayType dummy "玩家储备的喷漆类型"
scoreboard objectives add sprayCool dummy "玩家剩余的喷漆冷却时间"

# Consts
scoreboard players set sprayXMax const 2
scoreboard players set sprayYMax const 2
scoreboard players set sprayCool const 50

# `buffer` stores the current drawing paint.
data modify storage spray: {} merge value {1-test: [0, 1, 2, 3, 0, 3, 2, 1, 2, 3, 0, 1, 2, 1, 0, 3], buffer: []}
