#> spray:private/trace_at_one_point
# @description
# Recurse in order to execute a bunch of ray tracings. 
# The number of execution is determined by `sprayXMax tmp` and `sprayYMax tmp` defined in `spray:load`.
# @as player
# @params
# - scanDirection: -1 to the left, 1 to the right
# - xCursor: The position in the X axis, starting from 0.
# - yCursor: The position in the Y axis, starting from 0.
# - sprayXMax tmp
# - sprayYMax tmp

# Get the next color code.
execute store result score colorCode tmp run data get storage spray: buffer[0]
data remove storage spray: buffer[0]

# Do an ray tracing.
execute if score colorCode tmp matches 0 run say 不追踪了
execute if score colorCode tmp matches 1.. run function spray:private/ray_trace

# Move xCursor.
scoreboard players operation xCursor params += scanDirection params

# Turn to new row...
scoreboard players set shouldTurn tmp 0
## while scanning from the left to the right.
### Set shouldTurn.
execute if score xCursor params > sprayXMax tmp run scoreboard players set shouldTurn tmp 1
### Switch scanDirection.
execute if score xCursor params > sprayXMax tmp run scoreboard players set scanDirection params -1
### Move the cursor back in the range.
execute if score xCursor params > sprayXMax tmp run scoreboard players remove xCursor params 1
## while scanning from the right to the left.
### Do the same things as above.
execute if score xCursor params matches ..-1 run scoreboard players set shouldTurn tmp 1
execute if score xCursor params matches ..-1 run scoreboard players set scanDirection params 1
execute if score xCursor params matches ..-1 run scoreboard players add xCursor params 1
## Turn actually.
execute if score shouldTurn tmp matches 1 run scoreboard players add yCursor params 1

# Recurse...
## while not finishing the last row...
### if should turn.
execute if score yCursor params <= sprayYMax tmp if score shouldTurn tmp matches 1 positioned ^ ^-0.05 ^ run function spray:private/trace_at_one_point
### if should not turn...
#### while moving from the left to the right.
execute if score yCursor params <= sprayYMax tmp if score shouldTurn tmp matches 0 if score scanDirection params matches 1 positioned ^-0.05 ^ ^ run function spray:private/trace_at_one_point
#### while moving from the right to the left.
execute if score yCursor params <= sprayYMax tmp if score shouldTurn tmp matches 0 if score scanDirection params matches -1 positioned ^0.05 ^ ^ run function spray:private/trace_at_one_point
