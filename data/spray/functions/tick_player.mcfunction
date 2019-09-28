#> spray:tick_player
# @as [tag=player]

# Cooldown.
execute if score @s sprayCool matches 1.. run scoreboard players remove @s sprayCool 1
execute if score @s sprayCool matches 0 run scoreboard players reset @s sprayCool

# Select.
execute unless score @s sprayType matches 1.. run scoreboard players set @s sprayType 1

# test
execute as @e[type=area_effect_cloud,tag=spray_move] at @s run function spray:new_idea_private/particle_tick