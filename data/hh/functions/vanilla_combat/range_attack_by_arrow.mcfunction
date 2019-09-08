# hh:vanilla_combat/range_attack_by_arrow
# @as player

execute unless score $game custom1 matches 2 run function player:add_tags
say a @e[tag=enemy,tag=be_attacked]

execute unless score $game custom1 matches 2 run scoreboard players add @e[sort=nearest,limit=1,tag=enemy,tag=be_attacked] hhDamagedR 30
execute unless score $game custom1 matches 2 run scoreboard players set @e[sort=nearest,limit=1,tag=enemy,tag=be_attacked] hhLastDamageWay 2
execute unless score $game custom1 matches 2 run scoreboard players operation @e[sort=nearest,limit=1,tag=enemy,tag=be_attacked] hhLastDamageUid = @s uid
execute unless score $game custom1 matches 2 run advancement revoke @s only hh:vanilla_combat/range_attack_by_arrow

execute unless score $game custom1 matches 2 run function player:remove_tags
