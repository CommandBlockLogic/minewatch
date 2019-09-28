# summon-test
summon minecraft:area_effect_cloud ~ ~ ~ {Tags: ["newly_summoned", "marker_with_uid", "my_marker", "spray_paint", "spray_move", "spray_posX_0", "spray_posY_0"], CustomName: '"Spray Paint"', Duration: 1000, Particle: "minecraft:dust 1.0000 0.0000 0.0000 0.28", Radius: 0.01f}
summon minecraft:area_effect_cloud ~ ~ ~ {Tags: ["newly_summoned", "marker_with_uid", "my_marker", "spray_paint", "spray_move", "spray_posX_0", "spray_posY_1"], CustomName: '"Spray Paint"', Duration: 1000, Particle: "minecraft:dust 1.0000 0.0000 0.0000 0.28", Radius: 0.01f}
summon minecraft:area_effect_cloud ~ ~ ~ {Tags: ["newly_summoned", "marker_with_uid", "my_marker", "spray_paint", "spray_move", "spray_posX_0", "spray_posY_2"], CustomName: '"Spray Paint"', Duration: 1000, Particle: "minecraft:dust 1.0000 0.0000 0.0000 0.28", Radius: 0.01f}
summon minecraft:area_effect_cloud ~ ~ ~ {Tags: ["newly_summoned", "marker_with_uid", "my_marker", "spray_paint", "spray_move", "spray_posX_0", "spray_posY_3"], CustomName: '"Spray Paint"', Duration: 1000, Particle: "minecraft:dust 1.0000 0.0000 0.0000 0.28", Radius: 0.01f}
summon minecraft:area_effect_cloud ~ ~ ~ {Tags: ["newly_summoned", "marker_with_uid", "my_marker", "spray_paint", "spray_move", "spray_posX_1", "spray_posY_0"], CustomName: '"Spray Paint"', Duration: 1000, Particle: "minecraft:dust 1.0000 1.0000 0.0000 0.28", Radius: 0.01f}
summon minecraft:area_effect_cloud ~ ~ ~ {Tags: ["newly_summoned", "marker_with_uid", "my_marker", "spray_paint", "spray_move", "spray_posX_1", "spray_posY_1"], CustomName: '"Spray Paint"', Duration: 1000, Particle: "minecraft:dust 1.0000 1.0000 0.0000 0.28", Radius: 0.01f}
summon minecraft:area_effect_cloud ~ ~ ~ {Tags: ["newly_summoned", "marker_with_uid", "my_marker", "spray_paint", "spray_move", "spray_posX_1", "spray_posY_2"], CustomName: '"Spray Paint"', Duration: 1000, Particle: "minecraft:dust 1.0000 1.0000 0.0000 0.28", Radius: 0.01f}
summon minecraft:area_effect_cloud ~ ~ ~ {Tags: ["newly_summoned", "marker_with_uid", "my_marker", "spray_paint", "spray_move", "spray_posX_1", "spray_posY_3"], CustomName: '"Spray Paint"', Duration: 1000, Particle: "minecraft:dust 1.0000 1.0000 0.0000 0.28", Radius: 0.01f}
summon minecraft:area_effect_cloud ~ ~ ~ {Tags: ["newly_summoned", "marker_with_uid", "my_marker", "spray_paint", "spray_move", "spray_posX_2", "spray_posY_0"], CustomName: '"Spray Paint"', Duration: 1000, Particle: "minecraft:dust 1.0000 0.0000 0.0000 0.28", Radius: 0.01f}
summon minecraft:area_effect_cloud ~ ~ ~ {Tags: ["newly_summoned", "marker_with_uid", "my_marker", "spray_paint", "spray_move", "spray_posX_2", "spray_posY_1"], CustomName: '"Spray Paint"', Duration: 1000, Particle: "minecraft:dust 1.0000 0.0000 0.0000 0.28", Radius: 0.01f}
summon minecraft:area_effect_cloud ~ ~ ~ {Tags: ["newly_summoned", "marker_with_uid", "my_marker", "spray_paint", "spray_move", "spray_posX_2", "spray_posY_2"], CustomName: '"Spray Paint"', Duration: 1000, Particle: "minecraft:dust 1.0000 0.0000 0.0000 0.28", Radius: 0.01f}
summon minecraft:area_effect_cloud ~ ~ ~ {Tags: ["newly_summoned", "marker_with_uid", "my_marker", "spray_paint", "spray_move", "spray_posX_2", "spray_posY_3"], CustomName: '"Spray Paint"', Duration: 1000, Particle: "minecraft:dust 1.0000 0.0000 0.0000 0.28", Radius: 0.01f}
summon minecraft:area_effect_cloud ~ ~ ~ {Tags: ["newly_summoned", "marker_with_uid", "my_marker", "spray_paint", "spray_move", "spray_posX_3", "spray_posY_0"], CustomName: '"Spray Paint"', Duration: 1000, Particle: "minecraft:dust 1.0000 1.0000 0.0000 0.28", Radius: 0.01f}
summon minecraft:area_effect_cloud ~ ~ ~ {Tags: ["newly_summoned", "marker_with_uid", "my_marker", "spray_paint", "spray_move", "spray_posX_3", "spray_posY_1"], CustomName: '"Spray Paint"', Duration: 1000, Particle: "minecraft:dust 1.0000 1.0000 0.0000 0.28", Radius: 0.01f}
summon minecraft:area_effect_cloud ~ ~ ~ {Tags: ["newly_summoned", "marker_with_uid", "my_marker", "spray_paint", "spray_move", "spray_posX_3", "spray_posY_2"], CustomName: '"Spray Paint"', Duration: 1000, Particle: "minecraft:dust 1.0000 1.0000 0.0000 0.28", Radius: 0.01f}
summon minecraft:area_effect_cloud ~ ~ ~ {Tags: ["newly_summoned", "marker_with_uid", "my_marker", "spray_paint", "spray_move", "spray_posX_3", "spray_posY_3"], CustomName: '"Spray Paint"', Duration: 1000, Particle: "minecraft:dust 1.0000 1.0000 0.0000 0.28", Radius: 0.01f}

# 旋转粒子方向
execute rotated as @s as @e[type=area_effect_cloud,tag=newly_summoned] run tp @s ~ ~ ~ ~ ~
#execute unless block ~0.1 ~ ~ #.mw:player_through as @e[type=area_effect_cloud,tag=newly_summoned] run tp @s ~ ~ ~ -90 0
#execute unless block ~-0.1 ~ ~ #.mw:player_through as @e[type=area_effect_cloud,tag=newly_summoned] run tp @s ~ ~ ~ 90 0
#execute unless block ~ ~ ~0.1 #.mw:player_through as @e[type=area_effect_cloud,tag=newly_summoned] run tp @s ~ ~ ~ 0 0
#execute unless block ~ ~ ~-0.1 #.mw:player_through as @e[type=area_effect_cloud,tag=newly_summoned] run tp @s ~ ~ ~ 180 0
#execute unless block ~ ~0.1 ~ #.mw:player_through as @e[type=area_effect_cloud,tag=newly_summoned] run tp @s ~ ~ ~ ~ -90
#execute unless block ~ ~-0.1 ~ #.mw:player_through as @e[type=area_effect_cloud,tag=newly_summoned] run tp @s ~ ~ ~ ~ 90
# 设置粒子坐标
scoreboard players set @e[type=area_effect_cloud,tag=spray_posX_0] sprayPosX 0
scoreboard players set @e[type=area_effect_cloud,tag=spray_posX_1] sprayPosX 1
scoreboard players set @e[type=area_effect_cloud,tag=spray_posX_2] sprayPosX 2
scoreboard players set @e[type=area_effect_cloud,tag=spray_posX_3] sprayPosX 3
scoreboard players set @e[type=area_effect_cloud,tag=spray_posY_0] sprayPosY 0
scoreboard players set @e[type=area_effect_cloud,tag=spray_posY_1] sprayPosY 1
scoreboard players set @e[type=area_effect_cloud,tag=spray_posY_2] sprayPosY 2
scoreboard players set @e[type=area_effect_cloud,tag=spray_posY_3] sprayPosY 3
# 删除多余tag
tag @e[type=area_effect_cloud,tag=spray_posX_0] remove spray_posX_0
tag @e[type=area_effect_cloud,tag=spray_posX_1] remove spray_posX_1
tag @e[type=area_effect_cloud,tag=spray_posX_2] remove spray_posX_2
tag @e[type=area_effect_cloud,tag=spray_posX_3] remove spray_posX_3
tag @e[type=area_effect_cloud,tag=spray_posY_0] remove spray_posY_0
tag @e[type=area_effect_cloud,tag=spray_posY_1] remove spray_posY_1
tag @e[type=area_effect_cloud,tag=spray_posY_2] remove spray_posY_2
tag @e[type=area_effect_cloud,tag=spray_posY_3] remove spray_posY_3
tag @e[type=area_effect_cloud,tag=newly_summoned] remove newly_summoned
