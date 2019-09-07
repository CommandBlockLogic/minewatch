# hh:death/died
# @as dead players

title @s times 0 20 0
execute if score $game custom1 matches 1 run title @s title {"color": "red", "translate": "hh.died"}
scoreboard players operation reviveSec tmp = @s hhReviveTime
scoreboard players operation reviveSec tmp /= 20 const
scoreboard players add reviveSec tmp 1
title @s subtitle {"translate": "hh.died.timer", "with": [{"score": {"objective": "tmp", "name": "reviveSec"}}]}

scoreboard players remove @s hhReviveTime 1
execute if score @s hhReviveTime matches ..0 run function hh:death/respawn
