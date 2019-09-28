execute if score colorCode tmp matches 104 run data merge entity @s {Particle: "minecraft:dust 0.4000 1.0000 1.0000 0.28", Radius: 0.01f}
execute unless score colorCode tmp matches 104 run function spray:private/colors/129
