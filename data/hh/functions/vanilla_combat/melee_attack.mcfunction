# hh:vanilla_combat/melee_attack
# @as player

execute unless score $game custom1 matches 2 run function player:add_tags

execute unless score $game custom1 matches 2 run scoreboard players add @e[tag=enemy,tag=be_attacked] hhDamagedM 30
execute unless score $game custom1 matches 2 run scoreboard players set @e[tag=enemy,tag=be_attacked] hhLastDamageWay 1
execute unless score $game custom1 matches 2 run scoreboard players operation @e[tag=enemy,tag=be_attacked] hhLastDamageUid = @s uid
execute unless score $game custom1 matches 2 run advancement revoke @s only hh:vanilla_combat/melee_attack

execute unless score $game custom1 matches 2 run function player:remove_tags
