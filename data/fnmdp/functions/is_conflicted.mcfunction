# fnmdp:isConflicted
# @tmp @in
# - xTmp
# - yTmp
# - zTmp
# @params
# - size # 1 small, 2 large
# @tags @in
# - collision
# @result
# - isConflicted

# Block.
## Large.
execute if score size params matches 2 store result score isConflicted result unless block ~ ~ ~ #.mw:player_through
## Small.
execute if score size params matches 1 store result score isConflicted result unless block ~ ~ ~ #.mw:through
### Fence gates.
execute if score size params matches 1 if score isConflicted result matches 0 store result score isConflicted result if block ~ ~ ~ #minecraft:fence_gates[open=false]
### Slabs and four_directions.
scoreboard players operation fnmdp:isConflicted$fnmdp:isConflicted$x tmp = xTmp tmp
scoreboard players operation fnmdp:isConflicted$fnmdp:isConflicted$y tmp = yTmp tmp
scoreboard players operation fnmdp:isConflicted$fnmdp:isConflicted$z tmp = zTmp tmp
execute if score size params matches 1 if score isConflicted result matches 0 run scoreboard players operation fnmdp:isConflicted$x tmp %= 1000 const
execute if score size params matches 1 if score isConflicted result matches 0 run scoreboard players operation fnmdp:isConflicted$y tmp %= 1000 const
execute if score size params matches 1 if score isConflicted result matches 0 run scoreboard players operation fnmdp:isConflicted$z tmp %= 1000 const
#### Slabs.
execute if score size params matches 1 if score isConflicted result matches 0 if block ~ ~ ~ #minecraft:slabs[type=bottom] store result score isConflicted result if score fnmdp:isConflicted$y tmp matches 500..
execute if score size params matches 1 if score isConflicted result matches 0 if block ~ ~ ~ #minecraft:slabs[type=top] store result score isConflicted result if score fnmdp:isConflicted$y tmp matches ..500
#### Four_directions.
execute if score size params matches 1 if score isConflicted result matches 0 if block ~ ~ ~ #.mw:solid_four_directions[north=false] store result score isConflicted result if score fnmdp:isConflicted$z tmp matches ..400
execute if score size params matches 1 if score isConflicted result matches 0 if block ~ ~ ~ #.mw:solid_four_directions[south=false] store result score isConflicted result if score fnmdp:isConflicted$z tmp matches 600..
execute if score size params matches 1 if score isConflicted result matches 0 if block ~ ~ ~ #.mw:solid_four_directions[east=false] store result score isConflicted result if score fnmdp:isConflicted$x tmp matches 600..
execute if score size params matches 1 if score isConflicted result matches 0 if block ~ ~ ~ #.mw:solid_four_directions[west=false] store result score isConflicted result if score fnmdp:isConflicted$x tmp matches ..400

# Entity.
execute if score isConflicted result matches 0 store result score isConflicted result if entity @e[tag=collision,distance=..1.5]
