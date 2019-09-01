# hh:vanilla_combat/melee_attack
# @as adv reward

scoreboard players add @e[sort=nearest,limit=1,nbt={HurtTime: 10s}] hhDamagedM 30
scoreboard players set @e[sort=nearest,limit=1,nbt={HurtTime: 10s}] hhLastDamageWay 1
scoreboard players operation @e[sort=nearest,limit=1,nbt={HurtTime: 10s}] hhLastDamageUid = @s uid
advancement revoke @s only hh:vanilla_combat/melee_attack
