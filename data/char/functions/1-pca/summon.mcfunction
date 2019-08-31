# char:1-pca/summon

summon minecraft:armor_stand ~ ~ ~ {Tags: ["char_sample", "char_sample_1-pca", "new_summoned"], Invisible: 1b, Invulnerable: 1b, Marker: 1b}
scoreboard players set @e[distance=0,type=minecraft:armor_stand,tag=new_summoned] charID 1
scoreboard players set @e[distance=0,type=minecraft:armor_stand,tag=new_summoned] hhInnateHealth 200
scoreboard players set @e[distance=0,type=minecraft:armor_stand,tag=new_summoned] hhInnateArmor 0
scoreboard players set @e[distance=0,type=minecraft:armor_stand,tag=new_summoned] hhInnateShield 0
scoreboard players set @e[distance=0,type=minecraft:armor_stand,tag=new_summoned] hhInnateMax 200
tag @e remove new_summoned
