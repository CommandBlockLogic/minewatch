# hh:death/show_death_message
# @as players going to die
# @tag hh_killer

# Suicide.
execute unless entity @e[tag=hh_killer] if score @s hhLastDamageWay matches 1 run run tellraw @a ["§r\uE001 ", {"selector": "@s"}]
execute unless entity @e[tag=hh_killer] if score @s hhLastDamageWay matches 2 run run tellraw @a ["§r\uE002 ", {"selector": "@s"}]
execute unless entity @e[tag=hh_killer] if score @s hhLastDamageWay matches 6 run run tellraw @a ["§r\u2620 ", {"selector": "@s"}]
execute unless entity @e[tag=hh_killer] if score @s hhLastDamageWay matches 7 run run tellraw @a ["§4\uE002 ", {"selector": "@s"}]
execute unless entity @e[tag=hh_killer] if score @s hhLastDamageWay matches 11 run run tellraw @a ["§4\u2620 ", {"selector": "@s"}]

# Murder!
execute if entity @e[tag=hh_killer] if score @s hhLastDamageWay matches 1 run tellraw @a [{"selector": "@e[tag=hh_killer]"}, " §r\uE001 ", {"selector": "@s"}]
execute if entity @e[tag=hh_killer] if score @s hhLastDamageWay matches 2 run tellraw @a [{"selector": "@e[tag=hh_killer]"}, " §r\uE002 ", {"selector": "@s"}]
execute if entity @e[tag=hh_killer] if score @s hhLastDamageWay matches 6 run tellraw @a [{"selector": "@e[tag=hh_killer]"}, " §r\u2620 ", {"selector": "@s"}]
execute if entity @e[tag=hh_killer] if score @s hhLastDamageWay matches 7 run tellraw @a [{"selector": "@e[tag=hh_killer]"}, " §4\uE002 ", {"selector": "@s"}]
execute if entity @e[tag=hh_killer] if score @s hhLastDamageWay matches 11 run tellraw @a [{"selector": "@e[tag=hh_killer]"}, " §4\u2620 ", {"selector": "@s"}]
