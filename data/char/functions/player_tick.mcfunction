# char:player_tick
# @as player

execute unless score @s charID matches 1.. run function char:1-pca/select

execute if score @s pahPressQ matches 1.. run say U
execute if score @s pahPressF matches 1.. run say R
execute if score @s pahPressShift matches 1.. run say S
execute if score @s pahRightClick matches 1.. run say F
