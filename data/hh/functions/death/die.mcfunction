# hh:death/die
# @as players going to die

# Find killer.
scoreboard players operation killerUid tmp = @s hhLastDamageUid
execute as @e[tag=enemy] if score @s uid = killerUid tmp run tag @s add hh_killer

# Suicide.
execute unless entity @e[tag=hh_killer] run tellraw @a ["\ue001 ", {"selector": "@s"}]

# Murder!
execute if entity @e[tag=hh_killer] run function hh:death/show_death_message

scoreboard players set @s hhReviveTime 200
scoreboard players reset @s hhLastDamageWay
scoreboard players reset @s hhLastDamageUid
scoreboard players reset @s hhLastDamageTime
gamemode spectator
tag @s add died
tag @s add force_player

tag @e remove hh_killer
