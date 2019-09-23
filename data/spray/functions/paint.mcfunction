#> spray:paint
# @as player

# Summon 16×16=256 markers.
scoreboard players set scanDirection params 1
scoreboard players set xCursor params 0
scoreboard players set yCursor params 0
## SPRAY PAINT TRACING!
execute anchored eyes positioned ^ ^ ^0.8 anchored feet positioned ^ ^ ^ run function spray:private/summon_one_marker

# Get velocities.
execute positioned 0.0 0.0 0.0 run summon minecraft:area_effect_cloud ^ ^ ^1 {Tags: ["newly_summoned"]}
execute store result score Vx tmp run data get entity @e[limit=1,type=minecraft:area_effect_cloud,tag=newly_summoned] Pos[0] 1000
execute store result score Vy tmp run data get entity @e[limit=1,type=minecraft:area_effect_cloud,tag=newly_summoned] Pos[1] 1000
execute store result score Vz tmp run data get entity @e[limit=1,type=minecraft:area_effect_cloud,tag=newly_summoned] Pos[2] 1000
kill @e[tag=newly_summoned]

# Set details.
scoreboard players operation @e[distance=..5,limit=1,type=minecraft:armor_stand,tag=newly_summoned_spray] fnmdpVx = Vx tmp
scoreboard players operation @e[distance=..5,limit=1,type=minecraft:armor_stand,tag=newly_summoned_spray] fnmdpVy = Vy tmp
scoreboard players operation @e[distance=..5,limit=1,type=minecraft:armor_stand,tag=newly_summoned_spray] fnmdpVz = Vz tmp
scoreboard players set @e[distance=..5,limit=1,type=minecraft:armor_stand,tag=newly_summoned_spray] fnmdpAx 0
scoreboard players set @e[distance=..5,limit=1,type=minecraft:armor_stand,tag=newly_summoned_spray] fnmdpAy 0
scoreboard players set @e[distance=..5,limit=1,type=minecraft:armor_stand,tag=newly_summoned_spray] fnmdpAz 0
scoreboard players set @e[distance=..5,limit=1,type=minecraft:armor_stand,tag=newly_summoned_spray] fnmdpVKeepN 0
scoreboard players set @e[distance=..5,limit=1,type=minecraft:armor_stand,tag=newly_summoned_spray] fnmdpVKeepT 0
scoreboard players set @e[distance=..5,limit=1,type=minecraft:armor_stand,tag=newly_summoned_spray] fnmdpLife 2
scoreboard players set @e[distance=..5,limit=1,type=minecraft:armor_stand,tag=newly_summoned_spray] fnmdpSize 1

tag @e remove newly_summoned_spray
