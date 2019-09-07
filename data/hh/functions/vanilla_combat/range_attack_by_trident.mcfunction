# hh:vanilla_combat/range_attack_by_trident
# @as player

function player:add_tags

scoreboard players add @e[sort=nearest,limit=1,tag=enemy,tag=be_attacked] hhDamagedR 40
scoreboard players add @e[sort=nearest,limit=1,tag=enemy,tag=be_attacked] hhDamagedB 60
scoreboard players add @e[sort=nearest,limit=1,tag=enemy,tag=be_attacked] hhDamagedBTime 60
scoreboard players set @e[sort=nearest,limit=1,tag=enemy,tag=be_attacked] hhLastDamageWay 7
scoreboard players operation @e[sort=nearest,limit=1,tag=enemy,tag=be_attacked] hhLastDamageUid = @s uid
advancement revoke @s only hh:vanilla_combat/range_attack_by_trident

function player:remove_tags
