# summon-test
function spray:new_idea_private/images/main
# 旋转粒子方向
execute rotated as @s as @e[type=area_effect_cloud,tag=newly_summoned] run tp @s ~ ~ ~ ~ ~
tag @e[type=area_effect_cloud,tag=newly_summoned] remove newly_summoned
