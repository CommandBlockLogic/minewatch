# 生成替代品
summon minecraft:area_effect_cloud ~ ~ ~ {Tags: ["newly_summoned", "marker_with_uid", "spray_move", "my_marker", "spray_paint"], CustomName: '"Spray Paint"', Duration: 1000, Radius: 0.01f}
# 复制nbt
data modify entity @e[type=area_effect_cloud,tag=newly_summoned,limit=1] Particle set from entity @s Particle
# 复制分数
execute store result score @e[type=area_effect_cloud,tag=newly_summoned,limit=1] sprayPosX run scoreboard players get @s sprayPosX
execute store result score @e[type=area_effect_cloud,tag=newly_summoned,limit=1] sprayPosY run scoreboard players get @s sprayPosY
scoreboard players remove @e[type=area_effect_cloud,tag=newly_summoned,scores={sprayPosX=0,sprayPosY=1..}] sprayPosY 1
scoreboard players remove @e[type=area_effect_cloud,tag=newly_summoned,scores={sprayPosX=1..}] sprayPosX 1

# 杀死老的
tag @e[type=area_effect_cloud,tag=newly_summoned] remove newly_summoned
kill @s