# fnmdp:isConflicted
# @params
# - size # 1 small, 2 large
# @result
# - isConflicted

execute if score size params matches 2 store result score isConflicted result unless block ~ ~ ~ #.mw:player_through

execute if score size params matches 1 store result score isConflicted result unless block ~ ~ ~ #.mw:through
# Fence gates.
execute if score size params matches 1 if score isConflicted result matches 0 store result score isConflicted result if block ~ ~ ~ #minecraft:fence_gates[open=false]
# Slabs and four_directions.
execute if score size params matches 1 if score isConflicted result matches 0 store result score x tmp run data get entity @s Pos[0] 100
execute if score size params matches 1 if score isConflicted result matches 0 store result score y tmp run data get entity @s Pos[1] 100
execute if score size params matches 1 if score isConflicted result matches 0 store result score z tmp run data get entity @s Pos[2] 100
execute if score size params matches 1 if score isConflicted result matches 0 run scoreboard players operation x tmp %= 100 const
execute if score size params matches 1 if score isConflicted result matches 0 run scoreboard players operation y tmp %= 100 const
execute if score size params matches 1 if score isConflicted result matches 0 run scoreboard players operation z tmp %= 100 const
## Slabs.
execute if score size params matches 1 if score isConflicted result matches 0 if block ~ ~ ~ #minecraft:slabs[type=bottom] store result score isConflicted result if score y tmp matches 50..
execute if score size params matches 1 if score isConflicted result matches 0 if block ~ ~ ~ #minecraft:slabs[type=top] store result score isConflicted result if score y tmp matches ..50
## Four_directions.
execute if score size params matches 1 if score isConflicted result matches 0 if block ~ ~ ~ #.mw:solid_four_directions[north=false] store result score isConflicted result if score z tmp matches ..40
execute if score size params matches 1 if score isConflicted result matches 0 if block ~ ~ ~ #.mw:solid_four_directions[south=false] store result score isConflicted result if score z tmp matches 60..
execute if score size params matches 1 if score isConflicted result matches 0 if block ~ ~ ~ #.mw:solid_four_directions[east=false] store result score isConflicted result if score x tmp matches 60..
execute if score size params matches 1 if score isConflicted result matches 0 if block ~ ~ ~ #.mw:solid_four_directions[west=false] store result score isConflicted result if score x tmp matches ..40
