# hh:health/display_health_bar/render
# @tmp @out
# - innateHealth
# - innateArmor
# - innateShield
# - tempArmor
# - tempShield
# - reducing
# - lost

scoreboard players operation max tmp = @s hhInnateMax
scoreboard players operation max tmp += @s hhTempTotal

scoreboard players operation innateHealth tmp = @s hhInnateHealth
scoreboard players operation innateHealth tmp *= 50 const
scoreboard players operation innateHealth tmp /= max tmp

scoreboard players operation innateArmor tmp = @s hhInnateArmor
scoreboard players operation innateArmor tmp *= 50 const
scoreboard players operation innateArmor tmp /= max tmp

scoreboard players operation innateShield tmp = @s hhInnateShield
scoreboard players operation innateShield tmp *= 50 const
scoreboard players operation innateShield tmp /= max tmp

scoreboard players operation tempArmor tmp = @s hhTempArmor
scoreboard players operation tempArmor tmp *= 50 const
scoreboard players operation tempArmor tmp /= max tmp

scoreboard players operation tempShield tmp = @s hhTempShield
scoreboard players operation tempShield tmp *= 50 const
scoreboard players operation tempShield tmp /= max tmp

scoreboard players operation reducing tmp = @s hhReducing
scoreboard players operation reducing tmp *= 50 const
scoreboard players operation reducing tmp /= max tmp

scoreboard players set lost tmp 50
scoreboard players operation lost tmp -= innateHealth tmp
scoreboard players operation lost tmp -= innateArmor tmp
scoreboard players operation lost tmp -= innateShield tmp
scoreboard players operation lost tmp -= tempArmor tmp
scoreboard players operation lost tmp -= tempShield tmp
scoreboard players operation lost tmp -= reducing tmp

execute unless entity @e[type=minecraft:armor_stand,tag=health_bar,tag=my_marker] run summon minecraft:armor_stand ~ ~ ~ {Tags: ["health_bar", "my_marker"], Invisible: 1b, Invulnerable: 1b, Marker: 1b, HandItems: [{Count: 1b, id: "minecraft:stone", tag: {list: []}}]}
execute as @e[type=minecraft:armor_stand,tag=health_bar,tag=my_marker] run function hh:health/display_health_bar/render_as
