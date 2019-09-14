# char:2-steve/do

replaceitem entity @s hotbar.0 minecraft:iron_sword 1

execute as @e[type=minecraft:area_effect_cloud,tag=char_2-steve_obsidian_wall,tag=my_marker,nbt={Age:100}] at @s unless score @s custom1 matches 1 run fill ~ ~ ~ ~ ~ ~ minecraft:air replace minecraft:obsidian
execute as @e[type=minecraft:area_effect_cloud,tag=char_2-steve_obsidian_wall,tag=my_marker,nbt={Age:100}] at @s run kill @s
