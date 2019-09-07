# world:components/target_area/tick

execute store result score xMin params run data get entity @e[type=minecraft:area_effect_cloud,limit=1,tag=world_target_area_negative_point_component] Pos[0] 10
execute store result score yMin params run data get entity @e[type=minecraft:area_effect_cloud,limit=1,tag=world_target_area_negative_point_component] Pos[1] 10
execute store result score zMin params run data get entity @e[type=minecraft:area_effect_cloud,limit=1,tag=world_target_area_negative_point_component] Pos[2] 10
execute store result score xMax params run data get entity @e[type=minecraft:area_effect_cloud,limit=1,tag=world_target_area_positive_point_component] Pos[0] 10
execute store result score yMax params run data get entity @e[type=minecraft:area_effect_cloud,limit=1,tag=world_target_area_positive_point_component] Pos[1] 10
execute store result score zMax params run data get entity @e[type=minecraft:area_effect_cloud,limit=1,tag=world_target_area_positive_point_component] Pos[2] 10

scoreboard players remove xMin params 8
scoreboard players add xMax params 8

scoreboard players remove yMax params 18

scoreboard players remove zMin params 8
scoreboard players add zMax params 8

execute as @e[tag=player] run function world:components/target_area/tick_as
