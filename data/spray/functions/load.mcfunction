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
scoreboard players set sprayCool const 50

# `buffer` stores the current drawing paint.
data modify storage spray: {} merge value {buffer: []}

# Stores pixels in this paint in 'S' shape:
# ------->
# <-------
# ------->
# <-------
# Note: the first two bytes represent sprayXMax tmp and sprayYMax tmp.
data modify storage spray: {} merge value {1-sanity: [14b,12b, 0b,0b,0b,0b,0b,4b,4b,4b,4b,0b,0b,0b,0b,0b,0b,0b,0b,0b,4b,4b,4b,5b,6b,6b,5b,4b,4b,0b,0b,0b,0b,4b,4b,7b,5b,8b,6b,9b,9b,10b,5b,5b,4b,0b,0b,0b,4b,5b,5b,6b,9b,11b,9b,9b,8b,6b,5b,5b,12b,4b,4b,13b,13b,6b,10b,9b,9b,10b,9b,11b,9b,6b,5b,12b,4b,4b,12b,5b,9b,8b,9b,6b,6b,8b,6b,6b,14b,6b,12b,4b,4b,12b,12b,13b,6b,5b,10b,9b,9b,8b,10b,14b,15b,16b,4b,0b,4b,16b,12b,5b,6b,14b,6b,6b,10b,17b,12b,12b,4b,0b,0b,0b,4b,13b,18b,5b,14b,6b,10b,14b,12b,4b,4b,0b,0b,0b,0b,0b,0b,4b,12b,12b,4b,7b,7b,7b,4b,0b,0b,0b,0b,0b,0b,0b,4b,4b,4b,0b,4b,12b,4b,0b,0b,0b,0b,0b,0b,0b,0b,4b,19b,4b,0b,0b,0b,0b,0b,0b,0b,0b,0b,0b,0b,0b,0b,0b,0b,0b,0b,4b,4b,0b,0b,0b,0b]}
## Add new commands here...
