# gc:tick

execute as @e[type=minecraft:tnt] store result score @s custom1 run data get entity @s Fuse
execute as @e[type=minecraft:tnt] unless score @s custom1 matches 2.. run kill @s
execute as @e[type=minecraft:tnt_minecart] store result score @s custom1 run data get entity @s TNTFuse
execute as @e[type=minecraft:tnt_minecart] unless score @s custom1 matches 2.. run kill @s

execute store result score count tmp if entity @e
execute if score count tmp > gcLimit const run function gc:collect
