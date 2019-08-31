# char:common/select
# @as player

function player:equip
execute positioned 0.0 0.0 0.0 run scoreboard players operation @s hhInnateHealth = @e[type=minecraft:armor_stand,distance=0,tag=my_char] hhInnateHealth
execute positioned 0.0 0.0 0.0 run scoreboard players operation @s hhInnateArmor = @e[type=minecraft:armor_stand,distance=0,tag=my_char] hhInnateArmor
execute positioned 0.0 0.0 0.0 run scoreboard players operation @s hhInnateShield = @e[type=minecraft:armor_stand,distance=0,tag=my_char] hhInnateShield
execute positioned 0.0 0.0 0.0 run scoreboard players operation @s hhInnateMax = @e[type=minecraft:armor_stand,distance=0,tag=my_char] hhInnateMax
