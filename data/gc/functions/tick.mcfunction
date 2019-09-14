# gc:tick

execute as @e[type=minecraft:tnt] store result score @s custom1 run data get entity @s Fuse
execute as @e[type=minecraft:tnt] unless score @s custom1 matches 2.. run kill @s
kill @e[type=minecraft:tnt_minecart]

execute store result score count tmp if entity @e
execute if score count tmp > gcLimit const run function gc:collect

# Calculate tps.
scoreboard players add #timer tps 1
execute if score #timer tps matches 100.. store result score $ tps run debug stop
execute if score #timer tps matches 100.. run debug start
execute if score #timer tps matches 100.. run scoreboard players operation $max tps > $ tps
execute if score #timer tps matches 100.. run scoreboard players operation $min tps < $ tps
execute if score #timer tps matches 100.. run scoreboard players reset #timer tps
