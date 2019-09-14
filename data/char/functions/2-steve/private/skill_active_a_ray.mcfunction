# char:2-steve/private/skill_active_a_ray

execute positioned ^ ^ ^0.1 unless block ~ ~ ~ #.mw:through run function char:2-steve/private/skill_active_a_do
execute positioned ^ ^ ^0.1 if block ~ ~ ~ #.mw:through unless entity @s[distance=..8] run function char:2-steve/private/skill_active_a_do
execute positioned ^ ^ ^0.1 if block ~ ~ ~ #.mw:through if entity @s[distance=..8] run function char:2-steve/private/skill_active_a_ray
