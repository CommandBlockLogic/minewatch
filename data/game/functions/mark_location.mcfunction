# game:mark_location
# @as [tag=player]

function player:add_tags
execute unless entity @e[type=minecraft:area_effect_cloud,distance=..1,tag=player_location_marker] run summon minecraft:area_effect_cloud ~ ~ ~ {Tags: ["player_location_marker", "marker_with_uid", "my_marker", "new_summoned"], CustomName: '"Player Location Marker"', NoGravity: 1b, Duration: 23333}
data modify entity @e[type=minecraft:area_effect_cloud,tag=new_summoned,limit=1] Rotation set from entity @s Rotation
function player:remove_tags
