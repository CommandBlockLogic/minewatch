# test:ray

particle dust 1 1 1 1
execute positioned ^ ^ ^0.1 if entity @s[distance=..8] if block ~ ~ ~ minecraft:air run function test:ray

