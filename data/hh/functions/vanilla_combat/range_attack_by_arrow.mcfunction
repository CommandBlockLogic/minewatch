# hh:vanilla_combat/range_attack_by_arrow
# @as player

execute if entity @s[advancements={hh:vanilla_combat/range_attack_by_arrow=true}] run 

scoreboard players add @e[sort=nearest,limit=1,tag=enemy,nbt={HurtTime: 10s}] hhDamagedR 30
scoreboard players set @e[sort=nearest,limit=1,tag=enemy,nbt={HurtTime: 10s}] hhLastDamageWay 2
scoreboard players operation @e[sort=nearest,limit=1,tag=enemy,nbt={HurtTime: 10s}] hhLastDamageUid = @s uid
advancement revoke @s only hh:vanilla_combat/range_attack_by_arrow
