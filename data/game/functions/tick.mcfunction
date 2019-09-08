# game:tick

scoreboard players enable @a p

execute if score $game custom1 matches 2 run function game:pausing
execute as @a[scores={p=1..}] run function game:pause

execute if score $game hhReviveTime matches 0 run scoreboard players set $game custom1 1
execute if score $game hhReviveTime matches 0 run title @a clear
execute if score $game hhReviveTime matches 0 run scoreboard players reset $game hhReviveTime
execute if score $game hhReviveTime matches 1.. run scoreboard players remove $game hhReviveTime 1
