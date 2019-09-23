# world:components/spawn_area/summon_blue_negative_point
# @at The position of the negative point

execute unless entity @e[type=minecraft:area_effect_cloud,distance=..1,tag=world_blue_spawn_area_negative_point_component] run summon minecraft:area_effect_cloud ~ ~ ~ {Tags: ["world_attachment", "world_blue_spawn_area_negative_point_component", "newly_summoned"], CustomName: '"Blue Spawn Area Negative Point"', Invisible: 1b, Invulnerable: 1b, NoGravity: 1b, Duration: 23333}
