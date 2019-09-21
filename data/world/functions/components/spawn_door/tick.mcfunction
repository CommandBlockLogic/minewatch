# world:components/spawn_door/tick

execute as @e[type=minecraft:area_effect_cloud,distance=..1,tag=world_spawn_door_component] at @s run scoreboard players add @s custom1 1
execute as @e[type=minecraft:area_effect_cloud,distance=..1,tag=world_blue_spawn_door_component] at @s if score @s custom1 matches 30.. run particle minecraft:barrier ~ ~ ~ 0 0 0 0 1 force @a[tag=red_team]
execute as @e[type=minecraft:area_effect_cloud,distance=..1,tag=world_red_spawn_door_component] at @s if score @s custom1 matches 30.. run particle minecraft:barrier ~ ~ ~ 0 0 0 0 1 force @a[tag=blue_team]
execute as @e[type=minecraft:area_effect_cloud,distance=..1,tag=world_spawn_door_component] at @s if score @s custom1 matches 30.. run scoreboard players reset @s custom1
