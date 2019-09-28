execute if score colorCode tmp matches 179 run data merge entity @s {Particle: "minecraft:dust 0.8000 1.0000 1.0000 0.28", Radius: 0.01f}
execute unless score colorCode tmp matches 179 run function spray:private/colors/184
