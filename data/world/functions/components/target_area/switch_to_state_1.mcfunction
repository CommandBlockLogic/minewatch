# world:components/target_area/switch_to_state_1

execute at @e[type=minecraft:area_effect_cloud,limit=1,tag=world_target_area_negative_point_component] run fill ~-3 ~-3 ~-3 ~16 ~16 ~16 minecraft:yellow_concrete replace minecraft:red_concrete
execute at @e[type=minecraft:area_effect_cloud,limit=1,tag=world_target_area_negative_point_component] run fill ~-3 ~-3 ~-3 ~16 ~16 ~16 minecraft:yellow_concrete replace minecraft:light_blue_concrete
scoreboard players set $targetArea custom3 1
scoreboard players set $targetArea custom1 0
