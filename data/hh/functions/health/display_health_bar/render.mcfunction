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

scoreboard players operation lost tmp = max tmp
scoreboard players operation lost tmp -= @s hhInnateHealth
scoreboard players operation lost tmp -= @s hhInnateArmor
scoreboard players operation lost tmp -= @s hhInnateShield
scoreboard players operation lost tmp -= @s hhTempArmor
scoreboard players operation lost tmp -= @s hhTempShield
scoreboard players operation lost tmp -= @s hhReducing
scoreboard players operation lost tmp *= 50 const
scoreboard players operation lost tmp /= max tmp

execute unless entity @e[type=minecraft:armor_stand,tag=health_bar,tag=my_marker] run say Summoned new health bar
execute unless entity @e[type=minecraft:armor_stand,tag=health_bar,tag=my_marker] run summon minecraft:armor_stand 0.0 0.0 0.0 {Tags: ["health_bar", "my_marker", "marker_with_uid"], CustomName: '"Health Bar"', HandItems: [{Count: 1b, id: "minecraft:stone", tag: {list: []}}], Invisible: 1b, Invulnerable: 1b, Marker: 1b, NoGravity: 1b}
execute as @e[type=minecraft:armor_stand,tag=health_bar,tag=my_marker] run function hh:health/display_health_bar/render_as
