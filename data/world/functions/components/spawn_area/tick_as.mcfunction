# world:components/spawn_area/tick_as
# @as [tag=player]
# @params
# - blueXMin
# - blueYMin
# - blueZMin
# - blueXMax
# - blueYMax
# - blueZMax
# - redXMin
# - redYMin
# - redZMin
# - redXMax
# - redYMax
# - redZMax

execute store result score x tmp run data get entity @s Pos[0] 10
execute store result score y tmp run data get entity @s Pos[1] 10
execute store result score z tmp run data get entity @s Pos[2] 10

tag @s remove in_target_area
execute if score x tmp >= blueXMin params if score y tmp >= blueYMin params if score z tmp >= blueZMin params if score x tmp <= blueXMax params if score y tmp <= blueYMax params if score z tmp <= blueZMax params run tag @s add in_blue_spawn_area
execute if score x tmp >= redXMin params if score y tmp >= redYMin params if score z tmp >= redZMin params if score x tmp <= redXMax params if score y tmp <= redYMax params if score z tmp <= redZMax params run tag @s add in_red_spawn_area
