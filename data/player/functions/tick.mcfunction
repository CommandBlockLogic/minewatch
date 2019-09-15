# player:tick
# @as players

function player:keep_alive

execute if entity @s[tag=!blue_team,tag=!red_team] run function player:get_team_tag
function player:join_team

function player:add_tags

function uid:tick
execute unless score $game custom1 matches 2 run function char:player_tick
execute unless score $game custom1 matches 2 run function hh:tick
execute unless score $game custom1 matches 2 if entity @s[tag=!died] run function buff:tick

execute unless score $game custom1 matches 2 at @s if block ~ ~ ~ minecraft:water unless score @s hhLastDamageWay matches 3.. run scoreboard players set @s[tag=!died] hhLastDamageWay 9
execute unless score $game custom1 matches 2 at @s if block ~ ~ ~ minecraft:water run scoreboard players set @s[tag=!died] hhDamagedM 1073741824
execute unless score $game custom1 matches 2 at @s if block ~ ~ ~ minecraft:lava unless score @s hhLastDamageWay matches 3.. run scoreboard players set @s[tag=!died] hhLastDamageWay 17
execute unless score $game custom1 matches 2 at @s if block ~ ~ ~ minecraft:lava run scoreboard players set @s[tag=!died] hhDamagedM 1073741824

function player:remove_tags
