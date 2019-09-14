# char:common/init
# @as player

function player:equip
scoreboard players operation @s hhInnateHealth = @e[type=minecraft:armor_stand,tag=my_char] hhInnateHealth
scoreboard players operation @s hhInnateArmor = @e[type=minecraft:armor_stand,tag=my_char] hhInnateArmor
scoreboard players operation @s hhInnateShield = @e[type=minecraft:armor_stand,tag=my_char] hhInnateShield
scoreboard players operation @s hhInnateMax = @e[type=minecraft:armor_stand,tag=my_char] hhInnateMax

scoreboard players set @s charSkillAChosen 1
scoreboard players set @s charSkillPChosen 1
scoreboard players set @s charSkillUChosen 1
