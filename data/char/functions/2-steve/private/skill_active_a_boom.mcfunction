# char:2-steve/private/skill_active_a_boom

# Summon marker.
execute if score @s custom1 matches 1 align xyz positioned ~0.5 ~ ~0.5 run summon minecraft:area_effect_cloud ~ ~ ~-1 {Duration: 32767, NoGravity: 1b, Tags: ["char_2-steve_obsidian_wall", "char_attachment", "marker_with_uid", "my_marker", "new_summoned", "protected"]}
execute if score @s custom1 matches 1 align xyz positioned ~0.5 ~ ~0.5 run summon minecraft:area_effect_cloud ~ ~ ~ {Duration: 32767, NoGravity: 1b, Tags: ["char_2-steve_obsidian_wall", "char_attachment", "marker_with_uid", "my_marker", "new_summoned", "protected"]}
execute if score @s custom1 matches 1 align xyz positioned ~0.5 ~ ~0.5 run summon minecraft:area_effect_cloud ~ ~ ~1 {Duration: 32767, NoGravity: 1b, Tags: ["char_2-steve_obsidian_wall", "char_attachment", "marker_with_uid", "my_marker", "new_summoned", "protected"]}
execute if score @s custom1 matches 1 align xyz positioned ~0.5 ~ ~0.5 run summon minecraft:area_effect_cloud ~ ~1 ~-1 {Duration: 32767, NoGravity: 1b, Tags: ["char_2-steve_obsidian_wall", "char_2-steve_obsidian_wall_main", "char_attachment", "marker_with_uid", "my_marker", "new_summoned", "protected"]}
execute if score @s custom1 matches 1 align xyz positioned ~0.5 ~ ~0.5 run summon minecraft:area_effect_cloud ~ ~1 ~ {Duration: 32767, NoGravity: 1b, Tags: ["char_2-steve_obsidian_wall", "char_attachment", "marker_with_uid", "my_marker", "new_summoned", "protected"]}
execute if score @s custom1 matches 1 align xyz positioned ~0.5 ~ ~0.5 run summon minecraft:area_effect_cloud ~ ~1 ~1 {Duration: 32767, NoGravity: 1b, Tags: ["char_2-steve_obsidian_wall", "char_attachment", "marker_with_uid", "my_marker", "new_summoned", "protected"]}
execute if score @s custom1 matches 1 align xyz positioned ~0.5 ~ ~0.5 run summon minecraft:area_effect_cloud ~ ~2 ~-1 {Duration: 32767, NoGravity: 1b, Tags: ["char_2-steve_obsidian_wall", "char_attachment", "marker_with_uid", "my_marker", "new_summoned", "protected"]}
execute if score @s custom1 matches 1 align xyz positioned ~0.5 ~ ~0.5 run summon minecraft:area_effect_cloud ~ ~2 ~ {Duration: 32767, NoGravity: 1b, Tags: ["char_2-steve_obsidian_wall", "char_attachment", "marker_with_uid", "my_marker", "new_summoned", "protected"]}
execute if score @s custom1 matches 1 align xyz positioned ~0.5 ~ ~0.5 run summon minecraft:area_effect_cloud ~ ~2 ~1 {Duration: 32767, NoGravity: 1b, Tags: ["char_2-steve_obsidian_wall", "char_attachment", "marker_with_uid", "my_marker", "new_summoned", "protected"]}

execute if score @s custom1 matches 2 align xyz positioned ~0.5 ~ ~0.5 run summon minecraft:area_effect_cloud ~-1 ~ ~ {Duration: 32767, NoGravity: 1b, Tags: ["char_2-steve_obsidian_wall", "char_2-steve_obsidian_wall_main", "char_attachment", "marker_with_uid", "my_marker", "new_summoned", "protected"]}
execute if score @s custom1 matches 2 align xyz positioned ~0.5 ~ ~0.5 run summon minecraft:area_effect_cloud ~ ~ ~ {Duration: 32767, NoGravity: 1b, Tags: ["char_2-steve_obsidian_wall", "char_attachment", "marker_with_uid", "my_marker", "new_summoned", "protected"]}
execute if score @s custom1 matches 2 align xyz positioned ~0.5 ~ ~0.5 run summon minecraft:area_effect_cloud ~1 ~ ~ {Duration: 32767, NoGravity: 1b, Tags: ["char_2-steve_obsidian_wall", "char_attachment", "marker_with_uid", "my_marker", "new_summoned", "protected"]}
execute if score @s custom1 matches 2 align xyz positioned ~0.5 ~ ~0.5 run summon minecraft:area_effect_cloud ~-1 ~1 ~ {Duration: 32767, NoGravity: 1b, Tags: ["char_2-steve_obsidian_wall", "char_attachment", "marker_with_uid", "my_marker", "new_summoned", "protected"]}
execute if score @s custom1 matches 2 align xyz positioned ~0.5 ~ ~0.5 run summon minecraft:area_effect_cloud ~ ~1 ~ {Duration: 32767, NoGravity: 1b, Tags: ["char_2-steve_obsidian_wall", "char_attachment", "marker_with_uid", "my_marker", "new_summoned", "protected"]}
execute if score @s custom1 matches 2 align xyz positioned ~0.5 ~ ~0.5 run summon minecraft:area_effect_cloud ~1 ~1 ~ {Duration: 32767, NoGravity: 1b, Tags: ["char_2-steve_obsidian_wall", "char_attachment", "marker_with_uid", "my_marker", "new_summoned", "protected"]}
execute if score @s custom1 matches 2 align xyz positioned ~0.5 ~ ~0.5 run summon minecraft:area_effect_cloud ~-1 ~2 ~ {Duration: 32767, NoGravity: 1b, Tags: ["char_2-steve_obsidian_wall", "char_attachment", "marker_with_uid", "my_marker", "new_summoned", "protected"]}
execute if score @s custom1 matches 2 align xyz positioned ~0.5 ~ ~0.5 run summon minecraft:area_effect_cloud ~ ~2 ~ {Duration: 32767, NoGravity: 1b, Tags: ["char_2-steve_obsidian_wall", "char_attachment", "marker_with_uid", "my_marker", "new_summoned", "protected"]}
execute if score @s custom1 matches 2 align xyz positioned ~0.5 ~ ~0.5 run summon minecraft:area_effect_cloud ~1 ~2 ~ {Duration: 32767, NoGravity: 1b, Tags: ["char_2-steve_obsidian_wall", "char_attachment", "marker_with_uid", "my_marker", "new_summoned", "protected"]}

# Damage
execute at @e[type=minecraft:area_effect_cloud,tag=new_summoned] run tag @e[distance=..1,tag=player,tag=!died] add tmp
scoreboard players add @e[tag=tmp,tag=enemy] hhDamagedM 10
scoreboard players set @e[tag=tmp,tag=teammate] hhLastDamageTime 0
scoreboard players set @e[tag=tmp] hhLastDamageWay 3
scoreboard players operation @e[tag=tmp] hhLastDamageUid = @s uid
tag @e remove tmp

# Setblock.
execute as @e[type=minecraft:area_effect_cloud,tag=new_summoned] at @s if block ~ ~ ~ minecraft:obsidian unless entity @e[type=minecraft:area_effect_cloud,tag=char_2-steve_obsidian_wall,tag=!new_summoned,distance=..0.1,scores={custom=0}] run scoreboard players set @s custom1 1
execute as @e[type=minecraft:area_effect_cloud,tag=new_summoned] at @s run kill @e[type=minecraft:area_effect_cloud,tag=char_2-steve_obsidian_wall,tag=!new_summoned,distance=..0.1]
execute as @e[type=minecraft:area_effect_cloud,tag=new_summoned] at @s if block ~ ~ ~ minecraft:air run scoreboard players set @s custom1 0
execute as @e[type=minecraft:area_effect_cloud,tag=new_summoned] at @s if block ~ ~ ~ minecraft:air run playsound minecraft:block.metal.place master @a
execute as @e[type=minecraft:area_effect_cloud,tag=new_summoned] at @s if block ~ ~ ~ minecraft:air run setblock ~ ~ ~ minecraft:obsidian

tag @e remove new_summoned
