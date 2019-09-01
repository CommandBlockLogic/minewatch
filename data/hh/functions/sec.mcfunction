# hh:sec

# Clear health bar.
execute as @e[tag=health_bar] run function hh:health/display_health_bar/sec_as
kill @e[tag=health_bar,tag=!hasOwner]
tag @e remove hasOwner
