#> spray:private/trace_at_one_point
# @description
# Recurse in order to execute a bunch of ray tracings. 
# The number of execution is determined by `sprayXMax const` and `sprayYMax const` defined in `spray:load`.
# @as player
# @params
# - scanDirection: -1 to the left, 1 to the right
# - xCursor: The position in the X axis, starting from 0.
# - yCursor: The position in the Y axis, starting from 0.

# Do an ray tracing.
function spray:private/ray_trace

# Move xCursor.
scoreboard players operation xCursor params += scanDirection params

# Turn to new row...
scoreboard players set shouldTurn tmp 0
## while scanning from the left to the right.
### Set shouldTurn.
execute if score xCursor params > sprayXMax const run scoreboard players set shouldTurn tmp 1
### Switch scanDirection.
execute if score xCursor params > sprayXMax const run scoreboard players set scanDirection params -1
### Move the cursor back in the range.
execute if score xCursor params > sprayXMax const run scoreboard players remove xCursor params 1
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
execute if score yCursor params <= sprayYMax const if score shouldTurn tmp matches 1 positioned ^ ^-0.05 ^ run function spray:private/trace_at_one_point
### if should not turn...
#### while moving from the left to the right.
execute if score yCursor params <= sprayYMax const if score shouldTurn tmp matches 0 if score scanDirection params matches 1 positioned ^-0.05 ^ ^ run function spray:private/trace_at_one_point
#### while moving from the right to the left.
execute if score yCursor params <= sprayYMax const if score shouldTurn tmp matches 0 if score scanDirection params matches -1 positioned ^0.05 ^ ^ run function spray:private/trace_at_one_point
