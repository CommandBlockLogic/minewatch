# game:begin

scoreboard players set $game custom1 1

bossbar set .mw:process visible true

execute as @e[tag=player] run function game:respawn_all_as
