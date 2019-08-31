# hh:tick
# @as players

# Damaged.
scoreboard players operation totalDamage tmp = @s hhDamagedR
scoreboard players operation totalDamage tmp += @s hhDamagedM
execute if score totalDamage tmp matches 1.. run function hh:health/damaged
function hh:health/calculate_total

# Healed.
execute if score @s hhTotal matches ..0 unless score @s hhReviveTime matches 0.. run function hh:death/die
execute if score @s hhHealed matches 1.. run function hh:health/healed
function hh:health/calculate_total

# Recuding animation.
execute if score @s hhReducing matches 1.. run scoreboard players set shouldRender tmp 1
scoreboard players operation @s hhReducing *= 2 const
scoreboard players operation @s hhReducing /= 3 const
execute if score shouldRender tmp matches 1 run function hh:health/display_health_bar/

scoreboard players add @s hhLastDamageTime 1

function hh:health/display_health_bar/tick
