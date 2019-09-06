# hh:tick
# @as player

# Vanilla combat with others.
function hh:vanilla_combat/tick

# Damaged.
scoreboard players operation hh:tick$totalDamage tmp = @s hhDamagedR
scoreboard players operation hh:tick$totalDamage tmp += @s hhDamagedM
execute if entity @s[tag=!died] if score hh:tick$totalDamage tmp matches 1.. run function hh:health/damaged
execute if entity @s[tag=!died] if score hh:tick$totalDamage tmp matches 1.. run function hh:health/calculate_total

# Healed.
execute if entity @s[tag=!died] if score @s hhTotal matches ..0 run function hh:death/die
execute if entity @s[tag=died] run function hh:death/died
execute if entity @s[tag=!died] if score @s hhHealed matches 1.. run function hh:health/healed

# Reducing animation.
execute if score @s hhReducing matches 1.. run scoreboard players set @s hhShouldRerender 1
scoreboard players operation @s hhReducing *= 2 const
scoreboard players operation @s hhReducing /= 3 const

# Restore innate shield.
execute if entity @s[tag=!died] if score @s hhLastDamageTime matches 60.. if score @s hhInnateShield < @e[type=minecraft:armor_stand,tag=my_char,limit=1] hhInnateShield run scoreboard players add @s hhInnateShield 1

# Reduce temp shield.
execute if score @s hhTempShield matches 1.. run scoreboard players set @s hhShouldRerender 1
scoreboard players operation reduced tmp = @s hhTempShield
scoreboard players operation reduced tmp /= @s hhTempShieldTime
scoreboard players operation @s hhTempShield -= reduced tmp
execute if score @s hhTempShieldTime matches 1.. run scoreboard players remove @s hhTempShieldTime 1

# Rerender health bar.
function hh:health/calculate_total
execute unless score @s hhLastTotal = @s hhTotal run scoreboard players set @s hhShouldRerender 1
execute if score @s hhShouldRerender matches 1.. run function hh:health/display_health_bar/render
scoreboard players reset @s hhShouldRerender

scoreboard players add @s hhLastDamageTime 1
scoreboard players add @s hhLastHurtTime 1
scoreboard players operation @s hhLastTotal = @s hhTotal

function hh:health/display_health_bar/tick

# Clear last damage info.
execute if score @s hhLastDamageTime matches 150.. run scoreboard players reset @s hhLastDamageWay
execute if score @s hhLastDamageTime matches 150.. run scoreboard players reset @s hhLastDamageUid
