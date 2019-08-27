# hh:death/show_death_message
# @as players going to die
# @tag hh_killer

execute if score @s hhLastDamageWay matches 1 run tellraw @a [{"selector":"@e[tag=hh_killer]"}," \ue001 ",{"selector":"@s"}]
execute if score @s hhLastDamageWay matches 2 run tellraw @a [{"selector":"@e[tag=hh_killer]"}," \ue002 ",{"selector":"@s"}]
execute if score @s hhLastDamageWay matches 6 run tellraw @a [{"selector":"@e[tag=hh_killer]"}," \u00a74\ue002\u00a7r ",{"selector":"@s"}]
