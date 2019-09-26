#> spray:paint
# @as player

function spray:private/set_buffer

execute unless score @s sprayCool matches 1.. run function spray:private/paint
