# world:components/spawn_area/tick_as_blue_negative
# @as @at [tag=world_blue_spawn_area_negative_point_component]

# Get players in spawn area.
execute store result score xMin params run data get entity @s Pos[0] 10
execute store result score yMin params run data get entity @s Pos[1] 10
execute store result score zMin params run data get entity @s Pos[2] 10
execute store result score xMax params run data get entity @e[type=minecraft:area_effect_cloud,limit=1,sort=nearest,tag=world_blue_spawn_area_positive_point_component] Pos[0] 10
execute store result score yMax params run data get entity @e[type=minecraft:area_effect_cloud,limit=1,sort=nearest,tag=world_blue_spawn_area_positive_point_component] Pos[1] 10
execute store result score zMax params run data get entity @e[type=minecraft:area_effect_cloud,limit=1,sort=nearest,tag=world_blue_spawn_area_positive_point_component] Pos[2] 10

scoreboard players remove yMax params 18

execute as @e[tag=player,tag=!died] run function world:components/spawn_area/tick_as_player
tag @e[tag=in_specific_spawn_area] add in_blue_spawn_area
tag @e remove in_specific_spawn_area
