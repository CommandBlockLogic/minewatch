# 移动
tp @s[scores={sprayPosX=1..}] ^-0.05 ^ ^
tp @s[scores={sprayPosY=1..}] ^ ^-0.05 ^

# 清除
scoreboard players remove @s[scores={sprayPosX=1..}] sprayPosX 1
scoreboard players remove @s[scores={sprayPosY=1..}] sprayPosY 1
execute if entity @s[scores={sprayPosX=0,sprayPosY=0}] run function spray:new_idea_private/particle_ray_trace
tag @s[scores={sprayPosX=0,sprayPosY=0}] remove spray_move