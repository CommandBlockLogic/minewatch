# health:tick
# @as players

execute if score @s healthDamaged matches 1.. run function health:health/damage
function health:health/sum
execute if score @s healthSum matches 0 run function health:death/die
execute if score @s healthRestored matches 1.. run function health:health/restore
function health:health/sum

scoreboard players operation @s healthReducing *= 2 const
scoreboard players operation @s healthReducing /= 3 const

scoreboard players add @s lastDamagedTime 1

function health:health/display_health_bar
