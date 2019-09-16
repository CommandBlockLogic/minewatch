# game:tick

execute if score $game custom1 matches 1..2 run scoreboard players enable @a p
execute if score $game custom1 matches 0 run scoreboard players enable @a join_blue
execute if score $game custom1 matches 0 run scoreboard players enable @a join_red
execute if score $game custom1 matches 0 run scoreboard players enable @a begin

execute if score $game custom1 matches 2 run function game:pausing
execute as @a[scores={p=1..}] run function game:pause
execute as @a[scores={join_blue=1..}] run tag @s add blue_team
execute as @a[scores={join_blue=1..}] run tag @s remove red_team
execute as @a[scores={join_blue=1..}] run function char:common/init
execute as @a[scores={join_red=1..}] run tag @s add red_team
execute as @a[scores={join_red=1..}] run tag @s remove blue_team
execute as @a[scores={join_red=1..}] run function char:common/init
execute as @a[scores={begin=1..}] run function game:over
execute as @a[scores={begin=1..}] run function game:begin

execute if score $game hhReviveTime matches 0 run scoreboard players set $game custom1 1
execute if score $game hhReviveTime matches 0 run title @a clear
execute if score $game hhReviveTime matches 0 as @e[tag=player] run function game:teleport
execute if score $game hhReviveTime matches 0 run scoreboard players reset $game hhReviveTime
execute if score $game hhReviveTime matches 1.. run scoreboard players remove $game hhReviveTime 1

scoreboard players reset @s p
scoreboard players reset @s begin
scoreboard players reset @s join_blue
scoreboard players reset @s join_red
