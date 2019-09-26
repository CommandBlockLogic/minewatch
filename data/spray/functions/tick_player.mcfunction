#> spray:tick_player
# @as [tag=player]

execute if score @s sprayCool matches 1.. run scoreboard players remove @s sprayCool 1
execute if score @s sprayCool matches 0 run scoreboard players reset @s sprayCool
