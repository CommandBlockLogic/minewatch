# world:components/spawn_door/summon_red
# @at The position of red team spawn door

execute unless entity @e[type=minecraft:area_effect_cloud,distance=..1,tag=world_red_spawn_door_component] run summon minecraft:area_effect_cloud ~ ~ ~ {Tags: ["world_attachment", "world_spawn_door_component", "world_red_spawn_door_component"], CustomName: '"Red Spawn Door"', Invisible: 1b, Invulnerable: 1b, NoGravity: 1b, Duration: 23333}
