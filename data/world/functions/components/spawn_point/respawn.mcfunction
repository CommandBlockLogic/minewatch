# world:components/spawn_point/respawn
# @as The player going to respawn
# @at [tag=world_spawn_point_component]

execute if score @e[type=minecraft:area_effect_cloud,distance=..1,limit=1,tag=world_spawn_point_component] custom1 matches 0 run teleport @s ~ ~ ~ 0 0
execute if score @e[type=minecraft:area_effect_cloud,distance=..1,limit=1,tag=world_spawn_point_component] custom1 matches 45 run teleport @s ~ ~ ~ 45 0
execute if score @e[type=minecraft:area_effect_cloud,distance=..1,limit=1,tag=world_spawn_point_component] custom1 matches 90 run teleport @s ~ ~ ~ 90 0
execute if score @e[type=minecraft:area_effect_cloud,distance=..1,limit=1,tag=world_spawn_point_component] custom1 matches 135 run teleport @s ~ ~ ~ 135 0
execute if score @e[type=minecraft:area_effect_cloud,distance=..1,limit=1,tag=world_spawn_point_component] custom1 matches 180 run teleport @s ~ ~ ~ 180 0
execute if score @e[type=minecraft:area_effect_cloud,distance=..1,limit=1,tag=world_spawn_point_component] custom1 matches 225 run teleport @s ~ ~ ~ 225 0
execute if score @e[type=minecraft:area_effect_cloud,distance=..1,limit=1,tag=world_spawn_point_component] custom1 matches 270 run teleport @s ~ ~ ~ 270 0
execute if score @e[type=minecraft:area_effect_cloud,distance=..1,limit=1,tag=world_spawn_point_component] custom1 matches 315 run teleport @s ~ ~ ~ 315 0
