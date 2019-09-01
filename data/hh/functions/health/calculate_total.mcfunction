# hh:health/calculate_total

scoreboard players operation @s hhInnateHealth > 0 const
scoreboard players operation @s hhInnateArmor > 0 const
scoreboard players operation @s hhInnateShield > 0 const
scoreboard players operation @s hhTempArmor > 0 const
scoreboard players operation @s hhTempShield > 0 const

scoreboard players operation @s hhInnateHealth < @e[type=minecraft:armor_stand,tag=my_char] hhInnateHealth
scoreboard players operation @s hhInnateArmor < @e[type=minecraft:armor_stand,tag=my_char] hhInnateArmor
scoreboard players operation @s hhInnateShield < @e[type=minecraft:armor_stand,tag=my_char] hhInnateShield

scoreboard players operation @s hhInnateTotal = @s hhInnateHealth
scoreboard players operation @s hhInnateTotal += @s hhInnateArmor
scoreboard players operation @s hhInnateTotal += @s hhInnateShield
scoreboard players operation @s hhInnateTotal < @s hhInnateMax

scoreboard players operation @s hhTempTotal = @s hhTempArmor
scoreboard players operation @s hhTempTotal += @s hhTempShield

scoreboard players operation @s hhTotal = @s hhInnateTotal
scoreboard players operation @s hhTotal += @s hhTempTotal
