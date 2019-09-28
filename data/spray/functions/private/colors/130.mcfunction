execute if score colorCode tmp matches 107 run data merge entity @s {Particle: "minecraft:dust 0.4000 1.0000 1.0000 0.28", Radius: 0.01f}
execute unless score colorCode tmp matches 107 runfunction spray:private/colors/131
