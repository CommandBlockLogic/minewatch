# world:components/target_area/switch_to_state_6

execute at @e[type=minecraft:area_effect_cloud,limit=1,tag=world_target_area_negative_point_component] run function world:scheduler/color/target_area/to_red
scoreboard players set $targetArea custom3 6
scoreboard players set $targetArea custom1 0
