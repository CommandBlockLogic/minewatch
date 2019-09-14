# char:2-steve/private/skill_active_a_ray

particle minecraft:cloud ~ ~ ~ 0 0 0 0 1 force
execute positioned ^ ^ ^0.1 unless block ~ ~ ~ #.mw:through run function char:2-steve/private/skill_active_a_do
execute positioned ^ ^ ^0.1 if block ~ ~ ~ #.mw:through if entity @s[distance=..16] run function char:2-steve/private/skill_active_a_ray
