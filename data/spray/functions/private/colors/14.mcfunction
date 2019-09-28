execute if score colorCode tmp matches 166 run data merge entity @s {Particle: "minecraft:dust 0.8000 0.6000 0.6000 0.28", Radius: 0.01f}
execute unless score colorCode tmp matches 166 runfunction spray:private/colors/15
