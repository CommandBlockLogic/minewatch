# test:ray

particle dust 1 1 1 1 ~ ~ ~ 0 0 0 1 1 force
execute positioned ^ ^ ^0.1 if entity @s[distance=..8] if block ~ ~ ~ minecraft:air run function test:ray
