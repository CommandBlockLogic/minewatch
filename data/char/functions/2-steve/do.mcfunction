# char:2-steve/do

# Weapon.
execute if score @s buffWeakness matches 1.. run scoreboard players reset @s hhMeleeDamage
scoreboard players reset @s buffWeakness
scoreboard players add @s hhMeleeDamage 5
## Passive skill A - diamond sword.
execute if score @s charSkillPChosen matches 1 run scoreboard players operation @s hhMeleeDamage < 120 const
execute if score @s charSkillPChosen matches 1 run scoreboard players set @s hhInnateMax 200

# Passive skill B - revive.
execute if score @s charSkillPChosen matches 2 run scoreboard players operation @s hhMeleeDamage < 60 const
execute if score @s charSkillPChosen matches 2 run scoreboard players operation @s hhInnateHealth < 150 const
execute if score @s charSkillPChosen matches 2 run scoreboard players set @s hhInnateMax 150
execute if score @s charSkillPChosen matches 2 run scoreboard players operation minusOne tmp = $hhReviveTime custom1
execute if score @s charSkillPChosen matches 2 run scoreboard players remove minusOne tmp 1
execute if score @s charSkillPChosen matches 2 if entity @s[tag=died] if score @s charSkillPCool matches 0 if score @s hhReviveTime = minusOne tmp run function char:2-steve/private/skill_passive_b_do

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
execute if entity @s[scores={charSkillACool=..0}] if score @s hhMeleeDamage matches 1..59 run replaceitem entity @s hotbar.0 minecraft:wooden_sword 1 {Unbreakable: 1b}
execute if entity @s[scores={charSkillACool=..0}] if score @s hhMeleeDamage matches 60..119 run replaceitem entity @s hotbar.0 minecraft:iron_sword 1 {Unbreakable: 1b}
execute if entity @s[scores={charSkillACool=..0}] if score @s hhMeleeDamage matches 120 run replaceitem entity @s hotbar.0 minecraft:diamond_sword 1 {Unbreakable: 1b}
