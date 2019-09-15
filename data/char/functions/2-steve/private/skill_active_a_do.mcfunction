# char:2-steve/private/skill_active_a_do

# Cooldown
scoreboard players set @s charSkillACool -300

# Facing:
## West.
execute if entity @s[y_rotation=45..134] run scoreboard players set facing tmp 1
## East.
execute if entity @s[y_rotation=225..314] run scoreboard players set facing tmp 1
## North.
execute if entity @s[y_rotation=135..224] run scoreboard players set facing tmp 2
## South.
execute if entity @s[y_rotation=-45..44] run scoreboard players set facing tmp 2

# Summon marker.
execute if score facing tmp matches 1 run summon minecraft:area_effect_cloud ~ ~1 ~-1 {Duration: 32767, NoGravity: 1b, Tags: ["char_2-steve_obsidian_wall", "char_2-steve_obsidian_wall_main", "char_attachment", "marker_with_uid", "my_marker", "new_summoned", "protected"]}
execute if score facing tmp matches 1 run summon minecraft:area_effect_cloud ~ ~1 ~ {Duration: 32767, NoGravity: 1b, Tags: ["char_2-steve_obsidian_wall", "char_attachment", "marker_with_uid", "my_marker", "new_summoned", "protected"]}
execute if score facing tmp matches 1 run summon minecraft:area_effect_cloud ~ ~1 ~1 {Duration: 32767, NoGravity: 1b, Tags: ["char_2-steve_obsidian_wall", "char_attachment", "marker_with_uid", "my_marker", "new_summoned", "protected"]}
execute if score facing tmp matches 1 run summon minecraft:area_effect_cloud ~ ~2 ~-1 {Duration: 32767, NoGravity: 1b, Tags: ["char_2-steve_obsidian_wall", "char_attachment", "marker_with_uid", "my_marker", "new_summoned", "protected"]}
execute if score facing tmp matches 1 run summon minecraft:area_effect_cloud ~ ~2 ~ {Duration: 32767, NoGravity: 1b, Tags: ["char_2-steve_obsidian_wall", "char_attachment", "marker_with_uid", "my_marker", "new_summoned", "protected"]}
execute if score facing tmp matches 1 run summon minecraft:area_effect_cloud ~ ~2 ~1 {Duration: 32767, NoGravity: 1b, Tags: ["char_2-steve_obsidian_wall", "char_attachment", "marker_with_uid", "my_marker", "new_summoned", "protected"]}
execute if score facing tmp matches 1 run summon minecraft:area_effect_cloud ~ ~3 ~-1 {Duration: 32767, NoGravity: 1b, Tags: ["char_2-steve_obsidian_wall", "char_attachment", "marker_with_uid", "my_marker", "new_summoned", "protected"]}
execute if score facing tmp matches 1 run summon minecraft:area_effect_cloud ~ ~3 ~ {Duration: 32767, NoGravity: 1b, Tags: ["char_2-steve_obsidian_wall", "char_attachment", "marker_with_uid", "my_marker", "new_summoned", "protected"]}
execute if score facing tmp matches 1 run summon minecraft:area_effect_cloud ~ ~3 ~1 {Duration: 32767, NoGravity: 1b, Tags: ["char_2-steve_obsidian_wall", "char_attachment", "marker_with_uid", "my_marker", "new_summoned", "protected"]}

execute if score facing tmp matches 2 run summon minecraft:area_effect_cloud ~-1 ~1 ~ {Duration: 32767, NoGravity: 1b, Tags: ["char_2-steve_obsidian_wall", "char_2-steve_obsidian_wall_main", "char_attachment", "marker_with_uid", "my_marker", "new_summoned", "protected"]}
execute if score facing tmp matches 2 run summon minecraft:area_effect_cloud ~ ~1 ~ {Duration: 32767, NoGravity: 1b, Tags: ["char_2-steve_obsidian_wall", "char_attachment", "marker_with_uid", "my_marker", "new_summoned", "protected"]}
execute if score facing tmp matches 2 run summon minecraft:area_effect_cloud ~1 ~1 ~ {Duration: 32767, NoGravity: 1b, Tags: ["char_2-steve_obsidian_wall", "char_attachment", "marker_with_uid", "my_marker", "new_summoned", "protected"]}
execute if score facing tmp matches 2 run summon minecraft:area_effect_cloud ~-1 ~2 ~ {Duration: 32767, NoGravity: 1b, Tags: ["char_2-steve_obsidian_wall", "char_attachment", "marker_with_uid", "my_marker", "new_summoned", "protected"]}
execute if score facing tmp matches 2 run summon minecraft:area_effect_cloud ~ ~2 ~ {Duration: 32767, NoGravity: 1b, Tags: ["char_2-steve_obsidian_wall", "char_attachment", "marker_with_uid", "my_marker", "new_summoned", "protected"]}
execute if score facing tmp matches 2 run summon minecraft:area_effect_cloud ~1 ~2 ~ {Duration: 32767, NoGravity: 1b, Tags: ["char_2-steve_obsidian_wall", "char_attachment", "marker_with_uid", "my_marker", "new_summoned", "protected"]}
execute if score facing tmp matches 2 run summon minecraft:area_effect_cloud ~-1 ~3 ~ {Duration: 32767, NoGravity: 1b, Tags: ["char_2-steve_obsidian_wall", "char_attachment", "marker_with_uid", "my_marker", "new_summoned", "protected"]}
execute if score facing tmp matches 2 run summon minecraft:area_effect_cloud ~ ~3 ~ {Duration: 32767, NoGravity: 1b, Tags: ["char_2-steve_obsidian_wall", "char_attachment", "marker_with_uid", "my_marker", "new_summoned", "protected"]}
execute if score facing tmp matches 2 run summon minecraft:area_effect_cloud ~1 ~3 ~ {Duration: 32767, NoGravity: 1b, Tags: ["char_2-steve_obsidian_wall", "char_attachment", "marker_with_uid", "my_marker", "new_summoned", "protected"]}

# Setblock.
execute as @e[type=minecraft:area_effect_cloud,tag=new_summoned] at @s if block ~ ~ ~ minecraft:obsidian run scoreboard players set @s custom1 1
execute as @e[type=minecraft:area_effect_cloud,tag=new_summoned] at @s if block ~ ~ ~ minecraft:air run playsound minecraft:block.metal.place master @a
execute as @e[type=minecraft:area_effect_cloud,tag=new_summoned] at @s if block ~ ~ ~ minecraft:air run setblock ~ ~ ~ minecraft:obsidian

# Damage
execute at @e[type=minecraft:area_effect_cloud,tag=new_summoned] run tag @e[distance=..1,tag=player,tag=!died] add tmp
say @e[tag=tmp]
scoreboard players add @e[tag=tmp,tag=enemy] hhDamagedM 10
scoreboard players set @e[tag=tmp] hhLastDamageWay 3
scoreboard players operation @e[tag=tmp] hhLastDamageUid = @s uid
tag @e remove tmp

tag @e remove new_summoned
