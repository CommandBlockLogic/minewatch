# world:components/target_area/tick_as
# @as [tag=player]
# @params
# - xMin
# - yMin
# - zMin
# - xMax
# - yMax
# - zMax

execute store result score x params run data get entity @s Pos[0] 10
execute store result score y params run data get entity @s Pos[1] 10
execute store result score z params run data get entity @s Pos[2] 10

tag @s remove in_target_area
execute if score @s x >= xMin params if score @s y >= yMin params if score @s z >= zMin params if score @s x <= xMax params if score @s y <= yMax params if score @s z <= zMax params run tag @s add in_target_area
