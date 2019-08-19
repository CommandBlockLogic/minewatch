# uid:get_uid
# @as players with no ID

scoreboard players add $highest uid 1
scoreboard players operation @s uid = $highest uid
