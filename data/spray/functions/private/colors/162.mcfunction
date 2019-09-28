execute if score colorCode tmp matches 148 run data merge entity @s {Particle: "minecraft:dust 0.8000 0.0000 0.0000 0.28", Radius: 0.01f}
execute unless score colorCode tmp matches 148 runfunction spray:private/colors/163
