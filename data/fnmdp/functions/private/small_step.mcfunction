#> fnmdp:private/small_step
# @params 
# - Vx - Stores the remaining @s fnmdpVx which is still not checked.
# - Vy - Stores the remaining @s fnmdpVy which is still not checked.
# - Vz - Stores the remaining @s fnmdpVz which is still not checked.

# Get position.
## xyz tmp stores stable positions which are not in walls or entities.
execute store result score x tmp run data get entity @s Pos[0] 1000
execute store result score y tmp run data get entity @s Pos[1] 1000
execute store result score z tmp run data get entity @s Pos[2] 1000

# Get small velocities.
scoreboard players set VSmallMax tmp 250
scoreboard players set VSmallMin tmp -250
## X.
scoreboard players operation VxSmall tmp = Vx params
execute if score Vx params >= VSmallMin tmp if score Vx params <= VSmallMax tmp run scoreboard players set Vx params 0
execute if score Vx params > VSmallMax tmp run scoreboard players operation VxSmall tmp = VSmallMax tmp
execute if score Vx params > VSmallMax tmp run scoreboard players operation Vx params -= VSmallMax tmp
execute if score Vx params < VSmallMin tmp run scoreboard players operation VxSmall tmp = VSmallMin tmp
execute if score Vx params < VSmallMin tmp run scoreboard players operation Vx params -= VSmallMin tmp
## Y.
scoreboard players operation VySmall tmp = Vy params
execute if score Vy params >= VSmallMin tmp if score Vy params <= VSmallMax tmp run scoreboard players set Vy params 0
execute if score Vy params > VSmallMax tmp run scoreboard players operation VySmall tmp = VSmallMax tmp
execute if score Vy params > VSmallMax tmp run scoreboard players operation Vy params -= VSmallMax tmp
execute if score Vy params < VSmallMin tmp run scoreboard players operation VySmall tmp = VSmallMin tmp
execute if score Vy params < VSmallMin tmp run scoreboard players operation Vy params -= VSmallMin tmp
## Z.
scoreboard players operation VzSmall tmp = Vz params
execute if score Vz params >= VSmallMin tmp if score Vz params <= VSmallMax tmp run scoreboard players set Vz params 0
execute if score Vz params > VSmallMax tmp run scoreboard players operation VzSmall tmp = VSmallMax tmp
execute if score Vz params > VSmallMax tmp run scoreboard players operation Vz params -= VSmallMax tmp
execute if score Vz params < VSmallMin tmp run scoreboard players operation VzSmall tmp = VSmallMin tmp
execute if score Vz params < VSmallMin tmp run scoreboard players operation Vz params -= VSmallMin tmp

# Check collision.
## Begin.
summon minecraft:area_effect_cloud ~ ~ ~ {Tags: ["new_summoned"]}
### xyzTmp tmp is used to move the checking marker [tag=new_summoned] to next position and check conflict.
scoreboard players operation xTmp tmp = x tmp
scoreboard players operation yTmp tmp = y tmp
scoreboard players operation zTmp tmp = z tmp
scoreboard players operation size params = @s fnmdpSize
execute store result entity @e[limit=1,tag=new_summoned] Pos[1] double 0.001 run scoreboard players get yTmp tmp
execute store result entity @e[limit=1,tag=new_summoned] Pos[2] double 0.001 run scoreboard players get zTmp tmp
## X.
scoreboard players operation xTmp tmp += VxSmall tmp
execute store result entity @e[limit=1,tag=new_summoned] Pos[0] double 0.001 run scoreboard players get xTmp tmp
execute at @e[limit=1,tag=new_summoned] run function fnmdp:is_conflicted
execute if score isConflicted result matches 1.. run function fnmdp:private/small_step_conflict_x
execute store result entity @e[limit=1,tag=new_summoned] Pos[0] double 0.001 run scoreboard players get x tmp
## Y.
scoreboard players operation yTmp tmp += VySmall tmp
execute store result entity @e[limit=1,tag=new_summoned] Pos[1] double 0.001 run scoreboard players get yTmp tmp
execute at @e[limit=1,tag=new_summoned] run function fnmdp:is_conflicted
execute if score isConflicted result matches 1.. run function fnmdp:private/small_step_conflict_y
execute store result entity @e[limit=1,tag=new_summoned] Pos[1] double 0.001 run scoreboard players get y tmp
## Z.
scoreboard players operation zTmp tmp += VzSmall tmp
execute store result entity @e[limit=1,tag=new_summoned] Pos[2] double 0.001 run scoreboard players get zTmp tmp
execute at @e[limit=1,tag=new_summoned] run function fnmdp:is_conflicted
execute if score isConflicted result matches 1.. run function fnmdp:private/small_step_conflict_z
execute store result entity @e[limit=1,tag=new_summoned] Pos[2] double 0.001 run scoreboard players get z tmp
## End.
kill @e[tag=new_summoned]

# Calculate final positions.
scoreboard players operation x tmp += VxSmall tmp
scoreboard players operation y tmp += VySmall tmp
scoreboard players operation z tmp += VzSmall tmp

# Set positions.
execute store result entity @s Pos[0] double 0.001 run scoreboard players get x tmp
execute store result entity @s Pos[1] double 0.001 run scoreboard players get y tmp
execute store result entity @s Pos[2] double 0.001 run scoreboard players get z tmp

# Recursion.
scoreboard players set should tmp 0
execute unless score Vx params matches 0 run scoreboard players set should tmp 1
execute unless score Vy params matches 0 run scoreboard players set should tmp 1
execute unless score Vz params matches 0 run scoreboard players set should tmp 1
execute if score should tmp matches 1 run function fnmdp:private/small_step
