# hh:health/damaged
# @as players

scoreboard players operation @s hhReducing = @s hhDamaged
scoreboard players operation @s hhReducing < @s health

# scoreboard players operation hh:health/damage$absorbedByHealthExtra tmp = @s hhDamaged
# scoreboard players operation hh:health/damage$absorbedByHealthExtra tmp < @s hhExtra
# scoreboard players operation @s healthExtra -= health:health/damage$absorbedByHealthExtra tmp
# scoreboard players operation @s healthDamaged -= health:health/damage$absorbedByHealthExtra tmp
# scoreboard players operation @s health -= @s healthDamaged

scoreboard players set @s hhDamaged 0
scoreboard players operation @s hhHealth > 0 const

scoreboard players set @s hhLastDamageTime 0
