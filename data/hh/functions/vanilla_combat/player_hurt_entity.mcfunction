# hh:vanilla_combat/player_hurt_entity
# @as adv reward

scoreboard players set @a[tag=hhhh.vanilla_combat.victim] hhLastDamageWay 1
scoreboard players operation @a[tag=hh.vanilla_combat.victim] hhLastDamageUid = @s uid
tag @a remove hh.vanilla_combat.victim
advancement revoke @s only hh:player_hurt_entity
