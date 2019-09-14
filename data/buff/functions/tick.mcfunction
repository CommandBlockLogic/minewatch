# buff:tick
# @as [tag=player]

execute unless score @s buffInvisibility matches 1.. run effect clear @s minecraft:invisibility
execute if score @s buffInvisibility matches 1.. run effect give @s minecraft:invisibility 1 0 true
execute if score @s buffInvisibility matches 1.. run scoreboard players remove @s buffInvisibility 1

execute unless score @s buffJumpBoost1 matches 1.. run effect clear @s minecraft:jump_boost
execute if score @s buffJumpBoost1 matches 1.. run effect give @s minecraft:jump_boost 1 1 true
execute if score @s buffJumpBoost1 matches 1.. run scoreboard players remove @s buffJumpBoost1 1

execute unless score @s buffLevitation20 matches 1.. run effect clear @s minecraft:levitation
execute if score @s buffLevitation20 matches 1.. run effect give @s minecraft:levitation 1 20 true
execute if score @s buffLevitation20 matches 1.. run scoreboard players remove @s buffLevitation20 1

execute unless score @s buffSpeed1 matches 1.. run effect clear @s minecraft:speed
execute if score @s buffSpeed1 matches 1.. run effect give @s minecraft:speed 1 1 true
execute if score @s buffSpeed1 matches 1.. run scoreboard players remove @s buffSpeed1 1
