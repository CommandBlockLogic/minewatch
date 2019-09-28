# world:components/spawn_area/tick

tag @e remove in_self_spawn_area
tag @e remove in_enemy_spawn_area

execute as @e[type=minecraft:area_effect_cloud,tag=world_blue_spawn_area_negative_point_component] at @s run function world:components/spawn_area/tick_as_blue_negative
execute as @e[type=minecraft:area_effect_cloud,tag=world_red_spawn_area_negative_point_component] at @s run function world:components/spawn_area/tick_as_red_negative

tag @e[tag=blue_team,tag=in_blue_spawn_area] add in_self_spawn_area
tag @e[tag=blue_team,tag=in_red_spawn_area] add in_enemy_spawn_area
tag @e[tag=red_team,tag=in_blue_spawn_area] add in_enemy_spawn_area
tag @e[tag=red_team,tag=in_red_spawn_area] add in_self_spawn_area
scoreboard players add @e[tag=player,tag=in_self_spawn_area] hhHealed 10
scoreboard players add @e[tag=player,tag=in_enemy_spawn_area] hhDamagedM 10

tag @e remove in_blue_spawn_area
tag @e remove in_red_spawn_area
