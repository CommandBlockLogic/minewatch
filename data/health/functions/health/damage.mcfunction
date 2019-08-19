# health:health/damage
# @as players

scoreboard players operation @s healthReducing = @s healthDamaged
scoreboard players operation @s healthReducing < @s health

scoreboard players operation health:health/damage$absorbedByHealthExtra tmp = @s healthDamaged
scoreboard players operation health:health/damage$absorbedByHealthExtra tmp < @s healthExtra
scoreboard players operation @s healthExtra -= health:health/damage$absorbedByHealthExtra tmp
scoreboard players operation @s healthDamaged -= health:health/damage$absorbedByHealthExtra tmp
scoreboard players operation @s health -= @s healthDamaged

scoreboard players set @s healthDamaged 0
scoreboard players operation @s health > 0 const

scoreboard players set @s lastDamagedTime 0
