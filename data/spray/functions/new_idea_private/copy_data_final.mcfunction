# 生成替代品
summon minecraft:area_effect_cloud ~ ~ ~ {Tags: ["newly_summoned", "marker_with_uid", "my_marker", "spray_paint"], CustomName: '"Spray Paint"', Duration: 1000, Radius: 0.01f}
# 复制nbt
data modify entity @e[type=area_effect_cloud,tag=newly_summoned,limit=1] Particle set from entity @s Particle

# 杀死老的
tag @e[type=area_effect_cloud,tag=newly_summoned] remove newly_summoned
kill @s