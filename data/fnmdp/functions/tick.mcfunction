# fnmdp:tick
# @author K_Bai
# @url https://www.mcbbs.net/thread-777085-1-1.html
# @improved-by SPGoding with a bunch of love!

# Calculate velocities.
scoreboard players operation @s fnmdpVx += @s fnmdpAx
scoreboard players operation @s fnmdpVy += @s fnmdpAy
scoreboard players operation @s fnmdpVz += @s fnmdpAz

# Move step by step.
scoreboard players operation Vx params = @s fnmdpVx
scoreboard players operation Vy params = @s fnmdpVy
scoreboard players operation Vz params = @s fnmdpVz
function fnmdp:private/small_step
# tellraw @a[tag=self] ["坐标 X Y Z: ", {"score": {"objective": "tmp", "name": "x"}}, " ", {"score": {"objective": "tmp", "name": "y"}}, " ", {"score": {"objective": "tmp", "name": "z"}}]

# Boom.
scoreboard players add @s fnmdpAge 1
scoreboard players set boom tmp 0
execute if entity @s[scores={fnmdpVx=-50..50,fnmdpVy=-50..50,fnmdpVz=-50..50}] run scoreboard players set boom tmp 1
execute if score @s fnmdpAge >= @s fnmdpLife run scoreboard players set boom tmp 1
execute if score boom tmp matches 1 run function fnmdp:boom
