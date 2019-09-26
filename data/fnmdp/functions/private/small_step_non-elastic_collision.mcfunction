#> fnmdp:private/small_step_non-elastic_collision

# Begin.
summon minecraft:area_effect_cloud ~ ~ ~ {Tags: ["newly_summoned"]}
## xyzTmp tmp is used to move the checking marker [tag=newly_summoned] to next position and check conflict.
scoreboard players operation xTmp tmp = x tmp
scoreboard players operation yTmp tmp = y tmp
scoreboard players operation zTmp tmp = z tmp
scoreboard players operation size params = @s fnmdpSize
# Move XYZ.
scoreboard players operation xTmp tmp += VxSmall tmp
scoreboard players operation yTmp tmp += VySmall tmp
scoreboard players operation zTmp tmp += VzSmall tmp
execute store result entity @e[limit=1,tag=newly_summoned] Pos[0] double 0.001 run scoreboard players get xTmp tmp
execute store result entity @e[limit=1,tag=newly_summoned] Pos[1] double 0.001 run scoreboard players get yTmp tmp
execute store result entity @e[limit=1,tag=newly_summoned] Pos[2] double 0.001 run scoreboard players get zTmp tmp
# Check.
execute at @e[limit=1,tag=newly_summoned] run function fnmdp:is_conflicted
execute if score isConflicted result matches 1.. run function fnmdp:private/small_step_non-elastic_conflict
# End.
kill @e[tag=newly_summoned]
