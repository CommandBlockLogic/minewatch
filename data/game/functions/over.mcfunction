# game:over

scoreboard players set $targetArea custom1 0
scoreboard players set $targetArea custom2 0
scoreboard players set $targetArea custom3 0

execute as @e[tag=player] run function game:respawn_all_as

title @a times 10 60 10
title @a subtitle ""
execute if score $blueTeam custom1 matches 2600.. run title @a[tag=blue_team] title {"color": "blue", "translate": "game.won"}
execute if score $blueTeam custom1 matches 2600.. run title @a[tag=red_team] title {"color": "blue", "translate": "game.lost"}
execute if score $redTeam custom1 matches 2600.. run title @a[tag=blue_team] title {"color": "red", "translate": "game.lost"}
execute if score $redTeam custom1 matches 2600.. run title @a[tag=red_team] title {"color": "red", "translate": "game.won"}
scoreboard players reset $blueTeam custom1
scoreboard players reset $redTeam custom1

scoreboard players set $game custom1 0

bossbar set .mw:process visible false
