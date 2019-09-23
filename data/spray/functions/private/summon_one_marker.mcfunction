#> spray:private/summon_one_marker
# @as player
# @params
# - scanDirection: -1 to the left, 1 to the right
# - xCursor: The position in the X axis, starts from 0.
# - yCursor: The position in the Y axis, starts from 0.

# Summon.
summon minecraft:area_effect_cloud ~ ~ ~ {Tags: ["new_summoned", "marker_with_uid", "my_marker", "spray_spray"], Duration: 1000000, CustomName: '"Spray"'}
scoreboard players operation xCursor params += scanDirection params

# Turn to new row...
## while scanning from the left to the right.
### Turn.
execute if score xCursor params > sprayXMax const run scoreboard players add yCursor 1
### Switch scanDirection.
execute if score xCursor params > sprayXMax const run scoreboard players set scanDirection params -1
### Move the cursor back.
execute if score xCursor params > sprayXMax const run scoreboard players remove xCursor params 1
## while scanning from the right to the left.
### Do the same things as above.
execute if score xCursor params matches ..-1 run scoreboard players add yCursor 1
execute if score xCursor params matches ..-1 run scoreboard players set scanDirection params 1
execute if score xCursor params matches ..-1 run scoreboard players add xCursor params 1

# Recursion...
## while not finishing the last row...
### while moving from the left to the right
execute if score yCursor params <= sprayYMax const if score scanDirection params matches 1 positioned ^-0.1 ^ ^ run function spray:private/summon_one_marker
### while moving from the right to the left
execute if score yCursor params <= sprayYMax const if score scanDirection params matches -1 positioned ^0.1 ^ ^ run function spray:private/summon_one_marker
