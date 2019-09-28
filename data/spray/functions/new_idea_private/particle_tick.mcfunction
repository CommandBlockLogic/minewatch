# 移动
execute as @s[scores={sprayPosX=1..}] at @s run tp @s ^-0.05 ^ ^
execute as @s[scores={sprayPosY=1..}] at @s run tp @s ^ ^-0.05 ^
# 减
scoreboard players remove @s[scores={sprayPosX=1..}] sprayPosX 1
scoreboard players remove @s[scores={sprayPosY=1..}] sprayPosY 1

# 如果是0，就射线追踪
execute as @s[scores={sprayPosX=0,sprayPosY=0}] at @s run function spray:new_idea_private/particle_ray_trace
kill @s[scores={sprayPosX=0,sprayPosY=0}]