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
data modify storage spray: {} merge value {2-carve: [48b,13b, 20b,20b,20b,20b,20b,20b,20b,20b,20b,20b,20b,20b,20b,20b,20b,20b,20b,20b,20b,20b,20b,20b,20b,20b,20b,20b,20b,20b,20b,20b,20b,20b,20b,20b,20b,20b,20b,20b,20b,20b,20b,20b,20b,20b,20b,20b,20b,20b,20b,20b,0b,0b,0b,0b,0b,0b,0b,0b,0b,0b,0b,0b,0b,0b,0b,0b,0b,0b,0b,0b,0b,0b,0b,0b,0b,0b,0b,0b,0b,0b,0b,0b,0b,0b,0b,0b,0b,0b,0b,0b,0b,0b,0b,0b,0b,0b,0b,20b,20b,0b,0b,21b,20b,20b,20b,20b,20b,20b,22b,23b,24b,25b,0b,0b,0b,0b,0b,26b,27b,22b,0b,0b,0b,0b,0b,0b,0b,26b,27b,28b,0b,0b,0b,0b,23b,29b,30b,0b,0b,0b,23b,20b,28b,0b,0b,0b,20b,20b,0b,31b,20b,20b,20b,20b,20b,32b,33b,34b,29b,23b,30b,29b,20b,20b,20b,20b,20b,20b,20b,27b,26b,0b,0b,0b,22b,33b,35b,0b,0b,0b,0b,0b,36b,37b,38b,39b,0b,0b,28b,27b,26b,0b,0b,0b,0b,20b,20b,0b,0b,0b,0b,26b,27b,28b,0b,0b,0b,0b,0b,0b,0b,0b,21b,20b,20b,20b,20b,20b,20b,29b,30b,0b,0b,40b,29b,30b,0b,26b,27b,22b,0b,0b,23b,29b,34b,33b,28b,0b,0b,23b,29b,30b,0b,0b,20b,20b,0b,25b,24b,38b,39b,31b,21b,28b,33b,34b,29b,41b,42b,20b,20b,20b,20b,20b,20b,20b,20b,20b,38b,39b,0b,0b,22b,33b,35b,43b,42b,21b,0b,43b,42b,20b,40b,43b,42b,40b,28b,27b,26b,0b,0b,0b,0b,20b,20b,0b,0b,40b,20b,20b,20b,28b,40b,42b,43b,40b,24b,25b,39b,38b,20b,42b,43b,39b,38b,31b,40b,42b,43b,0b,40b,24b,25b,0b,0b,0b,35b,33b,22b,0b,23b,29b,34b,33b,44b,45b,20b,20b,20b,20b,28b,0b,20b,20b,0b,0b,0b,31b,20b,46b,47b,48b,33b,34b,29b,23b,0b,22b,20b,20b,20b,20b,20b,20b,20b,40b,0b,28b,27b,49b,42b,21b,0b,43b,42b,50b,29b,40b,25b,24b,40b,43b,42b,40b,28b,27b,26b,0b,0b,0b,0b,20b,20b,0b,0b,0b,0b,26b,27b,28b,40b,42b,43b,40b,24b,51b,38b,31b,21b,42b,43b,0b,40b,24b,25b,21b,31b,0b,40b,24b,25b,0b,0b,0b,35b,33b,22b,0b,23b,29b,34b,33b,48b,27b,42b,41b,20b,31b,0b,0b,20b,20b,0b,31b,33b,52b,42b,33b,35b,28b,33b,34b,29b,23b,31b,20b,20b,20b,20b,20b,20b,20b,20b,20b,38b,39b,0b,31b,33b,35b,0b,25b,24b,40b,0b,0b,25b,24b,46b,53b,42b,40b,28b,27b,26b,0b,0b,0b,0b,20b,20b,0b,0b,0b,0b,26b,27b,28b,40b,42b,49b,27b,24b,25b,0b,0b,40b,29b,30b,0b,0b,23b,20b,22b,0b,0b,0b,0b,0b,23b,20b,28b,0b,0b,0b,0b,23b,29b,30b,0b,35b,33b,54b,27b,20b,28b,0b,0b,20b,20b,0b,22b,20b,23b,0b,0b,31b,55b,42b,20b,33b,35b,0b,0b,0b,0b,28b,20b,23b,0b,0b,0b,0b,28b,20b,23b,0b,22b,20b,20b,38b,39b,0b,0b,25b,56b,52b,42b,20b,20b,20b,20b,20b,20b,38b,39b,0b,20b,20b,0b,0b,0b,0b,0b,0b,0b,0b,0b,0b,0b,0b,0b,0b,0b,0b,0b,0b,0b,0b,0b,0b,0b,0b,0b,0b,0b,0b,0b,0b,0b,0b,0b,0b,0b,0b,0b,0b,0b,0b,0b,0b,0b,0b,0b,0b,0b,20b,20b,20b,20b,20b,20b,20b,20b,20b,20b,20b,20b,20b,20b,20b,20b,20b,20b,20b,20b,20b,20b,20b,20b,20b,20b,20b,20b,20b,20b,20b,20b,20b,20b,20b,20b,20b,20b,20b,20b,20b,20b,20b,20b,20b,20b,20b,20b,20b,20b]}
## Add new commands here...
