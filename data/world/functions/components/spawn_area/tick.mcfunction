# world:components/spawn_area/tick

# Get players in target area.
execute store result score blueXMin params run data get entity @e[type=minecraft:area_effect_cloud,limit=1,tag=world_blue_spawn_area_negative_point_component] Pos[0] 10
execute store result score blueYMin params run data get entity @e[type=minecraft:area_effect_cloud,limit=1,tag=world_blue_spawn_area_negative_point_component] Pos[1] 10
execute store result score blueZMin params run data get entity @e[type=minecraft:area_effect_cloud,limit=1,tag=world_blue_spawn_area_negative_point_component] Pos[2] 10
execute store result score blueXMax params run data get entity @e[type=minecraft:area_effect_cloud,limit=1,tag=world_blue_spawn_area_positive_point_component] Pos[0] 10
execute store result score blueYMax params run data get entity @e[type=minecraft:area_effect_cloud,limit=1,tag=world_blue_spawn_area_positive_point_component] Pos[1] 10
execute store result score blueZMax params run data get entity @e[type=minecraft:area_effect_cloud,limit=1,tag=world_blue_spawn_area_positive_point_component] Pos[2] 10
execute store result score redXMin params run data get entity @e[type=minecraft:area_effect_cloud,limit=1,tag=world_red_spawn_area_negative_point_component] Pos[0] 10
execute store result score redYMin params run data get entity @e[type=minecraft:area_effect_cloud,limit=1,tag=world_red_spawn_area_negative_point_component] Pos[1] 10
execute store result score redZMin params run data get entity @e[type=minecraft:area_effect_cloud,limit=1,tag=world_red_spawn_area_negative_point_component] Pos[2] 10
execute store result score redXMax params run data get entity @e[type=minecraft:area_effect_cloud,limit=1,tag=world_red_spawn_area_positive_point_component] Pos[0] 10
execute store result score redYMax params run data get entity @e[type=minecraft:area_effect_cloud,limit=1,tag=world_red_spawn_area_positive_point_component] Pos[1] 10
execute store result score redZMax params run data get entity @e[type=minecraft:area_effect_cloud,limit=1,tag=world_red_spawn_area_positive_point_component] Pos[2] 10

scoreboard players remove blueXMin params 8
scoreboard players remove redXMin params 8
scoreboard players add blueXMax params 8
scoreboard players add redXMax params 8

scoreboard players remove blueYMax params 18
scoreboard players remove redYMax params 18

scoreboard players remove blueZMin params 8
scoreboard players remove redZMin params 8
scoreboard players add blueZMax params 8
scoreboard players add redZMax params 8

execute as @e[tag=player,tag=!died] run function world:components/spawn_area/tick_as

scoreboard players add @e[tag=player,tag=in_self_spawn_area] hhHealed 10
scoreboard players add @e[tag=player,tag=in_enemy_spawn_area] hhDamagedM 10
