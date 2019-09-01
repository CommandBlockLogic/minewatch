# hh:death/died
# @as dead players

title @a times 0 5 0
title @s title {"color": "red", "text": "你死了"}
title @s subtitle {"score": {"objective": "hhReviveTime", "name": "@s"}}

scoreboard players remove @s hhReviveTime 1
execute if score @s hhReviveTime matches ..0 run tag @s remove force_player
execute if score @s hhReviveTime matches ..0 run tag @s remove died
execute if score @s hhReviveTime matches ..0 run gamemode adventure
execute if score @s hhReviveTime matches ..0 run function char:scheduler/init
