#> spray:load
# @manual
# # How to Add a Paint?
# 1. Add the paint to `storage spray:`, located in function `spray:image_data`.
# 2. Update function `spray:private/set_buffer`, so players can copy this paint into buffer.
# 3. Add color(s) in function `spray:colors` if you want to introduce new color(s).

# Objectives.
scoreboard objectives add sprayType dummy "玩家储备的喷漆类型"
scoreboard objectives add sprayCool dummy "玩家剩余的喷漆冷却时间"

# Consts
scoreboard players set sprayCool const 50

# `buffer` stores the current drawing paint.
data modify storage spray: {} merge value {buffer: []}

# Stores pixels in this paint in 'S' shape:
# --------->
# <---------
# --------->
# <---------
# Note: the first two bytes represent sprayXMax tmp and sprayYMax tmp.
function spray:private/image_data
