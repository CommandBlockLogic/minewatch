# gc:tick

kill @e[type=minecraft:tnt]

execute store result score count tmp if entity @e
execute if score count tmp > gcLimit const run tellraw @a {"color": "red", "text": "[GC] Auto collected."}
kill @e[type=!minecraft:player,tag=!player,tag=!protected]
