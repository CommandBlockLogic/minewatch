# world:components/spawn_point/summon_blue
# @at The position of blue team spawn point

execute unless entity @e[type=minecraft:area_effect_cloud,distance=..1,tag=world_blue_spawn_point_component] run summon minecraft:area_effect_cloud ~ ~ ~ {Tags: ["world_attachment", "world_blue_spawn_point_component"], CustomName: '"Blue Spawn Point"', Invisible: 1b, Invulnerable: 1b, NoGravity: 1b, CustomNameVisible: 1b, Duration: 23333}
