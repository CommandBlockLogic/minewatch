# hh:vanilla_combat/player_hurt_entity
# @as adv reward

scoreboard players set @e[sort=nearest,limit=1,nbt={HurtTime: 10s}] hhLastDamageWay 1
scoreboard players operation @e[sort=nearest,limit=1,nbt={HurtTime: 10s}] hhLastDamageUid = @s uid
advancement revoke @s only hh:player_hurt_entity
