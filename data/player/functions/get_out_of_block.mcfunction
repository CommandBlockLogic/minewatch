# player:get_out_of_block

execute at @s run teleport @s ~ ~0.5 ~

execute at @s if block ~ ~ ~ minecraft:obsidian run function player:get_out_of_block
