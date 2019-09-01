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
scoreboard players operation unit tmp = innateHealth tmp
scoreboard players operation innateHealth tmp /= 10 const
scoreboard players operation unit tmp %= 10 const
execute if score unit tmp matches 5.. run scoreboard players add innateHealth tmp 1

scoreboard players operation innateArmor tmp = @s hhInnateArmor
scoreboard players operation innateArmor tmp *= 50 const
scoreboard players operation innateArmor tmp /= max tmp
scoreboard players operation unit tmp = innateArmor tmp
scoreboard players operation innateArmor tmp /= 10 const
scoreboard players operation unit tmp %= 10 const
execute if score unit tmp matches 5.. run scoreboard players add innateArmor tmp 1

scoreboard players operation innateShield tmp = @s hhInnateShield
scoreboard players operation innateShield tmp *= 50 const
scoreboard players operation innateShield tmp /= max tmp
scoreboard players operation unit tmp = innateShield tmp
scoreboard players operation innateShield tmp /= 10 const
scoreboard players operation unit tmp %= 10 const
execute if score unit tmp matches 5.. run scoreboard players add innateShield tmp 1

scoreboard players operation tempArmor tmp = @s hhTempArmor
scoreboard players operation tempArmor tmp *= 50 const
scoreboard players operation tempArmor tmp /= max tmp
scoreboard players operation unit tmp = tempArmor tmp
scoreboard players operation tempArmor tmp /= 10 const
scoreboard players operation unit tmp %= 10 const
execute if score unit tmp matches 5.. run scoreboard players add tempArmor tmp 1

scoreboard players operation tempShield tmp = @s hhTempShield
scoreboard players operation tempShield tmp *= 50 const
scoreboard players operation tempShield tmp /= max tmp
scoreboard players operation unit tmp = tempShield tmp
scoreboard players operation tempShield tmp /= 10 const
scoreboard players operation unit tmp %= 10 const
execute if score unit tmp matches 5.. run scoreboard players add tempShield tmp 1

scoreboard players operation reducing tmp = @s hhReducing
scoreboard players operation reducing tmp *= 50 const
scoreboard players operation reducing tmp /= max tmp
scoreboard players operation unit tmp = reducing tmp
scoreboard players operation reducing tmp /= 10 const
scoreboard players operation unit tmp %= 10 const
execute if score unit tmp matches 5.. run scoreboard players add reducing tmp 1

scoreboard players operation lost tmp = max tmp
scoreboard players operation lost tmp -= @s hhInnateHealth
scoreboard players operation lost tmp -= @s hhInnateArmor
scoreboard players operation lost tmp -= @s hhInnateShield
scoreboard players operation lost tmp -= @s hhTempArmor
scoreboard players operation lost tmp -= @s hhTempShield
scoreboard players operation lost tmp -= @s hhReducing
scoreboard players operation lost tmp *= 50 const
scoreboard players operation lost tmp /= max tmp
scoreboard players operation unit tmp = lost tmp
scoreboard players operation lost tmp /= 10 const
scoreboard players operation unit tmp %= 10 const
execute if score unit tmp matches 5.. run scoreboard players add lost tmp 1

scoreboard players operation total tmp = innateHealth tmp
scoreboard players operation total tmp += innateArmor tmp
scoreboard players operation total tmp += innateShield tmp
scoreboard players operation total tmp += tempArmor tmp
scoreboard players operation total tmp += tempShield tmp
scoreboard players operation total tmp += reducing tmp
scoreboard players operation total tmp += lost tmp
tellraw @a {"score": {"objective": "tmp", "name": "total"}}

execute unless entity @e[type=minecraft:armor_stand,tag=health_bar,tag=my_marker] run summon minecraft:armor_stand 0.0 0.0 0.0 {Tags: ["health_bar", "my_marker", "marker_with_uid"], CustomName: '"Health Bar"', HandItems: [{Count: 1b, id: "minecraft:stone", tag: {list: []}}], Invisible: 1b, Invulnerable: 1b, Marker: 1b, NoGravity: 1b}
execute as @e[type=minecraft:armor_stand,tag=health_bar,tag=my_marker] run function hh:health/display_health_bar/render_as
