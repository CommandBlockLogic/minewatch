#> spray:load
# @manual
# # How to Add a Paint?
# 1. Add the paint to `storage spray:`, located in function `spray:load`.
# 2. Update function `spray:private/set_buffer`, so players can move this paint into buffer.
# 3. Add color(s) in function `spray:draw_one_pixel` if you want to introduce new color(s).

# Objectives.
scoreboard objectives add sprayType dummy "玩家储备的喷漆类型"
scoreboard objectives add sprayCool dummy "玩家剩余的喷漆冷却时间"

# Consts
scoreboard players set sprayXMax const 15
scoreboard players set sprayYMax const 15
scoreboard players set sprayCool const 50

# `buffer` stores the current drawing paint.
data modify storage spray: {} merge value {buffer: []}
data modify storage spray: {} merge value {1-test: [0b, 1b, 2b, 3b, 0b, 1b, 2b, 3b, 0b, 1b, 2b, 3b, 0b, 1b, 2b, 3b, 0b, 1b, 2b, 3b, 0b, 1b, 2b, 3b, 0b, 1b, 2b, 3b, 0b, 1b, 2b, 3b, 0b, 1b, 2b, 3b, 0b, 1b, 2b, 3b, 0b, 1b, 2b, 3b, 0b, 1b, 2b, 3b, 0b, 1b, 2b, 3b, 0b, 1b, 2b, 3b, 0b, 1b, 2b, 3b, 0b, 1b, 2b, 3b, 0b, 1b, 2b, 3b, 0b, 1b, 2b, 3b, 0b, 1b, 2b, 3b, 0b, 1b, 2b, 3b, 0b, 1b, 2b, 3b, 0b, 1b, 2b, 3b, 0b, 1b, 2b, 3b, 0b, 1b, 2b, 3b, 0b, 1b, 2b, 3b, 0b, 1b, 2b, 3b, 0b, 1b, 2b, 3b, 0b, 1b, 2b, 3b, 0b, 1b, 2b, 3b, 0b, 1b, 2b, 3b, 0b, 1b, 2b, 3b, 0b, 1b, 2b, 3b, 0b, 1b, 2b, 3b, 0b, 1b, 2b, 3b, 0b, 1b, 2b, 3b, 0b, 1b, 2b, 3b, 0b, 1b, 2b, 3b, 0b, 1b, 2b, 3b, 0b, 1b, 2b, 3b, 0b, 1b, 2b, 3b, 0b, 1b, 2b, 3b, 0b, 1b, 2b, 3b, 0b, 1b, 2b, 3b, 0b, 1b, 2b, 3b, 0b, 1b, 2b, 3b, 0b, 1b, 2b, 3b, 0b, 1b, 2b, 3b, 0b, 1b, 2b, 3b, 0b, 1b, 2b, 3b, 0b, 1b, 2b, 3b, 0b, 1b, 2b, 3b, 0b, 1b, 2b, 3b, 0b, 1b, 2b, 3b, 0b, 1b, 2b, 3b, 0b, 1b, 2b, 3b, 0b, 1b, 2b, 3b, 0b, 1b, 2b, 3b, 0b, 1b, 2b, 3b, 0b, 1b, 2b, 3b, 0b, 1b, 2b, 3b, 0b, 1b, 2b, 3b, 0b, 1b, 2b, 3b, 0b, 1b, 2b, 3b, 0b, 1b, 2b, 3b]}
