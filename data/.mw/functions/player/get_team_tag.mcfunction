# .mw:player/get_team_tag
# @as players without team

execute store result score .mw:player/get_team_tag$blue tmp if entity @e[tag=blue_team]
execute store result score .mw:player/get_team_tag$red tmp if entity @e[tag=red_team]

execute if score .mw:player/get_team_tag$blue tmp <= .mw:player/get_team_tag$red tmp run tag @s add blue_team
execute unless score .mw:player/get_team_tag$blue tmp <= .mw:player/get_team_tag$red tmp run tag @s add red_team
