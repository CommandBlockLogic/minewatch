# hh:vanilla_combat/player_hurt_entity
# @as adv reward

say HurtTime: 0s @e[nbt={HurtTime: 0s}]
say HurtTime: 10s @e[nbt={HurtTime: 10s}]
say HurtTime: 9s @e[nbt={HurtTime: 9s}]

scoreboard players set @a[tag=hh.vanilla_combat.victim] hhLastDamageWay 1
scoreboard players operation @a[tag=hh.vanilla_combat.victim] hhLastDamageUid = @s uid
tag @a remove hh.vanilla_combat.victim
advancement revoke @s only hh:player_hurt_entity
