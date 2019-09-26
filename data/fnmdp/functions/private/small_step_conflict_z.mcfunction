#> fnmdp:private/small_step_conflict_z
# @tmp @out
# - VxSmall tmp
# - VySmall tmp
# - VzSmall tmp

#say Z
scoreboard players operation @s fnmdpVx *= @s fnmdpVKeepN
scoreboard players operation @s fnmdpVy *= @s fnmdpVKeepN
scoreboard players operation @s fnmdpVz *= @s fnmdpVKeepT
scoreboard players operation @s fnmdpVx /= 100 const
scoreboard players operation @s fnmdpVy /= 100 const
scoreboard players operation @s fnmdpVz /= 100 const
scoreboard players operation VxSmall tmp *= @s fnmdpVKeepN
scoreboard players operation VySmall tmp *= @s fnmdpVKeepN
scoreboard players operation VzSmall tmp *= @s fnmdpVKeepT
scoreboard players operation VxSmall tmp /= 100 const
scoreboard players operation VySmall tmp /= 100 const
scoreboard players operation VzSmall tmp /= 100 const
