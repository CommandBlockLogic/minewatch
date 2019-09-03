# hh:death/die
# @as players going to die

# Find killer.
scoreboard players operation killerUid tmp = @s hhLastDamageUid
execute as @e[tag=player,tag=!self] if score @s uid = killerUid tmp run tag @s add hh_killer

function hh:death/show_death_message

scoreboard players set @s hhReviveTime 200
scoreboard players reset @s hhDamagedM
scoreboard players reset @s hhDamagedR
scoreboard players reset @s hhHealed
scoreboard players reset @s hhLastDamageWay
scoreboard players reset @s hhLastDamageUid
scoreboard players reset @s hhLastDamageTime
gamemode spectator
tag @s add died
tag @s add force_player

tag @e remove hh_killer
