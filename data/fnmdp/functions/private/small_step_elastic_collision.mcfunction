#> fnmdp:private/small_step_elastic_collision

# Begin.
summon minecraft:area_effect_cloud ~ ~ ~ {Tags: ["newly_summoned"]}
## xyzTmp tmp is used to move the checking marker [tag=newly_summoned] to next position and check conflict.
scoreboard players operation xTmp tmp = x tmp
scoreboard players operation yTmp tmp = y tmp
scoreboard players operation zTmp tmp = z tmp
scoreboard players operation size params = @s fnmdpSize
execute store result entity @e[limit=1,tag=newly_summoned] Pos[1] double 0.001 run scoreboard players get yTmp tmp
execute store result entity @e[limit=1,tag=newly_summoned] Pos[2] double 0.001 run scoreboard players get zTmp tmp
# X.
scoreboard players operation xTmp tmp += VxSmall tmp
execute store result entity @e[limit=1,tag=newly_summoned] Pos[0] double 0.001 run scoreboard players get xTmp tmp
execute at @e[limit=1,tag=newly_summoned] run function fnmdp:is_conflicted
execute if score isConflicted result matches 1.. run function fnmdp:private/small_step_elastic_conflict_x
execute store result entity @e[limit=1,tag=newly_summoned] Pos[0] double 0.001 run scoreboard players get x tmp
# Y.
scoreboard players operation yTmp tmp += VySmall tmp
execute store result entity @e[limit=1,tag=newly_summoned] Pos[1] double 0.001 run scoreboard players get yTmp tmp
execute at @e[limit=1,tag=newly_summoned] run function fnmdp:is_conflicted
execute if score isConflicted result matches 1.. run function fnmdp:private/small_step_elastic_conflict_y
execute store result entity @e[limit=1,tag=newly_summoned] Pos[1] double 0.001 run scoreboard players get y tmp
# Z.
scoreboard players operation zTmp tmp += VzSmall tmp
execute store result entity @e[limit=1,tag=newly_summoned] Pos[2] double 0.001 run scoreboard players get zTmp tmp
execute at @e[limit=1,tag=newly_summoned] run function fnmdp:is_conflicted
execute if score isConflicted result matches 1.. run function fnmdp:private/small_step_elastic_conflict_z
# End.
kill @e[tag=newly_summoned]
