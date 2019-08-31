# hh:health/healed
# @as players

# Deal with innate health.
scoreboard players operation absorbedByInnateHealth tmp = @s hhHealed
scoreboard players operation lostInnateHealth tmp = @e[type=minecraft:armor_stand,tag=my_char] hhInnateHealth
scoreboard players operation lostInnateHealth tmp -= @s hhInnateHealth
scoreboard players operation absorbedByInnateHealth tmp < lostInnateHealth tmp
scoreboard players operation @s hhInnateHealth += absorbedByInnateHealth tmp
scoreboard players operation @s hhHealed -= absorbedByInnateHealth tmp

# Deal with innate armor.
scoreboard players operation absorbedByInnateArmor tmp = @s hhHealed
scoreboard players operation lostInnateArmor tmp = @e[type=minecraft:armor_stand,tag=my_char] hhInnateArmor
scoreboard players operation lostInnateArmor tmp -= @s hhInnateArmor
scoreboard players operation absorbedByInnateArmor tmp < lostInnateArmor tmp
scoreboard players operation @s hhInnateArmor += absorbedByInnateArmor tmp
scoreboard players operation @s hhHealed -= absorbedByInnateArmor tmp

# Deal with innate shield.
scoreboard players operation absorbedByInnateShield tmp = @s hhHealed
scoreboard players operation lostInnateShield tmp = @e[type=minecraft:armor_stand,tag=my_char] hhInnateShield
scoreboard players operation lostInnateShield tmp -= @s hhInnateShield
scoreboard players operation absorbedByInnateShield tmp < lostInnateShield tmp
scoreboard players operation @s hhInnateShield += absorbedByInnateShield tmp
scoreboard players operation @s hhHealed -= absorbedByInnateShield tmp

scoreboard players reset @s hhHealed

function hh:health/display_health_bar/render
