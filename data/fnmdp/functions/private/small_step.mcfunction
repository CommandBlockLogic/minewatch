# fnmdp:private/small_step
# @params 
# - Vx
# - Vy
# - Vz

# Get position.
execute store result score x tmp run data get entity @s Pos[0] 1000
execute store result score y tmp run data get entity @s Pos[1] 1000
execute store result score z tmp run data get entity @s Pos[2] 1000

# Get small velocities.
scoreboard players set VSmallMax tmp 500
scoreboard players set VSmallMin tmp -500
## X.
scoreboard players operation VxSmall tmp = Vx params
execute if score Vx params > VSmallMin tmp if score Vx params < VSmallMax tmp run scoreboard players set Vx params 0
execute if score Vx params > VSmallMax tmp run scoreboard players operation VxSmall tmp = VSmallMax tmp
execute if score Vx params > VSmallMax tmp run scoreboard players operation Vx params -= VSmallMax tmp
execute if score Vx params < VSmallMin tmp run scoreboard players operation VxSmall tmp = VSmallMin tmp
execute if score Vx params < VSmallMin tmp run scoreboard players operation Vx params -= VSmallMin tmp
## Y.
scoreboard players operation VySmall tmp = Vy params
execute if score Vy params > VSmallMin tmp if score Vy params < VSmallMax tmp run scoreboard players set Vy params 0
execute if score Vy params > VSmallMax tmp run scoreboard players operation VySmall tmp = VSmallMax tmp
execute if score Vy params > VSmallMax tmp run scoreboard players operation Vy params -= VSmallMax tmp
execute if score Vy params < VSmallMin tmp run scoreboard players operation VySmall tmp = VSmallMin tmp
execute if score Vy params < VSmallMin tmp run scoreboard players operation Vy params -= VSmallMin tmp
## Z.
scoreboard players operation VzSmall tmp = Vz params
execute if score Vz params > VSmallMin tmp if score Vz params < VSmallMax tmp run scoreboard players set Vz params 0
execute if score Vz params > VSmallMax tmp run scoreboard players operation VzSmall tmp = VSmallMax tmp
execute if score Vz params > VSmallMax tmp run scoreboard players operation Vz params -= VSmallMax tmp
execute if score Vz params < VSmallMin tmp run scoreboard players operation VzSmall tmp = VSmallMin tmp
execute if score Vz params < VSmallMin tmp run scoreboard players operation Vz params -= VSmallMin tmp

tellraw @a[tag=self] ["分解速度 X Y Z: ", {"score": {"objective": "tmp", "name": "VxSmall"}}, " ", {"score": {"objective": "tmp", "name": "VySmall"}}, " ", {"score": {"objective": "tmp", "name": "VzSmall"}}]
tellraw @a[tag=self] ["剩余速度 X Y Z: ", {"score": {"objective": "tmp", "name": "Vx"}}, " ", {"score": {"objective": "tmp", "name": "Vy"}}, " ", {"score": {"objective": "tmp", "name": "Vz"}}]

# Check collision.
## Begin.
summon minecraft:area_effect_cloud ~ ~ ~ {Tags: ["new_summoned"]}
scoreboard players operation xTmp tmp = x tmp
scoreboard players operation yTmp tmp = y tmp
scoreboard players operation zTmp tmp = z tmp
scoreboard players operation size params = @s fnmdpSize
## X.
scoreboard players operation xTmp tmp += VxSmall tmp
execute store result entity @e[limit=1,tag=new_summoned] Pos[0] double 0.001 run scoreboard players get xTmp tmp
execute at @e[limit=1,tag=new_summoned] run function fnmdp:is_conflicted
execute if score isConflicted result matches 1.. run scoreboard players operation @s fnmdpVx *= @s fnmdpKeepT
execute if score isConflicted result matches 1.. run scoreboard players operation @s fnmdpVy *= @s fnmdpKeepN
execute if score isConflicted result matches 1.. run scoreboard players operation @s fnmdpVz *= @s fnmdpKeepN
execute if score isConflicted result matches 1.. run scoreboard players operation @s fnmdpVx /= 100 const
execute if score isConflicted result matches 1.. run scoreboard players operation @s fnmdpVy /= 100 const
execute if score isConflicted result matches 1.. run scoreboard players operation @s fnmdpVz /= 100 const
execute if score isConflicted result matches 1.. run scoreboard players operation VxSmall tmp *= @s fnmdpKeepT
execute if score isConflicted result matches 1.. run scoreboard players operation VySmall tmp *= @s fnmdpKeepN
execute if score isConflicted result matches 1.. run scoreboard players operation VzSmall tmp *= @s fnmdpKeepN
execute if score isConflicted result matches 1.. run scoreboard players operation VxSmall tmp /= 100 const
execute if score isConflicted result matches 1.. run scoreboard players operation VySmall tmp /= 100 const
execute if score isConflicted result matches 1.. run scoreboard players operation VzSmall tmp /= 100 const
execute store result entity @e[limit=1,tag=new_summoned] Pos[0] double 0.001 run scoreboard players get x tmp
## Y.
scoreboard players operation yTmp tmp += VySmall tmp
execute store result entity @e[limit=1,tag=new_summoned] Pos[1] double 0.001 run scoreboard players get yTmp tmp
execute at @e[limit=1,tag=new_summoned] run function fnmdp:is_conflicted
execute if score isConflicted result matches 1.. run scoreboard players operation @s fnmdpVx *= @s fnmdpKeepN
execute if score isConflicted result matches 1.. run scoreboard players operation @s fnmdpVy *= @s fnmdpKeepT
execute if score isConflicted result matches 1.. run scoreboard players operation @s fnmdpVz *= @s fnmdpKeepN
execute if score isConflicted result matches 1.. run scoreboard players operation @s fnmdpVx /= 100 const
execute if score isConflicted result matches 1.. run scoreboard players operation @s fnmdpVy /= 100 const
execute if score isConflicted result matches 1.. run scoreboard players operation @s fnmdpVz /= 100 const
execute if score isConflicted result matches 1.. run scoreboard players operation VxSmall tmp *= @s fnmdpKeepN
execute if score isConflicted result matches 1.. run scoreboard players operation VySmall tmp *= @s fnmdpKeepT
execute if score isConflicted result matches 1.. run scoreboard players operation VzSmall tmp *= @s fnmdpKeepN
execute if score isConflicted result matches 1.. run scoreboard players operation VxSmall tmp /= 100 const
execute if score isConflicted result matches 1.. run scoreboard players operation VySmall tmp /= 100 const
execute if score isConflicted result matches 1.. run scoreboard players operation VzSmall tmp /= 100 const
execute store result entity @e[limit=1,tag=new_summoned] Pos[1] double 0.001 run scoreboard players get y tmp
## Z.
scoreboard players operation zTmp tmp += VzSmall tmp
execute store result entity @e[limit=1,tag=new_summoned] Pos[2] double 0.001 run scoreboard players get zTmp tmp
execute at @e[limit=1,tag=new_summoned] run function fnmdp:is_conflicted
execute if score isConflicted result matches 1.. run scoreboard players operation @s fnmdpVx *= @s fnmdpKeepN
execute if score isConflicted result matches 1.. run scoreboard players operation @s fnmdpVy *= @s fnmdpKeepN
execute if score isConflicted result matches 1.. run scoreboard players operation @s fnmdpVz *= @s fnmdpKeepT
execute if score isConflicted result matches 1.. run scoreboard players operation @s fnmdpVx /= 100 const
execute if score isConflicted result matches 1.. run scoreboard players operation @s fnmdpVy /= 100 const
execute if score isConflicted result matches 1.. run scoreboard players operation @s fnmdpVz /= 100 const
execute if score isConflicted result matches 1.. run scoreboard players operation VxSmall tmp *= @s fnmdpKeepN
execute if score isConflicted result matches 1.. run scoreboard players operation VySmall tmp *= @s fnmdpKeepN
execute if score isConflicted result matches 1.. run scoreboard players operation VzSmall tmp *= @s fnmdpKeepT
execute if score isConflicted result matches 1.. run scoreboard players operation VxSmall tmp /= 100 const
execute if score isConflicted result matches 1.. run scoreboard players operation VySmall tmp /= 100 const
execute if score isConflicted result matches 1.. run scoreboard players operation VzSmall tmp /= 100 const
execute store result entity @e[limit=1,tag=new_summoned] Pos[2] double 0.001 run scoreboard players get z tmp
## End.
kill @e[tag=new_summoned]

# Calculate positions.
scoreboard players operation x tmp += VxSmall tmp
scoreboard players operation y tmp += VySmall tmp
scoreboard players operation z tmp += VzSmall tmp

# Set positions.
execute store result entity @s Pos[0] double 0.001 run scoreboard players get x tmp
execute store result entity @s Pos[1] double 0.001 run scoreboard players get y tmp
execute store result entity @s Pos[2] double 0.001 run scoreboard players get z tmp

# Recursion.
scoreboard players set should tmp 0
execute if score Vx params matches 1.. run scoreboard players set should tmp 1
execute if score Vy params matches 1.. run scoreboard players set should tmp 1
execute if score Vz params matches 1.. run scoreboard players set should tmp 1
execute if score should tmp matches 1 run function fnmdp:private/small_step
