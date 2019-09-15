# char:2-steve/do

replaceitem entity @s hotbar.0 minecraft:iron_sword 1

# Weapon.
scoreboard players set @s hhMeleeDamage 80

# Active skill A - obsidian wall.
execute as @e[type=minecraft:area_effect_cloud,tag=char_2-steve_obsidian_wall,tag=my_marker] run scoreboard players add @s custom2 1
execute as @e[type=minecraft:area_effect_cloud,tag=char_2-steve_obsidian_wall,tag=my_marker,scores={custom2=100..}] at @s unless score @s custom1 matches 1 if block ~ ~ ~ minecraft:obsidian run playsound minecraft:block.metal.break master @a
execute as @e[type=minecraft:area_effect_cloud,tag=char_2-steve_obsidian_wall,tag=my_marker,scores={custom2=100..}] at @s unless score @s custom1 matches 1 if block ~ ~ ~ minecraft:obsidian run particle minecraft:block minecraft:obsidian ~ ~ ~ 0.25 0.25 0.25 0 6 force
execute as @e[type=minecraft:area_effect_cloud,tag=char_2-steve_obsidian_wall,tag=my_marker,scores={custom2=100..}] at @s unless score @s custom1 matches 1 if block ~ ~ ~ minecraft:obsidian run setblock ~ ~ ~ minecraft:air replace
execute as @e[type=minecraft:area_effect_cloud,tag=char_2-steve_obsidian_wall,tag=my_marker,scores={custom2=100..}] at @s run kill @s
