# gc:tick

kill @e[type=minecraft:tnt]

execute store result score count0 tmp if entity @e
execute if score count tmp > gcLimit const run kill @e[type=!minecraft:player,tag=!player,tag=!protected]
execute store result score count1 tmp if entity @e
scoreboard players operation count1 tmp -= count0 tmp
execute if score count1 tmp matches 1.. run tellraw @a ["§7[§cGC§7] §cCollected §6", {"score": {"objective": "tmp", "name": "count1"}}, " §centities."]
