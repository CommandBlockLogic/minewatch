#> spray:private/paint
# @as player

# Kill old paint.
kill @e[tag=my_marker,tag=spray_paint]

# Summon 16×16=256 markers.
scoreboard players set scanDirection params 1
scoreboard players set xCursor params 0
scoreboard players set yCursor params 0
## SPRAY PAINT TRACING!
execute anchored eyes positioned ^ ^ ^ anchored feet run function spray:private/summon_one_marker

# Get velocities.
execute positioned 0.0 0.0 0.0 run summon minecraft:area_effect_cloud ^ ^ ^0.5 {Tags: ["newly_summoned"]}
execute store result score spray:private/paint$Vx tmp run data get entity @e[limit=1,type=minecraft:area_effect_cloud,tag=newly_summoned] Pos[0] 1000
execute store result score spray:private/paint$Vy tmp run data get entity @e[limit=1,type=minecraft:area_effect_cloud,tag=newly_summoned] Pos[1] 1000
execute store result score spray:private/paint$Vz tmp run data get entity @e[limit=1,type=minecraft:area_effect_cloud,tag=newly_summoned] Pos[2] 1000
kill @e[tag=newly_summoned]

# Set fnmdp details.
execute as @e[distance=..10,type=minecraft:area_effect_cloud,tag=newly_summoned_spray] at @s run function spray:private/set_one_marker

# Checkout.
tag @e remove newly_summoned_spray
scoreboard players operation @s sprayCool = sprayCool const
