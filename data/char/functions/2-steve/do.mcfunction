# char:2-steve/do

# Weapon.
scoreboard players set @s hhMeleeDamage 80

# Active skill A - obsidian wall.
execute if entity @s[scores={charSkillACool=1}] run playsound minecraft:block.lava.pop master @s ~ ~ ~ 1000000
execute if entity @s[scores={charSkillACool=1..}] run function char:2-steve/private/skill_active_a_do

execute as @e[type=minecraft:area_effect_cloud,tag=char_2-steve_obsidian_wall,tag=my_marker] run scoreboard players add @s custom2 1
execute as @e[type=minecraft:area_effect_cloud,tag=char_2-steve_obsidian_wall,tag=my_marker,scores={custom2=100..}] at @s unless score @s custom1 matches 1 if block ~ ~ ~ minecraft:obsidian run playsound minecraft:block.glass.break master @a[tag=!self]
execute as @e[type=minecraft:area_effect_cloud,tag=char_2-steve_obsidian_wall,tag=my_marker,scores={custom2=100..}] at @s unless score @s custom1 matches 1 if block ~ ~ ~ minecraft:obsidian run playsound minecraft:block.glass.break master @a[tag=self] ~ ~ ~ 1000000
execute as @e[type=minecraft:area_effect_cloud,tag=char_2-steve_obsidian_wall,tag=my_marker,scores={custom2=100..}] at @s unless score @s custom1 matches 1 if block ~ ~ ~ minecraft:obsidian run particle minecraft:block minecraft:obsidian ~ ~ ~ 0.25 0.25 0.25 0 6 force
execute as @e[type=minecraft:area_effect_cloud,tag=char_2-steve_obsidian_wall,tag=my_marker,scores={custom2=100..}] at @s unless score @s custom1 matches 1 if block ~ ~ ~ minecraft:obsidian run setblock ~ ~ ~ minecraft:air replace
execute as @e[type=minecraft:area_effect_cloud,tag=char_2-steve_obsidian_wall,tag=my_marker,scores={custom2=100..}] at @s run kill @s

# Set item.
execute if entity @s[scores={charSkillACool=..0}] if score @s buffWeakness matches 1.. run replaceitem entity @s hotbar.0 minecraft:wooden_sword 1
execute if entity @s[scores={charSkillACool=..0}] unless score @s buffWeakness matches 1.. run replaceitem entity @s hotbar.0 minecraft:iron_sword 1
