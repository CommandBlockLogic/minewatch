# player:tick
# @as players

function player:keep_alive

execute if entity @s[tag=!blue_team,tag=!red_team] run function player:get_team_tag
function player:join_team

function player:add_tags

function uid:tick
execute unless score $game custom1 matches 2 run function char:player_tick
execute unless score $game custom1 matches 2 as @e[tag=fnmdp,tag=my_marker] run function fnmdp:tick
execute unless score $game custom1 matches 2 run function hh:tick
execute unless score $game custom1 matches 2 run function buff:tick

# Blocks.
execute unless score $game custom1 matches 2 at @s if block ~ ~ ~ minecraft:lava unless score @s hhLastDamageWay matches 3.. run scoreboard players set @s[tag=!died,tag=!no_9_damage] hhLastDamageWay 17
execute unless score $game custom1 matches 2 at @s if block ~ ~ ~ minecraft:lava run teleport @s[tag=!died,tag=!no_9_damage] ~ ~ ~175
execute unless score $game custom1 matches 2 at @s if block ~ ~1 ~ minecraft:lava unless score @s hhLastDamageWay matches 3.. run scoreboard players set @s[tag=!died,tag=!no_9_damage] hhLastDamageWay 17
execute unless score $game custom1 matches 2 at @s if block ~ ~1 ~ minecraft:lava run teleport @s[tag=!died,tag=!no_9_damage] ~ ~ ~175

execute unless score $game custom1 matches 2 at @s if block ~ ~ ~ minecraft:water unless score @s hhLastDamageWay matches 3.. run scoreboard players set @s[tag=!died,tag=!no_9_damage] hhLastDamageWay 9
execute unless score $game custom1 matches 2 at @s if block ~ ~ ~ minecraft:water run scoreboard players set @s[tag=!died,tag=!no_9_damage] hhDamagedM 1073741824
execute unless score $game custom1 matches 2 at @s if block ~ ~1 ~ minecraft:water unless score @s hhLastDamageWay matches 3.. run scoreboard players set @s[tag=!died,tag=!no_9_damage] hhLastDamageWay 9
execute unless score $game custom1 matches 2 at @s if block ~ ~1 ~ minecraft:water run scoreboard players set @s[tag=!died,tag=!no_9_damage] hhDamagedM 1073741824

execute unless score $game custom1 matches 2 at @s if block ~ ~ ~ minecraft:obsidian run function player:get_out_of_block

function player:remove_tags
