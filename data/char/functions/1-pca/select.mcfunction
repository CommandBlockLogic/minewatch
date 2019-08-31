# char:1-pca/select
# @as player

scoreboard players set @s charID 1
execute positioned 0.0 0.0 0.0 run tag @e[distance=0,type=minecraft:armor_stand,tag=char_sample,tag=char_sample_1-pca] add my_char

function char:common/select
