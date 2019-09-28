# world:components/cake/clear_all

execute as @e[type=minecraft:area_effect_cloud,tag=world_cake_component] at @s run fill ~ ~ ~ ~ ~ ~ minecraft:air replace minecraft:cake
execute as @e[type=minecraft:area_effect_cloud,tag=world_cake_component] at @s run kill @s
