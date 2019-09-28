execute if score colorCode tmp matches 169 run data merge entity @s {Particle: "minecraft:dust 0.8000 0.8000 0.8000 0.28", Radius: 0.01f}
execute unless score colorCode tmp matches 169 run function spray:private/colors/19
