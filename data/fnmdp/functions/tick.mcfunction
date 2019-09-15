# fnmdp:tick
# @author K_Bai
# @url https://www.mcbbs.net/thread-777085-1-1.html
# LOVE!

# Get position.
execute store result score x tmp run data get entity @s Pos[0] 100
execute store result score y tmp run data get entity @s Pos[1] 100
execute store result score z tmp run data get entity @s Pos[2] 100

# Calculate velocities.
scoreboard players operation @s fnmdpVx += @s fnmdpAx
scoreboard players operation @s fnmdpVy += @s fnmdpAy
scoreboard players operation @s fnmdpVz += @s fnmdpAz

# Check collision.
## Begin.
summon minecraft:area_effect_cloud ~ ~ ~ {Tags: ["new_summoned"]}
scoreboard players operation xTmp tmp = x tmp
scoreboard players operation yTmp tmp = y tmp
scoreboard players operation zTmp tmp = z tmp
scoreboard players operation size params = @s fnmdpSize
## X.
scoreboard players operation xTmp tmp += @s fnmdpVx
execute store result entity @e[limit=1,tag=new_summoned] Pos[0] double 0.01 run scoreboard players get xTmp tmp
execute at @e[limit=1,tag=new_summoned] run function fnmdp:is_conflicted
execute if score isConflicted result matches 1.. run scoreboard players operation @s fnmdpVx *= @s fnmdpKeepT
execute if score isConflicted result matches 1.. run scoreboard players operation @s fnmdpVy *= @s fnmdpKeepN
execute if score isConflicted result matches 1.. run scoreboard players operation @s fnmdpVz *= @s fnmdpKeepN
execute if score isConflicted result matches 1.. run scoreboard players operation @s fnmdpVx /= 100 const
execute if score isConflicted result matches 1.. run scoreboard players operation @s fnmdpVy /= 100 const
execute if score isConflicted result matches 1.. run scoreboard players operation @s fnmdpVz /= 100 const
execute store result entity @e[limit=1,tag=new_summoned] Pos[0] double 0.01 run scoreboard players get x tmp
## Y.
scoreboard players operation yTmp tmp += @s fnmdpVy
execute store result entity @e[limit=1,tag=new_summoned] Pos[1] double 0.01 run scoreboard players get yTmp tmp
execute at @e[limit=1,tag=new_summoned] run function fnmdp:is_conflicted
execute if score isConflicted result matches 1.. run scoreboard players operation @s fnmdpVx *= @s fnmdpKeepN
execute if score isConflicted result matches 1.. run scoreboard players operation @s fnmdpVy *= @s fnmdpKeepT
execute if score isConflicted result matches 1.. run scoreboard players operation @s fnmdpVz *= @s fnmdpKeepN
execute if score isConflicted result matches 1.. run scoreboard players operation @s fnmdpVx /= 100 const
execute if score isConflicted result matches 1.. run scoreboard players operation @s fnmdpVy /= 100 const
execute if score isConflicted result matches 1.. run scoreboard players operation @s fnmdpVz /= 100 const
execute store result entity @e[limit=1,tag=new_summoned] Pos[1] double 0.01 run scoreboard players get y tmp
## Z.
scoreboard players operation zTmp tmp += @s fnmdpVz
execute store result entity @e[limit=1,tag=new_summoned] Pos[2] double 0.01 run scoreboard players get zTmp tmp
execute at @e[limit=1,tag=new_summoned] run function fnmdp:is_conflicted
execute if score isConflicted result matches 1.. run scoreboard players operation @s fnmdpVx *= @s fnmdpKeepN
execute if score isConflicted result matches 1.. run scoreboard players operation @s fnmdpVy *= @s fnmdpKeepN
execute if score isConflicted result matches 1.. run scoreboard players operation @s fnmdpVz *= @s fnmdpKeepT
execute if score isConflicted result matches 1.. run scoreboard players operation @s fnmdpVx /= 100 const
execute if score isConflicted result matches 1.. run scoreboard players operation @s fnmdpVy /= 100 const
execute if score isConflicted result matches 1.. run scoreboard players operation @s fnmdpVz /= 100 const
execute store result entity @e[limit=1,tag=new_summoned] Pos[2] double 0.01 run scoreboard players get z tmp
## End.
kill @e[tag=new_summoned]

# Calculate positions.
scoreboard players operation x tmp += @s fnmdpVx
scoreboard players operation y tmp += @s fnmdpVy
scoreboard players operation z tmp += @s fnmdpVz

# Set positions.
execute store result entity @s Pos[0] double 0.01 run scoreboard players get x tmp
execute store result entity @s Pos[1] double 0.01 run scoreboard players get y tmp
execute store result entity @s Pos[2] double 0.01 run scoreboard players get z tmp

# Boom.
scoreboard players add @s fnmdpAge 1
scoreboard players set boom tmp 0
execute if entity @s[scores={fnmdpVx=-5..5,fnmdpVy=-5..5,fnmdpVz=-5..5}] run scoreboard players set boom tmp 1
execute if score @s fnmdpAge >= @s fnmdpLife run scoreboard players set boom tmp 1
execute if score boom tmp matches 1 run function fnmdp:boom
