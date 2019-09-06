# hh:vanilla_combat/range_attack_by_arrow
# @as player

function player:add_tags

scoreboard players add @e[sort=nearest,limit=1,tag=enemy,tag=be_attacked] hhDamagedR 30
scoreboard players set @e[sort=nearest,limit=1,tag=enemy,tag=be_attacked] hhLastDamageWay 2
scoreboard players operation @e[sort=nearest,limit=1,tag=enemy,tag=be_attacked] hhLastDamageUid = @s uid
advancement revoke @s only hh:vanilla_combat/range_attack_by_arrow

function player:remove_tags
