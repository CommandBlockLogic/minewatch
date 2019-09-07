# world:components/target_area/tick_as
# @as [tag=player]
# @params
# - xMin
# - yMin
# - zMin
# - xMax
# - yMax
# - zMax

execute store result score x tmp run data get entity @s Pos[0] 10
execute store result score y tmp run data get entity @s Pos[1] 10
execute store result score z tmp run data get entity @s Pos[2] 10

tag @s remove in_target_area
execute if score x tmp >= xMin params if score y tmp >= yMin params if score z tmp >= zMin params if score x tmp <= xMax params if score y tmp <= yMax params if score @s z <= zMax params run tag @s add in_target_area
