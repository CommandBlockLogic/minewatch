# char:2-steve/do

# Weapon.
scoreboard players set @s hhMeleeDamage 80

# Active skill A - obsidian wall.
execute if entity @s[scores={charSkillACool=1}] run playsound minecraft:block.water.ambient master @s ~ ~ ~ 1000000
execute if entity @s[scores={charSkillACool=1..10}] run replaceitem entity @s hotbar.0 minecraft:water_bucket 1
execute if entity @s[scores={charSkillACool=11}] run playsound minecraft:block.lava.pop master @s ~ ~ ~ 1000000
execute if entity @s[scores={charSkillACool=11..20}] run replaceitem entity @s hotbar.0 minecraft:water_bucket 1
execute if entity @s[scores={charSkillACool=21}] run playsound minecraft:block.lava.extinguish master @s ~ ~ ~ 1000000
execute if entity @s[scores={charSkillACool=21..39}] run replaceitem entity @s hotbar.0 minecraft:obsidian 1
execute if entity @s[scores={charSkillACool=40}] anchored eyes positioned ^ ^ ^ anchored feet run function char:2-steve/private/skill_active_a_ray
execute if entity @s[scores={charSkillACool=40..}] run scoreboard players set @s charSkillACool -300

execute as @e[type=minecraft:area_effect_cloud,tag=char_2-steve_obsidian_wall,tag=my_marker] run scoreboard players add @s custom2 1
execute as @e[type=minecraft:area_effect_cloud,tag=char_2-steve_obsidian_wall,tag=my_marker,scores={custom2=100..}] at @s unless score @s custom1 matches 1 if block ~ ~ ~ minecraft:obsidian run playsound minecraft:block.metal.break master @a
execute as @e[type=minecraft:area_effect_cloud,tag=char_2-steve_obsidian_wall,tag=my_marker,scores={custom2=100..}] at @s unless score @s custom1 matches 1 if block ~ ~ ~ minecraft:obsidian run particle minecraft:block minecraft:obsidian ~ ~ ~ 0.25 0.25 0.25 0 6 force
execute as @e[type=minecraft:area_effect_cloud,tag=char_2-steve_obsidian_wall,tag=my_marker,scores={custom2=100..}] at @s unless score @s custom1 matches 1 if block ~ ~ ~ minecraft:obsidian run setblock ~ ~ ~ minecraft:air replace
execute as @e[type=minecraft:area_effect_cloud,tag=char_2-steve_obsidian_wall,tag=my_marker,scores={custom2=100..}] at @s run kill @s

# Set item.
execute if entity @s[scores={charSkillACool=..0}] run replaceitem entity @s hotbar.0 minecraft:iron_sword 1
