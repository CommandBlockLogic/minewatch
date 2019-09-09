# gc:tick

execute as @e[type=minecraft:tnt] store result score @s custom1 run data get entity @s Fuse
execute as @e[type=minecraft:tnt] unless score @s custom1 matches 1.. run kill @s
kill @e[type=minecraft:tnt_minecart]

execute store result score count tmp if entity @e
execute if score count tmp > gcLimit const run function gc:collect
