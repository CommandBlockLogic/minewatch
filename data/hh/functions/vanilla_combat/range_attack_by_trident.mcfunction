# hh:vanilla_combat/range_attack_by_trident
# @as player

function player:add_tags

say 我三叉戟打到了 @e[sort=nearest,limit=1,tag=enemy,tag=be_attacked]

scoreboard players add @e[sort=nearest,limit=1,tag=enemy,tag=be_attacked] hhDamagedR 30
scoreboard players add @e[sort=nearest,limit=1,tag=enemy,tag=be_attacked] hhDamagedB 50
scoreboard players add @e[sort=nearest,limit=1,tag=enemy,tag=be_attacked] hhDamagedBTime 25
scoreboard players set @e[sort=nearest,limit=1,tag=enemy,tag=be_attacked] hhLastDamageWay 7
scoreboard players operation @e[sort=nearest,limit=1,tag=enemy,tag=be_attacked] hhLastDamageUid = @s uid
advancement revoke @s only hh:vanilla_combat/range_attack_by_trident

function player:remove_tags
