# him:xxx
fill ~ ~ ~ ~ ~ ~ minecraft:light_gray_stained_glass replace air
fill ~ ~ ~ ~ ~ ~ minecraft:light_gray_concrete replace minecraft:black_concrete

execute if block ~ ~1 ~ minecraft:air positioned ~ ~1 ~ run function him:xxx
execute if block ~ ~1 ~ minecraft:black_concrete positioned ~ ~1 ~ run function him:xxx
execute if block ~ ~-1 ~ minecraft:air positioned ~ ~-1 ~ run function him:xxx
execute if block ~ ~-1 ~ minecraft:black_concrete positioned ~ ~-1 ~ run function him:xxx
execute if block ~1 ~ ~ minecraft:air positioned ~1 ~ ~ run function him:xxx
execute if block ~1 ~ ~ minecraft:black_concrete positioned ~1 ~ ~ run function him:xxx
execute if block ~-1 ~ ~ minecraft:air positioned ~-1 ~ ~ run function him:xxx
execute if block ~-1 ~ ~ minecraft:black_concrete positioned ~-1 ~ ~ run function him:xxx
