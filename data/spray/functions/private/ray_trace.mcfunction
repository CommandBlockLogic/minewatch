#> spray:private/ray_trace

execute unless block ~ ~ ~ #.mw:player_through positioned ^ ^ ^-0.25 run function spray:private/summon_one_marker
execute if block ~ ~ ~ #.mw:player_through if entity @s[distance=..5] positioned ^ ^ ^0.25 run function spray:private/ray_trace