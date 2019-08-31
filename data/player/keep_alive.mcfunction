# player:keep_alive
# @as players

execute unless entity @s[nbt={foodLevel: 20}] run effect give @s minecraft:saturation 1 15 true
execute unless entity @s[nbt={Health: 20.0f}] run effect give @s minecraft:instant_health 1 15 true
execute unless entity @s[nbt={XpLevel: 0}] run experience set @s 0 levels
