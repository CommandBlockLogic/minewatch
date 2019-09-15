# hh:vanilla_combat/melee_attack
# @as player

say 1
execute unless score $game custom1 matches 2 run function player:add_tags

execute unless score @s hhMeleeDamage matches 0.. run scoreboard players set @s hhMeleeDamage 30
execute unless score $game custom1 matches 2 run scoreboard players operation @e[tag=enemy,tag=be_attacked] hhDamagedM += @s hhMeleeDamage
execute unless score $game custom1 matches 2 run scoreboard players set @e[tag=enemy,tag=be_attacked] hhLastDamageWay 1
execute unless score $game custom1 matches 2 run scoreboard players operation @e[tag=enemy,tag=be_attacked] hhLastDamageUid = @s uid

scoreboard players add @s buffWeakness 30

execute unless score $game custom1 matches 2 run function player:remove_tags

advancement revoke @s only hh:vanilla_combat/melee_attack
