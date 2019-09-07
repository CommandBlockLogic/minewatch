# game:over

title @a times 10 60 10
title @a subtitle ""
execute if score $blueTeam custom1 matches 2600.. run title @a[tag=blue_team] title {"color": "blue", "translate": "game.won"}
execute if score $blueTeam custom1 matches 2600.. run title @a[tag=red_team] title {"color": "blue", "translate": "game.lost"}
execute if score $redTeam custom1 matches 2600.. run title @a[tag=blue_team] title {"color": "red", "translate": "game.lost"}
execute if score $redTeam custom1 matches 2600.. run title @a[tag=red_team] title {"color": "red", "translate": "game.won"}
scoreboard players reset $blueTeam custom1
scoreboard players reset $redTeam custom1
