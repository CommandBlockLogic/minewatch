# him:fill_x
fill ~ ~ ~ ~ ~ ~ minecraft:light_gray_stained_glass replace air
fill ~ ~ ~ ~ ~ ~ minecraft:light_gray_concrete replace minecraft:black_concrete

execute if block ~ ~1 ~ minecraft:air positioned ~ ~1 ~ run function him:fill_x
execute if block ~ ~1 ~ minecraft:black_concrete positioned ~ ~1 ~ run function him:fill_x
execute if block ~ ~-1 ~ minecraft:air positioned ~ ~-1 ~ run function him:fill_x
execute if block ~ ~-1 ~ minecraft:black_concrete positioned ~ ~-1 ~ run function him:fill_x
execute if block ~1 ~ ~ minecraft:air positioned ~1 ~ ~ run function him:fill_x
execute if block ~1 ~ ~ minecraft:black_concrete positioned ~1 ~ ~ run function him:fill_x
execute if block ~-1 ~ ~ minecraft:air positioned ~-1 ~ ~ run function him:fill_x
execute if block ~-1 ~ ~ minecraft:black_concrete positioned ~-1 ~ ~ run function him:fill_x
