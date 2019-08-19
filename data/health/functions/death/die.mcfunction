# health:death/die
# @as players going to die

# Find killer.
scoreboard players operation health:death/die$deadPlayerUid tmp = @s uid
execute as @e[tag=enemy] if score @s uid = health:death/die$deadPlayerUid tmp run tag @s add killer

# Suicide.
execute unless entity @e[tag=killer] run tellraw @a ["\ue001 ",{"selector":"@s"}]

# Murder!
execute if entity @e[tag=killer] run function health:death/show_death_message

tag @e remove killer
