# char:common/init
# @as player

function player:equip
scoreboard players operation @s hhInnateHealth = @e[type=minecraft:armor_stand,tag=my_char] hhInnateHealth
scoreboard players operation @s hhInnateArmor = @e[type=minecraft:armor_stand,tag=my_char] hhInnateArmor
scoreboard players operation @s hhInnateShield = @e[type=minecraft:armor_stand,tag=my_char] hhInnateShield
scoreboard players operation @s hhInnateMax = @e[type=minecraft:armor_stand,tag=my_char] hhInnateMax

execute unless score @s charSkillAChosen matches 1.. run scoreboard players set @s charSkillAChosen 1
execute unless score @s charSkillPChosen matches 1.. run scoreboard players set @s charSkillPChosen 1
execute unless score @s charSkillUChosen matches 1.. run scoreboard players set @s charSkillUChosen 1

execute unless score @s charWeaponCool matches -2147483648..2147483647 run scoreboard players set @s charWeaponCool 0
execute unless score @s charSkillACool matches -2147483648..2147483647 run scoreboard players set @s charSkillACool 0
execute unless score @s charSkillPCool matches -2147483648..2147483647 run scoreboard players set @s charSkillPCool 0
execute unless score @s charSkillUCool matches -2147483648..2147483647 run scoreboard players set @s charSkillUCool 0
