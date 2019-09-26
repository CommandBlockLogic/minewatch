#> spray:private/ray_trace

execute if block ~ ~ ~ #.mw:player_through positioned ^ ^ ^0.25 run function spray:private/ray_trace
execute unless block ~ ~ ~ #.mw:player_through positioned ^ ^ ^-0.25 run function spray:private/set_color
