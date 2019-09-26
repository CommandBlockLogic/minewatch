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
execute if entity @s[tag=fnmdp_elastic] run function fnmdp:private/small_step_elastic_collision
execute if entity @s[tag=!fnmdp_elastic] run function fnmdp:private/small_step_non-elastic_collision

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
