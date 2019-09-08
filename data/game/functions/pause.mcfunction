# game:pause
# @as [tag=player]

execute if score $game custom1 matches 2 run tellraw @a {"color": "yellow", "translate": "game.continued_by", "with": [{"selector": "@s"}]}
execute if score $game custom1 matches 2 run scoreboard players set $game hhReviveTime 60
execute unless score $game custom1 matches 2 run tellraw @a {"color": "yellow", "translate": "game.paused_by", "with": [{"selector": "@s"}]}
execute unless score $game custom1 matches 2 run scoreboard players reset $game hhReviveTime
execute unless score $game custom1 matches 2 run scoreboard players set ans tmp 2
scoreboard players operation $game custom1 = ans tmp
scoreboard players reset * p
