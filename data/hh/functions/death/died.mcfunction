# hh:death/died
# @as dead players

title @s times 0 20 0
title @s title {"color": "red", "translate": "hh.died"}
scoreboard players operation reviveSec tmp = @s hhReviveTime
scoreboard players operation reviveSec tmp /= 20 const
scoreboard players add reviveSec tmp 1
title @s subtitle {"translate": "hh.died.timer", "with": [{"score": {"objective": "tmp", "name": "reviveSec"}}]}

scoreboard players remove @s hhReviveTime 1
execute if score @s hhReviveTime matches ..0 run tag @s remove force_player
execute if score @s hhReviveTime matches ..0 run tag @s remove died
execute if score @s hhReviveTime matches ..0 run gamemode adventure
execute if score @s hhReviveTime matches ..0 run title @s clear
execute if score @s hhReviveTime matches ..0 run function char:scheduler/init
