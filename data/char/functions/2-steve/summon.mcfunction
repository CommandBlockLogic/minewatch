# char:2-steve/summon

summon minecraft:armor_stand ~ ~ ~ {Tags: ["char_sample", "char_sample_2-steve", "new_summoned"], CustomName: '"2-steve"', Invisible: 1b, Invulnerable: 1b, Marker: 1b, NoGravity:1b}
execute as @e[type=minecraft:armor_stand,tag=new_summoned] run function char:2-steve/summon_as

tag @e remove new_summoned
