#> spray:private/set_buffer
# @as player
# @return
# - sprayXMax tmp
# - sprayYMax tmp

# Copy buffer.
function spray:private/copy_buffer

# Set resolution.
execute store result score sprayXMax tmp run data get storage spray: buffer[0]
data remove storage spray: buffer[0]
execute store result score sprayYMax tmp run data get storage spray: buffer[0]
data remove storage spray: buffer[0]
