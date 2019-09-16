# char:2-steve/private/skill_active_a_do

# Cooldown
scoreboard players set @s charSkillACool -300

# Facing:
## West.
execute if entity @s[y_rotation=45..134.99] run scoreboard players set facing tmp 1
## East.
execute if entity @s[y_rotation=225..314.99] run scoreboard players set facing tmp 1
## North.
execute if entity @s[y_rotation=135..224.99] run scoreboard players set facing tmp 2
## South.
execute if entity @s[y_rotation=-45..44.99] run scoreboard players set facing tmp 2

# Get velocities.
execute positioned 0.0 0.0 0.0 run summon minecraft:area_effect_cloud ^ ^ ^1 {Tags: ["new_summoned"]}
execute store result score Vx tmp run data get entity @e[limit=1,type=minecraft:area_effect_cloud,tag=new_summoned] Pos[0] 1000
execute store result score Vy tmp run data get entity @e[limit=1,type=minecraft:area_effect_cloud,tag=new_summoned] Pos[1] 1000
execute store result score Vz tmp run data get entity @e[limit=1,type=minecraft:area_effect_cloud,tag=new_summoned] Pos[2] 1000
kill @e[tag=new_summoned]

# Summon obsidian bullet.
execute anchored eyes positioned ^ ^ ^1 anchored feet run summon minecraft:armor_stand ~ ~ ~ {Tags: ["new_summoned", "marker_with_uid", "my_marker", "fnmdp", "char_2-steve_obsidian_bullet"], ArmorItems: [{}, {}, {}, {id: "minecraft:obsidian", Count: 1b}], NoGravity: 1b, Invulnerable: 1b, Invisible: 1b, Marker: 1b}
scoreboard players operation @e[distance=..5,limit=1,type=minecraft:armor_stand,tag=new_summoned] fnmdpVx = Vx tmp
scoreboard players operation @e[distance=..5,limit=1,type=minecraft:armor_stand,tag=new_summoned] fnmdpVy = Vy tmp
scoreboard players operation @e[distance=..5,limit=1,type=minecraft:armor_stand,tag=new_summoned] fnmdpVz = Vz tmp
scoreboard players operation @e[distance=..5,limit=1,type=minecraft:armor_stand,tag=new_summoned] custom1 = facing tmp
scoreboard players set @e[distance=..5,limit=1,type=minecraft:armor_stand,tag=new_summoned] fnmdpAx 0
scoreboard players set @e[distance=..5,limit=1,type=minecraft:armor_stand,tag=new_summoned] fnmdpAy 0
scoreboard players set @e[distance=..5,limit=1,type=minecraft:armor_stand,tag=new_summoned] fnmdpAz 0
scoreboard players set @e[distance=..5,limit=1,type=minecraft:armor_stand,tag=new_summoned] fnmdpVKeepN 0
scoreboard players set @e[distance=..5,limit=1,type=minecraft:armor_stand,tag=new_summoned] fnmdpVKeepT 0
scoreboard players set @e[distance=..5,limit=1,type=minecraft:armor_stand,tag=new_summoned] fnmdpLife 8
scoreboard players set @e[distance=..5,limit=1,type=minecraft:armor_stand,tag=new_summoned] fnmdpSize 2
tag @e remove new_summoned
