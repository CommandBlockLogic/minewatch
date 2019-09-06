# hh:health/display_health_bar/render
# @tmp @out
# - innateHealth
# - innateArmor
# - innateShield
# - tempArmor
# - tempShield
# - bleeding
# - reducing
# - lost

# Calculate max.
scoreboard players operation max tmp = @s hhInnateMax
scoreboard players operation max tmp += @s hhTempTotal

# Calculate all.
scoreboard players operation innateHealthBak tmp = @s hhInnateHealth
scoreboard players operation innateArmorBak tmp = @s hhInnateArmor
scoreboard players operation innateShieldBak tmp = @s hhInnateShield
scoreboard players operation tempArmorBak tmp = @s hhTempArmor
scoreboard players operation tempShieldBak tmp = @s hhTempShield
scoreboard players operation reducingBak tmp = @s hhReducing
scoreboard players operation lostBak tmp = max tmp
scoreboard players operation lostBak tmp -= @s hhInnateHealth
scoreboard players operation lostBak tmp -= @s hhInnateArmor
scoreboard players operation lostBak tmp -= @s hhInnateShield
scoreboard players operation lostBak tmp -= @s hhTempArmor
scoreboard players operation lostBak tmp -= @s hhTempShield
scoreboard players operation lostBak tmp -= @s hhReducing
## Bleeding damage.
scoreboard players operation bleedingBak tmp = @s hhDamagedB
scoreboard players operation bleedingCopy tmp = @s hhDamagedB
### Deal with temp shield.
scoreboard players operation absorbedByTempShield tmp = bleedingCopy tmp
scoreboard players operation absorbedByTempShield tmp < tempShieldBak tmp
scoreboard players operation tempShieldBak tmp -= absorbedByTempShield tmp
scoreboard players operation bleedingCopy tmp -= absorbedByTempShield tmp
### Deal with temp armor.
execute if score tempArmorBak tmp matches 1.. run scoreboard players operation reduction tmp = bleedingCopy tmp
execute if score tempArmorBak tmp matches 1.. run scoreboard players operation reduction tmp /= 2 const
execute if score tempArmorBak tmp matches 1.. run scoreboard players operation reduction tmp < 3 const
execute if score tempArmorBak tmp matches 1.. run scoreboard players operation bleedingCopy tmp -= reduction tmp
scoreboard players operation absorbedByTempArmor tmp = bleedingCopy tmp
scoreboard players operation absorbedByTempArmor tmp < tempArmorBak tmp
scoreboard players operation tempArmorBak tmp -= absorbedByTempArmor tmp
scoreboard players operation bleedingCopy tmp -= absorbedByTempArmor tmp
### Deal with innate shield.
scoreboard players operation absorbedByInnateShield tmp = bleedingCopy tmp
scoreboard players operation absorbedByInnateShield tmp < innateShieldBak tmp
scoreboard players operation innateShieldBak tmp -= absorbedByInnateShield tmp
scoreboard players operation bleedingCopy tmp -= absorbedByInnateShield tmp
### Deal with innate armor.
execute if score innateArmorBak tmp matches 1.. run scoreboard players operation reduction tmp = bleedingCopy tmp
execute if score innateArmorBak tmp matches 1.. run scoreboard players operation reduction tmp /= 2 const
execute if score innateArmorBak tmp matches 1.. run scoreboard players operation reduction tmp < 3 const
execute if score innateArmorBak tmp matches 1.. run scoreboard players operation bleedingCopy tmp -= reduction tmp
scoreboard players operation absorbedByInnateArmor tmp = bleedingCopy tmp
scoreboard players operation absorbedByInnateArmor tmp < innateArmorBak tmp
scoreboard players operation innateArmorBak tmp -= absorbedByInnateArmor tmp
scoreboard players operation bleedingCopy tmp -= absorbedByInnateArmor tmp
### Deal with innate health.
scoreboard players operation absorbedByInnateHealth tmp = bleedingCopy tmp
scoreboard players operation absorbedByInnateHealth tmp < innateHealthBak tmp
scoreboard players operation innateHealthBak tmp -= absorbedByInnateHealth tmp
scoreboard players operation bleedingCopy tmp -= absorbedByInnateHealth tmp

# Calculate percents.
scoreboard players operation innateHealth tmp = innateHealthBak tmp
scoreboard players operation innateHealth tmp *= 500 const
scoreboard players operation innateHealth tmp /= max tmp
scoreboard players operation unit tmp = innateHealth tmp
scoreboard players operation innateHealth tmp /= 10 const
scoreboard players operation unit tmp %= 10 const
execute if score unit tmp matches 5.. run scoreboard players add innateHealth tmp 1
execute if score innateHealthBak tmp matches 1.. run scoreboard players operation innateHealth tmp > 1 const

scoreboard players operation innateArmor tmp = innateArmorBak tmp
scoreboard players operation innateArmor tmp *= 500 const
scoreboard players operation innateArmor tmp /= max tmp
scoreboard players operation unit tmp = innateArmor tmp
scoreboard players operation innateArmor tmp /= 10 const
scoreboard players operation unit tmp %= 10 const
execute if score unit tmp matches 5.. run scoreboard players add innateArmor tmp 1
execute if score innateArmorBak tmp matches 1.. run scoreboard players operation innateArmor tmp > 1 const

scoreboard players operation innateShield tmp = innateShieldBak tmp
scoreboard players operation innateShield tmp *= 500 const
scoreboard players operation innateShield tmp /= max tmp
scoreboard players operation unit tmp = innateShield tmp
scoreboard players operation innateShield tmp /= 10 const
scoreboard players operation unit tmp %= 10 const
execute if score unit tmp matches 5.. run scoreboard players add innateShield tmp 1
execute if score innateShieldBak tmp matches 1.. run scoreboard players operation innateShield tmp > 1 const

scoreboard players operation tempArmor tmp = tempArmorBak tmp
scoreboard players operation tempArmor tmp *= 500 const
scoreboard players operation tempArmor tmp /= max tmp
scoreboard players operation unit tmp = tempArmor tmp
scoreboard players operation tempArmor tmp /= 10 const
scoreboard players operation unit tmp %= 10 const
execute if score unit tmp matches 5.. run scoreboard players add tempArmor tmp 1
execute if score tempArmorBak tmp matches 1.. run scoreboard players operation tempArmor tmp > 1 const

scoreboard players operation tempShield tmp = tempShieldBak tmp
scoreboard players operation tempShield tmp *= 500 const
scoreboard players operation tempShield tmp /= max tmp
scoreboard players operation unit tmp = tempShield tmp
scoreboard players operation tempShield tmp /= 10 const
scoreboard players operation unit tmp %= 10 const
execute if score unit tmp matches 5.. run scoreboard players add tempShield tmp 1
execute if score tempShieldBak tmp matches 1.. run scoreboard players operation tempShield tmp > 1 const

scoreboard players operation bleeding tmp = bleedingBak tmp
scoreboard players operation bleeding tmp *= 500 const
scoreboard players operation bleeding tmp /= max tmp
scoreboard players operation unit tmp = bleeding tmp
scoreboard players operation bleeding tmp /= 10 const
scoreboard players operation unit tmp %= 10 const
execute if score unit tmp matches 5.. run scoreboard players add bleeding tmp 1
execute if score bleedingBak tmp matches 1.. run scoreboard players operation bleeding tmp > 1 const

scoreboard players operation reducing tmp = reducingBak tmp
scoreboard players operation reducing tmp *= 500 const
scoreboard players operation reducing tmp /= max tmp
scoreboard players operation unit tmp = reducing tmp
scoreboard players operation reducing tmp /= 10 const
scoreboard players operation unit tmp %= 10 const
execute if score unit tmp matches 5.. run scoreboard players add reducing tmp 1
execute if score reducingBak tmp matches 1.. run scoreboard players operation reducing tmp > 1 const

scoreboard players operation lost tmp = lostBak tmp
scoreboard players operation lost tmp *= 500 const
scoreboard players operation lost tmp /= max tmp
scoreboard players operation unit tmp = lost tmp
scoreboard players operation lost tmp /= 10 const
scoreboard players operation unit tmp %= 10 const
execute if score unit tmp matches 5.. run scoreboard players add lost tmp 1
execute if score max tmp matches 1.. run scoreboard players operation lost tmp > 1 const

scoreboard players operation total tmp = innateHealth tmp
scoreboard players operation total tmp += innateArmor tmp
scoreboard players operation total tmp += innateShield tmp
scoreboard players operation total tmp += tempArmor tmp
scoreboard players operation total tmp += tempShield tmp
scoreboard players operation total tmp += reducing tmp
scoreboard players operation total tmp += lost tmp

execute unless entity @e[type=minecraft:armor_stand,tag=health_bar,tag=my_marker] run summon minecraft:armor_stand 0.0 0.0 0.0 {Tags: ["health_bar", "my_marker", "marker_with_uid"], CustomName: '"Health Bar"', HandItems: [{Count: 1b, id: "minecraft:stone", tag: {list: []}}], Invisible: 1b, Invulnerable: 1b, Marker: 1b, NoGravity: 1b}
execute as @e[type=minecraft:armor_stand,tag=health_bar,tag=my_marker] run function hh:health/display_health_bar/render_as
