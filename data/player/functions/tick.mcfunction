# player:tick
# @as players

function player:keep_alive

execute if entity @s[tag=!blue_team,tag=!red_team] run function player:get_team_tag
function player:join_team

function player:add_tags

function uid:tick
execute if entity @s[tag=!died] run function char:player_tick
function hh:tick
execute if entity @s[tag=!died] run function buff:tick

execute at @s if block ~ ~ ~ minecraft:water run scoreboard players set @s[tag=!died] hhLastDamageWay 6
execute at @s if block ~ ~ ~ minecraft:water run scoreboard players set @s[tag=!died] hhDamagedM 1073741824

function player:remove_tags
