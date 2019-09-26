#> fnmdp:is_conflicted
# @tmp @in
# - xTmp
# - yTmp
# - zTmp
# @params
# - size # 1 small, 2 large
# @tags @in
# - fnmdp_conflictable
# @result
# - isConflicted

# Block.
## Small.
execute if score size params matches 1 run function fnmdp:private/is_conflicted_small
## Large.
execute if score size params matches 2 store result score isConflicted result unless block ~ ~ ~ #.mw:player_through

# Entity.
tag @e[tag=fnmdp_conflictable,distance=..1.5] add fnmdp_hitted
execute if score isConflicted result matches 0 store result score isConflicted result if entity @e[tag=fnmdp_hitted]
