# char:2-steve/do

replaceitem entity @s hotbar.0 minecraft:iron_sword 1

# Weapon.
scoreboard players set @s hhMeleeDamage 80

# Active skill A - obsidian wall.
execute as @e[type=minecraft:area_effect_cloud,tag=char_2-steve_obsidian_wall,tag=my_marker] run scoreboard players add @s custom2 1
execute as @e[type=minecraft:area_effect_cloud,tag=char_2-steve_obsidian_wall,tag=my_marker,scores={custom2=100..}] at @s unless score @s custom1 matches 1 run fill ~ ~ ~ ~ ~ ~ minecraft:air replace minecraft:obsidian
execute as @e[type=minecraft:area_effect_cloud,tag=char_2-steve_obsidian_wall,tag=my_marker,scores={custom2=100..}] at @s unless score @s custom1 matches 1 run playsound minecraft:block.metal.break master @a
execute as @e[type=minecraft:area_effect_cloud,tag=char_2-steve_obsidian_wall,tag=my_marker,scores={custom2=100..}] at @s unless score @s custom1 matches 1 run particle minecraft:block minecraft:obsidian ~ ~ ~ 1 1 1 0 5 force
# execute as @e[type=minecraft:area_effect_cloud,tag=char_2-steve_obsidian_wall,tag=char_2-steve_obsidian_wall_main,tag=my_marker,scores={custom2=100..}] at @s run playsound minecraft:block.lava.extinguish master @a ~ ~ ~ 1
execute as @e[type=minecraft:area_effect_cloud,tag=char_2-steve_obsidian_wall,tag=my_marker,scores={custom2=100..}] at @s run kill @s
