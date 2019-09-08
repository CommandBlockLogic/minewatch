# world:components/target_area/switch_to_state_4

execute at @e[type=minecraft:area_effect_cloud,limit=1,tag=world_target_area_negative_point_component] run fill ~-3 ~-3 ~-3 ~16 ~16 ~16 minecraft:light_blue_concrete replace minecraft:red_concrete
execute at @e[type=minecraft:area_effect_cloud,limit=1,tag=world_target_area_negative_point_component] run fill ~-3 ~-3 ~-3 ~16 ~16 ~16 minecraft:light_blue_concrete replace minecraft:yellow_concrete
execute at @e[type=minecraft:area_effect_cloud,limit=1,tag=world_target_area_negative_point_component] run fill ~-3 ~-3 ~-3 ~16 ~16 ~16 minecraft:light_blue_stained_glass replace minecraft:red_stained_glass
execute at @e[type=minecraft:area_effect_cloud,limit=1,tag=world_target_area_negative_point_component] run fill ~-3 ~-3 ~-3 ~16 ~16 ~16 minecraft:light_blue_stained_glass replace minecraft:yellow_stained_glass
scoreboard players set $targetArea custom3 4
scoreboard players set $targetArea custom1 0
