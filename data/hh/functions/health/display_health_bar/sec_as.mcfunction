# hh:health/display_health_bar/sec_as
# @as [tag=health_bar]

tag @s add selfHealthBar
execute as @e[tag=player] if score @s uid = @e[limit=1,tag=selfHealthBar] uid run tag @e[limit=1,tag=selfHealthBar] add hasOwner
tag @s remove selfHealthBar
