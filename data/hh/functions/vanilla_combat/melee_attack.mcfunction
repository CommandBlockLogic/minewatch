# hh:vanilla_combat/melee_attack
# @as player

scoreboard players add @e[tag=enemy,nbt={HurtTime: 9s}] hhDamagedM 30
scoreboard players set @e[tag=enemy,nbt={HurtTime: 9s}] hhLastDamageWay 1
scoreboard players operation @e[tag=enemy,nbt={HurtTime: 9s}] hhLastDamageUid = @s uid
advancement revoke @s only hh:vanilla_combat/melee_attack
