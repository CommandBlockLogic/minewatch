# game:teleport
# @as [tag=player]

function player:add_tags
teleport @s @e[type=minecraft:area_effect_cloud,limit=1,tag=player_location_marker,tag=my_marker]
kill @e[type=minecraft:area_effect_cloud,limit=1,tag=player_location_marker,tag=my_marker]
function player:remove_tags
