# hh:death/die
# @as players going to die

# Find killer.
scoreboard players operation deadPlayerUid tmp = @s uid
execute as @e[tag=enemy] if score @s uid = deadPlayerUid tmp run tag @s add hh_killer

# Suicide.
execute unless entity @e[tag=hh_killer] run tellraw @a ["\ue001 ", {"selector": "@s"}]

# Murder!
execute if entity @e[tag=hh_killer] run function hh:death/show_death_message

scoreboard players set @s hhReviveTime 200
tag @e remove hh_killer
