# summon-test
function spray:new_idea_private/images/main
# 旋转粒子方向
execute rotated as @s as @e[type=area_effect_cloud,tag=newly_summoned] run tp @s ~ ~ ~ ~ ~
# 设置粒子坐标
scoreboard players set @e[type=area_effect_cloud,tag=spray_posX_0] sprayPosX 0
scoreboard players set @e[type=area_effect_cloud,tag=spray_posX_1] sprayPosX 1
scoreboard players set @e[type=area_effect_cloud,tag=spray_posX_2] sprayPosX 2
scoreboard players set @e[type=area_effect_cloud,tag=spray_posX_3] sprayPosX 3
scoreboard players set @e[type=area_effect_cloud,tag=spray_posX_4] sprayPosX 4
scoreboard players set @e[type=area_effect_cloud,tag=spray_posX_5] sprayPosX 5
scoreboard players set @e[type=area_effect_cloud,tag=spray_posX_6] sprayPosX 6
scoreboard players set @e[type=area_effect_cloud,tag=spray_posX_7] sprayPosX 7
scoreboard players set @e[type=area_effect_cloud,tag=spray_posX_8] sprayPosX 8
scoreboard players set @e[type=area_effect_cloud,tag=spray_posX_9] sprayPosX 9
scoreboard players set @e[type=area_effect_cloud,tag=spray_posX_10] sprayPosX 10
scoreboard players set @e[type=area_effect_cloud,tag=spray_posX_11] sprayPosX 11
scoreboard players set @e[type=area_effect_cloud,tag=spray_posX_12] sprayPosX 12
scoreboard players set @e[type=area_effect_cloud,tag=spray_posX_13] sprayPosX 13
scoreboard players set @e[type=area_effect_cloud,tag=spray_posX_14] sprayPosX 14
scoreboard players set @e[type=area_effect_cloud,tag=spray_posX_15] sprayPosX 15
scoreboard players set @e[type=area_effect_cloud,tag=spray_posX_16] sprayPosX 16
scoreboard players set @e[type=area_effect_cloud,tag=spray_posX_17] sprayPosX 17
scoreboard players set @e[type=area_effect_cloud,tag=spray_posX_18] sprayPosX 18
scoreboard players set @e[type=area_effect_cloud,tag=spray_posX_19] sprayPosX 19
scoreboard players set @e[type=area_effect_cloud,tag=spray_posX_20] sprayPosX 20
scoreboard players set @e[type=area_effect_cloud,tag=spray_posX_21] sprayPosX 21
scoreboard players set @e[type=area_effect_cloud,tag=spray_posX_22] sprayPosX 22
scoreboard players set @e[type=area_effect_cloud,tag=spray_posX_23] sprayPosX 23
scoreboard players set @e[type=area_effect_cloud,tag=spray_posX_24] sprayPosX 24
scoreboard players set @e[type=area_effect_cloud,tag=spray_posX_25] sprayPosX 25
scoreboard players set @e[type=area_effect_cloud,tag=spray_posX_26] sprayPosX 26
scoreboard players set @e[type=area_effect_cloud,tag=spray_posX_27] sprayPosX 27
scoreboard players set @e[type=area_effect_cloud,tag=spray_posX_28] sprayPosX 28
scoreboard players set @e[type=area_effect_cloud,tag=spray_posX_29] sprayPosX 29
scoreboard players set @e[type=area_effect_cloud,tag=spray_posY_0] sprayPosY 0
scoreboard players set @e[type=area_effect_cloud,tag=spray_posY_1] sprayPosY 1
scoreboard players set @e[type=area_effect_cloud,tag=spray_posY_2] sprayPosY 2
scoreboard players set @e[type=area_effect_cloud,tag=spray_posY_3] sprayPosY 3
scoreboard players set @e[type=area_effect_cloud,tag=spray_posY_4] sprayPosY 4
scoreboard players set @e[type=area_effect_cloud,tag=spray_posY_5] sprayPosY 5
scoreboard players set @e[type=area_effect_cloud,tag=spray_posY_6] sprayPosY 6
scoreboard players set @e[type=area_effect_cloud,tag=spray_posY_7] sprayPosY 7
scoreboard players set @e[type=area_effect_cloud,tag=spray_posY_8] sprayPosY 8
scoreboard players set @e[type=area_effect_cloud,tag=spray_posY_9] sprayPosY 9
scoreboard players set @e[type=area_effect_cloud,tag=spray_posY_10] sprayPosY 10
scoreboard players set @e[type=area_effect_cloud,tag=spray_posY_11] sprayPosY 11
scoreboard players set @e[type=area_effect_cloud,tag=spray_posY_12] sprayPosY 12
scoreboard players set @e[type=area_effect_cloud,tag=spray_posY_13] sprayPosY 13
scoreboard players set @e[type=area_effect_cloud,tag=spray_posY_14] sprayPosY 14
scoreboard players set @e[type=area_effect_cloud,tag=spray_posY_15] sprayPosY 15
scoreboard players set @e[type=area_effect_cloud,tag=spray_posY_16] sprayPosY 16
scoreboard players set @e[type=area_effect_cloud,tag=spray_posY_17] sprayPosY 17
scoreboard players set @e[type=area_effect_cloud,tag=spray_posY_18] sprayPosY 18
scoreboard players set @e[type=area_effect_cloud,tag=spray_posY_19] sprayPosY 19
scoreboard players set @e[type=area_effect_cloud,tag=spray_posY_20] sprayPosY 20
scoreboard players set @e[type=area_effect_cloud,tag=spray_posY_21] sprayPosY 21
scoreboard players set @e[type=area_effect_cloud,tag=spray_posY_22] sprayPosY 22
scoreboard players set @e[type=area_effect_cloud,tag=spray_posY_23] sprayPosY 23
scoreboard players set @e[type=area_effect_cloud,tag=spray_posY_24] sprayPosY 24
scoreboard players set @e[type=area_effect_cloud,tag=spray_posY_25] sprayPosY 25
scoreboard players set @e[type=area_effect_cloud,tag=spray_posY_26] sprayPosY 26
scoreboard players set @e[type=area_effect_cloud,tag=spray_posY_27] sprayPosY 27
scoreboard players set @e[type=area_effect_cloud,tag=spray_posY_28] sprayPosY 28
scoreboard players set @e[type=area_effect_cloud,tag=spray_posY_29] sprayPosY 29
# 删除多余tag
tag @e[type=area_effect_cloud,tag=spray_posX_0] remove spray_posX_0
tag @e[type=area_effect_cloud,tag=spray_posX_1] remove spray_posX_1
tag @e[type=area_effect_cloud,tag=spray_posX_2] remove spray_posX_2
tag @e[type=area_effect_cloud,tag=spray_posX_3] remove spray_posX_3
tag @e[type=area_effect_cloud,tag=spray_posX_4] remove spray_posX_4
tag @e[type=area_effect_cloud,tag=spray_posX_5] remove spray_posX_5
tag @e[type=area_effect_cloud,tag=spray_posX_6] remove spray_posX_6
tag @e[type=area_effect_cloud,tag=spray_posX_7] remove spray_posX_7
tag @e[type=area_effect_cloud,tag=spray_posX_8] remove spray_posX_8
tag @e[type=area_effect_cloud,tag=spray_posX_9] remove spray_posX_9
tag @e[type=area_effect_cloud,tag=spray_posX_10] remove spray_posX_10
tag @e[type=area_effect_cloud,tag=spray_posX_11] remove spray_posX_11
tag @e[type=area_effect_cloud,tag=spray_posX_12] remove spray_posX_12
tag @e[type=area_effect_cloud,tag=spray_posX_13] remove spray_posX_13
tag @e[type=area_effect_cloud,tag=spray_posX_14] remove spray_posX_14
tag @e[type=area_effect_cloud,tag=spray_posX_15] remove spray_posX_15
tag @e[type=area_effect_cloud,tag=spray_posX_16] remove spray_posX_16
tag @e[type=area_effect_cloud,tag=spray_posX_17] remove spray_posX_17
tag @e[type=area_effect_cloud,tag=spray_posX_18] remove spray_posX_18
tag @e[type=area_effect_cloud,tag=spray_posX_19] remove spray_posX_19
tag @e[type=area_effect_cloud,tag=spray_posX_20] remove spray_posX_20
tag @e[type=area_effect_cloud,tag=spray_posX_21] remove spray_posX_21
tag @e[type=area_effect_cloud,tag=spray_posX_22] remove spray_posX_22
tag @e[type=area_effect_cloud,tag=spray_posX_23] remove spray_posX_23
tag @e[type=area_effect_cloud,tag=spray_posX_24] remove spray_posX_24
tag @e[type=area_effect_cloud,tag=spray_posX_25] remove spray_posX_25
tag @e[type=area_effect_cloud,tag=spray_posX_26] remove spray_posX_26
tag @e[type=area_effect_cloud,tag=spray_posX_27] remove spray_posX_27
tag @e[type=area_effect_cloud,tag=spray_posX_28] remove spray_posX_28
tag @e[type=area_effect_cloud,tag=spray_posX_29] remove spray_posX_29
tag @e[type=area_effect_cloud,tag=spray_posY_0] remove spray_posY_0
tag @e[type=area_effect_cloud,tag=spray_posY_1] remove spray_posY_1
tag @e[type=area_effect_cloud,tag=spray_posY_2] remove spray_posY_2
tag @e[type=area_effect_cloud,tag=spray_posY_3] remove spray_posY_3
tag @e[type=area_effect_cloud,tag=spray_posY_4] remove spray_posY_4
tag @e[type=area_effect_cloud,tag=spray_posY_5] remove spray_posY_5
tag @e[type=area_effect_cloud,tag=spray_posY_6] remove spray_posY_6
tag @e[type=area_effect_cloud,tag=spray_posY_7] remove spray_posY_7
tag @e[type=area_effect_cloud,tag=spray_posY_8] remove spray_posY_8
tag @e[type=area_effect_cloud,tag=spray_posY_9] remove spray_posY_9
tag @e[type=area_effect_cloud,tag=spray_posY_10] remove spray_posY_10
tag @e[type=area_effect_cloud,tag=spray_posY_11] remove spray_posY_11
tag @e[type=area_effect_cloud,tag=spray_posY_12] remove spray_posY_12
tag @e[type=area_effect_cloud,tag=spray_posY_13] remove spray_posY_13
tag @e[type=area_effect_cloud,tag=spray_posY_14] remove spray_posY_14
tag @e[type=area_effect_cloud,tag=spray_posY_15] remove spray_posY_15
tag @e[type=area_effect_cloud,tag=spray_posY_16] remove spray_posY_16
tag @e[type=area_effect_cloud,tag=spray_posY_17] remove spray_posY_17
tag @e[type=area_effect_cloud,tag=spray_posY_18] remove spray_posY_18
tag @e[type=area_effect_cloud,tag=spray_posY_19] remove spray_posY_19
tag @e[type=area_effect_cloud,tag=spray_posY_20] remove spray_posY_20
tag @e[type=area_effect_cloud,tag=spray_posY_21] remove spray_posY_21
tag @e[type=area_effect_cloud,tag=spray_posY_22] remove spray_posY_22
tag @e[type=area_effect_cloud,tag=spray_posY_23] remove spray_posY_23
tag @e[type=area_effect_cloud,tag=spray_posY_24] remove spray_posY_24
tag @e[type=area_effect_cloud,tag=spray_posY_25] remove spray_posY_25
tag @e[type=area_effect_cloud,tag=spray_posY_26] remove spray_posY_26
tag @e[type=area_effect_cloud,tag=spray_posY_27] remove spray_posY_27
tag @e[type=area_effect_cloud,tag=spray_posY_28] remove spray_posY_28
tag @e[type=area_effect_cloud,tag=spray_posY_29] remove spray_posY_29
tag @e[type=area_effect_cloud,tag=newly_summoned] remove newly_summoned
