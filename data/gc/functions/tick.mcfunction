# gc:tick

kill @e[type=minecraft:tnt]
kill @e[type=minecraft:tnt]

execute store result score count tmp if entity @e
execute if score count tmp > gcLimit const run function gc:collect
