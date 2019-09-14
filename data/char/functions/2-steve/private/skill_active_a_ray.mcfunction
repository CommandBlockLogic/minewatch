# char:2-steve/private/skill_active_a_ray

execute positioned ^ ^ ^0.5 unless block ~ ~ ~ #.mw:through run function char:2-steve/private/skill_active_a_do
execute positioned ^ ^ ^0.5 if block ~ ~ ~ #.mw:through if entity @s[distance=..24] run function char:2-steve/private/skill_active_a_ray
