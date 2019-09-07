# world:components/spawn_point/respawn
# @as The player going to respawn
# @at [tag=world_spawn_point_component]

execute if score @e[type=minecraft:area_effect_cloud,distance=..1,limit=1,tag=world_spawn_point_component] custom1 matches 0 run teleport @s ~ ~ ~ 0 0
execute if score @e[type=minecraft:area_effect_cloud,distance=..1,limit=1,tag=world_spawn_point_component] custom1 matches 90 run teleport @s ~ ~ ~ 90 0
execute if score @e[type=minecraft:area_effect_cloud,distance=..1,limit=1,tag=world_spawn_point_component] custom1 matches 180 run teleport @s ~ ~ ~ 180 0
execute if score @e[type=minecraft:area_effect_cloud,distance=..1,limit=1,tag=world_spawn_point_component] custom1 matches 270 run teleport @s ~ ~ ~ 270 0
