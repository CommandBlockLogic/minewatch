#> fnmdp:private/small_step
# @description
# Move a small step and recurse, in order to move according to the velocities in this tick. 
# @params 
# - Vx - Stores the remaining @s fnmdpVx which is still not checked.
# - Vy - Stores the remaining @s fnmdpVy which is still not checked.
# - Vz - Stores the remaining @s fnmdpVz which is still not checked.

# Get small velocities.
## X.
scoreboard players operation VxSmall tmp = Vx params
execute if score Vx params >= fnmdpVSmallMin const if score Vx params <= fnmdpVSmallMax const run scoreboard players set Vx params 0
execute unless score Vx params matches 0 run function fnmdp:private/small_step_vx_is_outrange
## Y.
scoreboard players operation VySmall tmp = Vy params
execute if score Vy params >= fnmdpVSmallMin const if score Vy params <= fnmdpVSmallMax const run scoreboard players set Vy params 0
execute unless score Vy params matches 0 run function fnmdp:private/small_step_vy_is_outrange
## Z.
scoreboard players operation VzSmall tmp = Vz params
execute if score Vz params >= fnmdpVSmallMin const if score Vz params <= fnmdpVSmallMax const run scoreboard players set Vz params 0
execute unless score Vz params matches 0 run function fnmdp:private/small_step_vz_is_outrange

# Check collision.
## Begin.
summon minecraft:area_effect_cloud ~ ~ ~ {Tags: ["newly_summoned"]}
### xyzTmp tmp is used to move the checking marker [tag=newly_summoned] to next position and check conflict.
scoreboard players operation xTmp tmp = x tmp
scoreboard players operation yTmp tmp = y tmp
scoreboard players operation zTmp tmp = z tmp
scoreboard players operation size params = @s fnmdpSize
execute store result entity @e[limit=1,tag=newly_summoned] Pos[1] double 0.001 run scoreboard players get yTmp tmp
execute store result entity @e[limit=1,tag=newly_summoned] Pos[2] double 0.001 run scoreboard players get zTmp tmp
## X.
scoreboard players operation xTmp tmp += VxSmall tmp
execute store result entity @e[limit=1,tag=newly_summoned] Pos[0] double 0.001 run scoreboard players get xTmp tmp
execute at @e[limit=1,tag=newly_summoned] run function fnmdp:is_conflicted
execute if score isConflicted result matches 1.. run function fnmdp:private/small_step_conflict_x
execute store result entity @e[limit=1,tag=newly_summoned] Pos[0] double 0.001 run scoreboard players get x tmp
## Y.
scoreboard players operation yTmp tmp += VySmall tmp
execute store result entity @e[limit=1,tag=newly_summoned] Pos[1] double 0.001 run scoreboard players get yTmp tmp
execute at @e[limit=1,tag=newly_summoned] run function fnmdp:is_conflicted
execute if score isConflicted result matches 1.. run function fnmdp:private/small_step_conflict_y
execute store result entity @e[limit=1,tag=newly_summoned] Pos[1] double 0.001 run scoreboard players get y tmp
## Z.
scoreboard players operation zTmp tmp += VzSmall tmp
execute store result entity @e[limit=1,tag=newly_summoned] Pos[2] double 0.001 run scoreboard players get zTmp tmp
execute at @e[limit=1,tag=newly_summoned] run function fnmdp:is_conflicted
execute if score isConflicted result matches 1.. run function fnmdp:private/small_step_conflict_z
execute store result entity @e[limit=1,tag=newly_summoned] Pos[2] double 0.001 run scoreboard players get z tmp
## End.
kill @e[tag=newly_summoned]

# Calculate final positions after moving this small step.
scoreboard players operation x tmp += VxSmall tmp
scoreboard players operation y tmp += VySmall tmp
scoreboard players operation z tmp += VzSmall tmp

# Recursion.
scoreboard players set should tmp 0
execute unless score Vx params matches 0 run scoreboard players set should tmp 1
execute unless score Vy params matches 0 run scoreboard players set should tmp 1
execute unless score Vz params matches 0 run scoreboard players set should tmp 1
execute if score should tmp matches 1 run function fnmdp:private/small_step
