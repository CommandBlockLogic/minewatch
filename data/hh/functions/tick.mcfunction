# hh:tick
# @as players

# execute if score @s hhDamaged matches 1.. run function hh:health/damaged
# function hh:health/total
# execute if score @s hhTotal matches 0 run function hh:death/die
# execute if score @s hhHealed matches 1.. run function hh:health/healed
# function hh:health/total

# scoreboard players operation @s hhReducing *= 2 const
# scoreboard players operation @s hhReducing /= 3 const

# scoreboard players add @s hhLastDamageTime 1

# function hh:health/display_health_bar
