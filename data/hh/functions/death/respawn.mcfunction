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
