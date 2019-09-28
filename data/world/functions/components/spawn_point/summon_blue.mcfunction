# world:components/spawn_point/summon_blue
# @at The position of blue team spawn point
# @params
# - rotation

execute unless entity @e[type=minecraft:area_effect_cloud,distance=..1,tag=world_blue_spawn_point_component] run summon minecraft:area_effect_cloud ~ ~ ~ {Tags: ["world_attachment", "world_spawn_point_component", "world_blue_spawn_point_component", "newly_summoned"], CustomName: '"Blue Spawn Point"', Invisible: 1b, Invulnerable: 1b, NoGravity: 1b, Duration: 23333}
scoreboard players operation @e[tag=newly_summoned] custom1 = rotation params
tag @e remove newly_summoned
