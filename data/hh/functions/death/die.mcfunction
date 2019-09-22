# hh:death/die
# @as players going to die

# Find killer.
scoreboard players operation killerUid tmp = @s hhLastDamageUid
execute as @e[tag=player,tag=!self] if score @s uid = killerUid tmp run tag @s add hh_killer

# Sounds.
execute as @a[tag=hh_killer] at @s run playsound hh:kill master @s

function char:scheduler/die
function hh:death/show_death_message

scoreboard players opertation @s hhReviveTime = $hhReviveTime custom1
scoreboard players reset @s hhDamagedM
scoreboard players reset @s hhDamagedR
scoreboard players reset @s hhDamagedB
scoreboard players reset @s hhDamagedBTime
scoreboard players reset @s hhHealed
scoreboard players reset @s hhLastDamageWay
scoreboard players reset @s hhLastDamageUid
scoreboard players reset @s hhLastDamageTime
gamemode spectator
tag @s add died
tag @s add died_force_player

tag @e remove hh_killer
