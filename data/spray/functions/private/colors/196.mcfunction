execute if score colorCode tmp matches 193 run data merge entity @s {Particle: "minecraft:dust 1.0000 0.4000 0.4000 0.28", Radius: 0.01f}
execute unless score colorCode tmp matches 193 runfunction spray:private/colors/197
