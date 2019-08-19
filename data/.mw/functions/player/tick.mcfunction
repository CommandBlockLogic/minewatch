# .mw:player/tick
# @as players

execute if entity @s[tag=!blue_team,tag=!red_team] run function .mw:player/get_team_tag
function .mw:player/join_team

execute if entity @s[tag=blue_team] run tag @e[tag=player,tag=blue_team] add same_team
execute if entity @s[tag=red_team] run tag @e[tag=player,tag=red_team] add same_team

tag @e[tag=same_team] add teammate
tag @s remove teammate

tag @e[tag=player,tag=!same_team] add enemy

function uid:tick
function health:tick

tag @e remove same_team
tag @e remove teammate
tag @e remove enemy
