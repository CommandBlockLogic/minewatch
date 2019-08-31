# char:1-pca/tick

execute positioned 0.0 0.0 0.0 unless entity @e[distance=0,type=minecraft:armor_stand,tag=char_sample,tag=char_sample_1-pca] run summon minecraft:armor_stand ~ ~ ~ {Tags: ["char_sample", "char_sample_1-pca", "new_summoned"], Invisible: 1b, Invulnerable: 1b, Marker: 1b}
execute positioned 0.0 0.0 0.0 run scoreboard players set @e[distance=0,type=minecraft:armor_stand,tag=new_summoned] charID 1
execute positioned 0.0 0.0 0.0 run scoreboard players set @e[distance=0,type=minecraft:armor_stand,tag=new_summoned] hhInnateHealth 200
execute positioned 0.0 0.0 0.0 run scoreboard players set @e[distance=0,type=minecraft:armor_stand,tag=new_summoned] hhInnateArmor 0
execute positioned 0.0 0.0 0.0 run scoreboard players set @e[distance=0,type=minecraft:armor_stand,tag=new_summoned] hhInnateShield 0
execute positioned 0.0 0.0 0.0 run scoreboard players set @e[distance=0,type=minecraft:armor_stand,tag=new_summoned] hhInnateMax 200
tag @e remove new_summoned
