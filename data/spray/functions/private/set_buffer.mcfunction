#> spray:private/set_buffer
# @as player
# @return
# - sprayXMax tmp
# - sprayYMax tmp

# Set buffer.
execute if score @s sprayType matches 1 run data modify storage spray: buffer set from storage spray: 1-sanity
## Add new commands here...

# Set resolution.
execute store result score sprayXMax tmp run data get storage spray: buffer[0]
data remove storage spray: buffer[0]
execute store result score sprayYMax tmp run data get storage spray: buffer[0]
data remove storage spray: buffer[0]
