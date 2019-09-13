# world:components/target_area/switch_to_state_4

execute at @e[type=minecraft:area_effect_cloud,limit=1,tag=world_target_area_negative_point_component] run function world:scheduler/color/target_area/to_blue
scoreboard players set $targetArea custom3 4
scoreboard players set $targetArea custom1 0
