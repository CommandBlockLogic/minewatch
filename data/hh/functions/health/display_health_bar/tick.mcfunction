# hh:health/display_health_bar/tick
# @as player

execute unless entity @e[type=minecraft:armor_stand,tag=health_bar,tag=my_marker] run function hh:health/display_health_bar/render

title @s actionbar [{"nbt": "HandItems[0].tag.list", "entity": "@e[limit=1,tag=health_bar,tag=my_marker]", "interpret": true}, " (", {"score": {"objective": "hhTotal", "name": "@s"}}, "/", {"score": {"objective": "tmp", "name": "max"}}, ")"]
