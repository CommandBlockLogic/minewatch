# fnmdp:tick
# @author K_Bai
# @url https://www.mcbbs.net/thread-777085-1-1.html
# @improved-by SPGoding with a bunch of love!

# Calculate velocities.
scoreboard players operation @s fnmdpVx += @s fnmdpAx
scoreboard players operation @s fnmdpVy += @s fnmdpAy
scoreboard players operation @s fnmdpVz += @s fnmdpAz

# Move step by step.
function fnmdp:private/small_step

# Boom.
scoreboard players add @s fnmdpAge 1
scoreboard players set boom tmp 0
execute if entity @s[scores={fnmdpVx=-5..5,fnmdpVy=-5..5,fnmdpVz=-5..5}] run say 1
execute if entity @s[scores={fnmdpVx=-5..5,fnmdpVy=-5..5,fnmdpVz=-5..5}] run scoreboard players set boom tmp 1
execute if score @s fnmdpAge >= @s fnmdpLife run say 2
execute if score @s fnmdpAge >= @s fnmdpLife run scoreboard players set boom tmp 1
execute if score boom tmp matches 1 run function fnmdp:boom
