# hh:vanilla_combat/range_attack_by_arrow
# @as player

scoreboard players add @e[sort=nearest,limit=1,tag=enemy,nbt={HurtTime: 9s}] hhDamagedR 30
scoreboard players set @e[sort=nearest,limit=1,tag=enemy,nbt={HurtTime: 9s}] hhLastDamageWay 2
scoreboard players operation @e[sort=nearest,limit=1,tag=enemy,nbt={HurtTime: 9s}] hhLastDamageUid = @s uid
advancement revoke @s only hh:vanilla_combat/range_attack_by_arrow
