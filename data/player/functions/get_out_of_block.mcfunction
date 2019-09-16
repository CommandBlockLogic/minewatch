# player:get_out_of_block

teleport @s ~ ~0.5 ~

execute at @s if block ~ ~ ~ minecraft:obsidian run function player:out_block
