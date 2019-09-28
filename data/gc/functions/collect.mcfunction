# gc:collect

execute store result score count0 tmp if entity @e
kill @e[type=!minecraft:player,tag=!player,tag=!protected]
execute store result score count1 tmp if entity @e
scoreboard players operation count0 tmp -= count1 tmp
execute if score count0 tmp matches 1.. run tellraw @a ["§7[§cGC§7] §cCollected §6", {"score": {"objective": "tmp", "name": "count0"}}, " §centities. \nTPS: ", {"score": {"objective": "tps", "name": "$"}}]
