#> spray:paint
# @as player
# @tmp @out
# - 

# Summon 16×16=256 markers.
scoreboard players set scanDirection params 1
scoreboard players set xNO params 0
scoreboard players set yNO params 0
## SPRAY PAINT TRACING!
execute anchored eyes positioned ^ ^ ^0.8 anchored feet positioned ^ ^ ^ run function spray:private/summon_one_marker
