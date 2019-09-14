# gc:tick

execute as @e[type=minecraft:tnt] store result score @s custom1 run data get entity @s Fuse
execute as @e[type=minecraft:tnt] unless score @s custom1 matches 2.. run kill @s
kill @e[type=minecraft:tnt_minecart]

execute store result score count tmp if entity @e
execute if score count tmp > gcLimit const run function gc:collect

# Calculate tps.
execute store result score bolderSize tmp run worldborder get
execute if score bolderSize tmp matches 3000 run worldborder add 10 5
execute if score bolderSize tmp matches 3000..3010 run scoreboard players add #counter tps 1
execute if score bolderSize tmp matches 3010 run scoreboard players operation $ tps = #counter tps
execute if score bolderSize tmp matches 3010 run scoreboard players reset #counter tps
execute if score bolderSize tmp matches 3010 run worldborder set 3000
