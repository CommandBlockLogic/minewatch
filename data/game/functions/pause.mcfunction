# game:pause
# @as [tag=player]

execute if score $game custom1 matches 2 run tellraw @a {"color": "yellow", "translate": "game.continued_by", "with": [{"selector": "@s"}]}
execute if score $game custom1 matches 2 run scoreboard players set $game hhReviveTime 60
execute unless score $game custom1 matches 2 run tellraw @a {"color": "yellow", "translate": "game.paused_by", "with": [{"selector": "@s"}]}
execute unless score $game custom1 matches 2 run scoreboard players reset $game hhReviveTime
execute unless score $game custom1 matches 2 as @e[tag=player] at @s run function game:mark_location
execute unless score $game custom1 matches 2 run scoreboard players set $game custom1 2
scoreboard players reset * p
