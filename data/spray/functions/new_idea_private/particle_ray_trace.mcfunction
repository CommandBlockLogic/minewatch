#> spray:new_idea_private/ray_trace

execute unless block ~ ~ ~ #.mw:player_through positioned ^ ^ ^-0.1 run function spray:new_idea_private/copy_data_final
execute if block ~ ~ ~ #.mw:player_through if entity @s[distance=..3] positioned ^ ^ ^0.1 run function spray:new_idea_private/particle_ray_trace