# .mw:player/get_team_tag
# @as players without team tag

execute store result score blue tmp if entity @e[tag=blue_team]
execute store result score red tmp if entity @e[tag=red_team]

execute if score blue tmp <= red tmp run tag @s add blue_team
execute unless score blue tmp <= red tmp run tag @s add red_team
