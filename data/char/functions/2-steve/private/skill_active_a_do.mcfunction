# char:2-steve/private/skill_active_a_do

scoreboard players set @s charSkillACool 300

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
execute if score facing tmp matches 1 run summon minecraft:area_effect_cloud ~ ~1 ~-1 {Duration: 233, NoGravity: 1b, Tags: ["char_2-steve_obsidian_wall", "char_attachment", "marker_with_uid", "my_marker"]}
execute if score facing tmp matches 1 run summon minecraft:area_effect_cloud ~ ~1 ~ {Duration: 233, NoGravity: 1b, Tags: ["char_2-steve_obsidian_wall", "char_attachment", "marker_with_uid", "my_marker"]}
execute if score facing tmp matches 1 run summon minecraft:area_effect_cloud ~ ~1 ~1 {Duration: 233, NoGravity: 1b, Tags: ["char_2-steve_obsidian_wall", "char_attachment", "marker_with_uid", "my_marker"]}
execute if score facing tmp matches 1 run summon minecraft:area_effect_cloud ~ ~2 ~-1 {Duration: 233, NoGravity: 1b, Tags: ["char_2-steve_obsidian_wall", "char_attachment", "marker_with_uid", "my_marker"]}
execute if score facing tmp matches 1 run summon minecraft:area_effect_cloud ~ ~2 ~ {Duration: 233, NoGravity: 1b, Tags: ["char_2-steve_obsidian_wall", "char_attachment", "marker_with_uid", "my_marker"]}
execute if score facing tmp matches 1 run summon minecraft:area_effect_cloud ~ ~2 ~1 {Duration: 233, NoGravity: 1b, Tags: ["char_2-steve_obsidian_wall", "char_attachment", "marker_with_uid", "my_marker"]}
execute if score facing tmp matches 1 run summon minecraft:area_effect_cloud ~ ~3 ~-1 {Duration: 233, NoGravity: 1b, Tags: ["char_2-steve_obsidian_wall", "char_attachment", "marker_with_uid", "my_marker"]}
execute if score facing tmp matches 1 run summon minecraft:area_effect_cloud ~ ~3 ~ {Duration: 233, NoGravity: 1b, Tags: ["char_2-steve_obsidian_wall", "char_attachment", "marker_with_uid", "my_marker"]}
execute if score facing tmp matches 1 run summon minecraft:area_effect_cloud ~ ~3 ~1 {Duration: 233, NoGravity: 1b, Tags: ["char_2-steve_obsidian_wall", "char_attachment", "marker_with_uid", "my_marker"]}

execute if score facing tmp matches 2 run summon minecraft:area_effect_cloud ~-1 ~1 ~ {Duration: 233, NoGravity: 1b, Tags: ["char_2-steve_obsidian_wall", "char_attachment", "marker_with_uid", "my_marker"]}
execute if score facing tmp matches 2 run summon minecraft:area_effect_cloud ~ ~1 ~ {Duration: 233, NoGravity: 1b, Tags: ["char_2-steve_obsidian_wall", "char_attachment", "marker_with_uid", "my_marker"]}
execute if score facing tmp matches 2 run summon minecraft:area_effect_cloud ~1 ~1 ~ {Duration: 233, NoGravity: 1b, Tags: ["char_2-steve_obsidian_wall", "char_attachment", "marker_with_uid", "my_marker"]}
execute if score facing tmp matches 2 run summon minecraft:area_effect_cloud ~-1 ~2 ~ {Duration: 233, NoGravity: 1b, Tags: ["char_2-steve_obsidian_wall", "char_attachment", "marker_with_uid", "my_marker"]}
execute if score facing tmp matches 2 run summon minecraft:area_effect_cloud ~ ~2 ~ {Duration: 233, NoGravity: 1b, Tags: ["char_2-steve_obsidian_wall", "char_attachment", "marker_with_uid", "my_marker"]}
execute if score facing tmp matches 2 run summon minecraft:area_effect_cloud ~1 ~2 ~ {Duration: 233, NoGravity: 1b, Tags: ["char_2-steve_obsidian_wall", "char_attachment", "marker_with_uid", "my_marker"]}
execute if score facing tmp matches 2 run summon minecraft:area_effect_cloud ~-1 ~3 ~ {Duration: 233, NoGravity: 1b, Tags: ["char_2-steve_obsidian_wall", "char_attachment", "marker_with_uid", "my_marker"]}
execute if score facing tmp matches 2 run summon minecraft:area_effect_cloud ~ ~3 ~ {Duration: 233, NoGravity: 1b, Tags: ["char_2-steve_obsidian_wall", "char_attachment", "marker_with_uid", "my_marker"]}
execute if score facing tmp matches 2 run summon minecraft:area_effect_cloud ~1 ~3 ~ {Duration: 233, NoGravity: 1b, Tags: ["char_2-steve_obsidian_wall", "char_attachment", "marker_with_uid", "my_marker"]}

# Setblock.
execute as @e[type=minecraft:area_effect_cloud,tag=char_2-steve_obsidian_wall,tag=my_marker] at @s if block ~ ~ ~ minecraft:obsidian run scoreboard players set @s custom1 1
execute as @e[type=minecraft:area_effect_cloud,tag=char_2-steve_obsidian_wall,tag=my_marker] at @s run fill ~ ~ ~ ~ ~ ~ minecraft:obsidian replace minecraft:air
