# game:over

title @a times 10 60 10
execute if score $blueTeam custom1 matches 2600.. run title @a[tag=blue_team] title {"translate": "game.won"}
execute if score $blueTeam custom1 matches 2600.. run title @a[tag=red_team] title {"translate": "game.lost"}
execute if score $redTeam custom1 matches 2600.. run title @a[tag=blue_team] title {"translate": "game.lost"}
execute if score $redTeam custom1 matches 2600.. run title @a[tag=red_team] title {"translate": "game.won"}
scoreboard players reset $blueTeam custom1
scoreboard players reset $redTeam custom1
