# hh:death/respawn
# @as player

say 我复活了

tag @s remove force_player
tag @s remove died
gamemode adventure
title @s clear
function char:scheduler/init
scoreboard players reset @s hhDamagedM
scoreboard players reset @s hhDamagedR
scoreboard players reset @s hhHealed

execute if entity @s[tag=blue_team] at @e[limit=1,sort=random,type=minecraft:area_effect_cloud,tag=world_blue_spawn_point_component] run function world:components/spawn_point/respawn
execute if entity @s[tag=red_team] at @e[limit=1,sort=random,type=minecraft:area_effect_cloud,tag=world_red_spawn_point_component] run function world:components/spawn_point/respawn
