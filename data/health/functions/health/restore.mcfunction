# health:health/restore
# @as players

scoreboard players operation @s health += @s healthRestored
scoreboard players set @s healthRestored 0

scoreboard players operation @s health < @s healthMax
