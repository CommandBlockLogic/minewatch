# fnmdp:tick
# @author K_Bai
# @url https://www.mcbbs.net/thread-777085-1-1.html
# LOVE!

summon minecraft:area_effect_cloud ~ ~ ~ {Tags: ["new_summoned"]}

execute store result score x tmp run data get entity @s Pos[0] 100
execute store result score y tmp run data get entity @s Pos[1] 100
execute store result score z tmp run data get entity @s Pos[2] 100

scoreboard players operation @s fnmdpVx += @s fnmdpAx
scoreboard players operation @s fnmdpVy += @s fnmdpAy
scoreboard players operation @s fnmdpVz += @s fnmdpAz

scoreboard players operation x tmp += @s fnmdpVx
scoreboard players operation y tmp += @s fnmdpVy
scoreboard players operation z tmp += @s fnmdpVz

execute store result score x tmp run data get entity @s Pos[0] 100
execute store result score y tmp run data get entity @s Pos[1] 100
execute store result score z tmp run data get entity @s Pos[2] 100
