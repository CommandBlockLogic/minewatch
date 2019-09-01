# world:components/cake/tick_as

execute if score @s custom1 matches 1.. run scoreboard players remove @s custom1 1
execute if score @s custom1 matches 0 if entity @e[tag=player,distance=..1,tag=need_healing] run particle minecraft:heart ~ ~ ~ 0.2 0.6 0.2 1 30 force
execute if score @s custom1 matches 0 run scoreboard players add @e[tag=player,distance=..1,tag=need_healing] hhHealed 125
execute if score @s custom1 matches 0 if entity @e[tag=player,distance=..1,tag=need_healing] run scoreboard players set @s custom1 560

execute if score @s custom1 matches 481..560 run setblock ~ ~ ~ minecraft:air
execute if score @s custom1 matches 401..480 run setblock ~ ~ ~ minecraft:cake[bites=6]
execute if score @s custom1 matches 321..400 run setblock ~ ~ ~ minecraft:cake[bites=5]
execute if score @s custom1 matches 241..320 run setblock ~ ~ ~ minecraft:cake[bites=4]
execute if score @s custom1 matches 161..240 run setblock ~ ~ ~ minecraft:cake[bites=3]
execute if score @s custom1 matches 81..160 run setblock ~ ~ ~ minecraft:cake[bites=2]
execute if score @s custom1 matches 1..80 run setblock ~ ~ ~ minecraft:cake[bites=1]
execute if score @s custom1 matches 0 run setblock ~ ~ ~ minecraft:cake[bites=0]
