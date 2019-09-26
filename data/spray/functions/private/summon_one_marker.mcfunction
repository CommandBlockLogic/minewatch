#> spray:private/summon_one_marker
# @description
# Summons a [tag=newly_summoned_spray] markers and recurse in order to get a bunch of markers. 
# The number of markers is determined by `sprayXMax const` and `sprayYMax const`, defined in `spray:load`.
# @as player
# @params
# - scanDirection: -1 to the left, 1 to the right
# - xCursor: The position in the X axis, starting from 0.
# - yCursor: The position in the Y axis, starting from 0.
# @tag @out
# - newly_summoned_spray

# Summon a [tag=spray_spray].
summon minecraft:area_effect_cloud ~ ~ ~ {Tags: ["newly_summoned_spray", "newly_summoned", "marker_with_uid", "my_marker", "spray_spray", "fnmdp", "fnmdp_flying"], CustomName: '"Spray Spray"', Duration: 1000000, Color: -1}
## Set properties.
execute store result score @e[limit=1,tag=newly_summoned] custom1 run data get storage spray: buffer[0]
data remove storage spray: buffer[0]
tag @e remove newly_summoned

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
execute if score yCursor params <= sprayYMax const if score shouldTurn tmp matches 1 positioned ^ ^-0.1 ^ run function spray:private/summon_one_marker
### if should not turn...
#### while moving from the left to the right.
execute if score yCursor params <= sprayYMax const if score shouldTurn tmp matches 0 if score scanDirection params matches 1 positioned ^-0.1 ^ ^ run function spray:private/summon_one_marker
#### while moving from the right to the left.
execute if score yCursor params <= sprayYMax const if score shouldTurn tmp matches 0 if score scanDirection params matches -1 positioned ^0.1 ^ ^ run function spray:private/summon_one_marker
