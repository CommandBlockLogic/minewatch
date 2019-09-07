# world:components/spawn_point/summon_red
# @at The position of red team spawn point

execute unless entity @e[type=minecraft:area_effect_cloud,distance=..1,tag=world_red_spawn_point_component] run summon minecraft:area_effect_cloud ~ ~ ~ {Tags: ["world_attachment", "world_spawn_point_component", "world_red_spawn_point_component", "new_summoned"], CustomName: '"Red Spawn Point"', Invisible: 1b, Invulnerable: 1b, NoGravity: 1b, Duration: 23333}
scoreboard players operation @e[tag=new_summoned] custom1 = rotation params
tag @e remove new_summoned
