# health:death/show_death_message
# @as players going to die
# @tag killer

execute if score @s dyingMethod matches 1 run tellraw @a [{"selector":"@e[tag=killer]"}," \ue001 ",{"selector":"@s"}]
execute if score @s dyingMethod matches 2 run tellraw @a [{"selector":"@e[tag=killer]"}," \ue002 ",{"selector":"@s"}]
execute if score @s dyingMethod matches 6 run tellraw @a [{"selector":"@e[tag=killer]"}," \u00a74\ue002\u00a7r ",{"selector":"@s"}]
