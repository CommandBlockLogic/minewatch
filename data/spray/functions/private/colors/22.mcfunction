execute if score colorCode tmp matches 207 run data merge entity @s {Particle: "minecraft:dust 1.0000 0.8000 0.8000 0.28", Radius: 0.01f}
execute unless score colorCode tmp matches 207 runfunction spray:private/colors/23
