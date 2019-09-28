#> spray:new_idea_private/paint
# @as player


# Kill old paint.
kill @e[tag=my_marker,tag=spray_paint]

# SPRAY TRACING!
execute positioned ~ ~1.8 ~ positioned ^0.4 ^0.4 ^ run function spray:new_idea_private/summon_particles

# Checkout.
scoreboard players operation @s sprayCool = sprayCool const

# Effect.
playsound spray:paint master @a