# game:pausing

title @a times 0 5 0
title @a subtitle {"color": "yellow", "translate": "game.pause"}
execute unless score $game hhReviveTime matches 1.. run title @a title ""
execute if score $game hhReviveTime matches 1.. run scoreboard players operation sec tmp = $game hhReviveTime
execute if score $game hhReviveTime matches 1.. run scoreboard players operation sec tmp /= 20 const
execute if score $game hhReviveTime matches 1.. run scoreboard players add sec tmp 1
execute if score $game hhReviveTime matches 1.. run title @a title {"score": {"objective": "tmp", "name": "sec"}}
