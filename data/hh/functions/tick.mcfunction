# hh:tick
# @as player

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
execute if score @s hhReducing matches 1.. run scoreboard players set @s hhShouldRerender 1
scoreboard players operation @s hhReducing *= 2 const
scoreboard players operation @s hhReducing /= 3 const

# Rerender health bar.
execute unless score @s hhLastTotal = @s hhTotal run scoreboard players set @s hhShouldRerender 1
execute unless score @s hhShouldRerender matches 1.. run function hh:health/display_health_bar/render
scoreboard players reset @s hhShouldRerender

scoreboard players add @s hhLastDamageTime 1
scoreboard players operation @s hhLastTotal = @s hhTotal

function hh:health/display_health_bar/tick
