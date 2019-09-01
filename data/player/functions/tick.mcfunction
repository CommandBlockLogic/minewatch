# player:tick
# @as players

function player:keep_alive

execute if entity @s[tag=!blue_team,tag=!red_team] run function player:get_team_tag
function player:join_team

# Tag self.
tag @s add self
# Tag same_team.
execute if entity @s[tag=blue_team] run tag @e[tag=player,tag=blue_team] add same_team
execute if entity @s[tag=red_team] run tag @e[tag=player,tag=red_team] add same_team
# Tag teammate.
tag @e[tag=same_team] add teammate
tag @s remove teammate
# Tag enemy.
tag @e[tag=player,tag=!same_team] add enemy
# Tag my_marker.
execute as @e[tag=marker_with_uid] if score @s uid = @e[tag=self,limit=1] uid run tag @s add my_marker
# Tag my_char.
execute as @e[type=minecraft:armor_stand,tag=char_sample] if score @s charID = @e[tag=self,limit=1] charID run tag @s add my_char
# Tag need_healing
tag @s remove need_healing
execute if score @s hhInnateTotal < @s hhInnateMax run tag @s add need_healing

function uid:tick
function char:player_tick
function hh:tick

execute if block ~ ~ ~ minecraft:water run scoreboard players set @s hhDamagedM 8192

# Set uid for all my markers.
scoreboard players operation @e[tag=my_marker] uid = @e[tag=self,limit=1] uid
tag @e remove my_marker

tag @e remove same_team
tag @e remove teammate
tag @e remove enemy
tag @e remove self
tag @e remove my_char
