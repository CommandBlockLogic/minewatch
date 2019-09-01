# hh:death/show_death_message
# @as players going to die
# @tag hh_killer

execute if score @s hhLastDamageWay matches 1 run tellraw @a [{"selector":"@e[tag=hh_killer]"}," \uE001 ",{"selector":"@s"}]
execute if score @s hhLastDamageWay matches 2 run tellraw @a [{"selector":"@e[tag=hh_killer]"}," \uE002 ",{"selector":"@s"}]
execute if score @s hhLastDamageWay matches 7 run tellraw @a [{"selector":"@e[tag=hh_killer]"}," §4\uE002§r ",{"selector":"@s"}]
