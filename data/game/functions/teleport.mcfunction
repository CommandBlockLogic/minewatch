# game:teleport
# @as [tag=player]

function player:add_tags
teleport @s @e[type=minecraft:armor_stand,limit=1,tag=player_location_marker,tag=my_marker]
kill @e[type=minecraft:armor_stand,limit=1,tag=player_location_marker,tag=my_marker]
function player:remove_tags
