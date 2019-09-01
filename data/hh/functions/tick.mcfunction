# hh:tick
# @as player

# Damaged.
scoreboard players operation totalDamage tmp = @s hhDamagedR
scoreboard players operation totalDamage tmp += @s hhDamagedM
execute if score totalDamage tmp matches 1.. run function hh:health/damaged
function hh:health/calculate_total

# Healed.
execute if score @s hhTotal matches ..0 if entity @s[tag=!died] run function hh:death/die
execute if entity @s[tag=died] run function hh:death/died
execute if score @s hhHealed matches 1.. if entity @s[tag=!died] run function hh:health/healed
function hh:health/calculate_total

# Recuding animation.
execute if score @s hhReducing matches 1.. run scoreboard players set @s hhShouldRerender 1
scoreboard players operation @s hhReducing *= 2 const
scoreboard players operation @s hhReducing /= 3 const

# Restore innate shield.
execute if entity @s[tag=!died] if score @s hhLastDamageTime matches 60.. if score @s hhInnateShield < @e[type=minecraft:armor_stand,tag=my_char,limit=1] hhInnateShield run scoreboard players add @s hhInnateShield 1

# Rerender health bar.
execute unless score @s hhLastTotal = @s hhTotal run scoreboard players set @s hhShouldRerender 1
execute if score @s hhShouldRerender matches 1.. run function hh:health/display_health_bar/render
scoreboard players reset @s hhShouldRerender

scoreboard players add @s hhLastDamageTime 1
scoreboard players operation @s hhLastTotal = @s hhTotal

function hh:health/display_health_bar/tick

tag @a remove hh.vanilla_combat.victim
