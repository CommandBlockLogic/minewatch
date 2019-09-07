# game:start

scoreboard players set $game custom1 1

bossbar set .mw:process visible true

execute as @e[tag=player] run function hh:death/respawn
