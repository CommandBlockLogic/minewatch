# test:ray

execute positioned ^ ^ ^0.1 unless block ~ ~ ~ minecraft:air run say meet
execute positioned ^ ^ ^0.1 if entity @s[distance=..8] if block ~ ~ ~ minecraft:air run function test:ray
