# player:keep_alive
# @as players

execute unless entity @s[nbt={foodLevel: 20}] run effect give @s minecraft:saturation 1 15 true
execute unless entity @s[nbt={Health: 20.0f}] if entity @s[type=!#minecraft:undead] run effect give @s minecraft:instant_health 1 15 true
execute unless entity @s[nbt={Health: 20.0f}] if entity @s[type=#minecraft:undead] run effect give @s minecraft:instant_damage 1 15 true
execute unless entity @s[predicate=player:level_is_0] run experience set @s 0 levels
