#> fnmdp:private/is_conflicted_small
# @tmp @in
# - xyzTmp: Used to move the checking marker [tag=newly_summoned] to next position and check conflict.
# @result
# - isConflicted

execute store result score isConflicted result unless block ~ ~ ~ #.mw:through

# Fence gates.
execute if score isConflicted result matches 0 store result score isConflicted result if block ~ ~ ~ #minecraft:fence_gates[open=false]

# Slabs and four_directions.
execute if score isConflicted result matches 0 run scoreboard players operation fnmdp:private/is_conflicted_small$x tmp = xTmp tmp
execute if score isConflicted result matches 0 run scoreboard players operation fnmdp:private/is_conflicted_small$y tmp = yTmp tmp
execute if score isConflicted result matches 0 run scoreboard players operation fnmdp:private/is_conflicted_small$z tmp = zTmp tmp
execute if score isConflicted result matches 0 run scoreboard players operation fnmdp:private/is_conflicted_small$x tmp %= 1000 const
execute if score isConflicted result matches 0 run scoreboard players operation fnmdp:private/is_conflicted_small$y tmp %= 1000 const
execute if score isConflicted result matches 0 run scoreboard players operation fnmdp:private/is_conflicted_small$z tmp %= 1000 const
## Slabs.
execute if score isConflicted result matches 0 if block ~ ~ ~ #minecraft:slabs[type=bottom] store result score isConflicted result if score fnmdp:private/is_conflicted_small$y tmp matches 500..
execute if score isConflicted result matches 0 if block ~ ~ ~ #minecraft:slabs[type=top] store result score isConflicted result if score fnmdp:private/is_conflicted_small$y tmp matches ..500
## Four_directions.
execute if score isConflicted result matches 0 if block ~ ~ ~ #.mw:solid_four_directions[north=false] store result score isConflicted result if score fnmdp:private/is_conflicted_small$z tmp matches 0..400
execute if score isConflicted result matches 0 if block ~ ~ ~ #.mw:solid_four_directions[north=false] store result score isConflicted result if score fnmdp:private/is_conflicted_small$z tmp matches -999..-600
execute if score isConflicted result matches 0 if block ~ ~ ~ #.mw:solid_four_directions[south=false] store result score isConflicted result if score fnmdp:private/is_conflicted_small$z tmp matches 600..999
execute if score isConflicted result matches 0 if block ~ ~ ~ #.mw:solid_four_directions[south=false] store result score isConflicted result if score fnmdp:private/is_conflicted_small$z tmp matches -400..0
execute if score isConflicted result matches 0 if block ~ ~ ~ #.mw:solid_four_directions[east=false] store result score isConflicted result if score fnmdp:private/is_conflicted_small$x tmp matches 600..999
execute if score isConflicted result matches 0 if block ~ ~ ~ #.mw:solid_four_directions[east=false] store result score isConflicted result if score fnmdp:private/is_conflicted_small$x tmp matches -400..0
execute if score isConflicted result matches 0 if block ~ ~ ~ #.mw:solid_four_directions[west=false] store result score isConflicted result if score fnmdp:private/is_conflicted_small$x tmp matches 0..400
execute if score isConflicted result matches 0 if block ~ ~ ~ #.mw:solid_four_directions[west=false] store result score isConflicted result if score fnmdp:private/is_conflicted_small$x tmp matches -999..-600
