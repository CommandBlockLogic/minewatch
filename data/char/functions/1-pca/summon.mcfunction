# char:1-pca/summon

summon minecraft:armor_stand ~ ~ ~ {Tags: ["char_sample", "char_sample_1-pca", "new_summoned"], CustomName: '"1-pca"', Invisible: 1b, Invulnerable: 1b, Marker: 1b}
execute as @e[distance=0,type=minecraft:armor_stand,tag=new_summoned] run function char:1-pca/as_summon

tag @e remove new_summoned
