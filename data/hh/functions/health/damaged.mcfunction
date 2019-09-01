# hh:health/damaged
# @as players

# Calculate totalDamage.
scoreboard players operation totalDamage tmp = @s hhDamagedR
scoreboard players operation totalDamage tmp += @s hhDamagedM

scoreboard players reset @s hhDamagedR
scoreboard players reset @s hhDamagedM
scoreboard players operation @s hhReducing = totalDamage tmp
scoreboard players operation @s hhReducing < @s hhTotal

execute if score totalDamage tmp matches 1.. run scoreboard players set @s hhLastDamageTime 0
execute if score totalDamage tmp matches 1.. run scoreboard players set @s hhShouldRerender 1
# Sounds
scoreboard players add @s hhLastHurtTime 1
execute if score totalDamage tmp matches 1.. if score @s hhLastHurtTime matches 30.. run function char:scheduler/hurt
execute if score totalDamage tmp matches 1.. if score @s hhLastHurtTime matches 30.. run scoreboard players reset @s hhLastHurtTime

# Deal with temp shield.
scoreboard players operation absorbedByTempShield tmp = totalDamage tmp
scoreboard players operation absorbedByTempShield tmp < @s hhTempShield
scoreboard players operation @s hhTempShield -= absorbedByTempShield tmp
scoreboard players operation totalDamage tmp -= absorbedByTempShield tmp

# Deal with temp armor.
execute if score @s hhTempArmor matches 1.. run scoreboard players operation reduction tmp = totalDamage tmp
execute if score @s hhTempArmor matches 1.. run scoreboard players operation reduction tmp /= 2 const
execute if score @s hhTempArmor matches 1.. run scoreboard players operation reduction tmp < 5 const
execute if score @s hhTempArmor matches 1.. run scoreboard players operation totalDamage tmp -= reduction tmp
scoreboard players operation absorbedByTempArmor tmp = totalDamage tmp
scoreboard players operation absorbedByTempArmor tmp < @s hhTempArmor
scoreboard players operation @s hhTempArmor -= absorbedByTempArmor tmp
scoreboard players operation totalDamage tmp -= absorbedByTempArmor tmp

# Deal with innate shield.
scoreboard players operation absorbedByInnateShield tmp = totalDamage tmp
scoreboard players operation absorbedByInnateShield tmp < @s hhInnateShield
scoreboard players operation @s hhInnateShield -= absorbedByInnateShield tmp
scoreboard players operation totalDamage tmp -= absorbedByInnateShield tmp

# Deal with innate armor.
execute if score @s hhInnateArmor matches 1.. run scoreboard players operation reduction tmp = totalDamage tmp
execute if score @s hhInnateArmor matches 1.. run scoreboard players operation reduction tmp /= 2 const
execute if score @s hhInnateArmor matches 1.. run scoreboard players operation reduction tmp < 5 const
execute if score @s hhInnateArmor matches 1.. run scoreboard players operation totalDamage tmp -= reduction tmp
scoreboard players operation absorbedByInnateArmor tmp = totalDamage tmp
scoreboard players operation absorbedByInnateArmor tmp < @s hhInnateArmor
scoreboard players operation @s hhInnateArmor -= absorbedByInnateArmor tmp
scoreboard players operation totalDamage tmp -= absorbedByInnateArmor tmp

# Deal with innate health.
scoreboard players operation absorbedByInnateHealth tmp = totalDamage tmp
scoreboard players operation absorbedByInnateHealth tmp < @s hhInnateHealth
scoreboard players operation @s hhInnateHealth -= absorbedByInnateHealth tmp
scoreboard players operation totalDamage tmp -= absorbedByInnateHealth tmp
