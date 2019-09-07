# hh:death/respawn
# @as player

tag @s remove force_player
tag @s remove died
gamemode adventure
title @s clear
function char:scheduler/init
scoreboard players reset @s hhDamagedM
scoreboard players reset @s hhDamagedR
scoreboard players reset @s hhHealed

execute if entity @s[tag=blue_team] at @e[limit=1,tag=world_blue_spawn_point_component] run teleport @s ~ ~ ~
execute if entity @s[tag=red_team] at @e[limit=1,tag=world_red_spawn_point_component] run teleport @s ~ ~ ~
