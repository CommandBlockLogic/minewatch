# hh:vanilla_combat/melee_attack
# @as player

function player:add_tags

scoreboard players add @e[tag=enemy,tag=be_attacked] hhDamagedM 30
scoreboard players set @e[tag=enemy,tag=be_attacked] hhLastDamageWay 1
scoreboard players operation @e[tag=enemy,tag=be_attacked] hhLastDamageUid = @s uid
advancement revoke @s only hh:vanilla_combat/melee_attack

function player:remove_tags
