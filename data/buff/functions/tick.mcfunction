# buff:tick
# @as [tag=player]

execute unless score @s buffLevitation20 matches 1.. run effect clear @s minecraft:levitation
execute if score @s buffLevitation20 matches 1.. run effect give @s minecraft:levitation 1 20 true
